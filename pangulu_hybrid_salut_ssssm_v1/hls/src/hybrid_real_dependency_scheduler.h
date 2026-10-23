#ifndef PB_HYBRID_REAL_DEPENDENCY_SCHEDULER_H
#define PB_HYBRID_REAL_DEPENDENCY_SCHEDULER_H

#include "hybrid_real_worker_pool.h"

#define PB_REAL_HW_SLOTS 8
#define PB_REAL_HW_PTR_CAP 4097
#define PB_REAL_HW_NNZ_CAP 65536

/* Stage-5 dependency scheduler driven by real worker completion events.  A
 * task command is a template containing its dimensions and packed-buffer
 * metadata; the scheduler supplies task_id and the PE selected from the
 * dependency-ready set. */
extern "C" void pb_hybrid_real_dependency_pool(
    const pb_hybrid_worker_cmd task_cmd[64],
    const pb_hls_u32 dependency_count[64],
    const pb_hls_u32 successor_ptr[65],
    const pb_hls_u32 successor_idx[256],
    pb_hls_u32 task_count,
    const pb_hybrid_real_slot_view views[8],
    pb_hls_u32 issue_order[64],
    pb_hls_u32 issue_pe[64],
    pb_hls_u32 completion_order[64],
    pb_hls_u32 completion_pe[64],
    pb_hls_u32 completion_kind[64],
    pb_hls_u64 completion_cycles[64],
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_work_cycles,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

/* Hardware DATAFLOW entry point.  The scheduler and the eight stream workers
 * are separate DATAFLOW processes; command FIFOs preserve PE ownership and
 * the shared done FIFO carries the real completion event back to the
 * dependency state machine. */
extern "C" void pb_hybrid_real_dependency_pool_stream(
    const pb_hybrid_worker_cmd task_cmd[64],
    const pb_hls_u32 dependency_count[64],
    const pb_hls_u32 successor_ptr[65],
    const pb_hls_u32 successor_idx[256],
    pb_hls_u32 task_count,
    const pb_hybrid_real_slot_view views[8],
    pb_hls_u32 issue_order[64],
    pb_hls_u32 issue_pe[64],
    pb_hls_u32 completion_order[64],
    pb_hls_u32 completion_pe[64],
    pb_hls_u32 completion_kind[64],
    pb_hls_u64 completion_cycles[64],
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_work_cycles,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

/* Synthesizable flat AXI ABI.  The eight slot memories are concatenated in
 * slot-major order; ptr_stride and nnz_stride select one worker's window.
 * This avoids pointer-bearing structs at the top-level HLS interface. */
extern "C" void pb_hybrid_real_dependency_pool_stream_flat(
    const pb_hls_u32 task_kind[64],
    const pb_hls_u32 task_a_rows[64],
    const pb_hls_u32 task_a_cols[64],
    const pb_hls_u32 task_shared_dim[64],
    const pb_hls_f32 task_pivot_eps[64],
    const pb_hls_u32 dependency_count[64],
    const pb_hls_u32 successor_ptr[65],
    const pb_hls_u32 successor_idx[256],
    pb_hls_u32 task_count,
    const pb_hls_u32 a_ptr_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    const pb_hls_u32 a_pack_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    pb_hls_lword a_lane0_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword a_lane1_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword a_lane2_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword a_lane3_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    const pb_hls_u32 l_ptr_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    const pb_hls_u32 l_pack_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    pb_hls_lword l_lane0_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword l_lane1_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword l_lane2_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword l_lane3_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    const pb_hls_u32 u_ptr_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    const pb_hls_u32 u_pack_all[PB_REAL_HW_SLOTS][PB_REAL_HW_PTR_CAP],
    pb_hls_lword u_lane0_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword u_lane1_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword u_lane2_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_lword u_lane3_all[PB_REAL_HW_SLOTS][PB_REAL_HW_NNZ_CAP],
    pb_hls_u32 issue_order[64], pb_hls_u32 issue_pe[64],
    pb_hls_u32 completion_order[64], pb_hls_u32 completion_pe[64],
    pb_hls_u32 completion_kind[64], pb_hls_u64 completion_cycles[64],
    pb_hls_u32 &issued_count, pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight, pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_work_cycles, pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

#endif
