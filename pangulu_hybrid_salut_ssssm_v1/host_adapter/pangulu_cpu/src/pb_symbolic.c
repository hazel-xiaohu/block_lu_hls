#include "pb_symbolic.h"

#include <string.h>

static void pb_sort_range(pb_u32 *items, pb_u32 begin, pb_u32 end)
{
    pb_u32 i;
    for (i = begin + 1U; i < end; ++i) {
        pb_u32 key = items[i];
        pb_u32 j = i;
        while (j > begin && items[j - 1U] > key) {
            items[j] = items[j - 1U];
            --j;
        }
        items[j] = key;
    }
}

static int pb_append_index(pb_u32 *items, pb_u32 *size,
                           pb_u32 capacity, pb_u32 value)
{
    if (*size >= capacity) {
        return -1;
    }
    items[*size] = value;
    ++(*size);
    return 0;
}

/* Static-arena translation of PanguLU pruneL(). */
static void pb_prune_lower(pb_u32 col,
                           const pb_u32 *upper_index,
                           const pb_u32 *upper_ptr,
                           pb_u32 *lower_index,
                           const pb_u32 *lower_ptr,
                           const pb_u32 *mark,
                           pb_u32 *prune)
{
    pb_u32 up;
    if (col == 0U) {
        return;
    }
    for (up = upper_ptr[col]; up < upper_ptr[col + 1U]; ++up) {
        pb_u32 crow = upper_index[up];
        pb_u32 begin = lower_ptr[crow];
        pb_u32 end = prune[crow];
        pb_u32 p;
        int do_prune = 0;
        for (p = begin; p < end; ++p) {
            if (lower_index[p] == col) {
                do_prune = 1;
                break;
            }
        }
        if (do_prune != 0) {
            p = begin;
            while (p < end) {
                pb_u32 row = lower_index[p];
                if (row > col && mark[row] == col) {
                    lower_index[p] = lower_index[end - 1U];
                    lower_index[end - 1U] = row;
                    --end;
                } else {
                    ++p;
                }
            }
        }
        prune[crow] = end;
    }
}

/*
 * PanguLU-equivalent static-memory translation of
 * fill_in_2_no_sort_pruneL().  Internally U is strict upper, exactly as in
 * PanguLU.  A diagonal entry is appended to every U column only when the
 * result is normalized for the standalone numerical-kernel interface.
 */
int pb_symbolic_lu(pb_arena_t *arena, const pb_matrix_t *a_csc,
                   pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                   pb_symbolic_t *symbolic)
{
    pb_u32 n;
    pb_u32 strict_upper_capacity;
    pb_u32 *lower_ptr;
    pb_u32 *upper_ptr;
    pb_u32 *lower_index;
    pb_u32 *upper_index;
    pb_u32 *parent;
    pb_u32 *explore;
    pb_u32 *prune;
    pb_u32 lower_size = 0U;
    pb_u32 upper_size = 0U;
    pb_u32 col;

    if (arena == NULL || a_csc == NULL || symbolic == NULL ||
        a_csc->layout != PB_CSC || a_csc->rows != a_csc->cols ||
        pb_matrix_validate(a_csc) != 0) {
        return -1;
    }
    n = a_csc->rows;
    if (max_lower_nnz < n || max_upper_nnz < n) {
        return -1;
    }
    strict_upper_capacity = max_upper_nnz - n;
    memset(symbolic, 0, sizeof(*symbolic));

    lower_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    upper_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    lower_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)max_lower_nnz * sizeof(pb_u32), 64U);
    upper_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)max_upper_nnz * sizeof(pb_u32), 64U);
    parent = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    explore = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    prune = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    symbolic->mark = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    symbolic->stack = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (lower_ptr == NULL || upper_ptr == NULL || lower_index == NULL ||
        upper_index == NULL || parent == NULL || explore == NULL ||
        prune == NULL || symbolic->mark == NULL || symbolic->stack == NULL) {
        return -1;
    }
    symbolic->mark_capacity = n;
    symbolic->stack_capacity = n;
    for (col = 0U; col < n; ++col) {
        symbolic->mark[col] = PB_INVALID_U32;
        parent[col] = PB_INVALID_U32;
        explore[col] = 0U;
        prune[col] = 0U;
    }
    lower_ptr[0] = 0U;
    upper_ptr[0] = 0U;

    for (col = 0U; col < n; ++col) {
        pb_u32 input_pos;
        for (input_pos = a_csc->ptr[col];
             input_pos < a_csc->ptr[col + 1U]; ++input_pos) {
            pb_u32 row = a_csc->index[input_pos];
            if (symbolic->mark[row] == col) {
                continue;
            }
            symbolic->mark[row] = col;
            if (row >= col) {
                if (pb_append_index(lower_index, &lower_size,
                                    max_lower_nnz, row) != 0) {
                    return -2;
                }
            } else {
                pb_u32 xdfs;
                pb_u32 maxdfs;
                if (pb_append_index(upper_index, &upper_size,
                                    strict_upper_capacity, row) != 0) {
                    return -2;
                }
                parent[row] = PB_INVALID_U32;
                xdfs = lower_ptr[row];
                maxdfs = prune[row];
                for (;;) {
                    while (xdfs < maxdfs) {
                        pb_u32 child = lower_index[xdfs++];
                        if (symbolic->mark[child] == col) {
                            continue;
                        }
                        symbolic->mark[child] = col;
                        if (child >= col) {
                            if (pb_append_index(lower_index, &lower_size,
                                                max_lower_nnz, child) != 0) {
                                return -2;
                            }
                        } else {
                            if (pb_append_index(upper_index, &upper_size,
                                                strict_upper_capacity,
                                                child) != 0) {
                                return -2;
                            }
                            explore[row] = xdfs;
                            parent[child] = row;
                            row = child;
                            xdfs = lower_ptr[row];
                            maxdfs = prune[row];
                        }
                    }
                    if (parent[row] == PB_INVALID_U32) {
                        break;
                    }
                    row = parent[row];
                    xdfs = explore[row];
                    maxdfs = prune[row];
                }
            }
        }
        upper_ptr[col + 1U] = upper_size;
        lower_ptr[col + 1U] = lower_size;
        prune[col] = lower_size;
        pb_prune_lower(col, upper_index, upper_ptr,
                       lower_index, lower_ptr,
                       symbolic->mark, prune);
    }

    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        int diagonal_found = 0;
        pb_sort_range(lower_index, lower_ptr[col], lower_ptr[col + 1U]);
        pb_sort_range(upper_index, upper_ptr[col], upper_ptr[col + 1U]);
        for (p = lower_ptr[col]; p < lower_ptr[col + 1U]; ++p) {
            if (lower_index[p] == col) {
                diagonal_found = 1;
                break;
            }
        }
        if (diagonal_found == 0) {
            return -3;
        }
    }

    /* Preserve the strict-U pointers before inserting the implicit diagonal. */
    for (col = 0U; col <= n; ++col) {
        parent[col] = upper_ptr[col];
    }
    for (col = n; col > 0U; --col) {
        pb_u32 current = col - 1U;
        pb_u32 source_begin = parent[current];
        pb_u32 count = parent[current + 1U] - source_begin;
        pb_u32 destination_begin = source_begin + current;
        pb_u32 p = count;
        while (p > 0U) {
            --p;
            upper_index[destination_begin + p] = upper_index[source_begin + p];
        }
        upper_index[destination_begin + count] = current;
        upper_ptr[current] = destination_begin;
        upper_ptr[current + 1U] = destination_begin + count + 1U;
    }
    upper_size += n;

    symbolic->lower.rows = n;
    symbolic->lower.cols = n;
    symbolic->lower.nnz = lower_size;
    symbolic->lower.ptr = lower_ptr;
    symbolic->lower.index = lower_index;
    symbolic->lower.value = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)lower_size * sizeof(pb_f32), 64U);
    symbolic->lower.layout = PB_CSC;
    symbolic->upper.rows = n;
    symbolic->upper.cols = n;
    symbolic->upper.nnz = upper_size;
    symbolic->upper.ptr = upper_ptr;
    symbolic->upper.index = upper_index;
    symbolic->upper.value = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)upper_size * sizeof(pb_f32), 64U);
    symbolic->upper.layout = PB_CSC;
    if (symbolic->lower.value == NULL || symbolic->upper.value == NULL) {
        return -1;
    }
    memset(symbolic->lower.value, 0,
           (size_t)lower_size * sizeof(pb_f32));
    memset(symbolic->upper.value, 0,
           (size_t)upper_size * sizeof(pb_f32));
    if (pb_matrix_validate(&symbolic->lower) != 0 ||
        pb_matrix_validate(&symbolic->upper) != 0) {
        return -1;
    }
    return 0;
}

/*
 * Static-arena translation of PanguLU's fill_in_sym_prune().  The caller
 * supplies a structural symmetric CSC matrix (A+A^T, with the diagonal
 * present).  As in the original implementation, only L is generated by the
 * prune traversal and U is the strict transpose of L plus its diagonal.
 */
int pb_symbolic_lu_symmetric(pb_arena_t *arena, const pb_matrix_t *a_csc,
                             pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                             pb_symbolic_t *symbolic)
{
    pb_u32 n;
    pb_u32 *lower_ptr;
    pb_u32 *upper_ptr;
    pb_u32 *lower_index;
    pb_u32 *upper_index;
    pb_u32 *prune_head;
    pb_u32 *prune_tail;
    pb_u32 *prune_value;
    pb_u32 *prune_next;
    pb_u32 *upper_start;
    pb_u32 lower_size = 0U;
    pb_u32 upper_strict_size = 0U;
    pb_u32 event_count = 0U;
    pb_u32 col;

    if (arena == NULL || a_csc == NULL || symbolic == NULL ||
        a_csc->layout != PB_CSC || a_csc->rows != a_csc->cols ||
        pb_matrix_validate(a_csc) != 0 ||
        max_lower_nnz < a_csc->rows || max_upper_nnz < a_csc->rows) {
        return -1;
    }
    n = a_csc->rows;
    memset(symbolic, 0, sizeof(*symbolic));

    lower_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    upper_ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    lower_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)max_lower_nnz * sizeof(pb_u32), 64U);
    upper_index = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)max_upper_nnz * sizeof(pb_u32), 64U);
    symbolic->mark = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    symbolic->stack = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    prune_head = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    prune_tail = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    prune_value = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    prune_next = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    upper_start = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)n + 1U) * sizeof(pb_u32), 64U);
    if (lower_ptr == NULL || upper_ptr == NULL || lower_index == NULL ||
        upper_index == NULL || symbolic->mark == NULL ||
        symbolic->stack == NULL || prune_head == NULL ||
        prune_tail == NULL || prune_value == NULL || prune_next == NULL ||
        upper_start == NULL) {
        return -1;
    }
    symbolic->mark_capacity = n;
    symbolic->stack_capacity = n;
    for (col = 0U; col < n; ++col) {
        symbolic->mark[col] = PB_INVALID_U32;
        symbolic->stack[col] = 0U;
        prune_head[col] = PB_INVALID_U32;
        prune_tail[col] = PB_INVALID_U32;
    }
    lower_ptr[0] = 0U;

    for (col = 0U; col < n; ++col) {
        pb_u32 input_pos;
        pb_u32 event;
        pb_u32 merge_count = 0U;

        /* Direct lower part of the current structural column. */
        for (input_pos = a_csc->ptr[col];
             input_pos < a_csc->ptr[col + 1U]; ++input_pos) {
            pb_u32 row = a_csc->index[input_pos];
            if (row >= col && symbolic->mark[row] != col) {
                symbolic->mark[row] = col;
                if (pb_append_index(lower_index, &lower_size,
                                    max_lower_nnz, row) != 0) {
                    return -2;
                }
            }
        }

        /* Apply the prune lists attached to this column. */
        event = prune_head[col];
        while (event != PB_INVALID_U32) {
            if (merge_count >= n) {
                return -2;
            }
            symbolic->stack[merge_count++] = prune_value[event];
            event = prune_next[event];
        }
        for (event = 0U; event < merge_count; ++event) {
            pb_u32 row = symbolic->stack[event];
            pb_u32 p;
            for (p = lower_ptr[row]; p < lower_ptr[row + 1U]; ++p) {
                pb_u32 crow = lower_index[p];
                if (crow > col && symbolic->mark[crow] != col) {
                    symbolic->mark[crow] = col;
                    if (pb_append_index(lower_index, &lower_size,
                                        max_lower_nnz, crow) != 0) {
                        return -2;
                    }
                }
            }
        }

        lower_ptr[col + 1U] = lower_size;

        /* The first strictly-lower row becomes the prune-list owner. */
        {
            pb_u32 owner = n;
            pb_u32 p;
            for (p = lower_ptr[col]; p < lower_ptr[col + 1U]; ++p) {
                pb_u32 row = lower_index[p];
                if (row > col && row < owner) {
                    owner = row;
                }
            }
            if (owner < n) {
                pb_u32 event_id;
                if (event_count >= n) {
                    return -2;
                }
                event_id = event_count++;
                prune_value[event_id] = col;
                prune_next[event_id] = PB_INVALID_U32;
                if (prune_head[owner] == PB_INVALID_U32) {
                    prune_head[owner] = event_id;
                } else {
                    prune_next[prune_tail[owner]] = event_id;
                }
                prune_tail[owner] = event_id;
            }
        }
    }

    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        int diagonal_found = 0;
        pb_sort_range(lower_index, lower_ptr[col], lower_ptr[col + 1U]);
        for (p = lower_ptr[col]; p < lower_ptr[col + 1U]; ++p) {
            if (lower_index[p] == col) {
                diagonal_found = 1;
                break;
            }
        }
        if (diagonal_found == 0) {
            return -3;
        }
    }

    /* Form strict U=L^T, then insert the diagonal exactly as the runtime
     * factor interface expects. */
    memset(upper_ptr, 0, ((size_t)n + 1U) * sizeof(pb_u32));
    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        for (p = lower_ptr[col]; p < lower_ptr[col + 1U]; ++p) {
            pb_u32 row = lower_index[p];
            if (row != col) {
                ++upper_ptr[row + 1U];
            }
        }
    }
    for (col = 0U; col < n; ++col) {
        upper_ptr[col + 1U] += upper_ptr[col];
        upper_start[col] = upper_ptr[col];
    }
    upper_start[n] = upper_ptr[n];
    upper_strict_size = upper_ptr[n];
    if (upper_strict_size > max_upper_nnz - n) {
        return -2;
    }
    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        for (p = lower_ptr[col]; p < lower_ptr[col + 1U]; ++p) {
            pb_u32 row = lower_index[p];
            if (row != col) {
                upper_index[upper_ptr[row]++] = col;
            }
        }
    }
    for (col = n; col > 0U; --col) {
        upper_ptr[col] = upper_ptr[col - 1U];
    }
    upper_ptr[0] = 0U;

    /* Shift each strict-U column right by one slot and put its diagonal at
     * the end, preserving the sorted order after the later range sort. */
    for (col = n; col > 0U; --col) {
        pb_u32 current = col - 1U;
        pb_u32 begin = upper_start[current];
        pb_u32 count = upper_start[current + 1U] - begin;
        pb_u32 p = count;
        while (p > 0U) {
            --p;
            upper_index[begin + current + p] = upper_index[begin + p];
        }
        upper_index[begin + current + count] = current;
        upper_ptr[current] = begin + current;
        upper_ptr[current + 1U] = begin + current + count + 1U;
    }

    symbolic->lower.rows = n;
    symbolic->lower.cols = n;
    symbolic->lower.nnz = lower_size;
    symbolic->lower.ptr = lower_ptr;
    symbolic->lower.index = lower_index;
    symbolic->lower.value = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)lower_size * sizeof(pb_f32), 64U);
    symbolic->lower.layout = PB_CSC;
    symbolic->upper.rows = n;
    symbolic->upper.cols = n;
    symbolic->upper.nnz = upper_strict_size + n;
    symbolic->upper.ptr = upper_ptr;
    symbolic->upper.index = upper_index;
    symbolic->upper.value = (pb_f32 *)pb_arena_alloc(
        arena, (size_t)(upper_strict_size + n) * sizeof(pb_f32), 64U);
    symbolic->upper.layout = PB_CSC;
    if (symbolic->lower.value == NULL || symbolic->upper.value == NULL) {
        return -1;
    }
    memset(symbolic->lower.value, 0,
           (size_t)lower_size * sizeof(pb_f32));
    memset(symbolic->upper.value, 0,
           (size_t)(upper_strict_size + n) * sizeof(pb_f32));
    for (col = 0U; col < n; ++col) {
        pb_sort_range(upper_index, upper_ptr[col], upper_ptr[col + 1U]);
    }
    if (pb_matrix_validate(&symbolic->lower) != 0 ||
        pb_matrix_validate(&symbolic->upper) != 0) {
        return -1;
    }
    return 0;
}
