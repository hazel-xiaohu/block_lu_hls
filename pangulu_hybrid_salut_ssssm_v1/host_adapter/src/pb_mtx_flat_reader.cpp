#include "pb_mtx_flat_adapter.hpp"

#include <fstream>

namespace {

template <typename T>
bool read_vec(std::ifstream &in, std::vector<T> &v)
{
    uint64_t n = 0U;
    in.read(reinterpret_cast<char *>(&n), sizeof(n));
    if (!in || n > (1ULL << 32U)) return false;
    v.resize(static_cast<size_t>(n));
    if (!v.empty())
        in.read(reinterpret_cast<char *>(v.data()),
                static_cast<std::streamsize>(v.size() * sizeof(T)));
    return static_cast<bool>(in);
}

int validate_loaded(const pb_mtx_flat_image &x, std::string &error)
{
    if (x.magic != pb_mtx_flat_image::MAGIC ||
        x.version != pb_mtx_flat_image::VERSION) {
        error = "bad flat image magic/version"; return -1;
    }
    if (x.matrix_count != x.matrices.size() || x.task_count != x.tasks.size() ||
        x.edge_count != x.successor_idx.size() ||
        x.successor_ptr.size() != static_cast<size_t>(x.task_count) + 1U ||
        x.successor_ptr.empty() || x.successor_ptr.back() != x.edge_count) {
        error = "flat image count mismatch"; return -2;
    }
    for (pb_hls_u32 i = 0U; i < x.task_count; ++i) {
        if (x.successor_ptr[i] > x.successor_ptr[i + 1U] ||
            x.tasks[i].a_matrix >= x.matrix_count ||
            x.tasks[i].l_matrix >= x.matrix_count ||
            x.tasks[i].u_matrix >= x.matrix_count) {
            error = "invalid task or successor metadata"; return -3;
        }
    }
    for (pb_hls_u32 i = 0U; i < x.matrix_count; ++i) {
        const pb_mtx_flat_matrix_record &m = x.matrices[i];
        if (m.ptr_offset + m.ptr_length > x.ptr_pool.size() ||
            m.pack_ptr_offset + m.pack_ptr_length > x.pack_ptr_pool.size() ||
            m.lane_offset + m.lane_length > x.lane0_pool.size() ||
            m.lane_offset + m.lane_length > x.lane1_pool.size() ||
            m.lane_offset + m.lane_length > x.lane2_pool.size() ||
            m.lane_offset + m.lane_length > x.lane3_pool.size()) {
            error = "matrix pool offset out of range"; return -4;
        }
    }
    return 0;
}

} // namespace

int pb_mtx_flat_read_binary(const char *path, pb_mtx_flat_image &image,
                            std::string &error)
{
    if (path == nullptr) { error = "null flat image path"; return -1; }
    std::ifstream in(path, std::ios::binary);
    if (!in) { error = "cannot open flat image"; return -2; }
    pb_hls_u32 header[9] = {};
    in.read(reinterpret_cast<char *>(header), sizeof(header));
    if (!in) { error = "truncated flat image header"; return -3; }
    image = pb_mtx_flat_image{};
    image.magic = header[0]; image.version = header[1]; image.n = header[2];
    image.nb = header[3]; image.block_count = header[4];
    image.active_block_count = header[5]; image.matrix_count = header[6];
    image.task_count = header[7]; image.edge_count = header[8];
    if (!read_vec(in, image.matrices) || !read_vec(in, image.tasks) ||
        !read_vec(in, image.successor_ptr) || !read_vec(in, image.successor_idx) ||
        !read_vec(in, image.ptr_pool) || !read_vec(in, image.pack_ptr_pool) ||
        !read_vec(in, image.lane0_pool) || !read_vec(in, image.lane1_pool) ||
        !read_vec(in, image.lane2_pool) || !read_vec(in, image.lane3_pool)) {
        error = "truncated flat image payload"; return -4;
    }
    return validate_loaded(image, error);
}
