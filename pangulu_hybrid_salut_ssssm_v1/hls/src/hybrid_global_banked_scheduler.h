#ifndef PB_HYBRID_GLOBAL_BANKED_SCHEDULER_H
#define PB_HYBRID_GLOBAL_BANKED_SCHEDULER_H

#include "hybrid_global_dependency_scheduler.h"

/* Four physically independent DDR pool views.  Each view owns one AXI
 * master set (A/L/U metadata plus four CSC4 lane arrays).  The matrix
 * descriptor offsets are local to every bank; the host image replicates the
 * immutable packed pool into each bank so an arbitrary task can be routed to
 * any free bank without a cross-bank gather. */
#define PB_GLOBAL_BANKS 4U

/* Narrow RTL-only protocol probe.  It deliberately excludes the production
 * DDR/AXI pool interface so command acceptance, worker completion, merge and
 * stop-marker handling can be verified without synthesizing hundreds of
 * unused memory ports. */
extern "C" void pb_hybrid_global_banked_protocol_probe(
    pb_hls_u32 completion_task[PB_GLOBAL_BANKS],
    pb_hls_u32 completion_bank[PB_GLOBAL_BANKS],
    pb_hls_u32 completion_status[PB_GLOBAL_BANKS],
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

/* One real GETRF transaction through the same command/FSM/done path used by
 * the banked scheduler.  This is a narrow arithmetic RTL smoke top, not a
 * deployment ABI. */
extern "C" void pb_hybrid_global_banked_single_getrf_probe(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps,
    pb_hls_u32 &completed_task, pb_hls_u32 &completed_bank,
    pb_hls_u32 &worker_status, pb_hls_u64 &work_cycles,
    pb_hls_u32 &status);

/* Narrow cyclic-control probe.  It uses the production dependency scheduler
 * and merge protocol with four lightweight workers, so RTL co-simulation can
 * validate command, completion and aggregate-stop feedback independently of
 * DDR descriptors and floating-point kernels. */
extern "C" void pb_hybrid_global_banked_feedback_probe(
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

extern "C" void pb_hybrid_global_banked_dependency_pool_stream_flat(
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

    const pb_hls_u32 a0_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 a0_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword a0_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a0_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a0_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a0_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 l0_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 l0_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword l0_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l0_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l0_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l0_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 u0_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 u0_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword u0_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u0_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u0_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u0_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],

    const pb_hls_u32 a1_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 a1_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword a1_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a1_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a1_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a1_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 l1_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 l1_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword l1_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l1_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l1_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l1_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 u1_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 u1_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword u1_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u1_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u1_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u1_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],

    const pb_hls_u32 a2_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 a2_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword a2_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a2_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a2_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a2_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 l2_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 l2_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword l2_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l2_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l2_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l2_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 u2_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 u2_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword u2_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u2_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u2_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u2_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],

    const pb_hls_u32 a3_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 a3_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword a3_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a3_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a3_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword a3_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 l3_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 l3_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword l3_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l3_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l3_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword l3_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    const pb_hls_u32 u3_ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 u3_pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword u3_lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u3_lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u3_lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword u3_lane3_pool[PB_GLOBAL_LANE_POOL_CAP],

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
