#ifndef PB_HYBRID_TASK_ENGINE_H
#define PB_HYBRID_TASK_ENGINE_H

#include "pb_csc_kernels.h"

extern "C" void pb_hybrid_task_engine(
    pb_hls_u32 mode,
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status);

#endif

