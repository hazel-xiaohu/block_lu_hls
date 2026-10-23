#ifndef PB_HYBRID_REPRESENTATIVE_TASK_PROBE_H
#define PB_HYBRID_REPRESENTATIVE_TASK_PROBE_H

#include "pb_csc_kernels.h"

/* One real arithmetic transaction used by hierarchical RTL regression.
 * The host test bench extracts a bounded CSC4 window from a task generated
 * by the full Matrix-Market -> symbolic -> block-DAG front end. */
extern "C" void pb_hybrid_representative_task_probe(
    pb_hls_u32 kind,
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
    pb_hls_f32 pivot_eps, pb_hls_u64 &work_cycles,
    pb_hls_u32 &status);

#endif
