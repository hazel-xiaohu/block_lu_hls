#ifndef PB_HYBRID_TASK_TILED_WORKER_POOL_H
#define PB_HYBRID_TASK_TILED_WORKER_POOL_H

#include "hybrid_global_dependency_scheduler.h"
#include "hybrid_worker_events.h"

/* The arithmetic kernels keep their task-level semantics.  A task is split
 * into staging/coverage tiles, not into independent numerical updates: LU
 * factorization and triangular solves have cross-tile dependencies.  This
 * ABI makes that distinction explicit and is the bridge to a future tiled
 * command FIFO. */
#ifndef PB_TASK_TILE_ROWS
#define PB_TASK_TILE_ROWS 256U
#endif

struct pb_task_tile_desc {
    pb_hls_u32 task_id;
    pb_hls_u32 kind;
    pb_hls_u32 pe_id;
    pb_hls_u32 tile_id;
    pb_hls_u32 tile_count;
    pb_hls_u32 row_base;
    pb_hls_u32 row_count;
    pb_hls_u32 a_matrix;
    pb_hls_u32 l_matrix;
    pb_hls_u32 u_matrix;
    pb_hls_u32 a_rows;
    pb_hls_u32 a_cols;
    pb_hls_u32 shared_dim;
    pb_hls_f32 pivot_eps;
};

extern "C" void pb_hybrid_task_tiled_worker_pool_exact(
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
    pb_hls_u32 issue_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 issue_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_order[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_pe[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 completion_kind[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 task_tile_count[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 task_tile_completed[PB_GLOBAL_MAX_TASKS],
    pb_hls_u64 task_tile_checksum[PB_GLOBAL_MAX_TASKS],
    pb_hls_u32 task_status[PB_GLOBAL_MAX_TASKS],
    pb_hybrid_worker_debug worker_debug[8],
    pb_hls_u32 &issued_count, pb_hls_u32 &completed_count,
    pb_hls_u32 &tile_issued_count, pb_hls_u32 &tile_completed_count,
    pb_hls_u32 &protocol_errors, pb_hls_u32 &status);

#endif
