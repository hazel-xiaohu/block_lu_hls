#include "pb_mtx_flat_adapter.hpp"

#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <limits>
#include <sstream>

namespace {

struct ArenaOwner {
    std::vector<uint8_t> bytes;
    pb_arena_t arena{};
    bool init(size_t mb)
    {
        const size_t n = mb * 1024U * 1024U;
        bytes.assign(n, 0U);
        return pb_arena_init(&arena, bytes.data(), bytes.size()) == 0;
    }
};

static pb_hls_lword pack_word(pb_u32 row, pb_f32 value)
{
    pb_hls_u32 bits = 0U;
    std::memcpy(&bits, &value, sizeof(bits));
    return (static_cast<pb_hls_lword>(bits) << 32U) |
           static_cast<pb_hls_lword>(row);
}

static pb_u32 matrix_id_for_block(const pb_block_lu_t &lu, pb_u32 row,
                                  pb_u32 col)
{
    const pb_u32 slot = row * lu.block_count + col;
    return lu.block_mapper[slot];
}

static bool reverse_block(const pb_block_lu_t &lu, pb_u32 id,
                          pb_u32 &row, pb_u32 &col)
{
    if (id >= lu.active_block_count || lu.block_reverse == nullptr) return false;
    const pb_u32 slot = lu.block_reverse[id];
    row = slot / lu.block_count;
    col = slot % lu.block_count;
    return row < lu.block_count && col < lu.block_count;
}

static bool task_dimensions(const pb_block_lu_t &lu, const pb_task_t &task,
                            pb_mtx_flat_task_record &out)
{
    pb_u32 ai = 0U, aj = 0U;
    if (!reverse_block(lu, task.a, ai, aj)) return false;
    out.kind = static_cast<pb_hls_u32>(task.kind);
    out.a_matrix = task.a;
    out.l_matrix = task.l;
    out.u_matrix = task.u;
    out.x = task.x;
    out.dependency_count = task.dependency_count;
    out.a_rows = lu.block_size[ai];
    out.a_cols = lu.block_size[aj];
    out.shared_dim = out.a_cols;
    out.pivot_eps = 1.0e-6f;
    if (task.kind == PB_TASK_GETRF) {
        out.a_rows = lu.block_size[ai];
        out.a_cols = lu.block_size[ai];
        out.shared_dim = out.a_rows;
    } else if (task.kind == PB_TASK_GESSM) {
        /* A(i,j) = L(i,i) * U(i,j), so the shared dimension is block i. */
        out.shared_dim = lu.block_size[ai];
    } else if (task.kind == PB_TASK_TSTRF) {
        /* A(i,k) = L(i,k) * U(k,k), so the shared dimension is block k. */
        out.shared_dim = lu.block_size[aj];
    } else if (task.kind == PB_TASK_SSSSM) {
        pb_u32 li = 0U, lk = 0U;
        if (!reverse_block(lu, task.l, li, lk)) return false;
        out.shared_dim = lu.block_size[lk];
    } else {
        return false;
    }
    return true;
}

static bool append_matrix(const pb_matrix_t &m, pb_mtx_flat_image &image,
                          pb_mtx_flat_matrix_record &record,
                          pb_mtx_flat_report &report)
{
    if (m.layout != PB_CSC || m.ptr == nullptr || m.index == nullptr ||
        m.value == nullptr || m.ptr[m.cols] != m.nnz) return false;
    record.rows = m.rows;
    record.cols = m.cols;
    record.nnz = m.nnz;
    record.ptr_offset = static_cast<pb_hls_u32>(image.ptr_pool.size());
    record.ptr_length = m.cols + 1U;
    record.pack_ptr_offset = static_cast<pb_hls_u32>(image.pack_ptr_pool.size());
    record.pack_ptr_length = m.cols + 1U;
    record.lane_offset = static_cast<pb_hls_u32>(image.lane0_pool.size());
    image.ptr_pool.insert(image.ptr_pool.end(), m.ptr, m.ptr + m.cols + 1U);
    pb_u32 packed_words = 0U;
    for (pb_u32 col = 0U; col < m.cols; ++col) {
        const pb_u32 count = m.ptr[col + 1U] - m.ptr[col];
        const pb_u32 base = m.ptr[col];
        const pb_u32 words = (count + 3U) >> 2U;
        image.pack_ptr_pool.push_back(packed_words);
        for (pb_u32 group = 0U; group < words; ++group) {
            pb_hls_lword lane[4] = {0U, 0U, 0U, 0U};
            for (pb_u32 lane_id = 0U; lane_id < 4U; ++lane_id) {
                const pb_u32 p = (group << 2U) + lane_id;
                if (p < count)
                    lane[lane_id] = pack_word(m.index[base + p], m.value[base + p]);
            }
            image.lane0_pool.push_back(lane[0]);
            image.lane1_pool.push_back(lane[1]);
            image.lane2_pool.push_back(lane[2]);
            image.lane3_pool.push_back(lane[3]);
        }
        packed_words += words;
    }
    image.pack_ptr_pool.push_back(packed_words);
    record.packed_words = packed_words;
    record.lane_length = packed_words;
    report.max_matrix_nnz = std::max(report.max_matrix_nnz, m.nnz);
    report.max_packed_words = std::max(report.max_packed_words, packed_words);
    report.max_ptr_words = std::max(report.max_ptr_words, m.cols + 1U);
    report.total_packed_words += packed_words;
    return true;
}

static bool verify_matrix_pack(const pb_matrix_t &m,
                               const pb_mtx_flat_image &image,
                               const pb_mtx_flat_matrix_record &record)
{
    const pb_hls_u32 ptr_base = record.ptr_offset;
    const pb_hls_u32 pack_base = record.pack_ptr_offset;
    const pb_hls_u32 lane_base = record.lane_offset;
    for (pb_u32 col = 0U; col < m.cols; ++col) {
        const pb_u32 count = m.ptr[col + 1U] - m.ptr[col];
        const pb_u32 packed = (count + 3U) >> 2U;
        if (image.ptr_pool[ptr_base + col] != m.ptr[col] ||
            image.ptr_pool[ptr_base + col + 1U] != m.ptr[col + 1U])
            return false;
        for (pb_u32 group = 0U; group < packed; ++group) {
            const pb_hls_lword lanes[4] = {
                image.lane0_pool[lane_base + image.pack_ptr_pool[pack_base + col] + group],
                image.lane1_pool[lane_base + image.pack_ptr_pool[pack_base + col] + group],
                image.lane2_pool[lane_base + image.pack_ptr_pool[pack_base + col] + group],
                image.lane3_pool[lane_base + image.pack_ptr_pool[pack_base + col] + group]};
            for (pb_u32 lane = 0U; lane < 4U; ++lane) {
                const pb_u32 p = (group << 2U) + lane;
                if (p >= count) {
                    if (lanes[lane] != 0U) return false;
                    continue;
                }
                const pb_u32 expected_row = m.index[m.ptr[col] + p];
                pb_f32 expected_value = m.value[m.ptr[col] + p];
                pb_u32 actual_row = static_cast<pb_u32>(lanes[lane]);
                pb_u32 actual_bits = static_cast<pb_u32>(lanes[lane] >> 32U);
                pb_u32 expected_bits = 0U;
                std::memcpy(&expected_bits, &expected_value, sizeof(expected_bits));
                if (actual_row != expected_row || actual_bits != expected_bits)
                    return false;
            }
        }
    }
    return image.pack_ptr_pool[pack_base + m.cols] == record.packed_words;
}

static void set_error(std::string &error, const char *where, int rc)
{
    std::ostringstream os;
    os << where << " rc=" << rc;
    error = os.str();
}

template <typename T>
static bool write_vec(std::ofstream &out, const std::vector<T> &v)
{
    const uint64_t n = static_cast<uint64_t>(v.size());
    out.write(reinterpret_cast<const char *>(&n), sizeof(n));
    if (!out) return false;
    if (!v.empty()) {
        out.write(reinterpret_cast<const char *>(v.data()),
                  static_cast<std::streamsize>(v.size() * sizeof(T)));
    }
    return static_cast<bool>(out);
}

template <typename T>
static bool read_vec(std::ifstream &in, std::vector<T> &v)
{
    uint64_t n = 0U;
    in.read(reinterpret_cast<char *>(&n), sizeof(n));
    if (!in || n > static_cast<uint64_t>(std::numeric_limits<size_t>::max()) ||
        n > static_cast<uint64_t>(std::numeric_limits<size_t>::max() / sizeof(T)))
        return false;
    v.resize(static_cast<size_t>(n));
    if (n != 0U)
        in.read(reinterpret_cast<char *>(v.data()),
                static_cast<std::streamsize>(n * sizeof(T)));
    return static_cast<bool>(in);
}

} // namespace

int pb_mtx_flat_validate(const pb_mtx_flat_image &image, std::string &error)
{
    if (image.magic != pb_mtx_flat_image::MAGIC ||
        image.version != pb_mtx_flat_image::VERSION) {
        error = "bad flat image magic/version";
        return -1;
    }
    if (image.task_count != image.tasks.size() ||
        image.matrix_count != image.matrices.size() ||
        image.edge_count != image.successor_idx.size() ||
        image.successor_ptr.size() != image.task_count + 1U) {
        error = "flat image count fields do not match vectors";
        return -2;
    }
    if (image.successor_ptr.empty() ||
        image.successor_ptr.back() != image.edge_count) {
        error = "invalid successor pointer terminal";
        return -3;
    }
    for (pb_hls_u32 i = 0U; i < image.task_count; ++i) {
        if (image.successor_ptr[i] > image.successor_ptr[i + 1U]) {
            error = "successor pointers are not monotonic";
            return -4;
        }
        if (image.tasks[i].a_matrix >= image.matrix_count ||
            image.tasks[i].l_matrix >= image.matrix_count ||
            image.tasks[i].u_matrix >= image.matrix_count) {
            error = "task matrix ID out of range";
            return -5;
        }
    }
    for (pb_hls_u32 id = 0U; id < image.matrix_count; ++id) {
        const pb_mtx_flat_matrix_record &m = image.matrices[id];
        if (m.ptr_length < m.cols + 1U ||
            m.pack_ptr_length < m.cols + 1U ||
            m.lane_length < m.packed_words ||
            m.ptr_offset + m.ptr_length > image.ptr_pool.size() ||
            m.pack_ptr_offset + m.pack_ptr_length > image.pack_ptr_pool.size() ||
            m.lane_offset + m.lane_length > image.lane0_pool.size() ||
            m.lane_offset + m.lane_length > image.lane1_pool.size() ||
            m.lane_offset + m.lane_length > image.lane2_pool.size() ||
            m.lane_offset + m.lane_length > image.lane3_pool.size()) {
            error = "matrix pool offset out of range";
            return -6;
        }
    }
    return 0;
}

int pb_mtx_flat_build(const char *matrix_path,
                      const pb_mtx_flat_options &options,
                      pb_mtx_flat_image &image,
                      pb_mtx_flat_report &report,
                      std::string &error)
{
    if (matrix_path == nullptr || options.nb == 0U) {
        error = "invalid input or NB";
        return -1;
    }
    ArenaOwner arena_owner;
    ArenaOwner graph_owner;
    if (!arena_owner.init(options.arena_mb) ||
        !graph_owner.init(options.graph_arena_mb)) {
        error = "arena allocation failed";
        return -2;
    }
    pb_matrix_t input{};
    int rc = pb_matrix_read_matrix_market(&arena_owner.arena, matrix_path, &input);
    if (rc != 0 || input.rows != input.cols) {
        set_error(error, "matrix_read", rc);
        return -3;
    }
    pb_reorder_t order{};
    if (options.order_path == "identity")
        rc = pb_reorder_identity(&arena_owner.arena, input.rows, &order);
    else
        rc = pb_reorder_read_text(&arena_owner.arena, options.order_path.c_str(),
                                  input.rows, &order);
    if (rc != 0) {
        set_error(error, "reorder", rc);
        return -4;
    }
    /* Fill-in can be substantially larger than the original sparsity for
     * circuit matrices.  The previous 8x bound was enough for small smoke
     * cases but rejected rajat15 before symbolic analysis completed.  Keep
     * this as a host-side arena bound (not a hardware capacity) and reserve
     * a wider, still checked 32-bit count. */
    const uint64_t cap64 = std::max<uint64_t>(input.nnz, input.rows) * 32ULL;
    const pb_u32 cap = cap64 > UINT32_MAX ? UINT32_MAX : static_cast<pb_u32>(cap64);
    pb_analysis_t analysis{};
    rc = pb_analysis_run(&arena_owner.arena, &input, &order, cap, cap, &analysis);
    if (rc != 0) {
        set_error(error, "symbolic", rc);
        return -5;
    }
    pb_block_lu_t lu{};
    rc = pb_block_lu_build_from_analysis(&arena_owner.arena, &analysis,
                                         options.nb, &lu);
    if (rc == 0) rc = pb_block_lu_make_tasks_rightlooking(&lu);
    if (rc != 0) {
        set_error(error, "block_lu", rc);
        return -6;
    }
    pb_runtime_t runtime{};
    runtime.matrices = lu.blocks;
    runtime.matrix_count = lu.matrix_count;
    runtime.tasks = lu.task_list;
    runtime.arena = &arena_owner.arena;
    runtime.graph_arena = &graph_owner.arena;
    runtime.fused_groups = lu.fused_groups;
    rc = pb_runtime_build_edges_v1(&runtime);
    if (rc != 0) {
        set_error(error, "dependency_graph", rc);
        return -7;
    }

    image = pb_mtx_flat_image{};
    report = pb_mtx_flat_report{};
    image.n = lu.n;
    image.nb = options.nb;
    image.block_count = lu.block_count;
    image.active_block_count = lu.active_block_count;
    image.matrix_count = lu.matrix_count;
    image.task_count = lu.task_list.count;
    image.edge_count = runtime.edge_count;
    image.successor_ptr.assign(runtime.successor_ptr,
                               runtime.successor_ptr + runtime.tasks.count + 1U);
    if (runtime.edge_count != 0U) {
        image.successor_idx.assign(runtime.successor_ids,
                                   runtime.successor_ids + runtime.edge_count);
    }
    report.input_nnz = input.nnz;
    report.symbolic_l_nnz = analysis.symbolic.lower.nnz;
    report.symbolic_u_nnz = analysis.symbolic.upper.nnz;

    image.matrices.reserve(lu.matrix_count);
    for (pb_u32 id = 0U; id < lu.matrix_count; ++id) {
        pb_mtx_flat_matrix_record record{};
        if (!append_matrix(lu.blocks[id], image, record, report)) {
            error = "CSC4 packing failed for active/diagonal matrix";
            return -8;
        }
        if (!verify_matrix_pack(lu.blocks[id], image, record)) {
            error = "CSC4 round-trip verification failed";
            return -8;
        }
        image.matrices.push_back(record);
    }
    image.tasks.reserve(lu.task_list.count);
    for (pb_u32 i = 0U; i < lu.task_list.count; ++i) {
        pb_mtx_flat_task_record task{};
        if (!task_dimensions(lu, lu.task_list.items[i], task)) {
            error = "task dimension derivation failed";
            return -9;
        }
        task.pivot_eps = options.pivot_eps;
        image.tasks.push_back(task);
    }
    return pb_mtx_flat_validate(image, error);
}

int pb_mtx_flat_write_binary(const char *path,
                             const pb_mtx_flat_image &image,
                             std::string &error)
{
    if (path == nullptr) {
        error = "null output path";
        return -1;
    }
    if (pb_mtx_flat_validate(image, error) != 0) return -2;
    std::ofstream out(path, std::ios::binary | std::ios::trunc);
    if (!out) {
        error = "cannot open output image";
        return -3;
    }
    const pb_hls_u32 header[9] = {image.magic,image.version,image.n,image.nb,
        image.block_count,image.active_block_count,image.matrix_count,
        image.task_count,image.edge_count};
    out.write(reinterpret_cast<const char *>(header), sizeof(header));
    if (!out || !write_vec(out, image.matrices) || !write_vec(out, image.tasks) ||
        !write_vec(out, image.successor_ptr) || !write_vec(out, image.successor_idx) ||
        !write_vec(out, image.ptr_pool) || !write_vec(out, image.pack_ptr_pool) ||
        !write_vec(out, image.lane0_pool) || !write_vec(out, image.lane1_pool) ||
        !write_vec(out, image.lane2_pool) || !write_vec(out, image.lane3_pool)) {
        error = "failed while writing flat image";
        return -4;
    }
    return 0;
}

int pb_mtx_flat_read_binary(const char *path,
                            pb_mtx_flat_image &image,
                            std::string &error)
{
    if (path == nullptr) {
        error = "null input path";
        return -1;
    }
    std::ifstream in(path, std::ios::binary);
    if (!in) {
        error = "cannot open flat image";
        return -2;
    }
    pb_hls_u32 header[9] = {};
    in.read(reinterpret_cast<char *>(header), sizeof(header));
    if (!in) {
        error = "truncated flat image header";
        return -3;
    }
    image = pb_mtx_flat_image{};
    image.magic = header[0]; image.version = header[1]; image.n = header[2];
    image.nb = header[3]; image.block_count = header[4];
    image.active_block_count = header[5]; image.matrix_count = header[6];
    image.task_count = header[7]; image.edge_count = header[8];
    if (image.magic != pb_mtx_flat_image::MAGIC ||
        image.version != pb_mtx_flat_image::VERSION) {
        error = "bad flat image magic/version";
        return -4;
    }
    if (!read_vec(in, image.matrices) || !read_vec(in, image.tasks) ||
        !read_vec(in, image.successor_ptr) || !read_vec(in, image.successor_idx) ||
        !read_vec(in, image.ptr_pool) || !read_vec(in, image.pack_ptr_pool) ||
        !read_vec(in, image.lane0_pool) || !read_vec(in, image.lane1_pool) ||
        !read_vec(in, image.lane2_pool) || !read_vec(in, image.lane3_pool)) {
        error = "truncated flat image payload";
        return -5;
    }
    return pb_mtx_flat_validate(image, error);
}
