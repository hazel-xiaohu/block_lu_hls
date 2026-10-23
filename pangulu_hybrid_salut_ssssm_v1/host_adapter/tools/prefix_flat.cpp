#include "pb_mtx_flat_adapter.hpp"
#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

/* Make an induced DAG prefix for RTL regression.  Matrix/pool records are
 * deliberately kept unchanged; only task records and the edges among the
 * selected task IDs are rebuilt.  This gives a legal standalone DAG while
 * retaining the real pool descriptors and task ABI. */
int main(int argc, char **argv) {
    if (argc != 4) {
        std::fprintf(stderr, "usage: %s input.flat output.flat task_limit\n", argv[0]);
        return 2;
    }
    char *end = nullptr;
    const unsigned long requested = std::strtoul(argv[3], &end, 10);
    if (!end || *end != '\0' || requested == 0UL) return 2;
    pb_mtx_flat_image in, out;
    std::string error;
    if (pb_mtx_flat_read_binary(argv[1], in, error) != 0) {
        std::fprintf(stderr, "read: %s\n", error.c_str()); return 1;
    }
    const pb_hls_u32 n = static_cast<pb_hls_u32>(
        requested > in.task_count ? in.task_count : requested);
    out = in;
    out.tasks.assign(in.tasks.begin(), in.tasks.begin() + n);
    out.task_count = n;
    out.successor_ptr.assign(static_cast<size_t>(n) + 1U, 0U);
    out.successor_idx.clear();
    for (pb_hls_u32 src = 0; src < n; ++src) {
        for (pb_hls_u32 at = in.successor_ptr[src];
             at < in.successor_ptr[src + 1U]; ++at) {
            const pb_hls_u32 dst = in.successor_idx[at];
            if (dst < n) out.successor_idx.push_back(dst);
        }
        out.successor_ptr[src + 1U] =
            static_cast<pb_hls_u32>(out.successor_idx.size());
    }
    for (auto &t : out.tasks) t.dependency_count = 0U;
    for (pb_hls_u32 src = 0; src < n; ++src)
        for (pb_hls_u32 at = out.successor_ptr[src];
             at < out.successor_ptr[src + 1U]; ++at)
            ++out.tasks[out.successor_idx[at]].dependency_count;
    out.edge_count = static_cast<pb_hls_u32>(out.successor_idx.size());
    if (pb_mtx_flat_validate(out, error) != 0) {
        std::fprintf(stderr, "validate: %s\n", error.c_str()); return 1;
    }
    if (pb_mtx_flat_write_binary(argv[2], out, error) != 0) {
        std::fprintf(stderr, "write: %s\n", error.c_str()); return 1;
    }
    std::printf("wrote tasks=%u edges=%u matrices=%u ptr=%zu lane=%zu\n",
                out.task_count, out.edge_count, out.matrix_count,
                out.ptr_pool.size(), out.lane0_pool.size());
    return 0;
}
