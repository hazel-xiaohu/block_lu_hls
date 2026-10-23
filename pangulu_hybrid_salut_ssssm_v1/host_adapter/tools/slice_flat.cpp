#include "pb_mtx_flat_adapter.hpp"
#include <cstdio>
#include <string>

int main(int argc, char **argv) {
    if (argc != 3 && argc != 4) return 2;
    pb_mtx_flat_image in, out; std::string e;
    if (pb_mtx_flat_read_binary(argv[1], in, e)) { std::fprintf(stderr, "%s\n", e.c_str()); return 1; }
    if (in.task_count == 0U) return 1;
    unsigned sel = argc == 4 ? (unsigned)std::stoul(argv[3]) : 0U;
    if (sel >= in.task_count) return 1;
    out = in;
    out.tasks.assign(1U, in.tasks[sel]);
    out.task_count = 1U;
    out.edge_count = 0U;
    out.successor_ptr.assign(2U, 0U);
    out.successor_idx.clear();
    out.tasks[0].dependency_count = 0U;
    if (pb_mtx_flat_write_binary(argv[2], out, e)) { std::fprintf(stderr, "%s\n", e.c_str()); return 1; }
    std::printf("wrote task=%u source=%u matrices=%u ptr=%zu lane=%zu\n", out.task_count, sel, out.matrix_count, out.ptr_pool.size(), out.lane0_pool.size());
    return 0;
}
