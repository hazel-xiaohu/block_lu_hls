#ifndef PB_RUNTIME_H
#define PB_RUNTIME_H

#include "pb_kernels.h"

typedef struct {
    pb_matrix_t *matrices;
    pb_u32 matrix_count;
    pb_task_list_t tasks;
    pb_arena_t *arena;
    /* Arena used for PS-side graph metadata.  Keeping it separate from the
     * numerical workspace prevents scheduler bookkeeping from changing the
     * scratch addresses seen by the four FPGA kernels. */
    pb_arena_t *graph_arena;
    const pb_fused_group_t *fused_groups;
    pb_u32 fused_group_count;
    pb_traffic_t *traffic;
    pb_u32 *successor_ptr;
    pb_u32 *successor_ids;
    pb_u32 edge_count;
} pb_runtime_t;

typedef int (*pb_task_submit_fn)(pb_task_t *task, pb_matrix_t *matrices,
                                 void *context);

typedef void (*pb_task_complete_fn)(pb_u32 task_index, pb_task_t *task,
                                    int rc, pb_u32 status, void *opaque);
typedef int (*pb_task_submit_async_fn)(pb_task_t *task, pb_u32 task_index,
                                       pb_matrix_t *matrices, void *context);
typedef int (*pb_task_poll_fn)(void *context, pb_matrix_t *matrices,
                               pb_task_complete_fn complete, void *opaque);
typedef pb_u32 (*pb_task_active_fn)(void *context);
/* Wait for a hardware completion notification.  The FPGA backend implements
 * this with the A53 WFI instruction after arming the GIC; it must return
 * immediately when an interrupt was already latched. */
typedef int (*pb_task_wait_fn)(void *context);

typedef struct {
    pb_task_submit_async_fn submit;
    pb_task_poll_fn poll;
    pb_task_active_fn active;
    pb_task_wait_fn wait;
    void *context;
} pb_async_executor_t;
#define PB_TASK_ASYNC_BUSY (-4)

/* Serial dependency-safe executor. Replace submit with FPGA MMIO later. */
int pb_runtime_run(pb_runtime_t *runtime, pb_task_submit_fn submit,
                   void *context);

/* First PS scheduler version.  It builds a conservative per-block access
 * dependency graph and executes a ready queue.  This legacy entry point keeps
 * submission blocking and remains available as a correctness fallback. */
typedef struct {
    pb_u32 task_count;
    pb_u32 edge_count;
    pb_u32 initial_ready;
    pb_u32 dispatched;
    pb_u32 completed;
    pb_u32 max_ready_depth;
    pb_u32 max_inflight;
    pb_u32 scheduler_polls;
    pb_u32 scheduler_submit_attempts;
    pb_u32 scheduler_waits;
} pb_ps_scheduler_stats_t;

int pb_runtime_build_edges_v1(pb_runtime_t *runtime);
int pb_runtime_run_ps_v1(pb_runtime_t *runtime, pb_task_submit_fn submit,
                         void *context,
                         pb_ps_scheduler_stats_t *stats);

/* Non-blocking PS scheduler.  The executor starts ready tasks without
 * waiting, polls completion events, and releases successors from the
 * callback.  The dependency graph is unchanged from v1; only the execution
 * policy changes. */
int pb_runtime_run_ps_async_v1(pb_runtime_t *runtime,
                               const pb_async_executor_t *executor,
                               pb_ps_scheduler_stats_t *stats);

/* Stage-2 lightweight scheduler.  This keeps the same dependency graph and
 * FPGA MMIO backend as ps_async_v1, but replaces the O(tasks) ready scan in
 * every scheduling iteration with per-kernel ready FIFOs.  The data structure
 * mirrors the intended PL-light scheduler state: each physical kernel owns
 * one FIFO of ready task indices, completion events decrement successor
 * counters and push newly-ready tasks directly into the matching FIFO.
 *
 * The implementation intentionally remains in PS software for bring-up; it
 * produces identical task ordering constraints and kernel submissions to the
 * later PL scheduler, while keeping the existing bitstream usable as a
 * correctness fallback. */
int pb_runtime_run_pl_light_v1(pb_runtime_t *runtime,
                               const pb_async_executor_t *executor,
                               pb_ps_scheduler_stats_t *stats);
int pb_runtime_add_task(pb_task_list_t *list, pb_task_kind_t kind,
                        pb_u32 a, pb_u32 l, pb_u32 u, pb_u32 x,
                        pb_u32 dependency_count);
void pb_traffic_reset(pb_traffic_t *traffic);
void pb_traffic_account_task(pb_traffic_t *traffic, const pb_task_t *task,
                             const pb_matrix_t *matrices,
                             const pb_fused_group_t *fused_groups);

/* CPU backend used for host and bare-metal correctness bring-up. */
int pb_cpu_submit(pb_task_t *task, pb_matrix_t *matrices, void *context);

#endif
