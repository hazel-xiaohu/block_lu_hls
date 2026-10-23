#include "pb_mtx.h"

#include <ctype.h>
#ifndef PB_NO_STDIO
#include <stdio.h>
#endif
#include <stdlib.h>
#include <string.h>

typedef struct {
    pb_u32 row;
    pb_u32 col;
    pb_f32 value;
} pb_coo_entry_t;

static int pb_coo_cmp(const void *lhs, const void *rhs)
{
    const pb_coo_entry_t *a = (const pb_coo_entry_t *)lhs;
    const pb_coo_entry_t *b = (const pb_coo_entry_t *)rhs;
    if (a->col != b->col) {
        return (a->col < b->col) ? -1 : 1;
    }
    if (a->row != b->row) {
        return (a->row < b->row) ? -1 : 1;
    }
    return 0;
}

int pb_matrix_from_coo_csc(pb_arena_t *arena, pb_matrix_t *m,
                           pb_u32 rows, pb_u32 cols, pb_u32 nnz,
                           const pb_u32 *coo_row, const pb_u32 *coo_col,
                           const pb_f32 *coo_value)
{
    pb_coo_entry_t *entries;
    pb_u32 i;
    pb_u32 compact = 0U;
    if (arena == NULL || m == NULL || rows == 0U || cols == 0U ||
        (nnz != 0U && (coo_row == NULL || coo_col == NULL || coo_value == NULL))) {
        return -1;
    }
    entries = (pb_coo_entry_t *)pb_arena_alloc(arena,
                                               (size_t)nnz * sizeof(pb_coo_entry_t),
                                               64U);
    if (entries == NULL) {
        return -1;
    }
    for (i = 0U; i < nnz; ++i) {
        if (coo_row[i] >= rows || coo_col[i] >= cols) {
            return -1;
        }
        entries[i].row = coo_row[i];
        entries[i].col = coo_col[i];
        entries[i].value = coo_value[i];
    }
    qsort(entries, nnz, sizeof(pb_coo_entry_t), pb_coo_cmp);
    for (i = 0U; i < nnz; ++i) {
        if (compact != 0U && entries[compact - 1U].row == entries[i].row &&
            entries[compact - 1U].col == entries[i].col) {
            entries[compact - 1U].value += entries[i].value;
        } else if (entries[i].value > 1.0e-30f || entries[i].value < -1.0e-30f) {
            entries[compact++] = entries[i];
        }
    }
    if (pb_matrix_alloc(arena, m, PB_CSC, rows, cols, compact) != 0) {
        return -1;
    }
    for (i = 0U; i < compact; ++i) {
        ++m->ptr[entries[i].col + 1U];
    }
    for (i = 0U; i < cols; ++i) {
        m->ptr[i + 1U] += m->ptr[i];
    }
    for (i = 0U; i < compact; ++i) {
        pb_u32 dst = m->ptr[entries[i].col]++;
        m->index[dst] = entries[i].row;
        m->value[dst] = entries[i].value;
    }
    for (i = cols; i > 0U; --i) {
        m->ptr[i] = m->ptr[i - 1U];
    }
    m->ptr[0] = 0U;
    return pb_matrix_validate(m);
}

#ifndef PB_NO_STDIO
static int pb_next_data_line(FILE *fp, char *buf, size_t bytes)
{
    while (fgets(buf, (int)bytes, fp) != NULL) {
        char *p = buf;
        /* Keep this parser free of the locale/ctype call in HLS CSim.  The
         * APCC-generated ctype path can materialize an invalid locale table
         * pointer for comment lines, although the same code is fine under
         * glibc.  MatrixMarket whitespace is ASCII, so the explicit test is
         * equivalent and is safe for both bare-metal and host builds. */
        while (*p == ' ' || *p == '\t' || *p == '\r' || *p == '\n' ||
               *p == '\f' || *p == '\v') {
            ++p;
        }
        if (*p != '%' && *p != '\0') {
            return 0;
        }
    }
    return -1;
}

int pb_matrix_read_matrix_market(pb_arena_t *arena, const char *path,
                                 pb_matrix_t *m)
{
    FILE *fp;
    char line[512];
    int symmetric = 0;
    int pattern = 0;
    unsigned long rows_l;
    unsigned long cols_l;
    unsigned long nnz_l;
    pb_u32 rows;
    pb_u32 cols;
    pb_u32 declared_nnz;
    pb_u32 capacity;
    pb_u32 count = 0U;
    pb_u32 *coo_row;
    pb_u32 *coo_col;
    pb_f32 *coo_value;
    if (arena == NULL || path == NULL || m == NULL) {
        return -1;
    }
    fp = fopen(path, "r");
    if (fp == NULL) {
        return -1;
    }
    if (fgets(line, sizeof(line), fp) == NULL) {
        fclose(fp);
        return -1;
    }
    symmetric = (strstr(line, "symmetric") != NULL || strstr(line, "Symmetric") != NULL) ? 1 : 0;
    pattern = (strstr(line, "pattern") != NULL || strstr(line, "Pattern") != NULL) ? 1 : 0;
    if (pb_next_data_line(fp, line, sizeof(line)) != 0 ||
        sscanf(line, "%lu %lu %lu", &rows_l, &cols_l, &nnz_l) != 3) {
        fclose(fp);
        return -1;
    }
    if (rows_l == 0UL || cols_l == 0UL || rows_l > UINT32_MAX ||
        cols_l > UINT32_MAX || nnz_l > UINT32_MAX / 2UL) {
        fclose(fp);
        return -1;
    }
    rows = (pb_u32)rows_l;
    cols = (pb_u32)cols_l;
    declared_nnz = (pb_u32)nnz_l;
    capacity = symmetric != 0 ? declared_nnz * 2U : declared_nnz;
    coo_row = (pb_u32 *)pb_arena_alloc(arena, (size_t)capacity * sizeof(pb_u32), 64U);
    coo_col = (pb_u32 *)pb_arena_alloc(arena, (size_t)capacity * sizeof(pb_u32), 64U);
    coo_value = (pb_f32 *)pb_arena_alloc(arena, (size_t)capacity * sizeof(pb_f32), 64U);
    if (coo_row == NULL || coo_col == NULL || coo_value == NULL) {
        fclose(fp);
        return -1;
    }
    while (count < capacity && pb_next_data_line(fp, line, sizeof(line)) == 0) {
        unsigned long r_l;
        unsigned long c_l;
        double v = 1.0;
        int scanned;
        if (pattern != 0) {
            scanned = sscanf(line, "%lu %lu", &r_l, &c_l);
            if (scanned != 2) {
                fclose(fp);
                return -1;
            }
        } else {
            scanned = sscanf(line, "%lu %lu %lf", &r_l, &c_l, &v);
            if (scanned < 2) {
                fclose(fp);
                return -1;
            }
            if (scanned == 2) {
                v = 1.0;
            }
        }
        if (r_l == 0UL || c_l == 0UL || r_l > rows_l || c_l > cols_l) {
            fclose(fp);
            return -1;
        }
        coo_row[count] = (pb_u32)(r_l - 1UL);
        coo_col[count] = (pb_u32)(c_l - 1UL);
        coo_value[count] = (pb_f32)v;
        ++count;
        if (symmetric != 0 && r_l != c_l) {
            if (count >= capacity) {
                fclose(fp);
                return -1;
            }
            coo_row[count] = (pb_u32)(c_l - 1UL);
            coo_col[count] = (pb_u32)(r_l - 1UL);
            coo_value[count] = (pb_f32)v;
            ++count;
        }
    }
    fclose(fp);
    return pb_matrix_from_coo_csc(arena, m, rows, cols, count,
                                  coo_row, coo_col, coo_value);
}
#endif
