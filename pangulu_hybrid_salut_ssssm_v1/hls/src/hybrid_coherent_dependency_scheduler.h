#ifndef PB_HYBRID_COHERENT_DEPENDENCY_SCHEDULER_H
#define PB_HYBRID_COHERENT_DEPENDENCY_SCHEDULER_H

#include "hybrid_coherent_staged_bridge.h"

/* Stage-6 command/done dependency scheduler connected to a coherent staged
 * execution service.  Eight PE-specific command FIFOs preserve the original
 * scheduling contract.  An explicit arbiter gives the canonical DDR pool one
 * HLS owner; SmartConnect/multi-master replication can replace this service
 * later without changing the task or completion ABI. */
extern "C" void pb_hybrid_coherent_dependency_pool_stream_flat(
    const pb_hls_u32 task_kind[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_a_matrix[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_u_matrix[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_a_cols[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_GLOBAL_MAX_TASKS],
    const pb_hls_f32 task_pivot_eps[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_GLOBAL_MAX_TASKS],
    const pb_hls_u32 successor_ptr[PB_GLOBAL_MAX_TASKS + 1U],
    const pb_hls_u32 successor_idx[PB_GLOBAL_MAX_EDGES],
    pb_hls_u32 task_count,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u32 issue_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 issue_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_kind[PB_GLOBAL_MAX_TASKS],
    pb_hls_u64 completion_cycles[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &committed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_work_cycles,
    pb_hls_u64 &total_read_bytes,
    pb_hls_u64 &total_write_bytes,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

#endif
