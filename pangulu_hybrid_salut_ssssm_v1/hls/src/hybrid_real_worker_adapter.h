#ifndef PB_HYBRID_REAL_WORKER_ADAPTER_H
#define PB_HYBRID_REAL_WORKER_ADAPTER_H

#include "hybrid_worker_events.h"
#include <hls_stream.h>

/* Two real arithmetic worker adapters.  The LU and SSSSM command FIFOs are
 * separated so each worker owns an independent command path and memory view;
 * the done merge is the only shared event path.  The buffers are flattened at
 * the HLS boundary, matching the physical-pool ABI. */
extern "C" void pb_hybrid_real_worker_adapter2(
    hls::stream<pb_hybrid_worker_cmd> &lu_cmd_fifo,
    hls::stream<pb_hybrid_worker_cmd> &ssssm_cmd_fifo,
    hls::stream<pb_hybrid_worker_done> &done_fifo,
    const pb_hls_u32 *lu_a_ptr, const pb_hls_u32 *lu_a_pack_ptr,
    pb_hls_lword *lu_a_lane0, pb_hls_lword *lu_a_lane1,
    pb_hls_lword *lu_a_lane2, pb_hls_lword *lu_a_lane3,
    const pb_hls_u32 *lu_l_ptr, const pb_hls_u32 *lu_l_pack_ptr,
    pb_hls_lword *lu_l_lane0, pb_hls_lword *lu_l_lane1,
    pb_hls_lword *lu_l_lane2, pb_hls_lword *lu_l_lane3,
    const pb_hls_u32 *lu_u_ptr, const pb_hls_u32 *lu_u_pack_ptr,
    pb_hls_lword *lu_u_lane0, pb_hls_lword *lu_u_lane1,
    pb_hls_lword *lu_u_lane2, pb_hls_lword *lu_u_lane3,
    const pb_hls_u32 *ss_a_ptr, const pb_hls_u32 *ss_a_pack_ptr,
    pb_hls_lword *ss_a_lane0, pb_hls_lword *ss_a_lane1,
    pb_hls_lword *ss_a_lane2, pb_hls_lword *ss_a_lane3,
    const pb_hls_u32 *ss_l_ptr, const pb_hls_u32 *ss_l_pack_ptr,
    pb_hls_lword *ss_l_lane0, pb_hls_lword *ss_l_lane1,
    pb_hls_lword *ss_l_lane2, pb_hls_lword *ss_l_lane3,
    const pb_hls_u32 *ss_u_ptr, const pb_hls_u32 *ss_u_pack_ptr,
    pb_hls_lword *ss_u_lane0, pb_hls_lword *ss_u_lane1,
    pb_hls_lword *ss_u_lane2, pb_hls_lword *ss_u_lane3,
    pb_hls_u32 &lu_accepted, pb_hls_u32 &ssssm_accepted,
    pb_hls_u32 &done_count, pb_hls_u32 &lu_status,
    pb_hls_u32 &ssssm_status, pb_hls_u64 &lu_cycles,
    pb_hls_u64 &ssssm_cycles, pb_hls_u32 &status);

#endif
