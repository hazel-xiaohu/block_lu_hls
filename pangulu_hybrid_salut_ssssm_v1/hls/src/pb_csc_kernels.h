#ifndef PB_CSC_KERNELS_H
#define PB_CSC_KERNELS_H

#include <stdint.h>

typedef uint32_t pb_hls_u32;
typedef uint64_t pb_hls_u64;
typedef float pb_hls_f32;

/* One packed {row,value} record per factor-4 memory lane.  Bits [31:0] are
 * the row index and bits [63:32] are the IEEE-754 fp32 value.  Keeping this
 * as an explicit 64-bit scalar is important: it forces one AXI read per lane
 * instead of separate reads for the two members of a C struct. */
typedef pb_hls_u64 pb_hls_lword;

enum pb_lu_shared_mode {
    PB_LU_SHARED_GETRF = 0,
    PB_LU_SHARED_GESSM = 1,
    PB_LU_SHARED_TSTRF = 2,
    /* Co-simulation integration mode.  The production shared arithmetic
     * engine still implements modes 0--2; mode 3 is decoded by the unified
     * Block-LU validation wrapper declared below. */
    PB_LU_SHARED_SSSSM = 3
};

enum pb_hls_status {
    PB_HLS_OK = 0,
    PB_HLS_BAD_SIZE = 1,
    PB_HLS_BAD_PATTERN = 2,
    /* Worker-side protocol timeout; distinct from arithmetic errors. */
    PB_HLS_TIMEOUT = 3
};

extern "C" void pb_getrf_csc(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    const pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, pb_hls_f32 *l_val,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_idx,
    pb_hls_f32 *u_val, pb_hls_u32 n, pb_hls_f32 pivot_eps,
    pb_hls_u32 &status);

extern "C" void pb_gessm_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, const pb_hls_f32 *l_val,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status);

/* Packed-L factor-4 shadow.  l_ptr retains original, unpadded CSC counts;
 * l_pack_ptr indexes per-column groups of four in the lane arrays. */
extern "C" void pb_gessm_csc_tv_factor4_packed(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status);

extern "C" void pb_tstrf_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *u_ptr,
    const pb_hls_u32 *u_idx, const pb_hls_f32 *u_val,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status);

extern "C" void pb_ssssm_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, const pb_hls_f32 *l_val,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_idx,
    const pb_hls_f32 *u_val, pb_hls_u32 a_rows,
    pb_hls_u32 a_cols, pb_hls_u32 shared_dim, pb_hls_u32 &status);

/* Unified CSC4 ABI.  ptr[] remains canonical CSC metadata (and therefore
 * defines the exact, unpadded NNZ count of every column); pack_ptr[] points
 * to ceil(nnz/4) records in each of the four {row,value} lanes.  These four
 * tops intentionally coexist with the scalar ABI above so the deployed
 * design remains a reproducible baseline. */
extern "C" void pb_getrf_csc_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status);

/* Scalar arithmetic control for protocol/RTL debugging.  It retains the
 * canonical CSC4 storage but performs one update at a time, avoiding the
 * factor-4 GETRF datapath while keeping the same numerical ABI. */
extern "C" void pb_getrf_csc_packed_scalar_protocol(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status);

/* GETRF II=1 shadow.  The numerical algorithm and canonical CSC4 ABI are
 * unchanged.  The implementation stages one packed column on chip, reuses
 * the verified four-lane DATAFLOW update engine, computes one reciprocal per
 * pivot, and performs write-only packed L/U bursts.  The baseline top above
 * remains available as the golden/control implementation. */
extern "C" void pb_getrf_csc_factor4_ii1_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status);

extern "C" void pb_gessm_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status);

extern "C" void pb_tstrf_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status);

extern "C" void pb_ssssm_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_u32 shared_dim, pb_hls_u32 &status);

/* SSSSM stream/merge shadow.  This is deliberately a second top-level ABI:
 * the verified packed-accumulator implementation above remains untouched.
 * For each target CSC column it streams one weighted L-column at a time into
 * a sorted merge with the current A column, then performs one packed writeback.
 * The producer evaluates four packed products per iteration; the merge keeps
 * the symbolic A pattern and drops contributions to rows not present in A. */
extern "C" void pb_ssssm_csc_tv_factor4_streammerge_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_u32 shared_dim, pb_hls_u32 &status);

/* Phase-1 shared-engine shadow ABI.  The wrapper deliberately dispatches to
 * the already verified factor-4 tops; this validates the unified argument
 * contract and mode semantics before replacing the internals with one shared
 * HLS datapath. */
extern "C" void pb_lu_factor4_shared_engine(
    pb_hls_u32 mode,
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status);

/* Phase-2 shared datapath.  Unlike the ABI shadow above, this top owns one
 * common base/delta workspace and one four-lane arithmetic datapath.  mode is
 * decoded as a control-state entry (GETRF/GESSM/TSTRF); the mode branches do
 * not call the three standalone tops. */
extern "C" void pb_lu_factor4_shared_engine_v2(
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

/* Unified validation top used by actual-matrix Block-LU RTL co-simulation.
 * GETRF/GESSM/TSTRF use the shared v2 datapath, while SSSSM uses the frozen
 * stream/merge implementation.  This wrapper is intentionally not exported
 * as a deployed IP: it provides one RTL transaction ABI so a complete task
 * DAG can be exercised in a single co-simulation. */
extern "C" void pb_block_lu_factor4_cosim_engine(
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

/* True stream/dataflow shadow.  Four independent lane producers feed a
 * four-way sorted merge tree, followed by a single A-column accumulator
 * consumer.  This top is intentionally separate until it passes the same
 * numerical and RTL checks as the bounded-buffer shadow. */
extern "C" void pb_ssssm_csc_tv_factor4_streammerge4_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_u32 shared_dim, pb_hls_u32 &status);

/* Four-target SSSSM shadow.  Each target is a single independent A/U
 * column-view with one logical AXI interface (pe0..pe3).  The A/L/U metadata
 * and packed lanes for one target are assigned to that target's interface;
 * the four PEs are independent processes. */
extern "C" void pb_ssssm_csc_tv_factor4_streammerge4_target4_shadow(
    const pb_hls_u32 *a0_ptr, const pb_hls_u32 *a0_pack_ptr,
    pb_hls_lword *a0_lane0, pb_hls_lword *a0_lane1,
    pb_hls_lword *a0_lane2, pb_hls_lword *a0_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *u0_ptr, const pb_hls_u32 *u0_pack_ptr,
    const pb_hls_lword *u0_lane0, const pb_hls_lword *u0_lane1,
    const pb_hls_lword *u0_lane2, const pb_hls_lword *u0_lane3,
    const pb_hls_u32 *a1_ptr, const pb_hls_u32 *a1_pack_ptr,
    pb_hls_lword *a1_lane0, pb_hls_lword *a1_lane1,
    pb_hls_lword *a1_lane2, pb_hls_lword *a1_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *u1_ptr, const pb_hls_u32 *u1_pack_ptr,
    const pb_hls_lword *u1_lane0, const pb_hls_lword *u1_lane1,
    const pb_hls_lword *u1_lane2, const pb_hls_lword *u1_lane3,
    const pb_hls_u32 *a2_ptr, const pb_hls_u32 *a2_pack_ptr,
    pb_hls_lword *a2_lane0, pb_hls_lword *a2_lane1,
    pb_hls_lword *a2_lane2, pb_hls_lword *a2_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *u2_ptr, const pb_hls_u32 *u2_pack_ptr,
    const pb_hls_lword *u2_lane0, const pb_hls_lword *u2_lane1,
    const pb_hls_lword *u2_lane2, const pb_hls_lword *u2_lane3,
    const pb_hls_u32 *a3_ptr, const pb_hls_u32 *a3_pack_ptr,
    pb_hls_lword *a3_lane0, pb_hls_lword *a3_lane1,
    pb_hls_lword *a3_lane2, pb_hls_lword *a3_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    const pb_hls_u32 *u3_ptr, const pb_hls_u32 *u3_pack_ptr,
    const pb_hls_lword *u3_lane0, const pb_hls_lword *u3_lane1,
    const pb_hls_lword *u3_lane2, const pb_hls_lword *u3_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim,
    pb_hls_u32 &status0, pb_hls_u32 &status1,
    pb_hls_u32 &status2, pb_hls_u32 &status3);

/* Shared-A/U, four-L-port target shadow.  A and U are common CSC4 views;
 * each target PE receives its own L CSC4 view through lpe0..lpe3.  The
 * target columns are selected by a_col* and u_col*. */
extern "C" void pb_ssssm_csc_tv_factor4_target4_shared_au_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    pb_hls_u32 a_col0, pb_hls_u32 a_col1,
    pb_hls_u32 a_col2, pb_hls_u32 a_col3,
    pb_hls_u32 u_col0, pb_hls_u32 u_col1,
    pb_hls_u32 u_col2, pb_hls_u32 u_col3,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim,
    pb_hls_u32 &status0, pb_hls_u32 &status1,
    pb_hls_u32 &status2, pb_hls_u32 &status3);

/* /output/ssssm-style dispatcher: U nonzeros are jobs, four workers consume
 * one replicated L (= B) view each, and their partial products update A. */
extern "C" void pb_ssssm_csc_tv_factor4_dispatch4_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_u32 shared_dim, pb_hls_u32 &status);

#endif
