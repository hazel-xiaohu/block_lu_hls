#ifndef PB_HYBRID_PARALLEL4X4_ROLLING_H
#define PB_HYBRID_PARALLEL4X4_ROLLING_H

#include "hybrid_coherent_staged_bridge.h"

#ifndef PB_ROLL_MAX_TASKS
#define PB_ROLL_MAX_TASKS 128U
#endif
#ifndef PB_ROLL_MAX_EDGES
#define PB_ROLL_MAX_EDGES 512U
#endif
#ifndef PB_ROLL_MAX_MATRICES
#define PB_ROLL_MAX_MATRICES 256U
#endif
#ifndef PB_ROLL_PTR_POOL_CAP
#define PB_ROLL_PTR_POOL_CAP 65536U
#endif
#ifndef PB_ROLL_PACK_POOL_CAP
#define PB_ROLL_PACK_POOL_CAP 65536U
#endif
#ifndef PB_ROLL_LANE_POOL_CAP
#define PB_ROLL_LANE_POOL_CAP 131072U
#endif

/*
 * One-invocation rolling 4+4 execution top.
 *
 * The DAG and matrix descriptors are loaded once.  Four LU workers and four
 * SSSSM workers remain resident until the scheduler sends a sentinel.  All
 * workers address the same canonical CSC4 DDR allocation; task descriptors
 * carry matrix IDs, never private copies of the pool.
 */
extern "C" void pb_hybrid_parallel4x4_rolling(
    const pb_hls_u32 task_kind[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_u_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_ROLL_MAX_TASKS],
    const pb_hls_f32 task_pivot_eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 successor_ptr[PB_ROLL_MAX_TASKS + 1U],
    const pb_hls_u32 successor_idx[PB_ROLL_MAX_EDGES],
    pb_hls_u32 task_count,
    pb_hls_u32 edge_count,
    const pb_hls_u32 matrix_desc_words[PB_ROLL_MAX_MATRICES * PB_GLOBAL_DESC_WORDS],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_ROLL_PTR_POOL_CAP],
    pb_hls_u32 ptr_pool_count,
    const pb_hls_u32 pack_ptr_pool[PB_ROLL_PACK_POOL_CAP],
    pb_hls_u32 pack_pool_count,
    pb_hls_lword lane0_pool[PB_ROLL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_ROLL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_ROLL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_ROLL_LANE_POOL_CAP],
    pb_hls_u32 lane_pool_count,
    pb_hls_u32 &issued_count,
    pb_hls_u32 &completed_count,
    pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu_inflight,
    pb_hls_u32 &max_ssssm_inflight,
    pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_read_bytes,
    pb_hls_u64 &total_write_bytes,
    pb_hls_u32 &protocol_errors,
    pb_hls_u32 &status);

#endif
