#ifndef PB_HYBRID_DDR_WINDOW_SCHEDULER_H
#define PB_HYBRID_DDR_WINDOW_SCHEDULER_H

#include "hybrid_coherent_staged_bridge.h"

/* The complete DAG lives in DDR.  Only PB_DDR_WINDOW_SIZE descriptors and
 * eight PE ownership records are resident in the scheduler.  The large
 * bounds describe AXI address ranges; they do not instantiate on-chip arrays. */
#ifndef PB_DDR_MAX_TASKS
#define PB_DDR_MAX_TASKS 1048576U
#endif
#ifndef PB_DDR_MAX_EDGES
#define PB_DDR_MAX_EDGES 8388608U
#endif
#ifndef PB_DDR_WINDOW_SIZE
#define PB_DDR_WINDOW_SIZE 16U
#endif
#ifndef PB_DDR_MAX_CYCLES
#define PB_DDR_MAX_CYCLES 4000000000ULL
#endif

enum pb_ddr_task_state {
    PB_DDR_WAITING = 0U,
    PB_DDR_QUEUED = 1U,
    PB_DDR_WINDOW_READY = 2U,
    PB_DDR_INFLIGHT = 3U,
    PB_DDR_COMPLETE = 4U
};

extern "C" void pb_hybrid_ddr_window_dependency_flat(
    const pb_hls_u32 task_kind[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_a_matrix[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_u_matrix[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_a_cols[PB_DDR_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_DDR_MAX_TASKS],
    const pb_hls_f32 task_pivot_eps[PB_DDR_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_DDR_MAX_TASKS],
    const pb_hls_u32 successor_ptr[PB_DDR_MAX_TASKS + 1U],
    const pb_hls_u32 successor_idx[PB_DDR_MAX_EDGES],
    pb_hls_u32 task_count,
    pb_hls_u32 edge_count,
    pb_hls_u32 remaining_dep[PB_DDR_MAX_TASKS],
    pb_hls_u32 task_state[PB_DDR_MAX_TASKS],
    pb_hls_u32 ready_queue[PB_DDR_MAX_TASKS],
    const pb_hls_u32 matrix_desc_words[PB_GLOBAL_MAX_MATRICES*PB_GLOBAL_DESC_WORDS],
    pb_hls_u32 matrix_count,
    pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,
    pb_hls_u32 ptr_pool_capacity,
    const pb_hls_u32 *pack_ptr_pool,
    pb_hls_u32 pack_ptr_pool_capacity,
    pb_hls_lword *lane0_pool,
    pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,
    pb_hls_lword *lane3_pool,
    pb_hls_u32 lane_pool_capacity,
    pb_hls_u32 issue_order[PB_DDR_MAX_TASKS],
    pb_hls_u32 issue_pe[PB_DDR_MAX_TASKS],
    pb_hls_u32 completion_order[PB_DDR_MAX_TASKS],
    pb_hls_u32 completion_pe[PB_DDR_MAX_TASKS],
    pb_hls_u32 completion_kind[PB_DDR_MAX_TASKS],
    pb_hls_u64 completion_cycles[PB_DDR_MAX_TASKS],
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &committed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_window_occupancy,
    pb_hls_u32 &ready_queue_peak,
    pb_hls_u32 &window_refills,
    pb_hls_u64 &total_work_cycles,
    pb_hls_u64 &total_read_bytes,
    pb_hls_u64 &total_write_bytes,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

#endif
