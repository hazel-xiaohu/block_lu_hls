#include "pb_ddr_runtime_pool.hpp"

#include <cstdlib>
#include <cstring>
#include <limits>
#include <sstream>

namespace {
static pb_hls_u32 round_words(size_t n, pb_hls_u32 page_words)
{
    if (n > std::numeric_limits<pb_hls_u32>::max()) return 0U;
    if (page_words == 0U) return static_cast<pb_hls_u32>(n);
    const size_t p = page_words;
    const size_t rounded = ((n + p - 1U) / p) * p;
    return rounded > std::numeric_limits<pb_hls_u32>::max()
        ? 0U : static_cast<pb_hls_u32>(rounded);
}

static void *alloc_words(size_t bytes)
{
    if (bytes == 0U) return nullptr;
    void *p = nullptr;
    if (posix_memalign(&p, 64U, bytes) != 0) return nullptr;
    std::memset(p, 0, bytes);
    return p;
}

static bool aligned64(const void *p)
{
    return p != nullptr &&
           (reinterpret_cast<std::uintptr_t>(p) & std::uintptr_t(63U)) == 0U;
}

static bool add_ok(pb_hls_u32 off, pb_hls_u32 len, pb_hls_u32 cap)
{
    return off <= cap && len <= cap - off;
}

} // namespace

void pb_mtx_flat_ddr_pool_release(pb_mtx_flat_ddr_pool &pool)
{
    for (void *&p : pool.allocation) {
        std::free(p);
        p = nullptr;
    }
    pool.descriptor_words = nullptr;
    pool.ptr_pool = nullptr;
    pool.pack_ptr_pool = nullptr;
    pool.lane0_pool = nullptr;
    pool.lane1_pool = nullptr;
    pool.lane2_pool = nullptr;
    pool.lane3_pool = nullptr;
    pool.matrix_capacity = pool.ptr_capacity = pool.pack_ptr_capacity = 0U;
    pool.lane_capacity = pool.page_words = 0U;
}

int pb_mtx_flat_ddr_pool_init(const pb_mtx_flat_image &image,
                              pb_mtx_flat_ddr_pool &pool,
                              pb_hls_u32 page_words,
                              std::string &error)
{
    pb_mtx_flat_ddr_pool_release(pool);
    if (pb_mtx_flat_validate(image, error) != 0) return -1;
    if (page_words != 0U && (page_words & (page_words - 1U)) != 0U) {
        error = "page_words must be a power of two";
        return -2;
    }
    /* Descriptor count is also the HLS ABI's runtime read bound.  Keep it
     * exact; only the large data pools are page-rounded. */
    if (image.matrix_count > PB_GLOBAL_MAX_MATRICES) {
        error = "matrix count exceeds compiled descriptor ABI limit";
        return -2;
    }
    const pb_hls_u32 matrix_cap = image.matrix_count;
    const pb_hls_u32 ptr_cap = round_words(image.ptr_pool.size(), page_words);
    const pb_hls_u32 pack_cap = round_words(image.pack_ptr_pool.size(), page_words);
    const pb_hls_u32 lane_cap = round_words(image.lane0_pool.size(), page_words);
    if (matrix_cap == 0U || ptr_cap == 0U || pack_cap == 0U || lane_cap == 0U) {
        error = "image is empty or exceeds the 32-bit runtime ABI";
        return -3;
    }
    if (image.lane1_pool.size() != image.lane0_pool.size() ||
        image.lane2_pool.size() != image.lane0_pool.size() ||
        image.lane3_pool.size() != image.lane0_pool.size()) {
        error = "lane pools have different lengths";
        return -4;
    }
    const size_t desc_words = static_cast<size_t>(matrix_cap) * PB_GLOBAL_DESC_WORDS;
    if (desc_words > std::numeric_limits<size_t>::max() / sizeof(pb_hls_u32)) {
        error = "descriptor allocation overflow";
        return -5;
    }
    pool.allocation[0] = alloc_words(desc_words * sizeof(pb_hls_u32));
    pool.allocation[1] = alloc_words(static_cast<size_t>(ptr_cap) * sizeof(pb_hls_u32));
    pool.allocation[2] = alloc_words(static_cast<size_t>(pack_cap) * sizeof(pb_hls_u32));
    pool.allocation[3] = alloc_words(static_cast<size_t>(lane_cap) * sizeof(pb_hls_lword));
    pool.allocation[4] = alloc_words(static_cast<size_t>(lane_cap) * sizeof(pb_hls_lword));
    pool.allocation[5] = alloc_words(static_cast<size_t>(lane_cap) * sizeof(pb_hls_lword));
    pool.allocation[6] = alloc_words(static_cast<size_t>(lane_cap) * sizeof(pb_hls_lword));
    for (void *p : pool.allocation) {
        if (p == nullptr) {
            pb_mtx_flat_ddr_pool_release(pool);
            error = "runtime DDR pool allocation failed";
            return -6;
        }
    }
    pool.matrix_capacity = matrix_cap;
    pool.ptr_capacity = ptr_cap;
    pool.pack_ptr_capacity = pack_cap;
    pool.lane_capacity = lane_cap;
    pool.page_words = page_words;
    pool.descriptor_words = static_cast<pb_hls_u32 *>(pool.allocation[0]);
    pool.ptr_pool = static_cast<pb_hls_u32 *>(pool.allocation[1]);
    pool.pack_ptr_pool = static_cast<pb_hls_u32 *>(pool.allocation[2]);
    pool.lane0_pool = static_cast<pb_hls_lword *>(pool.allocation[3]);
    pool.lane1_pool = static_cast<pb_hls_lword *>(pool.allocation[4]);
    pool.lane2_pool = static_cast<pb_hls_lword *>(pool.allocation[5]);
    pool.lane3_pool = static_cast<pb_hls_lword *>(pool.allocation[6]);

    for (pb_hls_u32 id = 0U; id < image.matrix_count; ++id) {
        const pb_mtx_flat_matrix_record &m = image.matrices[id];
        const size_t b = static_cast<size_t>(id) * PB_GLOBAL_DESC_WORDS;
        pool.descriptor_words[b + 0U] = m.rows;
        pool.descriptor_words[b + 1U] = m.cols;
        pool.descriptor_words[b + 2U] = m.nnz;
        pool.descriptor_words[b + 3U] = m.packed_words;
        pool.descriptor_words[b + 4U] = m.ptr_offset;
        pool.descriptor_words[b + 5U] = m.ptr_length;
        pool.descriptor_words[b + 6U] = m.pack_ptr_offset;
        pool.descriptor_words[b + 7U] = m.pack_ptr_length;
        pool.descriptor_words[b + 8U] = m.lane_offset;
        pool.descriptor_words[b + 9U] = m.lane_length;
    }
    std::memcpy(pool.ptr_pool, image.ptr_pool.data(), image.ptr_pool.size() * sizeof(pb_hls_u32));
    std::memcpy(pool.pack_ptr_pool, image.pack_ptr_pool.data(), image.pack_ptr_pool.size() * sizeof(pb_hls_u32));
    std::memcpy(pool.lane0_pool, image.lane0_pool.data(), image.lane0_pool.size() * sizeof(pb_hls_lword));
    std::memcpy(pool.lane1_pool, image.lane1_pool.data(), image.lane1_pool.size() * sizeof(pb_hls_lword));
    std::memcpy(pool.lane2_pool, image.lane2_pool.data(), image.lane2_pool.size() * sizeof(pb_hls_lword));
    std::memcpy(pool.lane3_pool, image.lane3_pool.data(), image.lane3_pool.size() * sizeof(pb_hls_lword));
    if (pb_mtx_flat_ddr_pool_validate(image, pool, error) != 0) {
        pb_mtx_flat_ddr_pool_release(pool);
        return -7;
    }
    return 0;
}

int pb_mtx_flat_ddr_pool_validate(const pb_mtx_flat_image &image,
                                  const pb_mtx_flat_ddr_pool &pool,
                                  std::string &error)
{
    if (image.matrix_count > pool.matrix_capacity ||
        image.ptr_pool.size() > pool.ptr_capacity ||
        image.pack_ptr_pool.size() > pool.pack_ptr_capacity ||
        image.lane0_pool.size() > pool.lane_capacity ||
        image.lane1_pool.size() > pool.lane_capacity ||
        image.lane2_pool.size() > pool.lane_capacity ||
        image.lane3_pool.size() > pool.lane_capacity) {
        error = "runtime pool capacity is smaller than image";
        return -1;
    }
    if (!aligned64(pool.descriptor_words) || !aligned64(pool.ptr_pool) ||
        !aligned64(pool.pack_ptr_pool) || !aligned64(pool.lane0_pool) ||
        !aligned64(pool.lane1_pool) || !aligned64(pool.lane2_pool) ||
        !aligned64(pool.lane3_pool)) {
        error = "runtime pool base is not 64-byte aligned";
        return -2;
    }
    for (pb_hls_u32 id = 0U; id < image.matrix_count; ++id) {
        const pb_mtx_flat_matrix_record &m = image.matrices[id];
        if (!add_ok(m.ptr_offset, m.ptr_length, pool.ptr_capacity) ||
            !add_ok(m.pack_ptr_offset, m.pack_ptr_length, pool.pack_ptr_capacity) ||
            !add_ok(m.lane_offset, m.lane_length, pool.lane_capacity)) {
            std::ostringstream os;
            os << "descriptor " << id << " exceeds runtime pool";
            error = os.str();
            return -3;
        }
        const size_t b = static_cast<size_t>(id) * PB_GLOBAL_DESC_WORDS;
        if (pool.descriptor_words[b + 0U] != m.rows ||
            pool.descriptor_words[b + 1U] != m.cols ||
            pool.descriptor_words[b + 5U] != m.ptr_length ||
            pool.descriptor_words[b + 7U] != m.pack_ptr_length ||
            pool.descriptor_words[b + 9U] != m.lane_length) {
            error = "descriptor word copy mismatch";
            return -4;
        }
    }
    return 0;
}
