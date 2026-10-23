#ifndef PB_BLOCK_LU_H
#define PB_BLOCK_LU_H

#include "pb_analysis.h"
#include "pb_runtime.h"

/* Block-compatible numerical equilibration. One scale is stored per scalar
 * column, but it is applied consistently to every block in that
 * block-column; the symbolic pattern and task DAG are unchanged. */
#ifndef PB_ENABLE_BLOCK_COLUMN_SCALING
#define PB_ENABLE_BLOCK_COLUMN_SCALING 1
#endif

typedef struct {
    pb_u32 n;
    pb_u32 nb;
    pb_u32 block_count;
    pb_u32 matrix_count;
    pb_u32 active_block_count;
    pb_u32 block_l_nnz;
    pb_u32 block_u_nnz;
    pb_u32 task_capacity;
    pb_u32 *block_size;
    pb_u32 *block_nnz;
    pb_u32 *block_mapper;
    pb_u32 *block_reverse;
    pb_u32 *block_l_ptr;
    pb_u32 *block_l_index;
    pb_u32 *block_u_ptr;
    pb_u32 *block_u_index;
    pb_f32 *column_scale;
    pb_f32 *column_inv_scale;
    pb_fused_group_t *fused_groups;
    pb_u32 *fused_l_ids;
    pb_u32 *fused_u_ids;
    pb_u32 fused_group_count;
    pb_u32 fused_group_capacity;
    pb_matrix_t *blocks;
    pb_matrix_t *diag_l;
    pb_matrix_t *diag_u;
    pb_task_t *tasks;
    pb_task_list_t task_list;
} pb_block_lu_t;

int pb_block_lu_build_from_analysis(pb_arena_t *arena,
                                    const pb_analysis_t *analysis,
                                    pb_u32 nb, pb_block_lu_t *lu);

/* Legacy dense bring-up path; production flow uses analysis output above. */
int pb_block_lu_build_dense(pb_arena_t *arena, const pb_matrix_t *a_csc,
                            pb_u32 nb, pb_block_lu_t *lu);
int pb_block_lu_make_tasks(pb_block_lu_t *lu);
int pb_block_lu_make_tasks_leftlooking(pb_block_lu_t *lu);
int pb_block_lu_make_tasks_leftlooking_fused(pb_block_lu_t *lu);
int pb_block_lu_make_tasks_rightlooking(pb_block_lu_t *lu);
int pb_block_lu_run_cpu(pb_block_lu_t *lu, pb_arena_t *workspace);

/* Apply/reverse the block-compatible column scaling around numerical LU. */
int pb_block_lu_apply_column_scaling(pb_arena_t *arena, pb_block_lu_t *lu);
int pb_block_lu_unscale_upper(pb_block_lu_t *lu);

#endif
