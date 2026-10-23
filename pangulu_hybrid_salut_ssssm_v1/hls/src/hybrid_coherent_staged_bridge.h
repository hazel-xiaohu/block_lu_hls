#ifndef PB_HYBRID_COHERENT_STAGED_BRIDGE_H
#define PB_HYBRID_COHERENT_STAGED_BRIDGE_H

#include "hybrid_global_dependency_scheduler.h"

/* The deployment image permits blocks up to 4096 columns and 65536 packed
 * words.  RTL smoke tests override these two constants at compile time; the
 * descriptor checks reject, rather than truncate, an oversized operand. */
#ifndef PB_STAGED_PTR_CAP
#define PB_STAGED_PTR_CAP 4097U
#endif

#ifndef PB_STAGED_LANE_CAP
#define PB_STAGED_LANE_CAP 65536U
#endif

struct pb_staged_matrix {
    pb_hls_u32 ptr[PB_STAGED_PTR_CAP];
    pb_hls_u32 pack_ptr[PB_STAGED_PTR_CAP];
    pb_hls_lword lane0[PB_STAGED_LANE_CAP];
    pb_hls_lword lane1[PB_STAGED_LANE_CAP];
    pb_hls_lword lane2[PB_STAGED_LANE_CAP];
    pb_hls_lword lane3[PB_STAGED_LANE_CAP];
    pb_hls_u32 ptr_length;
    pb_hls_u32 pack_ptr_length;
    pb_hls_u32 lane_length;
};

struct pb_staged_slot {
    pb_staged_matrix a;
    pb_staged_matrix l;
    pb_staged_matrix u;
};

/* Correctness-first descriptor bridge.  All operand roles resolve into one
 * canonical CSC4 allocation.  Completion may be released only after this
 * routine has committed the kernel's true output matrices back to that
 * allocation:
 *   GETRF        -> L and U
 *   GESSM/TSTRF  -> A (the X/output block)
 *   SSSSM        -> A (in-place target update)
 */
void pb_coherent_staged_dispatch(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_staged_slot &slot,
    pb_hls_u64 &read_bytes,
    pb_hls_u64 &write_bytes,
    pb_hls_u32 &status);

/* Flattened scratch form used by a FIFO worker.  The caller owns exactly one
 * staging slot and may emit its done event only after this routine returns.
 * Keeping the arrays flat avoids a Vitis HLS 2022.2 LTO crash on nested
 * aggregate scratch objects. */
void pb_coherent_staged_dispatch_flat(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],
    pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],
    pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],
    pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],
    pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],
    pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],
    pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,
    pb_hls_u64 &write_bytes,
    pb_hls_u32 &status);

/* Runtime-sized DDR variant used by the rolling-window scheduler.  The host
 * allocates one contiguous canonical pool for each metadata/value role and
 * passes the exact capacities in elements.  Descriptors are checked against
 * those runtime capacities with overflow-safe bounds checks; the legacy
 * PB_GLOBAL_* capacities are not used by this path. */
void pb_coherent_staged_dispatch_runtime(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,
    pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,
    pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,
    pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,
    pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,
    pb_hls_lword *lane3_pool,
    pb_hls_u32 lane_capacity,
    pb_staged_slot &slot,
    pb_hls_u64 &read_bytes,
    pb_hls_u64 &write_bytes,
    pb_hls_u32 &status);

void pb_coherent_staged_dispatch_runtime_flat(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,
    pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,
    pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,
    pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,
    pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,
    pb_hls_lword *lane3_pool,
    pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],
    pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],
    pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],
    pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],
    pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],
    pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],
    pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,
    pb_hls_u64 &write_bytes,
    pb_hls_u32 &status);

void pb_coherent_staged_dispatch_runtime_flat_lu(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status);

void pb_coherent_staged_dispatch_runtime_flat_ssssm(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status);

/* Synthesizable one-command gate for the load/compute/commit path.  It is a
 * bounded bridge, not yet the final eight-master pool: the physical 4+4
 * worker multiplicity and scheduler feedback are verified by the Stage-6
 * top, while this top verifies task-specific descriptor resolution and
 * coherent canonical writeback. */
extern "C" void pb_hybrid_coherent_staged_task_flat(
    pb_hls_u32 task_id, pb_hls_u32 kind, pb_hls_u32 pe_id,
    pb_hls_u32 a_matrix, pb_hls_u32 l_matrix, pb_hls_u32 u_matrix,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_f32 pivot_eps,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u64 &read_bytes, pb_hls_u64 &write_bytes,
    pb_hls_u32 &completed_task, pb_hls_u32 &completed_pe,
    pb_hls_u32 &status);

#endif
