#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <future>
#include <iomanip>
#include <iostream>
#include <limits>
#include <map>
#include <mutex>
#include <set>
#include <sstream>
#include <stdexcept>
#include <string>
#include <tuple>
#include <utility>
#include <vector>

namespace {

constexpr uint32_t kMissing = std::numeric_limits<uint32_t>::max();
constexpr uint64_t kLineBytes = 64;
constexpr uint64_t kRecordBytes = 8;  // FP32 value + uint32 index.
constexpr uint64_t kOperationLanes = 16;
constexpr uint64_t kTaskBytes = 32;
constexpr uint64_t kDependencyBytes = 8;

struct Coord { uint32_t row, col; };
struct Entry { uint32_t index, line; };
struct Range { uint32_t begin = 0, end = 0; };
struct Contribution { uint32_t k, u_pos, u_line; Range l; };
struct SegmentTask {
  uint32_t j = 0, segment = 0;
  std::vector<Contribution> contributions;
  Range divisions;
};

struct Pattern {
  uint32_t n = 0, block_size = 0, segment_height = 0, block_count = 0;
  uint32_t total_lines = 0, target_block_count = 0;
  uint64_t input_records = 0, macs = 0, divisions = 0, events = 0;
  uint64_t operation_tasks = 0, operation_dependencies = 0;
  uint64_t segment_tasks = 0, segment_dependencies = 0;
  uint64_t block_tasks = 0, block_dependencies = 0;
  std::vector<std::vector<Entry>> lower;  // L(i,k), indexed by k.
  std::vector<std::vector<Entry>> upper;  // U(k,j), indexed by k.
  std::vector<uint32_t> diagonal_line;
  std::vector<uint64_t> mac_base, div_base;
  std::vector<int32_t> target_block_slot;
  std::vector<uint32_t> target_line_table;
  std::vector<SegmentTask> segment_schedule;
  std::vector<std::vector<uint32_t>> lower_panels, upper_panels;
};

enum class AccessKind : uint8_t { LSource = 0, USource = 1, Diagonal = 2, MacTarget = 3, DivTarget = 4 };
constexpr size_t kAccessKinds = 5;
const std::array<const char *, kAccessKinds> kAccessNames = {
    "l_source", "u_source", "diagonal", "mac_target", "division_target"};

struct CacheStats {
  std::array<uint64_t, kAccessKinds> misses{};
  uint64_t writebacks = 0;
  uint64_t reads() const {
    uint64_t value = 0;
    for (uint64_t item : misses) value += item;
    return value;
  }
};

struct MethodStats {
  std::string method;
  uint64_t tasks = 0, dependencies = 0, metadata_bytes = 0;
  uint64_t macs = 0, divisions = 0, unique_events = 0, duplicate_events = 0;
  uint64_t hash_sum = 0, hash_xor = 0, hash_sum2 = 0;
  uint64_t unique_read_lines = 0, unique_write_lines = 0;
  uint64_t read_hash = 0, write_hash = 0;
  double seconds = 0.0;
};

struct CacheResult { uint64_t capacity_bytes; CacheStats stats; };
using SimulationResult = std::pair<MethodStats, std::vector<CacheResult>>;

uint64_t ceil_div(uint64_t a, uint64_t b) { return (a + b - 1) / b; }
uint64_t splitmix64(uint64_t x) {
  x += 0x9e3779b97f4a7c15ULL;
  x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9ULL;
  x = (x ^ (x >> 27)) * 0x94d049bb133111ebULL;
  return x ^ (x >> 31);
}

class ExactLru {
 public:
  ExactLru(uint32_t total_lines, uint32_t capacity_lines)
      : capacity_(capacity_lines), prev_(total_lines, -1), next_(total_lines, -1), flags_(total_lines, 0) {
    if (capacity_ == 0) throw std::runtime_error("cache capacity must contain at least one line");
  }
  inline void touch(uint32_t line, AccessKind kind, bool write) {
    uint8_t &flag = flags_[line];
    if (flag & 1U) {
      if (line != static_cast<uint32_t>(head_)) {
        int32_t p = prev_[line], n = next_[line];
        if (p >= 0) next_[p] = n;
        if (n >= 0) prev_[n] = p;
        if (tail_ == static_cast<int32_t>(line)) tail_ = p;
        prev_[line] = -1; next_[line] = head_;
        if (head_ >= 0) prev_[head_] = static_cast<int32_t>(line);
        head_ = static_cast<int32_t>(line);
      }
      if (write) flag |= 2U;
      return;
    }
    ++stats_.misses[static_cast<size_t>(kind)];
    if (size_ == capacity_) {
      uint32_t victim = static_cast<uint32_t>(tail_);
      int32_t new_tail = prev_[victim];
      if (flags_[victim] & 2U) ++stats_.writebacks;
      flags_[victim] = 0; prev_[victim] = next_[victim] = -1;
      tail_ = new_tail;
      if (tail_ >= 0) next_[tail_] = -1;
      --size_;
    }
    flag = static_cast<uint8_t>(1U | (write ? 2U : 0U));
    prev_[line] = -1; next_[line] = head_;
    if (head_ >= 0) prev_[head_] = static_cast<int32_t>(line);
    head_ = static_cast<int32_t>(line);
    if (tail_ < 0) tail_ = static_cast<int32_t>(line);
    ++size_;
  }
  void flush() {
    for (int32_t line = head_; line >= 0; line = next_[line]) {
      if (flags_[line] & 2U) { ++stats_.writebacks; flags_[line] &= ~2U; }
    }
  }
  const CacheStats &stats() const { return stats_; }

 private:
  uint32_t capacity_, size_ = 0;
  int32_t head_ = -1, tail_ = -1;
  std::vector<int32_t> prev_, next_;
  std::vector<uint8_t> flags_;
  CacheStats stats_;
};

class StreamSimulator {
 public:
  StreamSimulator(const Pattern &p, const std::vector<uint64_t> &capacities)
      : pattern_(p), seen_(p.total_lines, 0), event_seen_((p.events + 63) / 64, 0) {
    for (uint64_t bytes : capacities) {
      if (bytes % kLineBytes) throw std::runtime_error("capacity is not 64-byte aligned");
      capacities_.push_back(bytes);
      caches_.emplace_back(p.total_lines, static_cast<uint32_t>(bytes / kLineBytes));
    }
  }
  inline void access(uint32_t line, AccessKind kind, bool write = false) {
    if (line >= pattern_.total_lines) throw std::runtime_error("line id out of range");
    for (auto &cache : caches_) cache.touch(line, kind, write);
    seen_[line] |= static_cast<uint8_t>(1U | (write ? 2U : 0U));
  }
  inline void mark(uint64_t event, uint64_t tuple_hash) {
    if (event >= pattern_.events) throw std::runtime_error("event id out of range");
    uint64_t &word = event_seen_[event >> 6];
    uint64_t mask = 1ULL << (event & 63U);
    if (word & mask) ++duplicate_events_;
    else { word |= mask; ++unique_events_; }
    hash_sum_ += tuple_hash; hash_xor_ ^= tuple_hash; hash_sum2_ += tuple_hash * tuple_hash;
  }
  void finish(MethodStats &method, std::vector<CacheResult> &results) {
    for (auto &cache : caches_) cache.flush();
    for (uint32_t line = 0; line < seen_.size(); ++line) {
      if (seen_[line] & 1U) { ++method.unique_read_lines; method.read_hash ^= splitmix64(line); }
      if (seen_[line] & 2U) { ++method.unique_write_lines; method.write_hash ^= splitmix64(line); }
    }
    for (size_t i = 0; i < caches_.size(); ++i)
      results.push_back(CacheResult{capacities_[i], caches_[i].stats()});
    method.unique_events = unique_events_; method.duplicate_events = duplicate_events_;
    method.hash_sum = hash_sum_; method.hash_xor = hash_xor_; method.hash_sum2 = hash_sum2_;
    if (unique_events_ != pattern_.events || duplicate_events_) {
      std::ostringstream out;
      out << "event coverage failed unique=" << unique_events_ << " duplicate=" << duplicate_events_
          << " expected=" << pattern_.events;
      throw std::runtime_error(out.str());
    }
  }

 private:
  const Pattern &pattern_;
  std::vector<uint64_t> capacities_;
  std::vector<ExactLru> caches_;
  std::vector<uint8_t> seen_;
  std::vector<uint64_t> event_seen_;
  uint64_t unique_events_ = 0, duplicate_events_ = 0;
  uint64_t hash_sum_ = 0, hash_xor_ = 0, hash_sum2_ = 0;
};

std::mutex g_log_mutex;
void log_progress(const std::string &method, uint32_t major, uint32_t total) {
  if (major % 4096 != 0 && major + 1 != total) return;
  std::lock_guard<std::mutex> lock(g_log_mutex);
  std::cerr << "PB_FULL_LU_INPLACE_PROGRESS method=" << method << " major=" << major << '/' << total << '\n';
}

std::vector<Coord> read_matrix_market(const std::string &path, uint32_t &n) {
  std::ifstream in(path);
  if (!in) throw std::runtime_error("cannot open " + path);
  std::string line;
  if (!std::getline(in, line)) throw std::runtime_error("missing MatrixMarket banner");
  std::istringstream banner(line);
  std::string mm, object, format, field, symmetry;
  banner >> mm >> object >> format >> field >> symmetry;
  if (mm != "%%MatrixMarket" || object != "matrix" || format != "coordinate")
    throw std::runtime_error("only MatrixMarket coordinate matrices are supported");
  do { if (!std::getline(in, line)) throw std::runtime_error("missing size line"); }
  while (!line.empty() && line[0] == '%');
  std::istringstream dims(line);
  uint32_t rows = 0, cols = 0; uint64_t declared = 0;
  dims >> rows >> cols >> declared;
  if (!dims || rows != cols) throw std::runtime_error("matrix must be square");
  n = rows;
  std::vector<Coord> coords; coords.reserve(declared * 2);
  uint32_t row = 0, col = 0; uint64_t parsed = 0;
  while (in >> row >> col) {
    std::getline(in, line); ++parsed;
    if (!row || !col || row > n || col > n) throw std::runtime_error("invalid coordinate");
    --row; --col; coords.push_back({row, col});
    if (symmetry != "general" && row != col) coords.push_back({col, row});
  }
  if (parsed != declared) throw std::runtime_error("MatrixMarket record count mismatch");
  std::sort(coords.begin(), coords.end(), [](const Coord &a, const Coord &b) {
    return std::tie(a.col, a.row) < std::tie(b.col, b.row);
  });
  coords.erase(std::unique(coords.begin(), coords.end(), [](const Coord &a, const Coord &b) {
    return a.row == b.row && a.col == b.col;
  }), coords.end());
  return coords;
}

Range block_range(const std::vector<Entry> &entries, uint32_t block, uint32_t block_size) {
  uint32_t lo = block * block_size;
  uint32_t hi = lo + block_size;
  auto begin = std::lower_bound(entries.begin(), entries.end(), lo,
                                [](const Entry &e, uint32_t value) { return e.index < value; });
  auto end = std::lower_bound(begin, entries.end(), hi,
                              [](const Entry &e, uint32_t value) { return e.index < value; });
  return {static_cast<uint32_t>(begin - entries.begin()), static_cast<uint32_t>(end - entries.begin())};
}

uint32_t target_line(const Pattern &p, uint32_t row, uint32_t col) {
  uint32_t ib = row / p.block_size, jb = col / p.block_size;
  int32_t slot = p.target_block_slot[static_cast<size_t>(ib) * p.block_count + jb];
  if (slot < 0) throw std::runtime_error("factor target block missing");
  uint64_t offset = (static_cast<uint64_t>(slot) * p.block_size + row % p.block_size) *
                        p.block_size + col % p.block_size;
  uint32_t line = p.target_line_table[offset];
  if (line == kMissing) {
    std::ostringstream out; out << "symbolic factor target missing (" << row << ',' << col << ')';
    throw std::runtime_error(out.str());
  }
  return line;
}

Pattern build_pattern(const std::string &path, uint32_t block_size, uint32_t segment_height) {
  Pattern p; p.block_size = block_size; p.segment_height = segment_height;
  std::vector<Coord> coords = read_matrix_market(path, p.n);
  p.block_count = static_cast<uint32_t>(ceil_div(p.n, block_size));
  p.lower.resize(p.n); p.upper.resize(p.n); p.diagonal_line.assign(p.n, kMissing);
  p.target_block_slot.assign(static_cast<size_t>(p.block_count) * p.block_count, -1);
  std::vector<uint8_t> present_diag(p.n, 0);
  uint64_t ordinal = 0;
  for (const Coord &coord : coords) {
    uint32_t line = static_cast<uint32_t>((ordinal++ * kRecordBytes) / kLineBytes);
    if (coord.row > coord.col) p.lower[coord.col].push_back({coord.row, line});
    else if (coord.row < coord.col) p.upper[coord.row].push_back({coord.col, line});
    else { p.diagonal_line[coord.row] = line; present_diag[coord.row] = 1; }
    size_t key = static_cast<size_t>(coord.row / block_size) * p.block_count + coord.col / block_size;
    if (p.target_block_slot[key] < 0) p.target_block_slot[key] = -2;
  }
  // PanguLU's symbolic contract contains explicit diagonal positions.  Add a
  // virtual zero-valued diagonal record only when an external test input lacks one.
  for (uint32_t k = 0; k < p.n; ++k) {
    if (!present_diag[k]) {
      p.diagonal_line[k] = static_cast<uint32_t>((ordinal++ * kRecordBytes) / kLineBytes);
      size_t key = static_cast<size_t>(k / block_size) * p.block_count + k / block_size;
      if (p.target_block_slot[key] < 0) p.target_block_slot[key] = -2;
    }
  }
  p.input_records = ordinal;
  p.total_lines = static_cast<uint32_t>(ceil_div(ordinal * kRecordBytes, kLineBytes));
  for (auto &row : p.upper)
    std::sort(row.begin(), row.end(), [](const Entry &a, const Entry &b) { return a.index < b.index; });

  for (int32_t &slot : p.target_block_slot) if (slot == -2) slot = static_cast<int32_t>(p.target_block_count++);
  uint64_t table_size = static_cast<uint64_t>(p.target_block_count) * block_size * block_size;
  if (table_size > std::numeric_limits<size_t>::max()) throw std::runtime_error("target table too large");
  p.target_line_table.assign(static_cast<size_t>(table_size), kMissing);
  auto install = [&](uint32_t row, uint32_t col, uint32_t line) {
    int32_t slot = p.target_block_slot[static_cast<size_t>(row / block_size) * p.block_count + col / block_size];
    uint64_t offset = (static_cast<uint64_t>(slot) * block_size + row % block_size) * block_size + col % block_size;
    p.target_line_table[offset] = line;
  };
  for (uint32_t k = 0; k < p.n; ++k) {
    install(k, k, p.diagonal_line[k]);
    for (const Entry &e : p.lower[k]) install(e.index, k, e.line);
    for (const Entry &e : p.upper[k]) install(k, e.index, e.line);
  }

  p.mac_base.resize(static_cast<size_t>(p.n) + 1, 0);
  p.div_base.resize(static_cast<size_t>(p.n) + 1, 0);
  for (uint32_t k = 0; k < p.n; ++k) {
    p.mac_base[k] = p.macs;
    p.macs += static_cast<uint64_t>(p.lower[k].size()) * p.upper[k].size();
  }
  p.mac_base[p.n] = p.macs;
  for (uint32_t k = 0; k < p.n; ++k) {
    p.div_base[k] = p.macs + p.divisions;
    p.divisions += p.lower[k].size();
  }
  p.div_base[p.n] = p.macs + p.divisions; p.events = p.macs + p.divisions;
  p.operation_tasks = ceil_div(p.macs, kOperationLanes) + ceil_div(p.divisions, kOperationLanes);
  p.operation_dependencies = p.operation_tasks;

  std::map<std::pair<uint32_t, uint32_t>, SegmentTask> segment_map;
  std::set<std::pair<uint32_t, uint32_t>> mac_task_keys, div_task_keys;
  uint64_t mac_contributions = 0;
  for (uint32_t k = 0; k < p.n; ++k) {
    const auto &ls = p.lower[k];
    size_t begin = 0;
    while (begin < ls.size()) {
      uint32_t segment = ls[begin].index / segment_height;
      size_t end = begin + 1;
      while (end < ls.size() && ls[end].index / segment_height == segment) ++end;
      auto &div_task = segment_map[{k, segment}];
      div_task.j = k; div_task.segment = segment;
      div_task.divisions = {static_cast<uint32_t>(begin), static_cast<uint32_t>(end)};
      div_task_keys.insert({k, segment});
      for (uint32_t upos = 0; upos < p.upper[k].size(); ++upos) {
        const Entry &u = p.upper[k][upos];
        auto &task = segment_map[{u.index, segment}];
        task.j = u.index; task.segment = segment;
        task.contributions.push_back({k, upos, u.line,
                                      {static_cast<uint32_t>(begin), static_cast<uint32_t>(end)}});
        mac_task_keys.insert({u.index, segment}); ++mac_contributions;
      }
      begin = end;
    }
  }
  for (auto &item : segment_map) p.segment_schedule.push_back(std::move(item.second));
  p.segment_tasks = mac_task_keys.size() + div_task_keys.size();
  p.segment_dependencies = mac_contributions + p.divisions;

  p.lower_panels.resize(p.block_count); p.upper_panels.resize(p.block_count);
  std::vector<std::set<uint32_t>> lower_sets(p.block_count), upper_sets(p.block_count);
  for (uint32_t k = 0; k < p.n; ++k) {
    uint32_t kb = k / block_size;
    for (const Entry &e : p.lower[k]) if (e.index / block_size > kb) lower_sets[kb].insert(e.index / block_size);
    for (const Entry &e : p.upper[k]) if (e.index / block_size > kb) upper_sets[kb].insert(e.index / block_size);
  }
  std::vector<uint8_t> has_last(static_cast<size_t>(p.block_count) * p.block_count, 0);
  for (uint32_t kb = 0; kb < p.block_count; ++kb) {
    p.lower_panels[kb].assign(lower_sets[kb].begin(), lower_sets[kb].end());
    p.upper_panels[kb].assign(upper_sets[kb].begin(), upper_sets[kb].end());
    ++p.block_tasks;
    size_t diag_key = static_cast<size_t>(kb) * p.block_count + kb;
    if (has_last[diag_key]) ++p.block_dependencies;
    for (uint32_t jb : p.upper_panels[kb]) {
      ++p.block_tasks; ++p.block_dependencies;
      if (has_last[static_cast<size_t>(kb) * p.block_count + jb]) ++p.block_dependencies;
    }
    for (uint32_t ib : p.lower_panels[kb]) {
      ++p.block_tasks; ++p.block_dependencies;
      if (has_last[static_cast<size_t>(ib) * p.block_count + kb]) ++p.block_dependencies;
    }
    for (uint32_t ib : p.lower_panels[kb]) for (uint32_t jb : p.upper_panels[kb]) {
      ++p.block_tasks; p.block_dependencies += 2;
      size_t key = static_cast<size_t>(ib) * p.block_count + jb;
      if (has_last[key]) ++p.block_dependencies;
      has_last[key] = 1;
    }
  }
  return p;
}

inline uint64_t mac_hash(uint32_t l, uint32_t u, uint32_t target) {
  uint64_t h = splitmix64(l) ^ ((splitmix64(u) << 21) | (splitmix64(u) >> 43));
  return h ^ ((splitmix64(target) << 42) | (splitmix64(target) >> 22));
}
inline uint64_t div_hash(uint32_t diagonal, uint32_t target) {
  return splitmix64(diagonal ^ 0xd1a1d3U) ^ ((splitmix64(target) << 29) | (splitmix64(target) >> 35));
}

inline void emit_div(const Pattern &p, uint32_t k, uint32_t lpos, StreamSimulator &sim, MethodStats &m) {
  const Entry &l = p.lower[k][lpos];
  sim.mark(p.div_base[k] + lpos, div_hash(p.diagonal_line[k], l.line));
  sim.access(p.diagonal_line[k], AccessKind::Diagonal);
  sim.access(l.line, AccessKind::DivTarget, true);
  ++m.divisions;
}
inline void emit_mac(const Pattern &p, uint32_t k, uint32_t lpos, uint32_t upos,
                     StreamSimulator &sim, MethodStats &m) {
  const Entry &l = p.lower[k][lpos]; const Entry &u = p.upper[k][upos];
  uint32_t target = target_line(p, l.index, u.index);
  uint64_t event = p.mac_base[k] + static_cast<uint64_t>(lpos) * p.upper[k].size() + upos;
  sim.mark(event, mac_hash(l.line, u.line, target));
  sim.access(l.line, AccessKind::LSource);
  sim.access(u.line, AccessKind::USource);
  sim.access(target, AccessKind::MacTarget, true);
  ++m.macs;
}

MethodStats base_stats(const Pattern &p, const std::string &name, uint64_t tasks, uint64_t deps) {
  MethodStats m; m.method = name; m.tasks = tasks; m.dependencies = deps;
  m.metadata_bytes = tasks * kTaskBytes + deps * kDependencyBytes; return m;
}

SimulationResult simulate_operation(const Pattern &p, const std::vector<uint64_t> &caps) {
  MethodStats m = base_stats(p, "operation", p.operation_tasks, p.operation_dependencies);
  StreamSimulator sim(p, caps); auto start = std::chrono::steady_clock::now();
  for (uint32_t k = 0; k < p.n; ++k) {
    for (uint32_t li = 0; li < p.lower[k].size(); ++li) emit_div(p, k, li, sim, m);
    for (uint32_t li = 0; li < p.lower[k].size(); ++li)
      for (uint32_t ui = 0; ui < p.upper[k].size(); ++ui) emit_mac(p, k, li, ui, sim, m);
    log_progress(m.method, k, p.n);
  }
  std::vector<CacheResult> out; sim.finish(m, out);
  m.seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {std::move(m), std::move(out)};
}

SimulationResult simulate_segment_column(const Pattern &p, const std::vector<uint64_t> &caps) {
  MethodStats m = base_stats(p, "segment-column", p.segment_tasks, p.segment_dependencies);
  StreamSimulator sim(p, caps); auto start = std::chrono::steady_clock::now();
  uint32_t last_j = kMissing;
  for (const SegmentTask &task : p.segment_schedule) {
    for (const Contribution &c : task.contributions)
      for (uint32_t li = c.l.begin; li < c.l.end; ++li) emit_mac(p, c.k, li, c.u_pos, sim, m);
    if (task.divisions.end > task.divisions.begin)
      for (uint32_t li = task.divisions.begin; li < task.divisions.end; ++li) emit_div(p, task.j, li, sim, m);
    if (task.j != last_j) { log_progress(m.method, task.j, p.n); last_j = task.j; }
  }
  std::vector<CacheResult> out; sim.finish(m, out);
  m.seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {std::move(m), std::move(out)};
}

SimulationResult simulate_segment_l_affinity(const Pattern &p, const std::vector<uint64_t> &caps) {
  MethodStats m = base_stats(p, "segment-l-affinity", p.segment_tasks, p.segment_dependencies);
  StreamSimulator sim(p, caps); auto start = std::chrono::steady_clock::now();
  for (uint32_t k = 0; k < p.n; ++k) {
    const auto &ls = p.lower[k]; uint32_t begin = 0;
    while (begin < ls.size()) {
      uint32_t segment = ls[begin].index / p.segment_height, end = begin + 1;
      while (end < ls.size() && ls[end].index / p.segment_height == segment) ++end;
      for (uint32_t li = begin; li < end; ++li) emit_div(p, k, li, sim, m);
      for (uint32_t ui = 0; ui < p.upper[k].size(); ++ui)
        for (uint32_t li = begin; li < end; ++li) emit_mac(p, k, li, ui, sim, m);
      begin = end;
    }
    log_progress(m.method, k, p.n);
  }
  std::vector<CacheResult> out; sim.finish(m, out);
  m.seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {std::move(m), std::move(out)};
}

SimulationResult simulate_block(const Pattern &p, const std::vector<uint64_t> &caps) {
  MethodStats m = base_stats(p, "block", p.block_tasks, p.block_dependencies);
  StreamSimulator sim(p, caps); auto start = std::chrono::steady_clock::now();
  for (uint32_t kb = 0; kb < p.block_count; ++kb) {
    uint32_t kbegin = kb * p.block_size, kend = std::min(p.n, kbegin + p.block_size);
    // GETRF(K,K).
    for (uint32_t k = kbegin; k < kend; ++k) {
      Range lr = block_range(p.lower[k], kb, p.block_size), ur = block_range(p.upper[k], kb, p.block_size);
      for (uint32_t li = lr.begin; li < lr.end; ++li) emit_div(p, k, li, sim, m);
      for (uint32_t li = lr.begin; li < lr.end; ++li)
        for (uint32_t ui = ur.begin; ui < ur.end; ++ui) emit_mac(p, k, li, ui, sim, m);
    }
    // GESSM(K,J).
    for (uint32_t jb : p.upper_panels[kb]) for (uint32_t k = kbegin; k < kend; ++k) {
      Range lr = block_range(p.lower[k], kb, p.block_size), ur = block_range(p.upper[k], jb, p.block_size);
      for (uint32_t li = lr.begin; li < lr.end; ++li)
        for (uint32_t ui = ur.begin; ui < ur.end; ++ui) emit_mac(p, k, li, ui, sim, m);
    }
    // TSTRF(I,K).
    for (uint32_t ib : p.lower_panels[kb]) for (uint32_t k = kbegin; k < kend; ++k) {
      Range lr = block_range(p.lower[k], ib, p.block_size), ur = block_range(p.upper[k], kb, p.block_size);
      for (uint32_t li = lr.begin; li < lr.end; ++li) emit_div(p, k, li, sim, m);
      for (uint32_t li = lr.begin; li < lr.end; ++li)
        for (uint32_t ui = ur.begin; ui < ur.end; ++ui) emit_mac(p, k, li, ui, sim, m);
    }
    // SSSSM(I,J,K).
    for (uint32_t ib : p.lower_panels[kb]) for (uint32_t jb : p.upper_panels[kb])
      for (uint32_t k = kbegin; k < kend; ++k) {
        Range lr = block_range(p.lower[k], ib, p.block_size), ur = block_range(p.upper[k], jb, p.block_size);
        for (uint32_t li = lr.begin; li < lr.end; ++li)
          for (uint32_t ui = ur.begin; ui < ur.end; ++ui) emit_mac(p, k, li, ui, sim, m);
      }
    log_progress(m.method, kb, p.block_count);
  }
  std::vector<CacheResult> out; sim.finish(m, out);
  m.seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  return {std::move(m), std::move(out)};
}

std::vector<uint64_t> parse_capacities(const std::string &text) {
  std::vector<uint64_t> out; std::stringstream stream(text); std::string item;
  while (std::getline(stream, item, ',')) {
    if (item.empty()) continue;
    uint64_t scale = 1; char suffix = item.back();
    if (suffix == 'K' || suffix == 'k') { scale = 1ULL << 10; item.pop_back(); }
    else if (suffix == 'M' || suffix == 'm') { scale = 1ULL << 20; item.pop_back(); }
    else if (suffix == 'G' || suffix == 'g') { scale = 1ULL << 30; item.pop_back(); }
    out.push_back(std::stoull(item) * scale);
  }
  if (out.empty()) throw std::runtime_error("no cache capacities supplied");
  return out;
}

void write_outputs(const std::string &dir, const Pattern &p, const std::vector<SimulationResult> &all) {
  std::filesystem::create_directories(dir);
  const MethodStats &reference = all.front().first;
  for (const auto &result : all) {
    const auto &m = result.first;
    if (m.macs != p.macs || m.divisions != p.divisions || m.unique_events != p.events ||
        m.hash_sum != reference.hash_sum || m.hash_xor != reference.hash_xor ||
        m.hash_sum2 != reference.hash_sum2 || m.unique_read_lines != reference.unique_read_lines ||
        m.unique_write_lines != reference.unique_write_lines || m.read_hash != reference.read_hash ||
        m.write_hash != reference.write_hash)
      throw std::runtime_error("methods do not cover the same in-place LU event/address multiset");
  }
  uint64_t compulsory = (reference.unique_read_lines + reference.unique_write_lines) * kLineBytes;
  uint64_t flops = 2 * p.macs + p.divisions;
  std::ofstream traffic(dir + "/full_lu_inplace_cache_traffic.csv");
  traffic << "method,capacity_bytes,tasks,dependencies,metadata_bytes,macs,divisions,logical_flops";
  for (const char *name : kAccessNames) traffic << ',' << name << "_misses";
  traffic << ",read_misses,writebacks,data_bytes,compulsory_bytes,traffic_amplification,data_bytes_per_flop,total_bytes_with_metadata\n";
  auto write_traffic_row = [&](const std::string &method, uint64_t tasks, uint64_t dependencies,
                               uint64_t metadata, const MethodStats &m, const CacheResult &cache) {
    uint64_t reads = cache.stats.reads();
    uint64_t bytes = (reads + cache.stats.writebacks) * kLineBytes;
    traffic << method << ',' << cache.capacity_bytes << ',' << tasks << ',' << dependencies << ','
            << metadata << ',' << m.macs << ',' << m.divisions << ',' << flops;
    for (uint64_t value : cache.stats.misses) traffic << ',' << value;
    traffic << ',' << reads << ',' << cache.stats.writebacks << ',' << bytes << ',' << compulsory << ','
            << std::setprecision(12) << static_cast<double>(bytes) / compulsory << ','
            << static_cast<double>(bytes) / flops << ',' << bytes + metadata << '\n';
  };
  for (const auto &result : all) for (const CacheResult &cache : result.second) {
    const auto &m = result.first;
    write_traffic_row(m.method, m.tasks, m.dependencies, m.metadata_bytes, m, cache);
    if (m.method == "block") {
      uint64_t operation_metadata = p.operation_tasks * kTaskBytes + p.operation_dependencies * kDependencyBytes;
      write_traffic_row("operation-block-order", p.operation_tasks, p.operation_dependencies,
                        operation_metadata, m, cache);
    }
  }
  std::ofstream audit(dir + "/full_lu_inplace_event_audit.csv");
  audit << "method,macs,divisions,unique_events,duplicate_events,event_hash_sum,event_hash_xor,event_hash_sum2,unique_read_lines,unique_write_lines,read_hash,write_hash,elapsed_seconds\n";
  for (const auto &result : all) {
    const auto &m = result.first;
    audit << m.method << ',' << m.macs << ',' << m.divisions << ',' << m.unique_events << ','
          << m.duplicate_events << ',' << m.hash_sum << ',' << m.hash_xor << ',' << m.hash_sum2 << ','
          << m.unique_read_lines << ',' << m.unique_write_lines << ',' << m.read_hash << ',' << m.write_hash
          << ',' << std::fixed << std::setprecision(6) << m.seconds << '\n';
  }
  std::ofstream report(dir + "/full_lu_inplace_report.json");
  report << "{\n"
         << "  \"schema\": \"full-lu-inplace-lru-v1\",\n"
         << "  \"scope\": \"complete strict LU: all i>k,j>k MACs plus strict-L divisions\",\n"
         << "  \"address_model\": \"canonical CSC factor union; FP32+uint32 8-byte records; L/U/diagonal updated in place\",\n"
         << "  \"cache_policy\": \"fully associative 64-byte write-back/write-allocate LRU\",\n"
         << "  \"block_size\": " << p.block_size << ",\n"
         << "  \"segment_height\": " << p.segment_height << ",\n"
         << "  \"records\": " << p.input_records << ",\n"
         << "  \"factor_lines\": " << p.total_lines << ",\n"
         << "  \"macs\": " << p.macs << ",\n"
         << "  \"divisions\": " << p.divisions << ",\n"
         << "  \"logical_flops\": " << flops << ",\n"
         << "  \"unique_read_lines\": " << reference.unique_read_lines << ",\n"
         << "  \"unique_write_lines\": " << reference.unique_write_lines << ",\n"
         << "  \"compulsory_bytes\": " << compulsory << ",\n"
         << "  \"event_multisets_identical\": true,\n"
         << "  \"address_sets_identical\": true,\n"
         << "  \"methods\": [\"operation\", \"operation-block-order\", \"segment-column\", \"segment-l-affinity\", \"block\"],\n"
         << "  \"operation_block_order_semantics\": \"block access sequence with operation-VLIW16 task metadata; derived from the exact block trace\"\n"
         << "}\n";
}

}  // namespace

int main(int argc, char **argv) {
  try {
    if (argc != 6) {
      std::cerr << "usage: " << argv[0] << " MATRIX BLOCK_SIZE SEGMENT_HEIGHT CACHE_SIZES OUTPUT_DIR\n";
      return 2;
    }
    std::string matrix = argv[1], output = argv[5];
    uint32_t block_size = std::stoul(argv[2]), segment_height = std::stoul(argv[3]);
    auto capacities = parse_capacities(argv[4]);
    auto build_start = std::chrono::steady_clock::now();
    Pattern p = build_pattern(matrix, block_size, segment_height);
    std::cerr << "PB_FULL_LU_INPLACE_BUILD n=" << p.n << " records=" << p.input_records
              << " lines=" << p.total_lines << " macs=" << p.macs << " divisions=" << p.divisions
              << " operation_tasks=" << p.operation_tasks << " segment_tasks=" << p.segment_tasks
              << " block_tasks=" << p.block_tasks << " seconds="
              << std::chrono::duration<double>(std::chrono::steady_clock::now() - build_start).count() << '\n';
    auto fo = std::async(std::launch::async, simulate_operation, std::cref(p), std::cref(capacities));
    auto fs = std::async(std::launch::async, simulate_segment_column, std::cref(p), std::cref(capacities));
    auto fl = std::async(std::launch::async, simulate_segment_l_affinity, std::cref(p), std::cref(capacities));
    auto fb = std::async(std::launch::async, simulate_block, std::cref(p), std::cref(capacities));
    std::vector<SimulationResult> all;
    all.push_back(fo.get()); all.push_back(fs.get()); all.push_back(fl.get()); all.push_back(fb.get());
    write_outputs(output, p, all);
    for (const auto &result : all)
      std::cout << "PB_FULL_LU_INPLACE_METHOD method=" << result.first.method
                << " events=" << result.first.unique_events << " seconds=" << result.first.seconds << '\n';
    std::cout << "PB_FULL_LU_INPLACE_PASS output=" << output << '\n';
    return 0;
  } catch (const std::exception &e) {
    std::cerr << "PB_FULL_LU_INPLACE_ERROR " << e.what() << '\n'; return 1;
  }
}
