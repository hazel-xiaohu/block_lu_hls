#ifndef PB_HYBRID_EVENT_FIFO_SCHEDULER_H
#define PB_HYBRID_EVENT_FIFO_SCHEDULER_H

#include "hybrid_worker_events.h"
#include <hls_stream.h>

/* Stage-5 command/done FIFO scheduler.  The FIFOs are internal synthesizable
 * streams: command descriptors are issued by the dependency scheduler and
 * accepted by eight worker slots (PE 0..3 are LU, PE 4..7 are SSSSM).  The
 * worker model in this stage is deliberately latency-only; it validates the
 * protocol and overlap before attaching arithmetic datapaths. */
enum pb_hybrid_fifo_status {
    PB_HY_FIFO_OK = 0,
    PB_HY_FIFO_BAD_SIZE = 1,
    PB_HY_FIFO_BAD_GRAPH = 2,
    PB_HY_FIFO_PROTOCOL = 3,
    PB_HY_FIFO_DEADLOCK = 4
};

extern "C" void pb_hybrid_event_scheduler_fifo(
    const pb_hls_u32 *kind,
    const pb_hls_u32 *dependency_count,
    const pb_hls_u32 *successor_ptr,
    const pb_hls_u32 *successor_idx,
    pb_hls_u32 task_count,
    pb_hls_u32 *issue_order,
    pb_hls_u32 *issue_pe,
    pb_hls_u32 *completion_order,
    pb_hls_u32 *completion_pe,
    pb_hls_u32 *completion_kind,
    pb_hls_u64 *completion_cycles,
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu_inflight,
    pb_hls_u32 &max_ssssm_inflight,
    pb_hls_u32 &max_command_fifo,
    pb_hls_u32 &max_done_fifo,
    pb_hls_u32 &protocol_errors,
    pb_hls_u64 &total_cycles,
    pb_hls_u32 &status);

#endif
