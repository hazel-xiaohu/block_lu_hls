#include "pb_ddr_runtime_pool.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>

int main(int argc, char **argv)
{
    if (argc < 2 || argc > 4) {
        std::fprintf(stderr, "usage: %s MATRIX.mtx [NB] [page_words]\n"
                             "       %s IMAGE.bin [page_words]\n", argv[0], argv[0]);
        return 2;
    }
    pb_mtx_flat_image image;
    pb_mtx_flat_report report;
    std::string error;
    const size_t path_len = std::strlen(argv[1]);
    const bool binary = path_len >= 4U &&
        std::strcmp(argv[1] + path_len - 4U, ".bin") == 0;
    if (binary) {
        if (pb_mtx_flat_read_binary(argv[1], image, error) != 0) {
            std::fprintf(stderr, "PB_DDR_POOL_ERROR stage=read %s\n", error.c_str());
            return 1;
        }
    } else {
        pb_mtx_flat_options options;
        if (argc >= 3) options.nb = static_cast<pb_hls_u32>(std::strtoul(argv[2], nullptr, 10));
        if (pb_mtx_flat_build(argv[1], options, image, report, error) != 0) {
            std::fprintf(stderr, "PB_DDR_POOL_ERROR stage=build %s\n", error.c_str());
            return 1;
        }
    }
    if (!binary && image.matrix_count == 0U) {
        std::fprintf(stderr, "PB_DDR_POOL_ERROR stage=build %s\n", error.c_str());
        return 1;
    }
    const int page_arg = binary ? 2 : 3;
    const pb_hls_u32 page_words = argc > page_arg
        ? static_cast<pb_hls_u32>(std::strtoul(argv[page_arg], nullptr, 10)) : 0U;
    pb_mtx_flat_ddr_pool pool;
    if (pb_mtx_flat_ddr_pool_init(image, pool, page_words, error) != 0) {
        std::fprintf(stderr, "PB_DDR_POOL_ERROR stage=alloc %s\n", error.c_str());
        return 1;
    }
    std::printf("PB_DDR_POOL_PASS matrices=%u ptr=%u pack=%u lanes=%u page_words=%u "
                "desc_bytes=%zu ptr_bytes=%zu pack_bytes=%zu lane_bytes=%zu "
                "descriptor=%p ptr=%p pack=%p lane0=%p\n",
                image.matrix_count, pool.ptr_capacity, pool.pack_ptr_capacity,
                pool.lane_capacity, pool.page_words,
                static_cast<size_t>(pool.matrix_capacity) * PB_GLOBAL_DESC_WORDS * sizeof(pb_hls_u32),
                static_cast<size_t>(pool.ptr_capacity) * sizeof(pb_hls_u32),
                static_cast<size_t>(pool.pack_ptr_capacity) * sizeof(pb_hls_u32),
                static_cast<size_t>(pool.lane_capacity) * sizeof(pb_hls_lword),
                static_cast<void *>(pool.descriptor_words), static_cast<void *>(pool.ptr_pool),
                static_cast<void *>(pool.pack_ptr_pool), static_cast<void *>(pool.lane0_pool));
    pb_mtx_flat_ddr_pool_release(pool);
    return 0;
}
