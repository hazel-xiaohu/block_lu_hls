#ifndef PB_HYBRID_REAL_WORKER_POOL_H
#define PB_HYBRID_REAL_WORKER_POOL_H

#include "hybrid_real_worker_adapter.h"

#ifndef PB_REAL_FIFO_DEPTH
#define PB_REAL_FIFO_DEPTH 16U
#endif

/* Bounded wait budget for RTL stream scheduling latency.  It is not a
 * command count: a worker normally consumes one command and one sentinel. */
#ifndef PB_REAL_WORKER_WATCHDOG_CYCLES
#define PB_REAL_WORKER_WATCHDOG_CYCLES 65536U
#endif

/* Binding for one physical worker slot.  The deployed HLS top will flatten
 * these fields into worker-local AXI bundles; keeping the binding explicit
 * here prevents command descriptors from being silently reinterpreted as
 * pointers inside the scheduler. */
struct pb_hybrid_real_slot_view {
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
};

/* Full eight-slot real-worker batch bridge.  LU slots are PE 0--3 and SSSSM
 * slots are PE 4--7.  Each input FIFO carries one command for its slot in a
 * batch.  The command/done record is identical to Stage 5, so this bridge can
 * sit directly behind the Stage-5 dependency scheduler. */
void pb_hybrid_real_worker_pool8_once(
    hls::stream<pb_hybrid_worker_cmd> &lu0_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu1_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu2_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu3_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss0_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss1_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss2_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss3_cmd,
    hls::stream<pb_hybrid_worker_done> &done_fifo,
    const pb_hybrid_real_slot_view views[8],
    pb_hls_u32 accepted[8], pb_hls_u32 worker_status[8],
    pb_hls_u64 worker_cycles[8], pb_hls_u32 &done_count,
    pb_hls_u32 &status);

/* Continuous version used by the dependency scheduler.  Each worker keeps
 * consuming commands until the scheduler sends a task_id of 0xffffffff.
 * Unlike the *_once gate, this function permits a slot to receive a new
 * command as soon as its real done event has been consumed. */
void pb_hybrid_real_worker_pool8_stream(
    hls::stream<pb_hybrid_worker_cmd> &lu0_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu1_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu2_cmd,
    hls::stream<pb_hybrid_worker_cmd> &lu3_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss0_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss1_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss2_cmd,
    hls::stream<pb_hybrid_worker_cmd> &ss3_cmd,
    hls::stream<pb_hybrid_worker_done> &done_fifo,
    const pb_hybrid_real_slot_view views[8],
    pb_hybrid_worker_debug &debug0,
    pb_hybrid_worker_debug &debug1,
    pb_hybrid_worker_debug &debug2,
    pb_hybrid_worker_debug &debug3,
    pb_hybrid_worker_debug &debug4,
    pb_hybrid_worker_debug &debug5,
    pb_hybrid_worker_debug &debug6,
    pb_hybrid_worker_debug &debug7,
    pb_hls_u32 max_commands,
    pb_hls_u32 &protocol_errors);

#endif
