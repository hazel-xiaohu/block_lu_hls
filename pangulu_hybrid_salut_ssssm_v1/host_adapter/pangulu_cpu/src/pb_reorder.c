#include "pb_reorder.h"

#include <string.h>

static int pb_reorder_validate(const pb_reorder_t *order)
{
    pb_u32 old_index;
    if (order == NULL || order->n == 0U || order->old_to_new == NULL ||
        order->new_to_old == NULL) {
        return -1;
    }
    for (old_index = 0U; old_index < order->n; ++old_index) {
        pb_u32 new_index = order->old_to_new[old_index];
        if (new_index >= order->n || order->new_to_old[new_index] != old_index) {
            return -1;
        }
    }
    return 0;
}

int pb_reorder_identity(pb_arena_t *arena, pb_u32 n, pb_reorder_t *order)
{
    pb_u32 i;
    if (arena == NULL || order == NULL || n == 0U) {
        return -1;
    }
    memset(order, 0, sizeof(*order));
    order->old_to_new = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    order->new_to_old = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (order->old_to_new == NULL || order->new_to_old == NULL) {
        return -1;
    }
    order->n = n;
    order->is_identity = 1;
    for (i = 0U; i < n; ++i) {
        order->old_to_new[i] = i;
        order->new_to_old[i] = i;
    }
    return 0;
}

int pb_reorder_from_old_to_new(pb_arena_t *arena, pb_u32 n,
                               const pb_u32 *old_to_new,
                               pb_reorder_t *order)
{
    pb_u32 i;
    if (arena == NULL || old_to_new == NULL || order == NULL || n == 0U) {
        return -1;
    }
    memset(order, 0, sizeof(*order));
    order->old_to_new = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    order->new_to_old = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (order->old_to_new == NULL || order->new_to_old == NULL) {
        return -1;
    }
    order->n = n;
    order->is_identity = 1;
    for (i = 0U; i < n; ++i) {
        order->new_to_old[i] = PB_INVALID_U32;
    }
    for (i = 0U; i < n; ++i) {
        pb_u32 new_index = old_to_new[i];
        if (new_index >= n || order->new_to_old[new_index] != PB_INVALID_U32) {
            return -1;
        }
        order->old_to_new[i] = new_index;
        order->new_to_old[new_index] = i;
        if (new_index != i) {
            order->is_identity = 0;
        }
    }
    return 0;
}

static void pb_sort_column(pb_matrix_t *matrix, pb_u32 col)
{
    pb_u32 begin = matrix->ptr[col];
    pb_u32 end = matrix->ptr[col + 1U];
    pb_u32 i;
    for (i = begin + 1U; i < end; ++i) {
        pb_u32 key_index = matrix->index[i];
        pb_f32 key_value = matrix->value[i];
        pb_u32 j = i;
        while (j > begin && matrix->index[j - 1U] > key_index) {
            matrix->index[j] = matrix->index[j - 1U];
            matrix->value[j] = matrix->value[j - 1U];
            --j;
        }
        matrix->index[j] = key_index;
        matrix->value[j] = key_value;
    }
}

int pb_matrix_symmetric_permute_csc(pb_arena_t *arena,
                                    const pb_matrix_t *source,
                                    const pb_reorder_t *order,
                                    pb_matrix_t *reordered)
{
    pb_u32 old_col;
    pb_u32 col;
    if (arena == NULL || source == NULL || order == NULL || reordered == NULL ||
        source->layout != PB_CSC || source->rows != source->cols ||
        source->rows != order->n || pb_matrix_validate(source) != 0 ||
        pb_reorder_validate(order) != 0 ||
        pb_matrix_alloc(arena, reordered, PB_CSC, source->rows, source->cols,
                        source->nnz) != 0) {
        return -1;
    }
    for (old_col = 0U; old_col < source->cols; ++old_col) {
        pb_u32 new_col = order->old_to_new[old_col];
        reordered->ptr[new_col + 1U] +=
            source->ptr[old_col + 1U] - source->ptr[old_col];
    }
    for (col = 0U; col < reordered->cols; ++col) {
        reordered->ptr[col + 1U] += reordered->ptr[col];
    }
    for (old_col = 0U; old_col < source->cols; ++old_col) {
        pb_u32 p;
        pb_u32 new_col = order->old_to_new[old_col];
        for (p = source->ptr[old_col]; p < source->ptr[old_col + 1U]; ++p) {
            pb_u32 dst = reordered->ptr[new_col]++;
            reordered->index[dst] = order->old_to_new[source->index[p]];
            reordered->value[dst] = source->value[p];
        }
    }
    for (col = reordered->cols; col > 0U; --col) {
        reordered->ptr[col] = reordered->ptr[col - 1U];
    }
    reordered->ptr[0] = 0U;
    for (col = 0U; col < reordered->cols; ++col) {
        pb_sort_column(reordered, col);
    }
    return pb_matrix_validate(reordered);
}
