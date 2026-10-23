#include "hybrid_worker_pool.h"

static void pb_lu_worker(
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
    pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INLINE off
    /* Keep the production worker on the independently verified packed
     * kernels.  The experimental shared state machine is intentionally not
     * in this hierarchy: its speculative dependence pragmas produced invalid
     * DSP48 OPMODE values and made RTL co-simulation unusably slow.  This
     * preserves the exact task ABI while providing a clean RTL baseline. */
    if (mode == PB_LU_SHARED_GETRF) {
        if (a_rows != a_cols || shared_dim != a_rows) {
            status = PB_HLS_BAD_SIZE;
            return;
        }
#ifdef PB_PROTOCOL_SCALAR_GETRF
        pb_getrf_csc_packed_scalar_protocol(
#else
        pb_getrf_csc_factor4_packed_all(
#endif
            a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
            l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3,
            u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3,
            a_rows, pivot_eps, status);
    } else if (mode == PB_LU_SHARED_GESSM) {
        if (shared_dim != a_rows) {
            status = PB_HLS_BAD_SIZE;
            return;
        }
        pb_gessm_csc_tv_factor4_packed_all(
            a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
            l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3,
            a_rows, a_cols, status);
    } else {
        status = PB_HLS_BAD_SIZE;
    }
}

static void pb_ssssm_worker(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_u32 &status)
{
#pragma HLS INLINE off
#ifdef PB_PAR4_CONSERVATIVE_SSSSM
    /* A complete factor-4 SSSSM datapath without nested DATAFLOW.  The
     * parallel 4+4 wave assigns one AXI master to each physical worker; this
     * conservative implementation therefore has one unambiguous master
     * owner.  The stream-merge implementation remains the default for the
     * standalone SSSSM IP and will be reconnected through the shared panel
     * cache rather than by giving its internal processes one bundled port. */
    pb_ssssm_csc_tv_factor4_packed_all(
        a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
        l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3,
        u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3,
        a_rows, a_cols, shared_dim, status);
#else
    pb_ssssm_csc_tv_factor4_streammerge4_shadow(
        a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
        l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3,
        u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3,
        a_rows, a_cols, shared_dim, status);
#endif
}

void pb_hybrid_lu_dispatch(
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
    pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INLINE off
    if (mode == PB_LU_SHARED_TSTRF) {
        pb_tstrf_csc_tv_factor4_packed_all(
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
            a_rows,a_cols,pivot_eps,status);
    } else {
        pb_lu_worker(mode,a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
            l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
            a_rows,a_cols,shared_dim,pivot_eps,status);
    }
}

void pb_hybrid_ssssm_dispatch(
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
    pb_hls_u32 &status)
{
#pragma HLS INLINE off
    pb_ssssm_worker(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
        l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,
        u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
        a_rows,a_cols,shared_dim,status);
}

extern "C" void pb_hybrid_worker_dispatch(
    pb_hls_u32 pe_id, pb_hls_u32 mode,
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
    pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
    const bool lu_kind=mode<=PB_LU_SHARED_TSTRF;
    if ((lu_kind && pe_id>=4U) || (!lu_kind && pe_id<4U) || pe_id>=8U) {
        status=PB_HLS_BAD_SIZE;
        return;
    }
    if (lu_kind) {
        /* The shared GETRF/GESSM state machine is already covered by the
         * tiled-pool RTL test.  Keep TSTRF on the previously verified
         * factor-4 packed implementation until the new TSTRF state machine
         * has an isolated regression: the first RTL run exposed a
         * BAD_PATTERN in that state, while GETRF and GESSM were exact.  This
         * is a functional containment change, not a change to the task ABI. */
        pb_hybrid_lu_dispatch(mode,
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
            l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
            a_rows,a_cols,shared_dim,pivot_eps,status);
    } else if (mode==PB_LU_SHARED_SSSSM) {
        pb_hybrid_ssssm_dispatch(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
            l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
            a_rows,a_cols,shared_dim,status);
    } else {
        status=PB_HLS_BAD_SIZE;
    }
}
