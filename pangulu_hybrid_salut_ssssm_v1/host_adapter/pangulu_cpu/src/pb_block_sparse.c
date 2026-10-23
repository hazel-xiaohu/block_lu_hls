#include "pb_block_lu.h"

#include <string.h>

static pb_u32 pb_sparse_min_u32(pb_u32 a, pb_u32 b)
{
    return (a < b) ? a : b;
}

static int pb_sparse_prepare_fused_groups(pb_arena_t *arena,
                                             pb_block_lu_t *lu)
{
    pb_u32 groups = lu->block_count * lu->block_count;
    pb_u32 stride = lu->block_count > 0U ? lu->block_count - 1U : 0U;
    pb_u32 refs = groups * stride;
    pb_u32 g;
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
        lu->fused_groups[g].l_ids = stride == 0U ? NULL :
            &lu->fused_l_ids[g * stride];
        lu->fused_groups[g].u_ids = stride == 0U ? NULL :
            &lu->fused_u_ids[g * stride];
    }
    return 0;
}

static pb_u32 pb_union_block_nnz(const pb_matrix_t *lower,
                                 const pb_matrix_t *upper,
                                 pb_u32 row_begin, pb_u32 row_end,
                                 pb_u32 col_begin, pb_u32 col_end)
{
    pb_u32 col;
    pb_u32 count = 0U;
    for (col = col_begin; col < col_end; ++col) {
        pb_u32 lp = lower->ptr[col];
        pb_u32 le = lower->ptr[col + 1U];
        pb_u32 up = upper->ptr[col];
        pb_u32 ue = upper->ptr[col + 1U];
        while (lp < le || up < ue) {
            pb_u32 row;
            if (up >= ue || (lp < le && lower->index[lp] < upper->index[up])) {
                row = lower->index[lp++];
            } else if (lp >= le || upper->index[up] < lower->index[lp]) {
                row = upper->index[up++];
            } else {
                row = lower->index[lp];
                ++lp;
                ++up;
            }
            if (row >= row_begin && row < row_end) {
                ++count;
            }
        }
    }
    return count;
}

static int pb_extract_union_block(pb_arena_t *arena,
                                  const pb_matrix_t *a,
                                  const pb_matrix_t *lower,
                                  const pb_matrix_t *upper,
                                  pb_u32 row_begin, pb_u32 row_end,
                                  pb_u32 col_begin, pb_u32 col_end,
                                  pb_u32 storage_rows, pb_u32 storage_cols,
                                  pb_matrix_t *block)
{
    pb_u32 col;
    pb_u32 pos = 0U;
    pb_u32 nnz = pb_union_block_nnz(lower, upper, row_begin, row_end,
                                    col_begin, col_end);
    if (pb_matrix_alloc(arena, block, PB_CSC,
                        storage_rows, storage_cols, nnz) != 0) {
        return -1;
    }
    for (col = col_begin; col < col_end; ++col) {
        pb_u32 lp = lower->ptr[col];
        pb_u32 le = lower->ptr[col + 1U];
        pb_u32 up = upper->ptr[col];
        pb_u32 ue = upper->ptr[col + 1U];
        block->ptr[col - col_begin] = pos;
        while (lp < le || up < ue) {
            pb_u32 row;
            if (up >= ue || (lp < le && lower->index[lp] < upper->index[up])) {
                row = lower->index[lp++];
            } else if (lp >= le || upper->index[up] < lower->index[lp]) {
                row = upper->index[up++];
            } else {
                row = lower->index[lp];
                ++lp;
                ++up;
            }
            if (row >= row_begin && row < row_end) {
                pb_u32 source_pos;
                block->index[pos] = row - row_begin;
                if (pb_matrix_find_csc(a, row, col, &source_pos) == 0) {
                    block->value[pos] = a->value[source_pos];
                }
                ++pos;
            }
        }
    }
    block->ptr[col_end - col_begin] = pos;
    for (col = col_end - col_begin + 1U; col <= storage_cols; ++col) {
        block->ptr[col] = pos;
    }
    return (pos == nnz) ? pb_matrix_validate(block) : -1;
}

static int pb_extract_pattern_block(pb_arena_t *arena,
                                    const pb_matrix_t *pattern,
                                    pb_u32 row_begin, pb_u32 row_end,
                                    pb_u32 col_begin, pb_u32 col_end,
                                    pb_u32 storage_rows, pb_u32 storage_cols,
                                    pb_matrix_t *block)
{
    pb_u32 col;
    pb_u32 nnz = 0U;
    pb_u32 pos = 0U;
    for (col = col_begin; col < col_end; ++col) {
        pb_u32 p;
        for (p = pattern->ptr[col]; p < pattern->ptr[col + 1U]; ++p) {
            pb_u32 row = pattern->index[p];
            if (row >= row_begin && row < row_end) {
                ++nnz;
            }
        }
    }
    if (pb_matrix_alloc(arena, block, PB_CSC,
                        storage_rows, storage_cols, nnz) != 0) {
        return -1;
    }
    for (col = col_begin; col < col_end; ++col) {
        pb_u32 p;
        block->ptr[col - col_begin] = pos;
        for (p = pattern->ptr[col]; p < pattern->ptr[col + 1U]; ++p) {
            pb_u32 row = pattern->index[p];
            if (row >= row_begin && row < row_end) {
                block->index[pos++] = row - row_begin;
            }
        }
    }
    block->ptr[col_end - col_begin] = pos;
    for (col = col_end - col_begin + 1U; col <= storage_cols; ++col) {
        block->ptr[col] = pos;
    }
    return (pos == nnz) ? pb_matrix_validate(block) : -1;
}

static int pb_build_block_graph(pb_arena_t *arena, pb_block_lu_t *lu)
{
    pb_u32 block;
    pb_u32 pos;
    pb_u32 row;
    pb_u32 col;
    lu->block_l_nnz = 0U;
    lu->block_u_nnz = 0U;
    for (row = 0U; row < lu->block_count; ++row) {
        for (col = 0U; col < lu->block_count; ++col) {
            block = row * lu->block_count + col;
            if (lu->block_mapper[block] == PB_INVALID_U32) {
                continue;
            }
            if (row >= col) {
                ++lu->block_l_nnz;
            }
            if (row <= col) {
                ++lu->block_u_nnz;
            }
        }
    }
    lu->block_l_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)lu->block_count + 1U) * sizeof(pb_u32), 64U);
    lu->block_u_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)lu->block_count + 1U) * sizeof(pb_u32), 64U);
    lu->block_l_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)lu->block_l_nnz * sizeof(pb_u32), 64U);
    lu->block_u_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)lu->block_u_nnz * sizeof(pb_u32), 64U);
    if (lu->block_l_ptr == NULL || lu->block_u_ptr == NULL ||
        lu->block_l_index == NULL || lu->block_u_index == NULL) {
        return -1;
    }
    pos = 0U;
    for (col = 0U; col < lu->block_count; ++col) {
        lu->block_l_ptr[col] = pos;
        for (row = col; row < lu->block_count; ++row) {
            block = row * lu->block_count + col;
            if (lu->block_mapper[block] != PB_INVALID_U32) {
                lu->block_l_index[pos++] = row;
            }
        }
    }
    lu->block_l_ptr[lu->block_count] = pos;
    if (pos != lu->block_l_nnz) {
        return -1;
    }
    pos = 0U;
    for (row = 0U; row < lu->block_count; ++row) {
        lu->block_u_ptr[row] = pos;
        for (col = row; col < lu->block_count; ++col) {
            block = row * lu->block_count + col;
            if (lu->block_mapper[block] != PB_INVALID_U32) {
                lu->block_u_index[pos++] = col;
            }
        }
    }
    lu->block_u_ptr[lu->block_count] = pos;
    return (pos == lu->block_u_nnz) ? 0 : -1;
}

int pb_block_lu_build_from_analysis(pb_arena_t *arena,
                                    const pb_analysis_t *analysis,
                                    pb_u32 nb, pb_block_lu_t *lu)
{
    const pb_matrix_t *a;
    const pb_matrix_t *lower;
    const pb_matrix_t *upper;
    pb_u32 bi;
    pb_u32 bj;
    pb_u32 block_slots;
    pb_u32 active = 0U;
    if (arena == NULL || analysis == NULL || lu == NULL || nb == 0U) {
        return -1;
    }
    a = &analysis->reordered_a;
    lower = &analysis->symbolic.lower;
    upper = &analysis->symbolic.upper;
    if (a->layout != PB_CSC || a->rows != a->cols ||
        lower->rows != a->rows || upper->rows != a->rows ||
        pb_matrix_validate(a) != 0 || pb_matrix_validate(lower) != 0 ||
        pb_matrix_validate(upper) != 0) {
        return -1;
    }
    memset(lu, 0, sizeof(*lu));
    lu->n = a->rows;
    lu->nb = nb;
    lu->block_count = (a->rows + nb - 1U) / nb;
    block_slots = lu->block_count * lu->block_count;
    lu->task_capacity = lu->block_count +
                        lu->block_count * (lu->block_count - 1U) +
                        lu->block_count * (lu->block_count - 1U) *
                        (2U * lu->block_count - 1U) / 6U;
    lu->block_size = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)lu->block_count * sizeof(pb_u32), 64U);
    lu->block_nnz = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)block_slots * sizeof(pb_u32), 64U);
    lu->block_mapper = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)block_slots * sizeof(pb_u32), 64U);
    if (lu->block_size == NULL || lu->block_nnz == NULL ||
        lu->block_mapper == NULL) {
        return -1;
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 base = bi * nb;
        lu->block_size[bi] = pb_sparse_min_u32(nb, lu->n - base);
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 row_begin = bi * nb;
        pb_u32 row_end = row_begin + lu->block_size[bi];
        for (bj = 0U; bj < lu->block_count; ++bj) {
            pb_u32 col_begin = bj * nb;
            pb_u32 col_end = col_begin + lu->block_size[bj];
            pb_u32 slot = bi * lu->block_count + bj;
            lu->block_nnz[slot] = pb_union_block_nnz(
                lower, upper, row_begin, row_end, col_begin, col_end);
            if (lu->block_nnz[slot] == 0U) {
                lu->block_mapper[slot] = PB_INVALID_U32;
            } else {
                lu->block_mapper[slot] = active++;
            }
        }
    }
    lu->active_block_count = active;
    lu->matrix_count = active + 2U * lu->block_count;
    lu->block_reverse = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)active * sizeof(pb_u32), 64U);
    lu->blocks = (pb_matrix_t *)pb_arena_alloc(
        arena, (size_t)lu->matrix_count * sizeof(pb_matrix_t), 64U);
    lu->diag_l = (lu->blocks == NULL) ? NULL : &lu->blocks[active];
    lu->diag_u = (lu->blocks == NULL) ? NULL :
                 &lu->blocks[active + lu->block_count];
    lu->tasks = (pb_task_t *)pb_arena_alloc(
        arena, (size_t)lu->task_capacity * sizeof(pb_task_t), 64U);
    if (lu->block_reverse == NULL || lu->blocks == NULL ||
        lu->diag_l == NULL || lu->diag_u == NULL || lu->tasks == NULL) {
        return -1;
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 row_begin = bi * nb;
        pb_u32 row_end = row_begin + lu->block_size[bi];
        for (bj = 0U; bj < lu->block_count; ++bj) {
            pb_u32 slot = bi * lu->block_count + bj;
            pb_u32 id = lu->block_mapper[slot];
            if (id != PB_INVALID_U32) {
                pb_u32 col_begin = bj * nb;
                pb_u32 col_end = col_begin + lu->block_size[bj];
                lu->block_reverse[id] = slot;
                if (pb_extract_union_block(arena, a, lower, upper,
                                           row_begin, row_end,
                                           col_begin, col_end, nb, nb,
                                           &lu->blocks[id]) != 0 ||
                    lu->blocks[id].nnz != lu->block_nnz[slot]) {
                    return -1;
                }
            }
        }
    }
    for (bi = 0U; bi < lu->block_count; ++bi) {
        pb_u32 begin = bi * nb;
        pb_u32 end = begin + lu->block_size[bi];
        if (pb_extract_pattern_block(arena, lower, begin, end, begin, end, nb, nb,
                                     &lu->diag_l[bi]) != 0 ||
            pb_extract_pattern_block(arena, upper, begin, end, begin, end, nb, nb,
                                     &lu->diag_u[bi]) != 0) {
            return -1;
        }
    }
    if (pb_block_lu_apply_column_scaling(arena, lu) != 0) {
        return -1;
    }
    if (pb_build_block_graph(arena, lu) != 0) {
        return -1;
    }
    if (pb_sparse_prepare_fused_groups(arena, lu) != 0) {
        return -1;
    }
    lu->task_list.items = lu->tasks;
    lu->task_list.count = 0U;
    lu->task_list.capacity = lu->task_capacity;
    return pb_block_lu_make_tasks_leftlooking(lu);
}
