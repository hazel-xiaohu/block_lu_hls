#ifndef PB_HYBRID_SCHEDULER_SHADOW_H
#define PB_HYBRID_SCHEDULER_SHADOW_H

#include "pb_csc_kernels.h"

enum pb_hybrid_scheduler_status {
    PB_HY_SCHED_OK = 0,
    PB_HY_SCHED_BAD_SIZE = 1,
    PB_HY_SCHED_BAD_KIND = 2,
    PB_HY_SCHED_BAD_GRAPH = 3,
    PB_HY_SCHED_DEADLOCK = 4
};

/* Event-driven, synthesizable scheduling shadow. It models four shared LU
 * PEs and four independent SSSSM PEs. estimated_cycles[] is used only to
 * generate deterministic completion events; it is not a performance model. */
extern "C" void pb_hybrid_scheduler_shadow(
    const pb_hls_u32 *kind,
    const pb_hls_u32 *dependency_count,
    const pb_hls_u32 *successor_ptr,
    const pb_hls_u32 *successor_idx,
    const pb_hls_u32 *estimated_cycles,
    pb_hls_u32 task_count,
    pb_hls_u32 *issue_order,
    pb_hls_u32 *pe_assignment,
    pb_hls_u64 *start_cycle,
    pb_hls_u64 *finish_cycle,
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_lu_ready,
    pb_hls_u32 &max_ssssm_ready,
    pb_hls_u32 &backpressure_events,
    pb_hls_u32 &status);

/* Stage-4 event-driven shadow. completion_task/pe/status are the records
 * consumed from real worker done FIFOs. No duration estimate is consulted.
 * The function dispatches initial ready work, consumes one completion event,
 * updates successor counters, and immediately fills newly idle PEs. */
extern "C" void pb_hybrid_scheduler_event_shadow(
    const pb_hls_u32 *kind,
    const pb_hls_u32 *dependency_count,
    const pb_hls_u32 *successor_ptr,
    const pb_hls_u32 *successor_idx,
    pb_hls_u32 task_count,
    const pb_hls_u32 *completion_task,
    const pb_hls_u32 *completion_pe,
    const pb_hls_u32 *completion_status,
    pb_hls_u32 completion_count,
    pb_hls_u32 *issue_order,
    pb_hls_u32 *pe_assignment,
    pb_hls_u32 *pe_task_trace,
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_lu_ready,
    pb_hls_u32 &max_ssssm_ready,
    pb_hls_u32 &backpressure_events,
    pb_hls_u32 &status);

#endif
