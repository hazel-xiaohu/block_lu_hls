#include "pb_matrix.h"

#include <string.h>

static int pb_sorted_range(const pb_u32 *data, pb_u32 begin, pb_u32 end)
{
    pb_u32 i;
    for (i = begin + 1U; i < end; ++i) {
        if (data[i - 1U] >= data[i]) {
            return -1;
        }
    }
    return 0;
}

int pb_matrix_validate(const pb_matrix_t *m)
{
    pb_u32 outer;
    if (m == NULL || m->ptr == NULL || m->index == NULL ||
        m->value == NULL || m->layout > PB_CSR) {
        return -1;
    }
    if (m->rows == 0U || m->cols == 0U) {
        return -1;
    }
    if (m->layout == PB_CSC) {
        if (m->ptr[m->cols] != m->nnz) {
            return -1;
        }
        for (outer = 0U; outer < m->cols; ++outer) {
            if (m->ptr[outer] > m->ptr[outer + 1U] ||
                m->ptr[outer + 1U] > m->nnz ||
                pb_sorted_range(m->index, m->ptr[outer], m->ptr[outer + 1U]) != 0) {
                return -1;
            }
        }
    } else {
        if (m->ptr[m->rows] != m->nnz) {
            return -1;
        }
        for (outer = 0U; outer < m->rows; ++outer) {
            if (m->ptr[outer] > m->ptr[outer + 1U] ||
                m->ptr[outer + 1U] > m->nnz ||
                pb_sorted_range(m->index, m->ptr[outer], m->ptr[outer + 1U]) != 0) {
                return -1;
            }
        }
    }
    for (outer = 0U; outer < m->nnz; ++outer) {
        pb_u32 limit = (m->layout == PB_CSC) ? m->rows : m->cols;
        if (m->index[outer] >= limit) {
            return -1;
        }
    }
    return 0;
}

int pb_matrix_alloc(pb_arena_t *arena, pb_matrix_t *m,
                    pb_layout_t layout, pb_u32 rows, pb_u32 cols,
                    pb_u32 nnz)
{
    pb_u32 outer = (layout == PB_CSC) ? cols : rows;
    pb_u32 storage_nnz = (nnz == 0U) ? 1U : nnz;
    if (arena == NULL || m == NULL || rows == 0U || cols == 0U) {
        return -1;
    }
    m->rows = rows;
    m->cols = cols;
    m->nnz = nnz;
    m->layout = layout;
    m->ptr = (pb_u32 *)pb_arena_alloc(arena,
                                      ((size_t)outer + 1U) * sizeof(pb_u32),
                                      64U);
    m->index = (pb_u32 *)pb_arena_alloc(arena,
                                        (size_t)storage_nnz * sizeof(pb_u32), 64U);
    m->value = (pb_f32 *)pb_arena_alloc(arena,
                                        (size_t)storage_nnz * sizeof(pb_f32), 64U);
    if (m->ptr == NULL || m->index == NULL || m->value == NULL) {
        return -1;
    }
    memset(m->ptr, 0, ((size_t)outer + 1U) * sizeof(pb_u32));
    memset(m->index, 0, (size_t)storage_nnz * sizeof(pb_u32));
    memset(m->value, 0, (size_t)storage_nnz * sizeof(pb_f32));
    return 0;
}

int pb_matrix_zero_values(pb_matrix_t *m)
{
    if (m == NULL || m->value == NULL) {
        return -1;
    }
    memset(m->value, 0, (size_t)m->nnz * sizeof(pb_f32));
    return 0;
}

int pb_matrix_csc_to_csr(pb_arena_t *arena, const pb_matrix_t *csc,
                         pb_matrix_t *csr)
{
    pb_u32 r;
    pb_u32 q;
    if (arena == NULL || csc == NULL || csr == NULL ||
        csc->layout != PB_CSC || pb_matrix_validate(csc) != 0 ||
        pb_matrix_alloc(arena, csr, PB_CSR, csc->rows, csc->cols, csc->nnz) != 0) {
        return -1;
    }
    for (q = 0U; q < csc->nnz; ++q) {
        ++csr->ptr[csc->index[q] + 1U];
    }
    for (r = 0U; r < csc->rows; ++r) {
        csr->ptr[r + 1U] += csr->ptr[r];
    }
    for (q = 0U; q < csc->cols; ++q) {
        pb_u32 p;
        for (p = csc->ptr[q]; p < csc->ptr[q + 1U]; ++p) {
            pb_u32 row = csc->index[p];
            pb_u32 dst = csr->ptr[row];
            csr->index[dst] = q;
            csr->value[dst] = csc->value[p];
            ++csr->ptr[row];
        }
    }
    for (r = csc->rows; r > 0U; --r) {
        csr->ptr[r] = csr->ptr[r - 1U];
    }
    csr->ptr[0] = 0U;
    return 0;
}

static pb_u32 pb_structural_union_count(const pb_matrix_t *a,
                                        const pb_matrix_t *at,
                                        pb_u32 column)
{
    pb_u32 ap = a->ptr[column];
    pb_u32 ae = a->ptr[column + 1U];
    pb_u32 tp = at->ptr[column];
    pb_u32 te = at->ptr[column + 1U];
    pb_u32 count = 0U;
    while (ap < ae || tp < te) {
        if (tp >= te || (ap < ae && a->index[ap] < at->index[tp])) {
            ++ap;
        } else if (ap >= ae || at->index[tp] < a->index[ap]) {
            ++tp;
        } else {
            ++ap;
            ++tp;
        }
        if (count == UINT32_MAX) return UINT32_MAX;
        ++count;
    }
    return count;
}

/*
 * Build the structural union A + A^T used by the original PanguLU build
 * when the `symmetric` configuration macro is enabled.  Values are zero:
 * this matrix is only a symbolic pattern.  The reordered numerical A is
 * kept separately by pb_analysis_t and is never replaced by this union.
 */
int pb_matrix_structural_symmetrize_csc(pb_arena_t *arena,
                                        const pb_matrix_t *source,
                                        pb_matrix_t *symmetric)
{
    pb_matrix_t transpose_view;
    pb_u32 *ptr;
    pb_u32 column;
    if (arena == NULL || source == NULL || symmetric == NULL ||
        source->layout != PB_CSC || source->rows != source->cols ||
        pb_matrix_validate(source) != 0) {
        return -1;
    }
    if (pb_matrix_csc_to_csr(arena, source, &transpose_view) != 0) {
        return -1;
    }
    ptr = (pb_u32 *)pb_arena_alloc(
        arena, ((size_t)source->cols + 1U) * sizeof(pb_u32), 64U);
    if (ptr == NULL) return -1;
    ptr[0] = 0U;
    for (column = 0U; column < source->cols; ++column) {
        pb_u32 count = pb_structural_union_count(source, &transpose_view,
                                                  column);
        if (count == UINT32_MAX || ptr[column] > UINT32_MAX - count) {
            return -1;
        }
        ptr[column + 1U] = ptr[column] + count;
    }
    if (pb_matrix_alloc(arena, symmetric, PB_CSC,
                        source->rows, source->cols, ptr[source->cols]) != 0) {
        return -1;
    }
    memcpy(symmetric->ptr, ptr,
           ((size_t)source->cols + 1U) * sizeof(pb_u32));
    for (column = 0U; column < source->cols; ++column) {
        pb_u32 ap = source->ptr[column];
        pb_u32 ae = source->ptr[column + 1U];
        pb_u32 tp = transpose_view.ptr[column];
        pb_u32 te = transpose_view.ptr[column + 1U];
        pb_u32 out = symmetric->ptr[column];
        while (ap < ae || tp < te) {
            if (tp >= te || (ap < ae && source->index[ap] <
                             transpose_view.index[tp])) {
                symmetric->index[out++] = source->index[ap++];
            } else if (ap >= ae || transpose_view.index[tp] <
                       source->index[ap]) {
                symmetric->index[out++] = transpose_view.index[tp++];
            } else {
                symmetric->index[out++] = source->index[ap++];
                ++tp;
            }
        }
    }
    return pb_matrix_validate(symmetric);
}

int pb_matrix_csr_to_csc(pb_arena_t *arena, const pb_matrix_t *csr,
                         pb_matrix_t *csc)
{
    pb_u32 c;
    pb_u32 q;
    if (arena == NULL || csr == NULL || csc == NULL ||
        csr->layout != PB_CSR || pb_matrix_validate(csr) != 0 ||
        pb_matrix_alloc(arena, csc, PB_CSC, csr->rows, csr->cols, csr->nnz) != 0) {
        return -1;
    }
    for (q = 0U; q < csr->nnz; ++q) {
        ++csc->ptr[csr->index[q] + 1U];
    }
    for (c = 0U; c < csr->cols; ++c) {
        csc->ptr[c + 1U] += csc->ptr[c];
    }
    for (q = 0U; q < csr->rows; ++q) {
        pb_u32 p;
        for (p = csr->ptr[q]; p < csr->ptr[q + 1U]; ++p) {
            pb_u32 col = csr->index[p];
            pb_u32 dst = csc->ptr[col];
            csc->index[dst] = q;
            csc->value[dst] = csr->value[p];
            ++csc->ptr[col];
        }
    }
    for (c = csr->cols; c > 0U; --c) {
        csc->ptr[c] = csc->ptr[c - 1U];
    }
    csc->ptr[0] = 0U;
    return 0;
}

static int pb_find(const pb_matrix_t *m, pb_u32 outer, pb_u32 key,
                   pb_u32 *position)
{
    pb_u32 left;
    pb_u32 right;
    if (m == NULL || position == NULL) {
        return -1;
    }
    left = m->ptr[outer];
    right = m->ptr[outer + 1U];
    while (left < right) {
        pb_u32 mid = left + (right - left) / 2U;
        if (m->index[mid] < key) {
            left = mid + 1U;
        } else {
            right = mid;
        }
    }
    if (left < m->ptr[outer + 1U] && m->index[left] == key) {
        *position = left;
        return 0;
    }
    return -1;
}

int pb_matrix_find_csc(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                       pb_u32 *position)
{
    if (m == NULL || m->layout != PB_CSC || col >= m->cols || row >= m->rows) {
        return -1;
    }
    return pb_find(m, col, row, position);
}

int pb_matrix_find_csr(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                       pb_u32 *position)
{
    if (m == NULL || m->layout != PB_CSR || col >= m->cols || row >= m->rows) {
        return -1;
    }
    return pb_find(m, row, col, position);
}
