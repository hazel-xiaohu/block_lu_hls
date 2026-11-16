#include <algorithm>
#include <array>
#include <atomic>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <future>
#include <iomanip>
#include <iostream>
#include <limits>
#include <map>
#include <mutex>
#include <numeric>
#include <sstream>
#include <stdexcept>
#include <string>
#include <tuple>
#include <unordered_map>
#include <utility>
#include <vector>

namespace {

// Sentinel used by the sparse A lookup table before a product entry receives
// its compact cache-line address.
constexpr uint32_t kMissing = std::numeric_limits<uint32_t>::max();
// OOLU-style operation model: one VLIW bundle issues 16 scalar MACs.
// Matrix values and sparse indices are both 32-bit, so each AoS record is 8 B.
constexpr uint64_t kOperationLanes = 16;
constexpr uint64_t kRecordBytes = 8;
constexpr uint64_t kLineBytes = 64;
constexpr uint64_t kTaskDescriptorBytes = 32;
constexpr uint64_t kDependencyDescriptorBytes = 8;

struct Coord {
  // Zero-based matrix coordinate read from the Matrix Market input.
  uint32_t row;
  uint32_t col;
};

struct Entry {
  // Row index for an L entry, or column index for a U entry.
  uint32_t index;
  // Global cache-line ID in the disjoint L/U/A address space.
  uint32_t line;
};

struct Range {
  // Half-open interval [begin, end) into an active L or U entry vector.
  uint32_t begin;
  uint32_t end;
};

struct SegmentContribution {
  // A contribution fixes pivot k and one U(k,j), then streams a range of
  // L(i,k) entries belonging to the same row segment.
  uint32_t k;
  uint32_t u_pos;
  uint32_t u_line;
  Range l;
};

struct SegmentTask {
  // SALUT-style task identity: target column j and row-segment number.
  uint32_t j;
  uint32_t segment;
  std::vector<SegmentContribution> contributions;
  // Deduplicated cache-line working set used only by the cache-aware scheduler.
  std::vector<uint32_t> footprint_lines;
};

struct BlockContribution {
  // The Cartesian product of these L and U ranges forms the scalar updates
  // contributed by pivot k to one (I,J,K) block task.
  uint32_t k;
  Range l;
  Range u;
};

struct BlockTask {
  // Block coordinates use zero-based B-by-B tiles.
  uint32_t iblock;
  uint32_t jblock;
  uint32_t kblock;
  std::vector<BlockContribution> contributions;
};

struct Pattern {
  // Input sparsity statistics. Diagonal coordinates belong to neither strict L
  // nor strict U in this trailing-update experiment.
  uint32_t n = 0;
  uint64_t union_nnz = 0;
  uint64_t lower_nnz = 0;
  uint64_t upper_nnz = 0;
  uint64_t diagonal_nnz = 0;
  uint64_t a_target_nnz = 0;
  uint32_t block_size = 0;
  uint32_t segment_height = 0;
  uint32_t block_count = 0;
  uint32_t target_block_count = 0;
  uint32_t l_base = 0;
  uint32_t u_base = 0;
  uint32_t a_base = 0;
  uint32_t total_lines = 0;
  uint64_t atomic_updates = 0;
  // event_base[k] is the first canonical event ID for pivot k.
  std::vector<uint64_t> event_base;
  // lower[k] stores L(:,k); upper[k] stores U(k,:).
  std::vector<std::vector<Entry>> lower;
  std::vector<std::vector<Entry>> upper;
  // Active vectors retain only entries strictly beyond k's diagonal block,
  // which is exactly the SSSSM/block-trailing scope modeled here.
  std::vector<std::vector<Entry>> active_lower;
  std::vector<std::vector<Entry>> active_upper;
  // Maps a dense (I,J) block coordinate to a compact target-block slot.
  std::vector<int32_t> target_block_slot;
  // Per-slot B-by-B table from scalar A(i,j) to its compact cache-line ID.
  std::vector<uint32_t> target_line_table;
  std::vector<SegmentTask> segment_tasks;
  std::vector<BlockTask> block_tasks;
};

struct MethodStats {
  // Scheduling/control statistics and order-independent correctness audits for
  // one traversal method. Cache traffic is stored separately per capacity.
  std::string method;
  uint32_t grain_size = 0;
  uint64_t tasks = 0;
  uint64_t dependencies = 0;
  uint64_t descriptor_bytes = 0;
  uint64_t atomic_updates = 0;
  uint64_t unique_event_ids = 0;
  uint64_t duplicate_event_ids = 0;
  uint64_t event_hash_sum = 0;
  uint64_t event_hash_xor = 0;
  uint64_t event_hash_sum2 = 0;
  uint64_t l_unique_lines = 0;
  uint64_t u_unique_lines = 0;
  uint64_t a_unique_lines = 0;
  uint64_t l_hash = 0;
  uint64_t u_hash = 0;
  uint64_t a_hash = 0;
  double elapsed_seconds = 0.0;
};

struct CacheStats {
  // L and U are read-only. A uses write-allocate/write-back, so its incoming
  // line fills and dirty evictions are counted separately.
  uint64_t l_misses = 0;
  uint64_t u_misses = 0;
  uint64_t a_reads = 0;
  uint64_t a_writebacks = 0;
};

enum class Kind : uint8_t { L = 0, U = 1, A = 2 };

// Both helpers operate on unsigned values; all callers provide nonzero
// alignment/divisor values.
uint64_t align_up(uint64_t value, uint64_t alignment) {
  return ((value + alignment - 1) / alignment) * alignment;
}

uint64_t ceil_div(uint64_t value, uint64_t divisor) {
  return (value + divisor - 1) / divisor;
}

uint64_t splitmix64(uint64_t x) {
  // This mixer is used as a deterministic audit hash, not as a PRNG here.
  x += 0x9e3779b97f4a7c15ULL;
  x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9ULL;
  x = (x ^ (x >> 27)) * 0x94d049bb133111ebULL;
  return x ^ (x >> 31);
}

class ExactLru {
 public:
  // The cache is fully associative. Arrays indexed by global line ID implement
  // an intrusive doubly linked MRU-to-LRU list without per-access allocation.
  ExactLru(uint32_t total_lines, uint32_t capacity_lines)
      : capacity_(capacity_lines), prev_(total_lines, -1), next_(total_lines, -1),
        flags_(total_lines, 0) {}

  inline void touch(uint32_t line, Kind kind, bool write) {
    uint8_t &flag = flags_[line];
    if ((flag & 1U) != 0U) {
      // Cache hit: unlink the resident line and move it to the MRU head.
      if (line != static_cast<uint32_t>(head_)) {
        const int32_t p = prev_[line];
        const int32_t n = next_[line];
        if (p >= 0) next_[p] = n;
        if (n >= 0) prev_[n] = p;
        if (tail_ == static_cast<int32_t>(line)) tail_ = p;
        prev_[line] = -1;
        next_[line] = head_;
        if (head_ >= 0) prev_[head_] = static_cast<int32_t>(line);
        head_ = static_cast<int32_t>(line);
      }
      if (write) flag |= 2U;
      return;
    }

    // A miss transfers one 64-byte line into the cache. A reads are counted
    // separately because an A line will subsequently become dirty.
    if (kind == Kind::L) {
      ++stats_.l_misses;
    } else if (kind == Kind::U) {
      ++stats_.u_misses;
    } else {
      ++stats_.a_reads;
    }

    if (size_ == capacity_) {
      // Evict the LRU tail. Only A can be dirty in this workload, so every
      // dirty victim contributes one A writeback.
      const uint32_t victim = static_cast<uint32_t>(tail_);
      const int32_t new_tail = prev_[victim];
      if ((flags_[victim] & 2U) != 0U) ++stats_.a_writebacks;
      flags_[victim] = 0;
      prev_[victim] = -1;
      next_[victim] = -1;
      tail_ = new_tail;
      if (tail_ >= 0) next_[tail_] = -1;
      --size_;
    }

    flag = static_cast<uint8_t>(1U | (write ? 2U : 0U));
    // Insert the newly fetched line at the MRU head.
    prev_[line] = -1;
    next_[line] = head_;
    if (head_ >= 0) prev_[head_] = static_cast<int32_t>(line);
    head_ = static_cast<int32_t>(line);
    if (tail_ < 0) tail_ = static_cast<int32_t>(line);
    ++size_;
  }

  void flush_dirty() {
    // Account for dirty A lines still resident when the trace ends. This makes
    // traffic comparable to a completed run whose output is committed.
    int32_t line = head_;
    while (line >= 0) {
      if ((flags_[line] & 2U) != 0U) {
        ++stats_.a_writebacks;
        flags_[line] &= static_cast<uint8_t>(~2U);
      }
      line = next_[line];
    }
  }

  const CacheStats &stats() const { return stats_; }
  bool contains(uint32_t line) const { return (flags_[line] & 1U) != 0U; }

 private:
  uint32_t capacity_;
  uint32_t size_ = 0;
  int32_t head_ = -1;
  int32_t tail_ = -1;
  std::vector<int32_t> prev_;
  std::vector<int32_t> next_;
  // Bit 0 means resident; bit 1 means dirty.
  std::vector<uint8_t> flags_;
  CacheStats stats_;
};

struct CacheResult {
  uint64_t capacity_bytes;
  CacheStats stats;
};

class StreamSimulator {
 public:
  // One logical access stream is replayed into every requested cache capacity
  // in parallel. Cache-aware scheduling intentionally restricts this to one
  // capacity because the chosen task order depends on cache residency.
  StreamSimulator(const Pattern &pattern, const std::vector<uint64_t> &capacities)
      : pattern_(pattern), seen_(pattern.total_lines, 0),
        event_seen_((pattern.atomic_updates + 63) / 64, 0) {
    for (uint64_t bytes : capacities) {
      if (bytes % kLineBytes != 0) throw std::runtime_error("cache capacity is not line aligned");
      capacities_.push_back(bytes);
      caches_.emplace_back(pattern.total_lines, static_cast<uint32_t>(bytes / kLineBytes));
    }
  }

  inline void access(uint32_t line, Kind kind, bool write = false) {
    for (ExactLru &cache : caches_) cache.touch(line, kind, write);
    const uint8_t bit = static_cast<uint8_t>(1U << static_cast<unsigned>(kind));
    seen_[line] |= bit;
  }

  inline void mark_event(uint64_t event_id, uint32_t l_line, uint32_t u_line, uint32_t a_line) {
    // Canonical IDs make traversal order irrelevant: every legal method must
    // visit each scalar L(i,k)*U(k,j) update exactly once.
    if (event_id >= pattern_.atomic_updates) throw std::runtime_error("canonical event id is out of range");
    uint64_t &word = event_seen_[event_id >> 6];
    const uint64_t mask = 1ULL << (event_id & 63U);
    if ((word & mask) != 0U) {
      ++duplicate_event_ids_;
    } else {
      word |= mask;
      ++unique_event_ids_;
    }
    uint64_t hash = splitmix64(l_line);
    const uint64_t hu = splitmix64(u_line);
    const uint64_t ha = splitmix64(a_line);
    hash ^= (hu << 21) | (hu >> 43);
    hash ^= (ha << 42) | (ha >> 22);
    // Sum, XOR, and sum-of-squares are all commutative, giving three compact
    // order-independent checks of the complete (L,U,A) event multiset.
    event_hash_sum_ += hash;
    event_hash_xor_ ^= hash;
    event_hash_sum2_ += hash * hash;
  }

  uint64_t cached_footprint_lines(const std::vector<uint32_t> &lines) const {
    if (caches_.size() != 1) throw std::runtime_error("cache-aware scheduling requires one cache capacity");
    uint64_t hits = 0;
    for (uint32_t line : lines) hits += caches_[0].contains(line) ? 1U : 0U;
    return hits;
  }

  void finish(MethodStats &method, std::vector<CacheResult> &results) {
    // Finalize write-back traffic before extracting per-capacity counters.
    for (ExactLru &cache : caches_) cache.flush_dirty();
    // seen_ is a three-bit ownership mask. It audits unique address sets
    // independently of cache hits, misses, and traversal order.
    for (uint32_t line = 0; line < pattern_.total_lines; ++line) {
      const uint8_t mask = seen_[line];
      if ((mask & 1U) != 0U) {
        ++method.l_unique_lines;
        method.l_hash ^= splitmix64(line);
      }
      if ((mask & 2U) != 0U) {
        ++method.u_unique_lines;
        method.u_hash ^= splitmix64(line);
      }
      if ((mask & 4U) != 0U) {
        ++method.a_unique_lines;
        method.a_hash ^= splitmix64(line);
      }
    }
    for (size_t i = 0; i < caches_.size(); ++i) {
      results.push_back(CacheResult{capacities_[i], caches_[i].stats()});
    }
    method.unique_event_ids = unique_event_ids_;
    method.duplicate_event_ids = duplicate_event_ids_;
    method.event_hash_sum = event_hash_sum_;
    method.event_hash_xor = event_hash_xor_;
    method.event_hash_sum2 = event_hash_sum2_;
    if (unique_event_ids_ != pattern_.atomic_updates || duplicate_event_ids_ != 0) {
      std::ostringstream out;
      out << "canonical event audit failed: unique=" << unique_event_ids_
          << " duplicate=" << duplicate_event_ids_ << " expected=" << pattern_.atomic_updates;
      throw std::runtime_error(out.str());
    }
  }

 private:
  const Pattern &pattern_;
  std::vector<uint64_t> capacities_;
  std::vector<ExactLru> caches_;
  std::vector<uint8_t> seen_;
  std::vector<uint64_t> event_seen_;
  uint64_t unique_event_ids_ = 0;
  uint64_t duplicate_event_ids_ = 0;
  uint64_t event_hash_sum_ = 0;
  uint64_t event_hash_xor_ = 0;
  uint64_t event_hash_sum2_ = 0;
};

std::mutex g_log_mutex;

void log_line(const std::string &message) {
  std::lock_guard<std::mutex> lock(g_log_mutex);
  std::cerr << message << std::endl;
}

uint32_t target_line(const Pattern &p, uint32_t i, uint32_t j) {
  // Resolve A(i,j) through its compact target-block slot. A lookup failure is
  // an internal consistency error because every emitted L*U product was used
  // to construct this table in build_pattern().
  const uint32_t ib = i / p.block_size;
  const uint32_t jb = j / p.block_size;
  const int32_t slot = p.target_block_slot[static_cast<size_t>(ib) * p.block_count + jb];
  if (slot < 0) throw std::runtime_error("atom maps outside the target block set");
  const uint32_t li = i % p.block_size;
  const uint32_t lj = j % p.block_size;
  const uint64_t offset = (static_cast<uint64_t>(slot) * p.block_size + li) * p.block_size + lj;
  const uint32_t line = p.target_line_table[offset];
  if (line == kMissing) {
    std::ostringstream out;
    out << "sparse-product target table is missing A(" << i << ',' << j << ") required by L*U";
    throw std::runtime_error(out.str());
  }
  return line;
}

std::vector<Coord> read_matrix_market(const std::string &path, uint32_t &n) {
  std::ifstream input(path);
  if (!input) throw std::runtime_error("cannot open Matrix Market file: " + path);
  std::string line;
  if (!std::getline(input, line) || line.rfind("%%MatrixMarket matrix coordinate", 0) != 0) {
    throw std::runtime_error("input is not a Matrix Market coordinate matrix");
  }
  do {
    if (!std::getline(input, line)) throw std::runtime_error("missing Matrix Market size line");
  } while (!line.empty() && line[0] == '%');
  std::istringstream dims(line);
  uint32_t rows = 0, cols = 0;
  uint64_t declared = 0;
  dims >> rows >> cols >> declared;
  if (!dims || rows != cols) throw std::runtime_error("matrix must be square");
  n = rows;
  std::vector<Coord> coords;
  coords.reserve(declared);
  uint32_t row = 0, col = 0;
  while (input >> row >> col) {
    std::getline(input, line);
    if (row == 0 || col == 0 || row > n || col > n) throw std::runtime_error("invalid coordinate");
    coords.push_back(Coord{row - 1, col - 1});
  }
  if (coords.size() != declared) {
    std::ostringstream out;
    out << "declared " << declared << " entries but parsed " << coords.size();
    throw std::runtime_error(out.str());
  }
  // Canonical column-major ordering makes L(:,k) naturally row sorted after
  // partitioning, while the explicit U-row sort below handles U(k,:).
  std::sort(coords.begin(), coords.end(), [](const Coord &a, const Coord &b) {
    return std::tie(a.col, a.row) < std::tie(b.col, b.row);
  });
  coords.erase(std::unique(coords.begin(), coords.end(), [](const Coord &a, const Coord &b) {
                 return a.row == b.row && a.col == b.col;
               }),
               coords.end());
  return coords;
}

Pattern build_pattern(const std::string &path, uint32_t block_size, uint32_t segment_height) {
  Pattern p;
  p.block_size = block_size;
  p.segment_height = segment_height;
  std::vector<Coord> coords = read_matrix_market(path, p.n);
  p.union_nnz = coords.size();
  p.block_count = (p.n + block_size - 1) / block_size;
  p.lower.resize(p.n);
  p.upper.resize(p.n);

  for (const Coord &coord : coords) {
    if (coord.row > coord.col) {
      p.lower[coord.col].push_back(Entry{coord.row, 0});
      ++p.lower_nnz;
    } else if (coord.row < coord.col) {
      p.upper[coord.row].push_back(Entry{coord.col, 0});
      ++p.upper_nnz;
    } else {
      ++p.diagonal_nnz;
    }
  }
  for (auto &row : p.upper) {
    std::sort(row.begin(), row.end(), [](const Entry &a, const Entry &b) { return a.index < b.index; });
  }

  // Lay out L, U, and A in non-overlapping 64-byte-aligned regions. Each sparse
  // record is attributed to the line containing the start of its 8-byte AoS
  // record, so no record straddles a line.
  const uint64_t l_bytes = p.lower_nnz * kRecordBytes;
  const uint64_t u_bytes = p.upper_nnz * kRecordBytes;
  p.l_base = 0;
  p.u_base = static_cast<uint32_t>(align_up(l_bytes, kLineBytes) / kLineBytes);
  p.a_base = p.u_base + static_cast<uint32_t>(align_up(u_bytes, kLineBytes) / kLineBytes);

  uint64_t ordinal = 0;
  for (auto &column : p.lower) {
    for (Entry &entry : column) entry.line = p.l_base + static_cast<uint32_t>((ordinal++ * kRecordBytes) / kLineBytes);
  }
  ordinal = 0;
  for (auto &row : p.upper) {
    for (Entry &entry : row) entry.line = p.u_base + static_cast<uint32_t>((ordinal++ * kRecordBytes) / kLineBytes);
  }

  // Restrict the trace to block-trailing updates and precompute canonical event
  // ranges. Within pivot k, event IDs use row-major (L position, U position)
  // order regardless of how a scheduling method later visits those events.
  p.active_lower.resize(p.n);
  p.active_upper.resize(p.n);
  p.event_base.resize(static_cast<size_t>(p.n) + 1, 0);
  std::vector<uint8_t> target_blocks(static_cast<size_t>(p.block_count) * p.block_count, 0);
  std::vector<std::vector<uint32_t>> lblocks_by_kblock(p.block_count);
  std::vector<std::vector<uint32_t>> ublocks_by_kblock(p.block_count);
  for (uint32_t k = 0; k < p.n; ++k) {
    p.event_base[k] = p.atomic_updates;
    const uint32_t kb = k / block_size;
    for (const Entry &entry : p.lower[k]) {
      if (entry.index / block_size > kb) p.active_lower[k].push_back(entry);
    }
    for (const Entry &entry : p.upper[k]) {
      if (entry.index / block_size > kb) p.active_upper[k].push_back(entry);
    }
    for (const Entry &l : p.active_lower[k]) lblocks_by_kblock[kb].push_back(l.index / block_size);
    for (const Entry &u : p.active_upper[k]) ublocks_by_kblock[kb].push_back(u.index / block_size);
    if (p.active_lower[k].empty() || p.active_upper[k].empty()) continue;
    p.atomic_updates += static_cast<uint64_t>(p.active_lower[k].size()) * p.active_upper[k].size();
  }
  p.event_base[p.n] = p.atomic_updates;

  // The outer product of L and U block coordinates identifies every A block
  // that can receive at least one update from this symbolic pattern.
  for (uint32_t kb = 0; kb < p.block_count; ++kb) {
    auto &lbs = lblocks_by_kblock[kb];
    auto &ubs = ublocks_by_kblock[kb];
    std::sort(lbs.begin(), lbs.end());
    lbs.erase(std::unique(lbs.begin(), lbs.end()), lbs.end());
    std::sort(ubs.begin(), ubs.end());
    ubs.erase(std::unique(ubs.begin(), ubs.end()), ubs.end());
    for (uint32_t ib : lbs) {
      for (uint32_t jb : ubs) {
        target_blocks[static_cast<size_t>(ib) * p.block_count + jb] = 1;
      }
    }
  }

  p.target_block_slot.assign(target_blocks.size(), -1);
  // Compact only present target blocks; absent (I,J) coordinates keep slot -1.
  for (size_t key = 0; key < target_blocks.size(); ++key) {
    if (target_blocks[key]) p.target_block_slot[key] = static_cast<int32_t>(p.target_block_count++);
  }
  const uint64_t target_slots = static_cast<uint64_t>(p.target_block_count) * block_size * block_size;
  if (target_slots > static_cast<uint64_t>(std::numeric_limits<size_t>::max())) {
    throw std::runtime_error("target line lookup table exceeds host address space");
  }
  p.target_line_table.assign(static_cast<size_t>(target_slots), kMissing);
  // Mark the exact scalar A(i,j) target set.  It is the sparse product target
  // set, not necessarily a coordinate already present in the L/U union.
  for (uint32_t k = 0; k < p.n; ++k) {
    for (const Entry &l : p.active_lower[k]) {
      const uint32_t ib = l.index / block_size;
      const uint32_t li = l.index % block_size;
      for (const Entry &u : p.active_upper[k]) {
        const uint32_t jb = u.index / block_size;
        const uint32_t lj = u.index % block_size;
        const int32_t slot = p.target_block_slot[static_cast<size_t>(ib) * p.block_count + jb];
        const uint64_t offset = (static_cast<uint64_t>(slot) * block_size + li) * block_size + lj;
        p.target_line_table[offset] = 0;
      }
    }
  }
  // Assign compact CSC addresses: column j first, then row i.
  uint64_t a_ordinal = 0;
  for (uint32_t j = 0; j < p.n; ++j) {
    const uint32_t jb = j / block_size;
    const uint32_t lj = j % block_size;
    for (uint32_t ib = 0; ib < p.block_count; ++ib) {
      const int32_t slot = p.target_block_slot[static_cast<size_t>(ib) * p.block_count + jb];
      if (slot < 0) continue;
      const uint32_t row_begin = ib * block_size;
      const uint32_t row_end = std::min<uint32_t>(p.n, row_begin + block_size);
      for (uint32_t i = row_begin; i < row_end; ++i) {
        const uint64_t offset = (static_cast<uint64_t>(slot) * block_size + i % block_size) * block_size + lj;
        if (p.target_line_table[offset] != kMissing) {
          p.target_line_table[offset] = p.a_base + static_cast<uint32_t>((a_ordinal++ * kRecordBytes) / kLineBytes);
        }
      }
    }
  }
  p.a_target_nnz = a_ordinal;
  p.total_lines = p.a_base + static_cast<uint32_t>(align_up(p.a_target_nnz * kRecordBytes, kLineBytes) / kLineBytes);

  // Build SALUT-style tasks keyed by (j, segment). Contributions are appended
  // in ascending k, and L rows are already ascending within each segment.
  std::map<std::pair<uint32_t, uint32_t>, std::vector<SegmentContribution>> segment_map;
  for (uint32_t k = 0; k < p.n; ++k) {
    const auto &ls = p.active_lower[k];
    const auto &us = p.active_upper[k];
    if (ls.empty() || us.empty()) continue;
    size_t begin = 0;
    while (begin < ls.size()) {
      const uint32_t segment = ls[begin].index / segment_height;
      size_t end = begin + 1;
      while (end < ls.size() && ls[end].index / segment_height == segment) ++end;
      for (uint32_t u_pos = 0; u_pos < us.size(); ++u_pos) {
        const Entry &u = us[u_pos];
        segment_map[{u.index, segment}].push_back(
            SegmentContribution{k, u_pos, u.line,
                                Range{static_cast<uint32_t>(begin), static_cast<uint32_t>(end)}});
      }
      begin = end;
    }
  }
  p.segment_tasks.reserve(segment_map.size());
  for (auto &item : segment_map) {
    p.segment_tasks.push_back(SegmentTask{item.first.first, item.first.second, std::move(item.second), {}});
  }

  // A compact exact line footprint supports deterministic cache-aware task
  // selection without changing the atom stream inside a task.
  std::vector<uint32_t> footprint_stamp(p.total_lines, 0);
  uint32_t footprint_token = 0;
  for (SegmentTask &task : p.segment_tasks) {
    if (++footprint_token == 0) {
      std::fill(footprint_stamp.begin(), footprint_stamp.end(), 0);
      footprint_token = 1;
    }
    auto add_line = [&](uint32_t line) {
      if (footprint_stamp[line] != footprint_token) {
        footprint_stamp[line] = footprint_token;
        task.footprint_lines.push_back(line);
      }
    };
    for (const SegmentContribution &contribution : task.contributions) {
      add_line(contribution.u_line);
      const auto &ls = p.active_lower[contribution.k];
      for (uint32_t index = contribution.l.begin; index < contribution.l.end; ++index) {
        const Entry &l = ls[index];
        add_line(l.line);
        add_line(target_line(p, l.index, task.j));
      }
    }
    std::sort(task.footprint_lines.begin(), task.footprint_lines.end());
  }

  // Build Block tasks keyed lexicographically by (I,J,K).  The contribution
  // order is k ascending, then i ascending, then j ascending.
  std::map<std::tuple<uint32_t, uint32_t, uint32_t>, std::vector<BlockContribution>> block_map;
  for (uint32_t k = 0; k < p.n; ++k) {
    const auto &ls = p.active_lower[k];
    const auto &us = p.active_upper[k];
    if (ls.empty() || us.empty()) continue;
    std::vector<std::pair<uint32_t, Range>> lranges;
    std::vector<std::pair<uint32_t, Range>> uranges;
    size_t begin = 0;
    while (begin < ls.size()) {
      const uint32_t ib = ls[begin].index / block_size;
      size_t end = begin + 1;
      while (end < ls.size() && ls[end].index / block_size == ib) ++end;
      lranges.push_back({ib, Range{static_cast<uint32_t>(begin), static_cast<uint32_t>(end)}});
      begin = end;
    }
    begin = 0;
    while (begin < us.size()) {
      const uint32_t jb = us[begin].index / block_size;
      size_t end = begin + 1;
      while (end < us.size() && us[end].index / block_size == jb) ++end;
      uranges.push_back({jb, Range{static_cast<uint32_t>(begin), static_cast<uint32_t>(end)}});
      begin = end;
    }
    const uint32_t kb = k / block_size;
    for (const auto &lr : lranges) {
      for (const auto &ur : uranges) {
        block_map[{lr.first, ur.first, kb}].push_back(BlockContribution{k, lr.second, ur.second});
      }
    }
  }
  p.block_tasks.reserve(block_map.size());
  for (auto &item : block_map) {
    p.block_tasks.push_back(BlockTask{std::get<0>(item.first), std::get<1>(item.first),
                                      std::get<2>(item.first), std::move(item.second)});
  }
  // Retain scheduled block products with no common internal scalar pivot.
  // They consume descriptors but have no data references.
  for (uint32_t kb = 0; kb < p.block_count; ++kb) {
    for (uint32_t ib : lblocks_by_kblock[kb]) {
      for (uint32_t jb : ublocks_by_kblock[kb]) {
        const auto key = std::make_tuple(ib, jb, kb);
        if (block_map.find(key) == block_map.end()) {
          p.block_tasks.push_back(BlockTask{ib, jb, kb, {}});
        }
      }
    }
  }
  std::sort(p.block_tasks.begin(), p.block_tasks.end(), [](const BlockTask &a, const BlockTask &b) {
    return std::tie(a.iblock, a.jblock, a.kblock) < std::tie(b.iblock, b.jblock, b.kblock);
  });

  return p;
}

using SimulationResult = std::pair<MethodStats, std::vector<CacheResult>>;

uint64_t segment_dependency_count(const Pattern &p) {
  uint64_t count = 0;
  for (const SegmentTask &task : p.segment_tasks) count += task.contributions.size();
  return count;
}

void execute_segment_task(const Pattern &p, const SegmentTask &task, StreamSimulator &sim,
                          MethodStats &m) {
  // A segment contribution fixes U(k,j); pairing it with its L interval emits
  // the same canonical scalar events as the operation-order traversal.
  for (const SegmentContribution &contribution : task.contributions) {
    const auto &ls = p.active_lower[contribution.k];
    const uint64_t u_count = p.active_upper[contribution.k].size();
    for (uint32_t index = contribution.l.begin; index < contribution.l.end; ++index) {
      const Entry &l = ls[index];
      const uint32_t a_line = target_line(p, l.index, task.j);
      const uint64_t event_id = p.event_base[contribution.k] +
                                static_cast<uint64_t>(index) * u_count + contribution.u_pos;
      sim.mark_event(event_id, l.line, contribution.u_line, a_line);
      sim.access(l.line, Kind::L);
      sim.access(contribution.u_line, Kind::U);
      sim.access(a_line, Kind::A, true);
      ++m.atomic_updates;
    }
  }
}

SimulationResult simulate_operation(const Pattern &p, const std::vector<uint64_t> &capacities) {
  MethodStats m;
  m.method = "operation";
  m.grain_size = kOperationLanes;
  m.tasks = ceil_div(p.atomic_updates, kOperationLanes);
  m.dependencies = m.tasks;
  m.descriptor_bytes = m.tasks * kTaskDescriptorBytes + m.dependencies * kDependencyDescriptorBytes;
  StreamSimulator sim(p, capacities);
  const auto start = std::chrono::steady_clock::now();
  uint64_t next_progress = 100000000ULL;
  // Baseline atom order is lexicographic (k, i, j). Control accounting groups
  // consecutive scalar updates into ideal fully occupied 16-lane VLIW bundles;
  // the final bundle may contain padding slots but emits no extra memory event.
  for (uint32_t k = 0; k < p.n; ++k) {
    const auto &ls = p.active_lower[k];
    const auto &us = p.active_upper[k];
    for (uint32_t li = 0; li < ls.size(); ++li) {
      const Entry &l = ls[li];
      for (uint32_t ui = 0; ui < us.size(); ++ui) {
        const Entry &u = us[ui];
        const uint32_t a_line = target_line(p, l.index, u.index);
        const uint64_t event_id = p.event_base[k] + static_cast<uint64_t>(li) * us.size() + ui;
        sim.mark_event(event_id, l.line, u.line, a_line);
        sim.access(l.line, Kind::L);
        sim.access(u.line, Kind::U);
        sim.access(a_line, Kind::A, true);
        ++m.atomic_updates;
      }
    }
    if (m.atomic_updates >= next_progress) {
      log_line("PB_LRU_PROGRESS method=operation atomic=" + std::to_string(m.atomic_updates));
      next_progress += 100000000ULL;
    }
  }
  std::vector<CacheResult> results;
  sim.finish(m, results);
  m.elapsed_seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {m, results};
}

SimulationResult simulate_segment_order(const Pattern &p, const std::vector<uint64_t> &capacities,
                                        const std::vector<uint32_t> &order,
                                        const std::string &method_name) {
  MethodStats m;
  m.method = method_name;
  m.grain_size = p.segment_height;
  m.tasks = p.segment_tasks.size();
  m.dependencies = segment_dependency_count(p);
  m.descriptor_bytes = m.tasks * kTaskDescriptorBytes + m.dependencies * kDependencyDescriptorBytes;
  StreamSimulator sim(p, capacities);
  const auto start = std::chrono::steady_clock::now();
  uint64_t next_progress = 100000000ULL;
  for (uint32_t task_index : order) {
    execute_segment_task(p, p.segment_tasks[task_index], sim, m);
    if (m.atomic_updates >= next_progress) {
      log_line("PB_LRU_PROGRESS method=" + method_name + " atomic=" + std::to_string(m.atomic_updates));
      next_progress += 100000000ULL;
    }
  }
  std::vector<CacheResult> results;
  sim.finish(m, results);
  m.elapsed_seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {m, results};
}

SimulationResult simulate_segment_native(const Pattern &p, const std::vector<uint64_t> &capacities) {
  // build_pattern() creates tasks in map order (j, segment), which is the
  // native SALUT-style traversal used by this control case.
  std::vector<uint32_t> order(p.segment_tasks.size());
  std::iota(order.begin(), order.end(), 0);
  return simulate_segment_order(p, capacities, order, "segment-native");
}

SimulationResult simulate_segment_l_affinity(const Pattern &p,
                                             const std::vector<uint64_t> &capacities) {
  std::vector<uint32_t> order(p.segment_tasks.size());
  std::iota(order.begin(), order.end(), 0);
  // Group equal row segments to encourage L reuse while preserving target
  // column order inside each segment.
  std::stable_sort(order.begin(), order.end(), [&](uint32_t a, uint32_t b) {
    const SegmentTask &ta = p.segment_tasks[a];
    const SegmentTask &tb = p.segment_tasks[b];
    return std::tie(ta.segment, ta.j) < std::tie(tb.segment, tb.j);
  });
  return simulate_segment_order(p, capacities, order, "segment-l-affinity");
}

SimulationResult simulate_segment_cache_aware_one(const Pattern &p, uint64_t capacity) {
  MethodStats m;
  m.method = "segment-cache-aware";
  m.grain_size = p.segment_height;
  m.tasks = p.segment_tasks.size();
  m.dependencies = segment_dependency_count(p);
  m.descriptor_bytes = m.tasks * kTaskDescriptorBytes + m.dependencies * kDependencyDescriptorBytes;
  StreamSimulator sim(p, {capacity});
  const auto start = std::chrono::steady_clock::now();

  // Ready-set definition: one head task per segment queue.  Tasks inside each
  // segment retain ascending target-column order.  At every dispatch, choose
  // the ready head with the largest exact resident L/U/A footprint in the
  // modeled cache; ties use (j,segment).  This is deterministic and bounded.
  std::map<uint32_t, std::vector<uint32_t>> queues_by_segment;
  for (uint32_t index = 0; index < p.segment_tasks.size(); ++index) {
    queues_by_segment[p.segment_tasks[index].segment].push_back(index);
  }
  struct QueueCursor {
    const std::vector<uint32_t> *tasks;
    size_t position;
  };
  std::vector<QueueCursor> queues;
  for (const auto &item : queues_by_segment) queues.push_back(QueueCursor{&item.second, 0});

  uint64_t next_progress = 100000000ULL;
  for (uint64_t dispatched = 0; dispatched < p.segment_tasks.size(); ++dispatched) {
    size_t best_queue = std::numeric_limits<size_t>::max();
    uint64_t best_hits = 0;
    uint32_t best_j = std::numeric_limits<uint32_t>::max();
    uint32_t best_segment = std::numeric_limits<uint32_t>::max();
    for (size_t q = 0; q < queues.size(); ++q) {
      const QueueCursor &cursor = queues[q];
      if (cursor.position >= cursor.tasks->size()) continue;
      const SegmentTask &task = p.segment_tasks[(*cursor.tasks)[cursor.position]];
      const uint64_t hits = sim.cached_footprint_lines(task.footprint_lines);
      if (best_queue == std::numeric_limits<size_t>::max() || hits > best_hits ||
          (hits == best_hits && std::tie(task.j, task.segment) < std::tie(best_j, best_segment))) {
        best_queue = q;
        best_hits = hits;
        best_j = task.j;
        best_segment = task.segment;
      }
    }
    if (best_queue == std::numeric_limits<size_t>::max()) {
      throw std::runtime_error("cache-aware ready set became empty before all tasks were dispatched");
    }
    QueueCursor &cursor = queues[best_queue];
    const uint32_t task_index = (*cursor.tasks)[cursor.position++];
    execute_segment_task(p, p.segment_tasks[task_index], sim, m);
    if (m.atomic_updates >= next_progress) {
      log_line("PB_LRU_PROGRESS method=segment-cache-aware cache=" + std::to_string(capacity) +
               " atomic=" + std::to_string(m.atomic_updates));
      next_progress += 100000000ULL;
    }
  }
  std::vector<CacheResult> results;
  sim.finish(m, results);
  m.elapsed_seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {m, results};
}

SimulationResult simulate_segment_cache_aware(const Pattern &p,
                                              const std::vector<uint64_t> &capacities) {
  // Since residency changes with capacity, each capacity needs its own greedy
  // schedule. The resulting runs are merged after their event sets are audited.
  SimulationResult merged;
  bool first = true;
  for (uint64_t capacity : capacities) {
    SimulationResult one = simulate_segment_cache_aware_one(p, capacity);
    if (first) {
      merged.first = one.first;
      first = false;
    } else {
      const MethodStats &a = merged.first;
      const MethodStats &b = one.first;
      if (a.atomic_updates != b.atomic_updates || a.unique_event_ids != b.unique_event_ids ||
          a.event_hash_sum != b.event_hash_sum || a.event_hash_xor != b.event_hash_xor ||
          a.event_hash_sum2 != b.event_hash_sum2) {
        throw std::runtime_error("capacity-specific cache-aware orders changed the event multiset");
      }
      merged.first.elapsed_seconds += b.elapsed_seconds;
    }
    merged.second.insert(merged.second.end(), one.second.begin(), one.second.end());
  }
  return merged;
}

SimulationResult simulate_block(const Pattern &p, const std::vector<uint64_t> &capacities) {
  MethodStats m;
  m.method = "block";
  m.grain_size = p.block_size;
  m.tasks = p.block_tasks.size();
  m.dependencies = p.block_tasks.size();
  m.descriptor_bytes = m.tasks * kTaskDescriptorBytes + m.dependencies * kDependencyDescriptorBytes;
  StreamSimulator sim(p, capacities);
  const auto start = std::chrono::steady_clock::now();
  uint64_t next_progress = 100000000ULL;
  // Tasks are lexicographic (I,J,K). Within a task, contributions and ranges
  // emit (k,i,j) order, including empty scheduled block products that consume
  // control metadata but generate no memory accesses.
  for (const BlockTask &task : p.block_tasks) {
    for (const BlockContribution &contribution : task.contributions) {
      const auto &ls = p.active_lower[contribution.k];
      const auto &us = p.active_upper[contribution.k];
      for (uint32_t li = contribution.l.begin; li < contribution.l.end; ++li) {
        const Entry &l = ls[li];
        for (uint32_t ui = contribution.u.begin; ui < contribution.u.end; ++ui) {
          const Entry &u = us[ui];
          const uint32_t a_line = target_line(p, l.index, u.index);
          const uint64_t event_id = p.event_base[contribution.k] +
                                    static_cast<uint64_t>(li) * us.size() + ui;
          sim.mark_event(event_id, l.line, u.line, a_line);
          sim.access(l.line, Kind::L);
          sim.access(u.line, Kind::U);
          sim.access(a_line, Kind::A, true);
          ++m.atomic_updates;
        }
      }
    }
    if (m.atomic_updates >= next_progress) {
      log_line("PB_LRU_PROGRESS method=block atomic=" + std::to_string(m.atomic_updates));
      next_progress += 100000000ULL;
    }
  }
  std::vector<CacheResult> results;
  sim.finish(m, results);
  m.elapsed_seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {m, results};
}

SimulationResult make_operation_block_order(const Pattern &p, const SimulationResult &block) {
  SimulationResult result = block;
  result.first.method = "operation-block-order";
  result.first.grain_size = kOperationLanes;
  result.first.tasks = ceil_div(p.atomic_updates, kOperationLanes);
  result.first.dependencies = result.first.tasks;
  result.first.descriptor_bytes = result.first.tasks * kTaskDescriptorBytes +
                                  result.first.dependencies * kDependencyDescriptorBytes;
  // This control intentionally reuses the exact atom order of the Block trace.
  // There is no cache flush at task boundaries, so its data trace is identical
  // while its task/metadata cardinality remains 16-lane VLIW-bundle-level.
  return result;
}

std::vector<uint64_t> parse_capacities(const std::string &text) {
  // Accept comma-separated byte counts with optional binary K/M suffixes.
  std::vector<uint64_t> values;
  std::istringstream input(text);
  std::string token;
  while (std::getline(input, token, ',')) {
    if (token.empty()) continue;
    char suffix = token.back();
    uint64_t scale = 1;
    if (suffix == 'M' || suffix == 'm') {
      scale = 1024ULL * 1024ULL;
      token.pop_back();
    } else if (suffix == 'K' || suffix == 'k') {
      scale = 1024ULL;
      token.pop_back();
    }
    values.push_back(std::stoull(token) * scale);
  }
  if (values.empty()) throw std::runtime_error("no cache capacities provided");
  return values;
}

[[maybe_unused]] void write_outputs(const std::string &output_dir, const Pattern &p,
                                    const std::vector<SimulationResult> &all) {
  const std::string csv_path = output_dir + "/cache_traffic.csv";
  std::ofstream csv(csv_path);
  if (!csv) throw std::runtime_error("cannot create " + csv_path);
  csv << "method,grain_size,cache_bytes,l_misses,l_reloads,u_misses,u_reloads,a_reads,a_writebacks,"
         "data_bytes,metadata_bytes,total_bytes,logical_flops,bytes_per_flop\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    for (const CacheResult &cache : result.second) {
      const CacheStats &s = cache.stats;
      const uint64_t l_reloads = s.l_misses - m.l_unique_lines;
      const uint64_t u_reloads = s.u_misses - m.u_unique_lines;
      const uint64_t data_bytes = (s.l_misses + s.u_misses + s.a_reads + s.a_writebacks) * kLineBytes;
      const uint64_t total_bytes = data_bytes + m.descriptor_bytes;
      const uint64_t logical_flops = 2 * m.atomic_updates;
      const double bytes_per_flop = logical_flops ? static_cast<double>(total_bytes) / logical_flops : 0.0;
      csv << m.method << ',' << m.grain_size << ',' << cache.capacity_bytes << ',' << s.l_misses << ','
          << l_reloads << ',' << s.u_misses << ',' << u_reloads << ',' << s.a_reads << ','
          << s.a_writebacks << ',' << data_bytes << ',' << m.descriptor_bytes << ',' << total_bytes << ','
          << logical_flops << ',' << std::setprecision(12) << bytes_per_flop << '\n';
    }
  }

  const std::string audit_path = output_dir + "/address_set_audit.csv";
  std::ofstream audit(audit_path);
  if (!audit) throw std::runtime_error("cannot create " + audit_path);
  audit << "method,atomic_updates,l_unique_lines,u_unique_lines,a_unique_lines,l_hash,u_hash,a_hash,elapsed_seconds\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    audit << m.method << ',' << m.atomic_updates << ',' << m.l_unique_lines << ',' << m.u_unique_lines << ','
          << m.a_unique_lines << ',' << std::hex << m.l_hash << ',' << m.u_hash << ',' << m.a_hash << std::dec
          << ',' << std::fixed << std::setprecision(6) << m.elapsed_seconds << '\n';
  }

  const std::string report_path = output_dir + "/cache_pilot_report.json";
  std::ofstream report(report_path);
  if (!report) throw std::runtime_error("cannot create " + report_path);
  bool identical = true;
  for (size_t i = 1; i < all.size(); ++i) {
    const MethodStats &a = all[0].first;
    const MethodStats &b = all[i].first;
    identical &= a.atomic_updates == b.atomic_updates && a.l_unique_lines == b.l_unique_lines &&
                 a.u_unique_lines == b.u_unique_lines && a.a_unique_lines == b.a_unique_lines &&
                 a.l_hash == b.l_hash && a.u_hash == b.u_hash && a.a_hash == b.a_hash;
  }
  report << "{\n"
         << "  \"schema\": \"granularity-cache-pilot-v1\",\n"
         << "  \"scope\": \"SSSSM/block-trailing\",\n"
         << "  \"scope_condition\": \"floor(i/B)>floor(k/B) and floor(j/B)>floor(k/B)\",\n"
         << "  \"block_size\": " << p.block_size << ",\n"
         << "  \"segment_height\": " << p.segment_height << ",\n"
         << "  \"atomic_updates\": " << p.atomic_updates << ",\n"
         << "  \"address_layout\": \"64B-aligned disjoint L-column/U-row/A-column regions; 8B AoS records (FP32 value + int32 index); start-line attribution\",\n"
         << "  \"traversal_operation\": \"k,i,j lexicographic\",\n"
         << "  \"traversal_segment\": \"task(j,s), then k,i lexicographic\",\n"
         << "  \"traversal_block\": \"task(I,J,K), then k,i,j lexicographic\",\n"
         << "  \"cache_policy\": \"fully-associative write-back/write-allocate LRU\",\n"
         << "  \"logical_flops_per_update\": 2,\n"
         << "  \"column_pointer_and_dma_metadata_excluded\": true,\n"
         << "  \"unique_address_sets_identical\": " << (identical ? "true" : "false") << ",\n"
         << "  \"strict_union_nnz\": " << p.union_nnz << ",\n"
         << "  \"strict_l_nnz\": " << p.lower_nnz << ",\n"
         << "  \"strict_u_nnz\": " << p.upper_nnz << ",\n"
         << "  \"a_target_nnz\": " << p.a_target_nnz << ",\n"
         << "  \"target_blocks\": " << p.target_block_count << ",\n"
         << "  \"total_address_lines\": " << p.total_lines << "\n"
         << "}\n";
  if (!identical) throw std::runtime_error("three traversal methods reached different atomic/address sets");
}

void write_outputs_v2(const std::string &output_dir, const Pattern &p,
                      const std::vector<SimulationResult> &all) {
  // Primary traffic table: matrix traffic is kept separate from the normalized
  // task/dependency metadata model so alternative control widths and reuse
  // assumptions can be evaluated without replaying the trace.
  const std::string csv_path = output_dir + "/cache_traffic.csv";
  std::ofstream csv(csv_path);
  if (!csv) throw std::runtime_error("cannot create " + csv_path);
  csv << "method,grain_size,cache_bytes,l_misses,l_reloads,u_misses,u_reloads,a_reads,a_writebacks,"
         "data_bytes,compulsory_data_bytes,traffic_amplification,data_bytes_per_flop,"
         "metadata_footprint_bytes,metadata_streamed_bytes_per_run,amortized_metadata_bytes_per_run_r10,"
         "streamed_total_bytes_per_run,logical_flops,streamed_total_bytes_per_flop,"
         "metadata_bytes,total_bytes,bytes_per_flop\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    for (const CacheResult &cache : result.second) {
      const CacheStats &s = cache.stats;
      const uint64_t l_reloads = s.l_misses - m.l_unique_lines;
      const uint64_t u_reloads = s.u_misses - m.u_unique_lines;
      const uint64_t data_bytes = (s.l_misses + s.u_misses + s.a_reads + s.a_writebacks) * kLineBytes;
      const uint64_t compulsory_bytes =
          (m.l_unique_lines + m.u_unique_lines + 2 * m.a_unique_lines) * kLineBytes;
      const uint64_t logical_flops = 2 * m.atomic_updates;
      const uint64_t metadata_footprint = m.descriptor_bytes;
      const uint64_t metadata_streamed = metadata_footprint;
      const uint64_t metadata_amortized_r10 = (metadata_footprint + 9) / 10;
      const uint64_t streamed_total = data_bytes + metadata_streamed;
      csv << m.method << ',' << m.grain_size << ',' << cache.capacity_bytes << ',' << s.l_misses << ','
          << l_reloads << ',' << s.u_misses << ',' << u_reloads << ',' << s.a_reads << ','
          << s.a_writebacks << ',' << data_bytes << ',' << compulsory_bytes << ','
          << std::setprecision(12) << static_cast<double>(data_bytes) / compulsory_bytes << ','
          << static_cast<double>(data_bytes) / logical_flops << ',' << metadata_footprint << ','
          << metadata_streamed << ',' << metadata_amortized_r10 << ',' << streamed_total << ','
          << logical_flops << ',' << static_cast<double>(streamed_total) / logical_flops << ','
          << metadata_footprint << ',' << streamed_total << ','
          << static_cast<double>(streamed_total) / logical_flops << '\n';
    }
  }

  const std::string audit_path = output_dir + "/address_set_audit.csv";
  std::ofstream audit(audit_path);
  if (!audit) throw std::runtime_error("cannot create " + audit_path);
  audit << "method,atomic_updates,canonical_event_ids,duplicate_event_ids,event_hash_sum,event_hash_xor,"
           "event_hash_sum2,l_unique_lines,u_unique_lines,a_unique_lines,l_hash,u_hash,a_hash,elapsed_seconds\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    audit << m.method << ',' << m.atomic_updates << ',' << m.unique_event_ids << ','
          << m.duplicate_event_ids << ',' << std::hex << m.event_hash_sum << ',' << m.event_hash_xor << ','
          << m.event_hash_sum2 << std::dec << ',' << m.l_unique_lines << ',' << m.u_unique_lines << ','
          << m.a_unique_lines << ',' << std::hex << m.l_hash << ',' << m.u_hash << ',' << m.a_hash << std::dec
          << ',' << std::fixed << std::setprecision(6) << m.elapsed_seconds << '\n';
  }

  // Sensitivity scan for hypothetical fixed control bytes per task. Unlike the
  // baseline descriptor model, this deliberately ignores contribution count.
  const std::array<uint32_t, 8> widths{{0, 1, 2, 4, 8, 16, 32, 40}};
  const std::string width_path = output_dir + "/descriptor_width_scan.csv";
  std::ofstream width_csv(width_path);
  if (!width_csv) throw std::runtime_error("cannot create " + width_path);
  width_csv << "method,cache_bytes,normalized_control_bytes_per_task,tasks,data_bytes,"
               "metadata_streamed_bytes,total_streamed_bytes,logical_flops,total_bytes_per_flop\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    for (const CacheResult &cache : result.second) {
      const CacheStats &s = cache.stats;
      const uint64_t data_bytes = (s.l_misses + s.u_misses + s.a_reads + s.a_writebacks) * kLineBytes;
      for (uint32_t width : widths) {
        const uint64_t metadata = static_cast<uint64_t>(width) * m.tasks;
        const uint64_t total = data_bytes + metadata;
        const uint64_t flops = 2 * m.atomic_updates;
        width_csv << m.method << ',' << cache.capacity_bytes << ',' << width << ',' << m.tasks << ','
                  << data_bytes << ',' << metadata << ',' << total << ',' << flops << ','
                  << std::setprecision(12) << static_cast<double>(total) / flops << '\n';
      }
    }
  }

  // Report three metadata delivery interpretations: stream every run, preload
  // once and amortize, or generate online with no external metadata traffic.
  const std::array<uint32_t, 6> repeats{{1, 2, 5, 10, 20, 100}};
  const std::string amortization_path = output_dir + "/metadata_amortization.csv";
  std::ofstream amortization(amortization_path);
  if (!amortization) throw std::runtime_error("cannot create " + amortization_path);
  amortization << "method,repeats,metadata_footprint_bytes,stream_each_run_bytes_per_run,"
                  "preload_once_amortized_bytes_per_run,online_generate_external_bytes_per_run\n";
  for (const auto &result : all) {
    const MethodStats &m = result.first;
    for (uint32_t repeat : repeats) {
      amortization << m.method << ',' << repeat << ',' << m.descriptor_bytes << ','
                   << m.descriptor_bytes << ',' << (m.descriptor_bytes + repeat - 1) / repeat << ",0\n";
    }
  }

  // Require both address-set equality and canonical-event multiset equality.
  // The former catches gross coverage errors; the latter also catches duplicate
  // or substituted scalar updates that happen to touch the same cache lines.
  bool addresses_identical = true;
  bool events_identical = true;
  const MethodStats &reference = all.at(0).first;
  for (size_t i = 1; i < all.size(); ++i) {
    const MethodStats &m = all[i].first;
    addresses_identical &= reference.atomic_updates == m.atomic_updates &&
                            reference.l_unique_lines == m.l_unique_lines &&
                            reference.u_unique_lines == m.u_unique_lines &&
                            reference.a_unique_lines == m.a_unique_lines && reference.l_hash == m.l_hash &&
                            reference.u_hash == m.u_hash && reference.a_hash == m.a_hash;
    events_identical &= reference.atomic_updates == m.atomic_updates &&
                        m.unique_event_ids == p.atomic_updates && m.duplicate_event_ids == 0 &&
                        reference.event_hash_sum == m.event_hash_sum &&
                        reference.event_hash_xor == m.event_hash_xor &&
                        reference.event_hash_sum2 == m.event_hash_sum2;
  }
  events_identical &= reference.unique_event_ids == p.atomic_updates && reference.duplicate_event_ids == 0;
  const uint64_t compulsory_bytes =
      (reference.l_unique_lines + reference.u_unique_lines + 2 * reference.a_unique_lines) * kLineBytes;
  const uint64_t logical_flops = 2 * p.atomic_updates;

  uint64_t largest_capacity = 0;
  for (const auto &result : all) {
    for (const CacheResult &cache : result.second) largest_capacity = std::max(largest_capacity, cache.capacity_bytes);
  }
  uint64_t operation_data_largest = 0;
  uint64_t block_data_largest = 0;
  for (const auto &result : all) {
    for (const CacheResult &cache : result.second) {
      if (cache.capacity_bytes != largest_capacity) continue;
      const CacheStats &s = cache.stats;
      const uint64_t data = (s.l_misses + s.u_misses + s.a_reads + s.a_writebacks) * kLineBytes;
      if (result.first.method == "operation") operation_data_largest = data;
      if (result.first.method == "block") block_data_largest = data;
    }
  }
  // At the largest simulated cache, compute how many control bytes per VLIW
  // bundle would offset Block's data-traffic disadvantage, when one exists.
  const uint64_t operation_vliw_bundles = ceil_div(p.atomic_updates, kOperationLanes);
  const uint64_t operation_padding_slots = operation_vliw_bundles * kOperationLanes - p.atomic_updates;
  const double break_even_bytes_per_task =
      (block_data_largest > operation_data_largest && operation_vliw_bundles > p.block_tasks.size())
          ? static_cast<double>(block_data_largest - operation_data_largest) /
                static_cast<double>(operation_vliw_bundles - p.block_tasks.size())
          : 0.0;

  const std::string report_path = output_dir + "/cache_pilot_report.json";
  std::ofstream report(report_path);
  if (!report) throw std::runtime_error("cannot create " + report_path);
  report << "{\n"
         << "  \"schema\": \"granularity-cache-pilot-v3\",\n"
         << "  \"scope\": \"SSSSM/block-trailing\",\n"
         << "  \"scope_condition\": \"floor(i/B)>floor(k/B) and floor(j/B)>floor(k/B)\",\n"
         << "  \"block_size\": " << p.block_size << ",\n"
         << "  \"segment_height\": " << p.segment_height << ",\n"
         << "  \"atomic_updates\": " << p.atomic_updates << ",\n"
         << "  \"operation_vliw_lanes\": " << kOperationLanes << ",\n"
         << "  \"operation_vliw_bundles\": " << operation_vliw_bundles << ",\n"
         << "  \"operation_padding_slots\": " << operation_padding_slots << ",\n"
         << "  \"logical_flops\": " << logical_flops << ",\n"
         << "  \"compulsory_data_bytes\": " << compulsory_bytes << ",\n"
         << "  \"compulsory_bytes_per_flop\": " << std::setprecision(12)
         << static_cast<double>(compulsory_bytes) / logical_flops << ",\n"
         << "  \"address_layout\": \"64B-aligned disjoint L-column/U-row/A-column regions; 8B AoS records (FP32 value + int32 index); start-line attribution\",\n"
         << "  \"cache_policy\": \"fully-associative write-back/write-allocate LRU\",\n"
         << "  \"unique_address_sets_identical\": " << (addresses_identical ? "true" : "false") << ",\n"
         << "  \"canonical_event_multisets_identical\": " << (events_identical ? "true" : "false") << ",\n"
         << "  \"event_audit\": \"canonical-event bitset per traversal plus three order-independent 64-bit tuple hashes\",\n"
         << "  \"operation_block_order_reuses_exact_block_atom_sequence\": true,\n"
         << "  \"segment_l_affinity_order\": \"(segment,j), internal (k,i)\",\n"
         << "  \"segment_cache_aware_ready_set\": \"one ascending-j head per segment queue; maximize exact resident L/U/A footprint; tie by (j,s)\",\n"
         << "  \"metadata_baseline\": \"32 B/task plus 8 B/contribution descriptor, both integral 32-bit words; operation tasks are 16-lane VLIW bundles; footprint is not claimed as compulsory per-run traffic\",\n"
         << "  \"normalized_control_widths_bytes_per_task\": [0,1,2,4,8,16,32,40],\n"
         << "  \"largest_capacity_break_even_control_bytes_per_operation_vliw_bundle\": "
         << break_even_bytes_per_task << ",\n"
         << "  \"column_pointer_and_dma_metadata_excluded\": true,\n"
         << "  \"strict_union_nnz\": " << p.union_nnz << ",\n"
         << "  \"strict_l_nnz\": " << p.lower_nnz << ",\n"
         << "  \"strict_u_nnz\": " << p.upper_nnz << ",\n"
         << "  \"a_target_nnz\": " << p.a_target_nnz << ",\n"
         << "  \"target_blocks\": " << p.target_block_count << ",\n"
         << "  \"total_address_lines\": " << p.total_lines << "\n"
         << "}\n";
  if (!addresses_identical || !events_identical) {
    throw std::runtime_error("traversal methods reached different address sets or canonical event multisets");
  }
}

}  // namespace

int main(int argc, char **argv) {
  try {
    if (argc != 6) {
      std::cerr << "usage: " << argv[0]
                << " MATRIX.mtx BLOCK_SIZE SEGMENT_HEIGHT CACHE_SIZES OUTPUT_DIR\n";
      return 2;
    }
    const std::string matrix = argv[1];
    const uint32_t block_size = static_cast<uint32_t>(std::stoul(argv[2]));
    const uint32_t segment_height = static_cast<uint32_t>(std::stoul(argv[3]));
    const std::vector<uint64_t> capacities = parse_capacities(argv[4]);
    const std::string output_dir = argv[5];
    if (block_size == 0 || segment_height == 0) throw std::runtime_error("grain sizes must be positive");

    const auto build_start = std::chrono::steady_clock::now();
    Pattern pattern = build_pattern(matrix, block_size, segment_height);
    const double build_seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - build_start).count();
    std::cerr << "PB_LRU_BUILD n=" << pattern.n << " union_nnz=" << pattern.union_nnz
              << " atomic=" << pattern.atomic_updates << " segment_tasks=" << pattern.segment_tasks.size()
              << " block_tasks=" << pattern.block_tasks.size() << " target_blocks=" << pattern.target_block_count
              << " lines=" << pattern.total_lines << " seconds=" << std::fixed << std::setprecision(3)
              << build_seconds << '\n';

    // Traversals are read-only with respect to Pattern and own their simulator
    // state, so independent methods can be replayed concurrently.
    auto f_operation = std::async(std::launch::async, simulate_operation, std::cref(pattern), std::cref(capacities));
    auto f_segment_native =
        std::async(std::launch::async, simulate_segment_native, std::cref(pattern), std::cref(capacities));
    auto f_segment_l_affinity =
        std::async(std::launch::async, simulate_segment_l_affinity, std::cref(pattern), std::cref(capacities));
    auto f_segment_cache_aware =
        std::async(std::launch::async, simulate_segment_cache_aware, std::cref(pattern), std::cref(capacities));
    auto f_block = std::async(std::launch::async, simulate_block, std::cref(pattern), std::cref(capacities));
    SimulationResult operation = f_operation.get();
    SimulationResult segment_native = f_segment_native.get();
    SimulationResult segment_l_affinity = f_segment_l_affinity.get();
    SimulationResult segment_cache_aware = f_segment_cache_aware.get();
    SimulationResult block = f_block.get();
    SimulationResult operation_block_order = make_operation_block_order(pattern, block);
    std::vector<SimulationResult> all;
    all.push_back(std::move(operation));
    all.push_back(std::move(operation_block_order));
    all.push_back(std::move(segment_native));
    all.push_back(std::move(segment_l_affinity));
    all.push_back(std::move(segment_cache_aware));
    all.push_back(std::move(block));
    write_outputs_v2(output_dir, pattern, all);
    for (const auto &result : all) {
      std::cout << "PB_LRU_METHOD method=" << result.first.method << " atomic=" << result.first.atomic_updates
                << " unique=" << result.first.l_unique_lines << '/' << result.first.u_unique_lines << '/'
                << result.first.a_unique_lines << " events=" << result.first.unique_event_ids
                << " duplicates=" << result.first.duplicate_event_ids << " seconds=" << std::fixed
                << std::setprecision(3)
                << result.first.elapsed_seconds << '\n';
    }
    std::cout << "PB_LRU_PILOT_PASS output=" << output_dir << '\n';
    return 0;
  } catch (const std::exception &error) {
    std::cerr << "PB_LRU_PILOT_ERROR " << error.what() << '\n';
    return 1;
  }
}
