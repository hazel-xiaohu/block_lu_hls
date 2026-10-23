#ifndef PB_HYBRID_LU_POOL_PHYSICAL_H
#define PB_HYBRID_LU_POOL_PHYSICAL_H

#include "pb_csc_kernels.h"

/* One command slot for a physical LU worker.  The struct is an internal HLS
 * shell record; the Vivado-facing version will flatten these fields into
 * worker-local AXI banks. */
struct pb_hybrid_lu_slot_args {
    pb_hls_u32 mode;
    const pb_hls_u32 *a_ptr;
    const pb_hls_u32 *a_pack_ptr;
    pb_hls_lword *a_lane0;
    pb_hls_lword *a_lane1;
    pb_hls_lword *a_lane2;
    pb_hls_lword *a_lane3;
    const pb_hls_u32 *l_ptr;
    const pb_hls_u32 *l_pack_ptr;
    pb_hls_lword *l_lane0;
    pb_hls_lword *l_lane1;
    pb_hls_lword *l_lane2;
    pb_hls_lword *l_lane3;
    const pb_hls_u32 *u_ptr;
    const pb_hls_u32 *u_pack_ptr;
    pb_hls_lword *u_lane0;
    pb_hls_lword *u_lane1;
    pb_hls_lword *u_lane2;
    pb_hls_lword *u_lane3;
    pb_hls_u32 a_rows;
    pb_hls_u32 a_cols;
    pb_hls_u32 shared_dim;
    pb_hls_f32 pivot_eps;
};

/* Vivado HLS requires pointer-bearing top arguments to be disaggregated.
 * Keep the struct above as the C++ helper record, but expose four explicit
 * worker-local interfaces at the synthesis boundary. */
extern "C" void pb_lu_factor4_physical_pool4_shadow(
    pb_hls_u32 mode0,
    const pb_hls_u32 *a0_ptr, const pb_hls_u32 *a0_pack_ptr,
    pb_hls_lword *a0_lane0, pb_hls_lword *a0_lane1,
    pb_hls_lword *a0_lane2, pb_hls_lword *a0_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    pb_hls_lword *l0_lane0, pb_hls_lword *l0_lane1,
    pb_hls_lword *l0_lane2, pb_hls_lword *l0_lane3,
    const pb_hls_u32 *u0_ptr, const pb_hls_u32 *u0_pack_ptr,
    pb_hls_lword *u0_lane0, pb_hls_lword *u0_lane1,
    pb_hls_lword *u0_lane2, pb_hls_lword *u0_lane3,
    pb_hls_u32 a0_rows, pb_hls_u32 a0_cols, pb_hls_u32 shared0,
    pb_hls_f32 eps0,
    pb_hls_u32 mode1,
    const pb_hls_u32 *a1_ptr, const pb_hls_u32 *a1_pack_ptr,
    pb_hls_lword *a1_lane0, pb_hls_lword *a1_lane1,
    pb_hls_lword *a1_lane2, pb_hls_lword *a1_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    pb_hls_lword *l1_lane0, pb_hls_lword *l1_lane1,
    pb_hls_lword *l1_lane2, pb_hls_lword *l1_lane3,
    const pb_hls_u32 *u1_ptr, const pb_hls_u32 *u1_pack_ptr,
    pb_hls_lword *u1_lane0, pb_hls_lword *u1_lane1,
    pb_hls_lword *u1_lane2, pb_hls_lword *u1_lane3,
    pb_hls_u32 a1_rows, pb_hls_u32 a1_cols, pb_hls_u32 shared1,
    pb_hls_f32 eps1,
    pb_hls_u32 mode2,
    const pb_hls_u32 *a2_ptr, const pb_hls_u32 *a2_pack_ptr,
    pb_hls_lword *a2_lane0, pb_hls_lword *a2_lane1,
    pb_hls_lword *a2_lane2, pb_hls_lword *a2_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    pb_hls_lword *l2_lane0, pb_hls_lword *l2_lane1,
    pb_hls_lword *l2_lane2, pb_hls_lword *l2_lane3,
    const pb_hls_u32 *u2_ptr, const pb_hls_u32 *u2_pack_ptr,
    pb_hls_lword *u2_lane0, pb_hls_lword *u2_lane1,
    pb_hls_lword *u2_lane2, pb_hls_lword *u2_lane3,
    pb_hls_u32 a2_rows, pb_hls_u32 a2_cols, pb_hls_u32 shared2,
    pb_hls_f32 eps2,
    pb_hls_u32 mode3,
    const pb_hls_u32 *a3_ptr, const pb_hls_u32 *a3_pack_ptr,
    pb_hls_lword *a3_lane0, pb_hls_lword *a3_lane1,
    pb_hls_lword *a3_lane2, pb_hls_lword *a3_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    pb_hls_lword *l3_lane0, pb_hls_lword *l3_lane1,
    pb_hls_lword *l3_lane2, pb_hls_lword *l3_lane3,
    const pb_hls_u32 *u3_ptr, const pb_hls_u32 *u3_pack_ptr,
    pb_hls_lword *u3_lane0, pb_hls_lword *u3_lane1,
    pb_hls_lword *u3_lane2, pb_hls_lword *u3_lane3,
    pb_hls_u32 a3_rows, pb_hls_u32 a3_cols, pb_hls_u32 shared3,
    pb_hls_f32 eps3,
    pb_hls_u32 &status0, pb_hls_u32 &status1,
    pb_hls_u32 &status2, pb_hls_u32 &status3);

/* Single-slot ABI probe. This bypasses the struct/helper shell and calls the
 * shared engine directly, isolating pointer-interface behavior from pool
 * replication. */
extern "C" void pb_lu_factor4_physical_slot_direct_shadow(
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
