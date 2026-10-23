#include "pb_block_lu.h"

static pb_u32 pb_left_data_block_count(const pb_block_lu_t *lu)
{
    return (lu->block_mapper != NULL) ? lu->active_block_count :
                                        lu->block_count * lu->block_count;
}

static pb_u32 pb_left_block_id(const pb_block_lu_t *lu,
                               pb_u32 row, pb_u32 col)
{
    pb_u32 slot = row * lu->block_count + col;
    return (lu->block_mapper != NULL) ? lu->block_mapper[slot] : slot;
}

/*
 * Left-looking block LU task stream.
 *
 * At layer k, contributions from all factored panels p < k are accumulated
 * into the current diagonal, block row, and block column before their solve.
 * Contributions to a target are emitted in increasing p order, which matches
 * the arithmetic order seen by that target in the right-looking stream.
 */
int pb_block_lu_make_tasks_leftlooking(pb_block_lu_t *lu)
{
    pb_u32 k;
    pb_u32 data_blocks;
    if (lu == NULL || lu->tasks == NULL || lu->blocks == NULL ||
        lu->diag_l == NULL || lu->diag_u == NULL) {
        return -1;
    }
    data_blocks = pb_left_data_block_count(lu);
    lu->task_list.count = 0U;

    for (k = 0U; k < lu->block_count; ++k) {
        pb_u32 i;
        pb_u32 j;
        pb_u32 p;
        pb_u32 diag_a = pb_left_block_id(lu, k, k);
        pb_u32 diag_l = data_blocks + k;
        pb_u32 diag_u = data_blocks + lu->block_count + k;

        if (diag_a == PB_INVALID_U32) {
            return -1;
        }

        /* A(k,k) -= sum_{p<k} L(k,p) U(p,k), then factor A(k,k). */
        for (p = 0U; p < k; ++p) {
            pb_u32 l_id = pb_left_block_id(lu, k, p);
            pb_u32 u_id = pb_left_block_id(lu, p, k);
            if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32 &&
                pb_runtime_add_task(&lu->task_list, PB_TASK_SSSSM,
                                    diag_a, l_id, u_id, 0U, 0U) != 0) {
                return -1;
            }
        }
        if (pb_runtime_add_task(&lu->task_list, PB_TASK_GETRF,
                                diag_a, diag_l, diag_u, 0U, 0U) != 0) {
            return -1;
        }

        /* A(k,j) -= old-panel products, then A(k,j) <- L(k,k)^-1 A(k,j). */
        for (j = k + 1U; j < lu->block_count; ++j) {
            pb_u32 a_id = pb_left_block_id(lu, k, j);
            if (a_id == PB_INVALID_U32) {
                continue;
            }
            for (p = 0U; p < k; ++p) {
                pb_u32 l_id = pb_left_block_id(lu, k, p);
                pb_u32 u_id = pb_left_block_id(lu, p, j);
                if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32 &&
                    pb_runtime_add_task(&lu->task_list, PB_TASK_SSSSM,
                                        a_id, l_id, u_id, 0U, 0U) != 0) {
                    return -1;
                }
            }
            if (pb_runtime_add_task(&lu->task_list, PB_TASK_GESSM,
                                    a_id, diag_l, 0U, 0U, 0U) != 0) {
                return -1;
            }
        }

        /* A(i,k) -= old-panel products, then A(i,k) <- A(i,k) U(k,k)^-1. */
        for (i = k + 1U; i < lu->block_count; ++i) {
            pb_u32 a_id = pb_left_block_id(lu, i, k);
            if (a_id == PB_INVALID_U32) {
                continue;
            }
            for (p = 0U; p < k; ++p) {
                pb_u32 l_id = pb_left_block_id(lu, i, p);
                pb_u32 u_id = pb_left_block_id(lu, p, k);
                if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32 &&
                    pb_runtime_add_task(&lu->task_list, PB_TASK_SSSSM,
                                        a_id, l_id, u_id, 0U, 0U) != 0) {
                    return -1;
                }
            }
            if (pb_runtime_add_task(&lu->task_list, PB_TASK_TSTRF,
                                    a_id, 0U, diag_u, 0U, 0U) != 0) {
                return -1;
            }
        }
    }
    return 0;
}

static int pb_left_emit_fused(pb_block_lu_t *lu, pb_u32 target,
                                const pb_u32 *l_ids, const pb_u32 *u_ids,
                                pb_u32 count)
{
    pb_fused_group_t *group;
    pb_u32 g;
    if (count == 0U) return 0;
    if (lu->fused_groups == NULL ||
        lu->fused_group_count >= lu->fused_group_capacity) return -1;
    g = lu->fused_group_count++;
    group = &lu->fused_groups[g];
    group->target_id = target;
    group->count = count;
    for (pb_u32 i = 0U; i < count; ++i) {
        group->l_ids[i] = l_ids[i];
        group->u_ids[i] = u_ids[i];
    }
    return pb_runtime_add_task(&lu->task_list, PB_TASK_SSSSM_FUSED,
                               target, 0U, 0U, g, 0U);
}

/* Left-looking schedule with one fused SSSSM update per target block.  It
 * keeps the existing canonical CSC blocks and changes only the task granularity:
 * repeated A read/modify/write operations for a target are combined. */
int pb_block_lu_make_tasks_leftlooking_fused(pb_block_lu_t *lu)
{
    pb_u32 k;
    pb_u32 data_blocks;
    pb_u32 stride;
    pb_u32 *l_tmp;
    pb_u32 *u_tmp;
    if (lu == NULL || lu->tasks == NULL || lu->blocks == NULL ||
        lu->fused_groups == NULL) return -1;
    data_blocks = pb_left_data_block_count(lu);
    stride = lu->block_count > 0U ? lu->block_count - 1U : 0U;
    /* l_tmp/u_tmp are selected per group below.  They must not remain
     * aliases of fused_l_ids[0], otherwise every later group overwrites
     * group 0's operand IDs. */
    l_tmp = NULL;
    u_tmp = NULL;
    lu->task_list.count = 0U;
    lu->fused_group_count = 0U;

    for (k = 0U; k < lu->block_count; ++k) {
        pb_u32 i, j, p, count;
        pb_u32 diag_a = pb_left_block_id(lu, k, k);
        pb_u32 diag_l = data_blocks + k;
        pb_u32 diag_u = data_blocks + lu->block_count + k;
        if (diag_a == PB_INVALID_U32) return -1;

        count = 0U;
        if (stride != 0U) {
            l_tmp = &lu->fused_l_ids[lu->fused_group_count * stride];
            u_tmp = &lu->fused_u_ids[lu->fused_group_count * stride];
        }
        for (p = 0U; p < k; ++p) {
            pb_u32 l_id = pb_left_block_id(lu, k, p);
            pb_u32 u_id = pb_left_block_id(lu, p, k);
            if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32) {
                if (count >= stride) return -1;
                l_tmp[count] = l_id;
                u_tmp[count++] = u_id;
            }
        }
        if (pb_left_emit_fused(lu, diag_a, l_tmp, u_tmp, count) != 0 ||
            pb_runtime_add_task(&lu->task_list, PB_TASK_GETRF,
                                diag_a, diag_l, diag_u, 0U, 0U) != 0) return -1;

        for (j = k + 1U; j < lu->block_count; ++j) {
            pb_u32 a_id = pb_left_block_id(lu, k, j);
            if (a_id == PB_INVALID_U32) continue;
            count = 0U;
            if (stride != 0U) {
                l_tmp = &lu->fused_l_ids[lu->fused_group_count * stride];
                u_tmp = &lu->fused_u_ids[lu->fused_group_count * stride];
            }
            for (p = 0U; p < k; ++p) {
                pb_u32 l_id = pb_left_block_id(lu, k, p);
                pb_u32 u_id = pb_left_block_id(lu, p, j);
                if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32) {
                    if (count >= stride) return -1;
                    l_tmp[count] = l_id;
                    u_tmp[count++] = u_id;
                }
            }
            if (pb_left_emit_fused(lu, a_id, l_tmp, u_tmp, count) != 0 ||
                pb_runtime_add_task(&lu->task_list, PB_TASK_GESSM,
                                    a_id, diag_l, 0U, 0U, 0U) != 0) return -1;
        }

        for (i = k + 1U; i < lu->block_count; ++i) {
            pb_u32 a_id = pb_left_block_id(lu, i, k);
            if (a_id == PB_INVALID_U32) continue;
            count = 0U;
            if (stride != 0U) {
                l_tmp = &lu->fused_l_ids[lu->fused_group_count * stride];
                u_tmp = &lu->fused_u_ids[lu->fused_group_count * stride];
            }
            for (p = 0U; p < k; ++p) {
                pb_u32 l_id = pb_left_block_id(lu, i, p);
                pb_u32 u_id = pb_left_block_id(lu, p, k);
                if (l_id != PB_INVALID_U32 && u_id != PB_INVALID_U32) {
                    if (count >= stride) return -1;
                    l_tmp[count] = l_id;
                    u_tmp[count++] = u_id;
                }
            }
            if (pb_left_emit_fused(lu, a_id, l_tmp, u_tmp, count) != 0 ||
                pb_runtime_add_task(&lu->task_list, PB_TASK_TSTRF,
                                    a_id, 0U, diag_u, 0U, 0U) != 0) return -1;
        }
    }
    return 0;
}

int pb_block_lu_make_tasks(pb_block_lu_t *lu)
{
    return pb_block_lu_make_tasks_leftlooking(lu);
}
