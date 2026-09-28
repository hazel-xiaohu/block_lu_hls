#include "large_sparse_lu.h"
#include <math.h>

// GETRF v2 keeps the sparse left-looking algorithm and numerical ordering of
// large_getrf, but moves the frequently updated workspace on chip.  The two
// tags are deliberately separate: pattern_tag records the legal L/U pattern,
// while work_tag records whether a workspace entry has been materialized for
// the current row.  This avoids clearing the whole workspace for every row.
static const lslu_id_t GETRF_V2_MAX_N = 4096;

extern "C" void large_getrf_v2(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos,
    lslu_id_t n, lslu_val_t pivot_eps, lslu_id_t *status,
    uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=a_ptr bundle=v2a0 depth=4097
#pragma HLS INTERFACE m_axi port=a_idx bundle=v2a1 depth=65536
#pragma HLS INTERFACE m_axi port=a_val bundle=v2a2 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr bundle=v2l0 depth=4097
#pragma HLS INTERFACE m_axi port=l_idx bundle=v2l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_val bundle=v2l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr bundle=v2u0 depth=4097
#pragma HLS INTERFACE m_axi port=u_idx bundle=v2u1 depth=65536
#pragma HLS INTERFACE m_axi port=u_val bundle=v2u2 depth=65536
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=v2u3 depth=4096
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE m_axi port=status bundle=v2out0 depth=1
#pragma HLS INTERFACE m_axi port=muladds bundle=v2out1 depth=1
#pragma HLS INTERFACE m_axi port=divisions bundle=v2out2 depth=1
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status = LSLU_OK;
    *muladds = 0;
    *divisions = 0;
    if (!n || n > GETRF_V2_MAX_N) {
        *status = LSLU_BAD_SIZE;
        return;
    }

    lslu_val_t work_local[GETRF_V2_MAX_N];
    lslu_id_t pattern_tag[GETRF_V2_MAX_N];
    lslu_id_t work_tag[GETRF_V2_MAX_N];
#pragma HLS BIND_STORAGE variable=work_local type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=pattern_tag type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_tag type=ram_2p impl=bram

    // Clear tags once per invocation.  Thereafter each row is initialized by
    // tags, not by an O(n) external-memory clear.
    for (lslu_id_t j = 0; j < n; ++j) {
#pragma HLS PIPELINE II=1
        pattern_tag[j] = 0;
        work_tag[j] = 0;
    }

    for (lslu_id_t i = 0; i < n; ++i) {
        const lslu_id_t tag = i + 1;

        // Register the legal sparse pattern.  Only the tag is written here;
        // work_local is materialized lazily when it is first read or updated.
        for (lslu_id_t p = l_ptr[i]; p < l_ptr[i + 1]; ++p) {
#pragma HLS PIPELINE II=1
            pattern_tag[l_idx[p]] = tag;
        }
        for (lslu_id_t p = u_ptr[i]; p < u_ptr[i + 1]; ++p) {
#pragma HLS PIPELINE II=1
            pattern_tag[u_idx[p]] = tag;
        }

        // Load the current A row into the local sparse accumulator.
        for (lslu_id_t p = a_ptr[i]; p < a_ptr[i + 1]; ++p) {
#pragma HLS PIPELINE II=1
            const lslu_id_t c = a_idx[p];
            if (c >= n || pattern_tag[c] != tag) {
                *status = LSLU_PATTERN_MISS;
                return;
            }
            if (work_tag[c] != tag) {
                work_local[c] = 0.0f;
                work_tag[c] = tag;
            }
            work_local[c] += a_val[p];
        }

        // Left-looking sparse elimination.  The arithmetic order is the same
        // as v1; only the workspace placement and initialization differ.
        for (lslu_id_t p = l_ptr[i]; p < l_ptr[i + 1]; ++p) {
            const lslu_id_t k = l_idx[p];
            if (k == i) {
                l_val[p] = 1.0f;
                continue;
            }
            if (k > i) continue;
            if (work_tag[k] != tag) {
                work_local[k] = 0.0f;
                work_tag[k] = tag;
            }
            const lslu_val_t pivot = u_val[u_diag_pos[k]];
            if (fabsf(pivot) <= pivot_eps) {
                *status = LSLU_ZERO_PIVOT;
                return;
            }
            const lslu_val_t lik = work_local[k] / pivot;
            l_val[p] = lik;
            ++*divisions;
            for (lslu_id_t q = u_diag_pos[k] + 1; q < u_ptr[k + 1]; ++q) {
#pragma HLS PIPELINE II=1
                const lslu_id_t j = u_idx[q];
                if (j >= n || pattern_tag[j] != tag) {
                    *status = LSLU_PATTERN_MISS;
                    return;
                }
                if (work_tag[j] != tag) {
                    work_local[j] = 0.0f;
                    work_tag[j] = tag;
                }
                work_local[j] -= lik * u_val[q];
                ++*muladds;
            }
        }

        // Materialize U in the prescribed sparse order.
        for (lslu_id_t p = u_ptr[i]; p < u_ptr[i + 1]; ++p) {
#pragma HLS PIPELINE II=1
            const lslu_id_t c = u_idx[p];
            if (work_tag[c] != tag) {
                work_local[c] = 0.0f;
                work_tag[c] = tag;
            }
            u_val[p] = work_local[c];
        }
        if (fabsf(u_val[u_diag_pos[i]]) <= pivot_eps) {
            *status = LSLU_ZERO_PIVOT;
            return;
        }
    }
}
