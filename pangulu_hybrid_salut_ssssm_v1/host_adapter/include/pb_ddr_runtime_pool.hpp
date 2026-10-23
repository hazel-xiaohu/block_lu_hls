#ifndef PB_DDR_RUNTIME_POOL_HPP
#define PB_DDR_RUNTIME_POOL_HPP

#include "pb_mtx_flat_adapter.hpp"

#ifndef PB_GLOBAL_DESC_WORDS
#define PB_GLOBAL_DESC_WORDS 16U
#endif
#ifndef PB_GLOBAL_MAX_MATRICES
#define PB_GLOBAL_MAX_MATRICES 128U
#endif

#include <string>

/* Host/PS-side materialisation of the pointer-free flat image. HLS never
 * allocates DDR. This object allocates exactly the capacities required by one
 * image (optionally rounded to a page), copies the image into 64-byte aligned
 * buffers, and exposes the pointers plus capacities used by the HLS top. The
 * allocation backend can be replaced by Xil_MemAlloc/CMA on the target. */
struct pb_mtx_flat_ddr_pool {
    pb_hls_u32 matrix_capacity = 0U;
    pb_hls_u32 ptr_capacity = 0U;
    pb_hls_u32 pack_ptr_capacity = 0U;
    pb_hls_u32 lane_capacity = 0U;
    pb_hls_u32 page_words = 0U;

    pb_hls_u32 *descriptor_words = nullptr;
    pb_hls_u32 *ptr_pool = nullptr;
    pb_hls_u32 *pack_ptr_pool = nullptr;
    pb_hls_lword *lane0_pool = nullptr;
    pb_hls_lword *lane1_pool = nullptr;
    pb_hls_lword *lane2_pool = nullptr;
    pb_hls_lword *lane3_pool = nullptr;

    void *allocation[7] = {nullptr, nullptr, nullptr, nullptr,
                           nullptr, nullptr, nullptr};
};

/* page_words==0 means exact capacities; otherwise each pool is independently
 * rounded up to a power-of-two page boundary without changing descriptor
 * offsets or the HLS ABI. */
int pb_mtx_flat_ddr_pool_init(const pb_mtx_flat_image &image,
                              pb_mtx_flat_ddr_pool &pool,
                              pb_hls_u32 page_words,
                              std::string &error);

void pb_mtx_flat_ddr_pool_release(pb_mtx_flat_ddr_pool &pool);

int pb_mtx_flat_ddr_pool_validate(const pb_mtx_flat_image &image,
                                  const pb_mtx_flat_ddr_pool &pool,
                                  std::string &error);

#endif
