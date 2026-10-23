#ifndef PB_HYBRID_GLOBAL_DEPENDENCY_SCHEDULER_H
#define PB_HYBRID_GLOBAL_DEPENDENCY_SCHEDULER_H

#include "hybrid_worker_events.h"
#include "hybrid_real_dependency_scheduler.h"
#include "hybrid_event_fifo_scheduler.h"

#ifndef PB_GLOBAL_MAX_TASKS
#define PB_GLOBAL_MAX_TASKS 64U
#endif
#ifndef PB_GLOBAL_MAX_EDGES
#define PB_GLOBAL_MAX_EDGES 256U
#endif
#ifndef PB_GLOBAL_MAX_MATRICES
#define PB_GLOBAL_MAX_MATRICES 128U
#endif
#ifndef PB_GLOBAL_PTR_POOL_CAP
#define PB_GLOBAL_PTR_POOL_CAP 262144U
#endif
#ifndef PB_GLOBAL_PACK_POOL_CAP
#define PB_GLOBAL_PACK_POOL_CAP 262144U
#endif
#ifndef PB_GLOBAL_LANE_POOL_CAP
#define PB_GLOBAL_LANE_POOL_CAP 1048576U
#endif
#ifndef PB_GLOBAL_DESC_WORDS
#define PB_GLOBAL_DESC_WORDS 16U
#endif

/* Pointer-free descriptor for one canonical Block-CSC/CSC4 matrix.  ptr and
 * pack_ptr are local to this matrix; the offsets select their ranges in the
 * global DDR pools. */
struct pb_global_matrix_desc {
    /* Vitis HLS 2022.2 presents aggregate m_axi beats in reverse 32-bit
     * word order in its RTL memory model.  Keep the named fields in reverse
     * physical order so the RTL view and the C view agree.  The descriptor
     * remains exactly one 512-bit beat (16 words); the reserved words are
     * available for future allocator/page metadata. */
    pb_hls_u32 reserved5;
    pb_hls_u32 reserved4;
    pb_hls_u32 reserved3;
    pb_hls_u32 reserved2;
    pb_hls_u32 reserved1;
    pb_hls_u32 reserved0;
    pb_hls_u32 lane_length;
    pb_hls_u32 lane_offset;
    pb_hls_u32 pack_ptr_length;
    pb_hls_u32 pack_ptr_offset;
    pb_hls_u32 ptr_length;
    pb_hls_u32 ptr_offset;
    pb_hls_u32 packed_words;
    pb_hls_u32 nnz;
    pb_hls_u32 cols;
    pb_hls_u32 rows;
};

/* Task-specific operand descriptors replace the old implicit worker-local
 * windows.  Matrix IDs are resolved by every worker at command acceptance. */
struct pb_global_worker_cmd {
    pb_hls_u32 task_id;
    pb_hls_u32 kind;
    pb_hls_u32 pe_id;
    /* Rolling-window transaction token.  Schedulers that do not use a
     * rolling window leave this field at zero. */
    pb_hls_u32 window_slot;
    pb_hls_u32 a_matrix;
    pb_hls_u32 l_matrix;
    pb_hls_u32 u_matrix;
    pb_hls_u32 a_rows;
    pb_hls_u32 a_cols;
    pb_hls_u32 shared_dim;
    pb_hls_f32 pivot_eps;
};

extern "C" void pb_hybrid_global_dependency_pool_stream_flat(
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
    const pb_hls_u32 a_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 a_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword a_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 l_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 l_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword l_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 u_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 u_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword u_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u32 issue_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 issue_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_kind[PB_GLOBAL_MAX_TASKS],
    pb_hls_u64 completion_cycles[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 &issued_count, pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight, pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_work_cycles, pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

#endif
