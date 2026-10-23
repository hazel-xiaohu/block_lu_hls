#include "pb_block_lu.h"

#include <math.h>
#include <string.h>

static pb_u32 pb_min_u32(pb_u32 a, pb_u32 b)
{
    return (a < b) ? a : b;
}

static pb_u32 pb_block_offset(const pb_block_lu_t *lu, pb_u32 block)
{
    pb_u32 i;
    pb_u32 offset = 0U;
    for (i = 0U; i < block; ++i) {
        offset += lu->block_size[i];
    }
    return offset;
}

/* Used only by the retained dense bring-up builder. */
static pb_matrix_t *pb_dense_block_at(pb_block_lu_t *lu,
                                      pb_u32 row, pb_u32 col)
{
    return &lu->blocks[row * lu->block_count + col];
}

static pb_u32 pb_data_block_count(const pb_block_lu_t *lu)
{
    return (lu->block_mapper != NULL) ? lu->active_block_count :
                                        lu->block_count * lu->block_count;
}

static pb_u32 pb_task_block_id(const pb_block_lu_t *lu,
                               pb_u32 row, pb_u32 col)
{
    pb_u32 slot = row * lu->block_count + col;
    return (lu->block_mapper != NULL) ? lu->block_mapper[slot] : slot;
}

static pb_matrix_t *pb_block_at(pb_block_lu_t *lu, pb_u32 row, pb_u32 col)
{
    pb_u32 slot = row * lu->block_count + col;
    pb_u32 id = (lu->block_mapper != NULL) ? lu->block_mapper[slot] : slot;
    if (id == PB_INVALID_U32) return NULL;
    return &lu->blocks[id];
}

/*
 * Scale the original A by a right diagonal matrix A_s = A D. The scale for
 * one scalar column is computed from the Frobenius norm of that column over
 * all active row blocks, then applied to every block carrying that column.
 * This is block-compatible: L_s=L and U_s=U D, so all task identities and
 * dependencies are preserved.
 */
int pb_block_lu_apply_column_scaling(pb_arena_t *arena, pb_block_lu_t *lu)
{
#if !PB_ENABLE_BLOCK_COLUMN_SCALING
    (void)arena;
    (void)lu;
    return 0;
#else
    pb_u32 bj;
    if (arena == NULL || lu == NULL || lu->n == 0U ||
        lu->block_count == 0U || lu->blocks == NULL) return -1;
    lu->column_scale = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)lu->n * sizeof(pb_f32), 64U);
    lu->column_inv_scale = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)lu->n * sizeof(pb_f32), 64U);
    if (lu->column_scale == NULL || lu->column_inv_scale == NULL) return -1;
    for (bj = 0U; bj < lu->block_count; ++bj) {
        pb_u32 lc;
        pb_u32 cols = lu->block_size[bj];
        for (lc = 0U; lc < cols; ++lc) {
            double sumsq = 0.0;
            pb_u32 bi;
            pb_f32 scale;
            pb_f32 inverse;
            for (bi = 0U; bi < lu->block_count; ++bi) {
                pb_matrix_t *m = pb_block_at(lu, bi, bj);
                pb_u32 p;
                if (m == NULL || lc >= m->cols) continue;
                for (p = m->ptr[lc]; p < m->ptr[lc + 1U]; ++p) {
                    double v = (double)m->value[p];
                    sumsq += v * v;
                }
            }
            if (sumsq > 0.0 && isfinite(sumsq)) {
                double norm = sqrt(sumsq);
                double s = 1.0 / norm;
                /* Keep the transformation in a safe FP32 range. */
                if (s < 1.0e-6) s = 1.0e-6;
                if (s > 1.0e6) s = 1.0e6;
                scale = (pb_f32)s;
            } else {
                scale = (pb_f32)1.0;
            }
            inverse = (pb_f32)(1.0 / (double)scale);
            lu->column_scale[bj * lu->nb + lc] = scale;
            lu->column_inv_scale[bj * lu->nb + lc] = inverse;
            for (bi = 0U; bi < lu->block_count; ++bi) {
                pb_matrix_t *m = pb_block_at(lu, bi, bj);
                pb_u32 p;
                if (m == NULL || lc >= m->cols) continue;
                for (p = m->ptr[lc]; p < m->ptr[lc + 1U]; ++p) {
                    m->value[p] *= scale;
                }
            }
        }
    }
    return 0;
#endif
}

/* Restore U from U_s=U D after all numerical tasks have completed. */
int pb_block_lu_unscale_upper(pb_block_lu_t *lu)
{
#if !PB_ENABLE_BLOCK_COLUMN_SCALING
    (void)lu;
    return 0;
#else
    pb_u32 bi;
    if (lu == NULL || lu->column_inv_scale == NULL ||
        lu->diag_u == NULL || lu->blocks == NULL) return -1;
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 bj;
        for (bj = bi; bj < lu->block_count; ++bj) {
            pb_matrix_t *m;
            pb_u32 lc;
            pb_u32 cols = lu->block_size[bj];
            if (bi == bj) m = &lu->diag_u[bi];
            else m = pb_block_at(lu, bi, bj);
            if (m == NULL) continue;
            for (lc = 0U; lc < cols && lc < m->cols; ++lc) {
                pb_f32 inverse = lu->column_inv_scale[bj * lu->nb + lc];
                pb_u32 p;
                for (p = m->ptr[lc]; p < m->ptr[lc + 1U]; ++p) {
                    m->value[p] *= inverse;
                }
            }
        }
    }
    return 0;
#endif
}

static int pb_block_lu_prepare_fused_groups(pb_arena_t *arena,
                                             pb_block_lu_t *lu)
{
    pb_u32 groups;
    pb_u32 refs;
    pb_u32 g;
    if (arena == NULL || lu == NULL || lu->block_count == 0U) return -1;
    groups = lu->block_count * lu->block_count;
    refs = groups * (lu->block_count > 0U ? lu->block_count - 1U : 0U);
    lu->fused_groups = (pb_fused_group_t *)pb_arena_alloc(
        arena, (size_t)groups * sizeof(pb_fused_group_t), 64U);
    lu->fused_l_ids = refs == 0U ? NULL : (pb_u32 *)pb_arena_alloc(
        arena, (size_t)refs * sizeof(pb_u32), 64U);
    lu->fused_u_ids = refs == 0U ? NULL : (pb_u32 *)pb_arena_alloc(
        arena, (size_t)refs * sizeof(pb_u32), 64U);
    if (lu->fused_groups == NULL ||
        (refs != 0U && (lu->fused_l_ids == NULL || lu->fused_u_ids == NULL))) {
        return -1;
    }
    lu->fused_group_capacity = groups;
    lu->fused_group_count = 0U;
    for (g = 0U; g < groups; ++g) {
        lu->fused_groups[g].count = 0U;
        lu->fused_groups[g].target_id = PB_INVALID_U32;
        lu->fused_groups[g].l_ids = refs == 0U ? NULL :
            &lu->fused_l_ids[g * (lu->block_count - 1U)];
        lu->fused_groups[g].u_ids = refs == 0U ? NULL :
            &lu->fused_u_ids[g * (lu->block_count - 1U)];
    }
    return 0;
}

static int pb_matrix_alloc_dense_csc(pb_arena_t *arena, pb_matrix_t *m,
                                     pb_u32 rows, pb_u32 cols)
{
    pb_u32 col;
    pb_u32 row;
    if (pb_matrix_alloc(arena, m, PB_CSC, rows, cols, rows * cols) != 0) {
        return -1;
    }
    for (col = 0U; col <= cols; ++col) {
        m->ptr[col] = col * rows;
    }
    for (col = 0U; col < cols; ++col) {
        for (row = 0U; row < rows; ++row) {
            m->index[m->ptr[col] + row] = row;
        }
    }
    return 0;
}

static int pb_matrix_alloc_lower_csc(pb_arena_t *arena, pb_matrix_t *m,
                                     pb_u32 n)
{
    pb_u32 col;
    pb_u32 pos = 0U;
    if (pb_matrix_alloc(arena, m, PB_CSC, n, n, n * (n + 1U) / 2U) != 0) {
        return -1;
    }
    for (col = 0U; col < n; ++col) {
        pb_u32 row;
        m->ptr[col] = pos;
        for (row = col; row < n; ++row) {
            m->index[pos++] = row;
        }
    }
    m->ptr[n] = pos;
    return 0;
}

static int pb_matrix_alloc_upper_csc(pb_arena_t *arena, pb_matrix_t *m,
                                     pb_u32 n)
{
    pb_u32 col;
    pb_u32 pos = 0U;
    if (pb_matrix_alloc(arena, m, PB_CSC, n, n, n * (n + 1U) / 2U) != 0) {
        return -1;
    }
    for (col = 0U; col < n; ++col) {
        pb_u32 row;
        m->ptr[col] = pos;
        for (row = 0U; row <= col; ++row) {
            m->index[pos++] = row;
        }
    }
    m->ptr[n] = pos;
    return 0;
}

int pb_block_lu_build_dense(pb_arena_t *arena, const pb_matrix_t *a_csc,
                            pb_u32 nb, pb_block_lu_t *lu)
{
    pb_u32 bi;
    pb_u32 bj;
    if (arena == NULL || a_csc == NULL || lu == NULL || nb == 0U ||
        a_csc->layout != PB_CSC || a_csc->rows != a_csc->cols ||
        pb_matrix_validate(a_csc) != 0) {
        return -1;
    }
    memset(lu, 0, sizeof(*lu));
    lu->n = a_csc->rows;
    lu->nb = nb;
    lu->block_count = (a_csc->rows + nb - 1U) / nb;
    lu->matrix_count = lu->block_count * lu->block_count +
                       2U * lu->block_count;
    lu->task_capacity = lu->block_count +
                        lu->block_count * (lu->block_count - 1U) +
                        lu->block_count * (lu->block_count - 1U) *
                        (2U * lu->block_count - 1U) / 6U;
    lu->block_size = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)lu->block_count * sizeof(pb_u32), 64U);
    lu->blocks = (pb_matrix_t *)pb_arena_alloc(
        arena, (size_t)lu->matrix_count * sizeof(pb_matrix_t), 64U);
    lu->diag_l = (lu->blocks == NULL) ? NULL :
                 &lu->blocks[lu->block_count * lu->block_count];
    lu->diag_u = (lu->blocks == NULL) ? NULL :
                 &lu->blocks[lu->block_count * lu->block_count +
                             lu->block_count];
    lu->tasks = (pb_task_t *)pb_arena_alloc(
        arena, (size_t)lu->task_capacity * sizeof(pb_task_t), 64U);
    if (lu->block_size == NULL || lu->blocks == NULL ||
        lu->diag_l == NULL || lu->diag_u == NULL || lu->tasks == NULL) {
        return -1;
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 base = bi * nb;
        lu->block_size[bi] = pb_min_u32(nb, lu->n - base);
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 row_base = pb_block_offset(lu, bi);
        for (bj = 0U; bj < lu->block_count; ++bj) {
            pb_u32 col_base = pb_block_offset(lu, bj);
            pb_u32 rows = lu->block_size[bi];
            pb_u32 cols = lu->block_size[bj];
            pb_u32 local_col;
            pb_matrix_t *block = pb_dense_block_at(lu, bi, bj);
            if (pb_matrix_alloc_dense_csc(arena, block, rows, cols) != 0) {
                return -1;
            }
            for (local_col = 0U; local_col < cols; ++local_col) {
                pb_u32 local_row;
                for (local_row = 0U; local_row < rows; ++local_row) {
                    pb_u32 source_pos;
                    pb_f32 value = 0.0f;
                    if (pb_matrix_find_csc(a_csc, row_base + local_row,
                                           col_base + local_col,
                                           &source_pos) == 0) {
                        value = a_csc->value[source_pos];
                    }
                    block->value[block->ptr[local_col] + local_row] = value;
                }
            }
        }
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 n = lu->block_size[bi];
        if (pb_matrix_alloc_lower_csc(arena, &lu->diag_l[bi], n) != 0 ||
            pb_matrix_alloc_upper_csc(arena, &lu->diag_u[bi], n) != 0) {
            return -1;
        }
    }
    if (pb_block_lu_apply_column_scaling(arena, lu) != 0) {
        return -1;
    }
    if (pb_block_lu_prepare_fused_groups(arena, lu) != 0) {
        return -1;
    }
    lu->task_list.items = lu->tasks;
    lu->task_list.count = 0U;
    lu->task_list.capacity = lu->task_capacity;
    return pb_block_lu_make_tasks_leftlooking(lu);
}

int pb_block_lu_make_tasks_rightlooking(pb_block_lu_t *lu)
{
    pb_u32 k;
    pb_u32 data_blocks;
    if (lu == NULL || lu->tasks == NULL || lu->blocks == NULL ||
        lu->diag_l == NULL || lu->diag_u == NULL) {
        return -1;
    }
    data_blocks = pb_data_block_count(lu);
    lu->task_list.count = 0U;
    for (k = 0U; k < lu->block_count; ++k) {
        pb_u32 i;
        pb_u32 j;
        pb_u32 diag_a = pb_task_block_id(lu, k, k);
        pb_u32 diag_l = data_blocks + k;
        pb_u32 diag_u = data_blocks + lu->block_count + k;
        if (diag_a == PB_INVALID_U32 ||
            pb_runtime_add_task(&lu->task_list, PB_TASK_GETRF,
                                diag_a, diag_l, diag_u, 0U, 0U) != 0) {
            return -1;
        }
        for (j = k + 1U; j < lu->block_count; ++j) {
            pb_u32 a_id = pb_task_block_id(lu, k, j);
            if (a_id != PB_INVALID_U32 &&
                pb_runtime_add_task(&lu->task_list, PB_TASK_GESSM,
                                    a_id, diag_l, 0U, 0U, 0U) != 0) {
                return -1;
            }
        }
        for (i = k + 1U; i < lu->block_count; ++i) {
            pb_u32 a_id = pb_task_block_id(lu, i, k);
            if (a_id != PB_INVALID_U32 &&
                pb_runtime_add_task(&lu->task_list, PB_TASK_TSTRF,
                                    a_id, 0U, diag_u, 0U, 0U) != 0) {
                return -1;
            }
        }
        for (i = k + 1U; i < lu->block_count; ++i) {
            for (j = k + 1U; j < lu->block_count; ++j) {
                pb_u32 a_id = pb_task_block_id(lu, i, j);
                pb_u32 l_id = pb_task_block_id(lu, i, k);
                pb_u32 u_id = pb_task_block_id(lu, k, j);
                if (a_id != PB_INVALID_U32 &&
                    l_id != PB_INVALID_U32 &&
                    u_id != PB_INVALID_U32 &&
                    pb_runtime_add_task(&lu->task_list, PB_TASK_SSSSM,
                                        a_id, l_id, u_id, 0U, 0U) != 0) {
                    return -1;
                }
            }
        }
    }
    return 0;
}

int pb_block_lu_run_cpu(pb_block_lu_t *lu, pb_arena_t *workspace)
{
    pb_runtime_t runtime;
    if (lu == NULL || workspace == NULL) {
        return -1;
    }
    runtime.matrices = lu->blocks;
    runtime.matrix_count = lu->matrix_count;
    runtime.tasks = lu->task_list;
    runtime.arena = workspace;
    runtime.fused_groups = lu->fused_groups;
    runtime.traffic = NULL;
    return pb_runtime_run(&runtime, pb_cpu_submit, workspace);
}
