#include "large_sparse_lu.h"
#include <math.h>

// All large arrays reside in external memory.  The kernels use one O(n)
// workspace and never instantiate the legacy O(n^2) position tables.

extern "C" void large_getrf(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos, lslu_val_t *work, lslu_id_t *mark,
    lslu_id_t n, lslu_val_t pivot_eps, lslu_id_t *status,
    uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=a_ptr bundle=a0 depth=2625
#pragma HLS INTERFACE m_axi port=a_idx bundle=a1 depth=45624
#pragma HLS INTERFACE m_axi port=a_val bundle=a2 depth=45624
#pragma HLS INTERFACE m_axi port=l_ptr bundle=l0 depth=2625
#pragma HLS INTERFACE m_axi port=l_idx bundle=l1 depth=24124
#pragma HLS INTERFACE m_axi port=l_val bundle=l2 depth=24124
#pragma HLS INTERFACE m_axi port=u_ptr bundle=u0 depth=2625
#pragma HLS INTERFACE m_axi port=u_idx bundle=u1 depth=24124
#pragma HLS INTERFACE m_axi port=u_val bundle=u2 depth=24124
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=u3 depth=2624
#pragma HLS INTERFACE m_axi port=work bundle=w0 depth=2624
#pragma HLS INTERFACE m_axi port=mark bundle=w1 depth=2624
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK; *muladds=0; *divisions=0;
    if (!n) { *status=LSLU_BAD_SIZE; return; }
    for (lslu_id_t i=0; i<n; ++i) {
        const lslu_id_t tag=i+1;
        for (lslu_id_t p=l_ptr[i]; p<l_ptr[i+1]; ++p) {
#pragma HLS PIPELINE II=1
            const lslu_id_t c=l_idx[p]; work[c]=0; mark[c]=tag;
        }
        for (lslu_id_t p=u_ptr[i]; p<u_ptr[i+1]; ++p) {
#pragma HLS PIPELINE II=1
            const lslu_id_t c=u_idx[p]; work[c]=0; mark[c]=tag;
        }
        for (lslu_id_t p=a_ptr[i]; p<a_ptr[i+1]; ++p) {
#pragma HLS PIPELINE II=1
            const lslu_id_t c=a_idx[p];
            if (mark[c]!=tag) { *status=LSLU_PATTERN_MISS; return; }
            work[c]+=a_val[p];
        }
        for (lslu_id_t p=l_ptr[i]; p<l_ptr[i+1]; ++p) {
            const lslu_id_t k=l_idx[p];
            if (k==i) { l_val[p]=1.0f; continue; }
            if (k>i) continue;
            const lslu_val_t pivot=u_val[u_diag_pos[k]];
            if (fabsf(pivot)<=pivot_eps) { *status=LSLU_ZERO_PIVOT; return; }
            const lslu_val_t lik=work[k]/pivot; l_val[p]=lik; ++*divisions;
            for (lslu_id_t q=u_diag_pos[k]+1; q<u_ptr[k+1]; ++q) {
#pragma HLS PIPELINE II=1
                const lslu_id_t j=u_idx[q];
                if (mark[j]!=tag) { *status=LSLU_PATTERN_MISS; return; }
                work[j]-=lik*u_val[q]; ++*muladds;
            }
        }
        for (lslu_id_t p=u_ptr[i]; p<u_ptr[i+1]; ++p) {
#pragma HLS PIPELINE II=1
            u_val[p]=work[u_idx[p]];
        }
        if (fabsf(u_val[u_diag_pos[i]])<=pivot_eps) {
            *status=LSLU_ZERO_PIVOT; return;
        }
    }
}

extern "C" void large_gessm(
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, const lslu_val_t *l_val,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val_csc,
    const lslu_id_t *x_csc_to_csr, lslu_val_t *x_val_csr,
    const lslu_id_t *active_cols, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_id_t *status, uint64_t *muladds) {
#pragma HLS INTERFACE m_axi port=l_ptr bundle=gl0 depth=1313
#pragma HLS INTERFACE m_axi port=l_idx bundle=gl1 depth=4106
#pragma HLS INTERFACE m_axi port=l_val bundle=gl2 depth=4106
#pragma HLS INTERFACE m_axi port=b_ptr bundle=gb0 depth=1313
#pragma HLS INTERFACE m_axi port=b_idx bundle=gb1 depth=7063
#pragma HLS INTERFACE m_axi port=b_val bundle=gb2 depth=7063
#pragma HLS INTERFACE m_axi port=x_ptr bundle=gx0 depth=1313
#pragma HLS INTERFACE m_axi port=x_idx bundle=gx1 depth=6997
#pragma HLS INTERFACE m_axi port=x_val_csc bundle=gx2 depth=6997
#pragma HLS INTERFACE m_axi port=x_csc_to_csr bundle=gx3 depth=6997
#pragma HLS INTERFACE m_axi port=x_val_csr bundle=gx4 depth=6997
#pragma HLS INTERFACE m_axi port=active_cols bundle=ga0 depth=1312
#pragma HLS INTERFACE m_axi port=work bundle=gw0 depth=1312
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK; *muladds=0;
    for (lslu_id_t ac=0; ac<active_count; ++ac) {
        const lslu_id_t col=active_cols[ac];
        for (lslu_id_t i=0;i<n;++i) work[i]=0;
        for (lslu_id_t p=b_ptr[col];p<b_ptr[col+1];++p) work[b_idx[p]]+=b_val[p];
        for (lslu_id_t i=0;i<n;++i)
            for (lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p) {
                const lslu_id_t k=l_idx[p]; if (k>=i) break;
                work[i]-=l_val[p]*work[k]; ++*muladds;
            }
        for (lslu_id_t p=x_ptr[col];p<x_ptr[col+1];++p) {
            const lslu_val_t v=work[x_idx[p]];
            x_val_csc[p]=v; x_val_csr[x_csc_to_csr[p]]=v;
        }
    }
}

extern "C" void large_tstrf(
    const lslu_id_t *u_col_ptr, const lslu_id_t *u_row_idx,
    const lslu_val_t *u_csr_val, const lslu_id_t *u_csc_to_csr,
    const lslu_id_t *u_diag_pos,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val,
    const lslu_id_t *active_rows, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_val_t pivot_eps,
    lslu_id_t *status, uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=u_col_ptr bundle=tu0 depth=1313
#pragma HLS INTERFACE m_axi port=u_row_idx bundle=tu1 depth=4146
#pragma HLS INTERFACE m_axi port=u_csr_val bundle=tu2 depth=4146
#pragma HLS INTERFACE m_axi port=u_csc_to_csr bundle=tu3 depth=4146
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=tu4 depth=1312
#pragma HLS INTERFACE m_axi port=b_ptr bundle=tb0 depth=1313
#pragma HLS INTERFACE m_axi port=b_idx bundle=tb1 depth=7063
#pragma HLS INTERFACE m_axi port=b_val bundle=tb2 depth=7063
#pragma HLS INTERFACE m_axi port=x_ptr bundle=tx0 depth=1313
#pragma HLS INTERFACE m_axi port=x_idx bundle=tx1 depth=7030
#pragma HLS INTERFACE m_axi port=x_val bundle=tx2 depth=7030
#pragma HLS INTERFACE m_axi port=active_rows bundle=ta0 depth=1312
#pragma HLS INTERFACE m_axi port=work bundle=tw0 depth=1312
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK; *muladds=0; *divisions=0;
    for (lslu_id_t ar=0; ar<active_count; ++ar) {
        const lslu_id_t row=active_rows[ar];
        for (lslu_id_t j=0;j<n;++j) work[j]=0;
        for (lslu_id_t p=b_ptr[row];p<b_ptr[row+1];++p) work[b_idx[p]]+=b_val[p];
        for (lslu_id_t j=0;j<n;++j) {
            for (lslu_id_t p=u_col_ptr[j];p<u_col_ptr[j+1];++p) {
                const lslu_id_t k=u_row_idx[p]; if (k>=j) break;
                work[j]-=work[k]*u_csr_val[u_csc_to_csr[p]]; ++*muladds;
            }
            const lslu_val_t pivot=u_csr_val[u_csc_to_csr[u_diag_pos[j]]];
            if (fabsf(pivot)<=pivot_eps) { *status=LSLU_ZERO_PIVOT; return; }
            work[j]/=pivot; ++*divisions;
        }
        for (lslu_id_t p=x_ptr[row];p<x_ptr[row+1];++p) x_val[p]=work[x_idx[p]];
    }
}

extern "C" void large_ssssm(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, const lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, const lslu_val_t *u_val,
    const lslu_id_t *s_ptr, const lslu_id_t *s_idx, lslu_val_t *s_val,
    lslu_val_t *work, lslu_id_t *mark, lslu_id_t rows,
    lslu_id_t *status, uint64_t *muladds) {
#pragma HLS INTERFACE m_axi port=a_ptr bundle=sa0 depth=1313
#pragma HLS INTERFACE m_axi port=a_idx bundle=sa1 depth=24512
#pragma HLS INTERFACE m_axi port=a_val bundle=sa2 depth=24512
#pragma HLS INTERFACE m_axi port=l_ptr bundle=sl0 depth=1313
#pragma HLS INTERFACE m_axi port=l_idx bundle=sl1 depth=7030
#pragma HLS INTERFACE m_axi port=l_val bundle=sl2 depth=7030
#pragma HLS INTERFACE m_axi port=u_ptr bundle=su0 depth=1313
#pragma HLS INTERFACE m_axi port=u_idx bundle=su1 depth=6997
#pragma HLS INTERFACE m_axi port=u_val bundle=su2 depth=6997
#pragma HLS INTERFACE m_axi port=s_ptr bundle=ss0 depth=1313
#pragma HLS INTERFACE m_axi port=s_idx bundle=ss1 depth=24512
#pragma HLS INTERFACE m_axi port=s_val bundle=ss2 depth=24512
#pragma HLS INTERFACE m_axi port=work bundle=sw0 depth=1312
#pragma HLS INTERFACE m_axi port=mark bundle=sw1 depth=1312
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK; *muladds=0;
    for (lslu_id_t i=0;i<rows;++i) {
        const lslu_id_t tag=i+1;
        for (lslu_id_t p=s_ptr[i];p<s_ptr[i+1];++p) {
            const lslu_id_t j=s_idx[p]; work[j]=0; mark[j]=tag;
        }
        for (lslu_id_t p=a_ptr[i];p<a_ptr[i+1];++p) {
            const lslu_id_t j=a_idx[p];
            if (mark[j]!=tag) { *status=LSLU_PATTERN_MISS; return; }
            work[j]+=a_val[p];
        }
        for (lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p) {
            const lslu_id_t k=l_idx[p]; const lslu_val_t lv=l_val[p];
            for (lslu_id_t q=u_ptr[k];q<u_ptr[k+1];++q) {
                const lslu_id_t j=u_idx[q];
                if (mark[j]!=tag) { *status=LSLU_PATTERN_MISS; return; }
                work[j]-=lv*u_val[q]; ++*muladds;
            }
        }
        for (lslu_id_t p=s_ptr[i];p<s_ptr[i+1];++p) s_val[p]=work[s_idx[p]];
    }
}

// ---------------------------------------------------------------------------
// v2 sparse triangular kernels
//
// v1 keeps all factor/work arrays in external memory.  v2 retains the exact
// call signature, but caches the repeatedly used triangular factor and gives
// each RHS lane a private on-chip work vector.  The lane count is deliberately
// small: it is a compile-time architectural knob, not an interface change.
// ---------------------------------------------------------------------------
#ifndef LSLU_V2_LANES
#define LSLU_V2_LANES 4
#endif
#ifndef LSLU_V2_MAX_N
#define LSLU_V2_MAX_N 2624
#endif
#ifndef LSLU_V2_MAX_NNZ
#define LSLU_V2_MAX_NNZ 8192
#endif

extern "C" void large_gessm_v2(
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, const lslu_val_t *l_val,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val_csc,
    const lslu_id_t *x_csc_to_csr, lslu_val_t *x_val_csr,
    const lslu_id_t *active_cols, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_id_t *status, uint64_t *muladds) {
#pragma HLS INTERFACE m_axi port=l_ptr bundle=v2gl0 depth=2625
#pragma HLS INTERFACE m_axi port=l_idx bundle=v2gl1 depth=8192
#pragma HLS INTERFACE m_axi port=l_val bundle=v2gl2 depth=8192
#pragma HLS INTERFACE m_axi port=b_ptr bundle=v2gb0 depth=2625
#pragma HLS INTERFACE m_axi port=b_idx bundle=v2gb1 depth=8192
#pragma HLS INTERFACE m_axi port=b_val bundle=v2gb2 depth=8192
#pragma HLS INTERFACE m_axi port=x_ptr bundle=v2gx0 depth=2625
#pragma HLS INTERFACE m_axi port=x_idx bundle=v2gx1 depth=8192
#pragma HLS INTERFACE m_axi port=x_val_csc bundle=v2gx2 depth=8192
#pragma HLS INTERFACE m_axi port=x_csc_to_csr bundle=v2gx3 depth=8192
#pragma HLS INTERFACE m_axi port=x_val_csr bundle=v2gx4 depth=8192
#pragma HLS INTERFACE m_axi port=active_cols bundle=v2ga0 depth=2624
#pragma HLS INTERFACE m_axi port=work bundle=v2gw0 depth=2624
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status = LSLU_OK; *muladds = 0;
    if (!n || n > LSLU_V2_MAX_N || active_count > LSLU_V2_MAX_N) {
        *status = LSLU_BAD_SIZE; return;
    }
    lslu_id_t lp[LSLU_V2_MAX_N + 1];
    lslu_id_t li[LSLU_V2_MAX_NNZ];
    lslu_val_t lv[LSLU_V2_MAX_NNZ];
    lslu_val_t w[LSLU_V2_LANES][LSLU_V2_MAX_N];
    uint64_t lane_ma[LSLU_V2_LANES];
#pragma HLS BIND_STORAGE variable=lp type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=li type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=lv type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=w type=ram_2p impl=bram
#pragma HLS ARRAY_PARTITION variable=w complete dim=1
#pragma HLS ARRAY_PARTITION variable=lane_ma complete dim=1
    for (lslu_id_t i=0; i<=n; ++i) lp[i] = l_ptr[i];
    if (lp[n] > LSLU_V2_MAX_NNZ) { *status = LSLU_BAD_SIZE; return; }
    for (lslu_id_t p=0; p<lp[n]; ++p) { li[p]=l_idx[p]; lv[p]=l_val[p]; }
    for (lslu_id_t base=0; base<active_count; base+=LSLU_V2_LANES) {
        for (lslu_id_t lane=0; lane<LSLU_V2_LANES; ++lane) {
#pragma HLS UNROLL
            lane_ma[lane] = 0;
            if (base + lane >= active_count) continue;
            const lslu_id_t col = active_cols[base + lane];
            if (col >= n) { *status = LSLU_BAD_SIZE; continue; }
            for (lslu_id_t i=0; i<n; ++i) {
#pragma HLS PIPELINE II=1
                w[lane][i] = 0;
            }
            for (lslu_id_t p=b_ptr[col]; p<b_ptr[col+1]; ++p) {
#pragma HLS PIPELINE II=1
                w[lane][b_idx[p]] += b_val[p];
            }
            for (lslu_id_t i=0; i<n; ++i) {
                for (lslu_id_t p=lp[i]; p<lp[i+1]; ++p) {
                    const lslu_id_t k=li[p];
                    if (k>=i) break;
                    w[lane][i] -= lv[p]*w[lane][k];
                    ++lane_ma[lane];
                }
            }
            for (lslu_id_t p=x_ptr[col]; p<x_ptr[col+1]; ++p) {
#pragma HLS PIPELINE II=1
                const lslu_val_t v=w[lane][x_idx[p]];
                x_val_csc[p]=v; x_val_csr[x_csc_to_csr[p]]=v;
            }
        }
        for (lslu_id_t lane=0; lane<LSLU_V2_LANES; ++lane) {
#pragma HLS UNROLL
            *muladds += lane_ma[lane];
        }
    }
}

extern "C" void large_tstrf_v2(
    const lslu_id_t *u_col_ptr, const lslu_id_t *u_row_idx,
    const lslu_val_t *u_csr_val, const lslu_id_t *u_csc_to_csr,
    const lslu_id_t *u_diag_pos,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val,
    const lslu_id_t *active_rows, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_val_t pivot_eps,
    lslu_id_t *status, uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=u_col_ptr bundle=v2tu0 depth=2625
#pragma HLS INTERFACE m_axi port=u_row_idx bundle=v2tu1 depth=8192
#pragma HLS INTERFACE m_axi port=u_csr_val bundle=v2tu2 depth=8192
#pragma HLS INTERFACE m_axi port=u_csc_to_csr bundle=v2tu3 depth=8192
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=v2tu4 depth=2624
#pragma HLS INTERFACE m_axi port=b_ptr bundle=v2tb0 depth=2625
#pragma HLS INTERFACE m_axi port=b_idx bundle=v2tb1 depth=8192
#pragma HLS INTERFACE m_axi port=b_val bundle=v2tb2 depth=8192
#pragma HLS INTERFACE m_axi port=x_ptr bundle=v2tx0 depth=2625
#pragma HLS INTERFACE m_axi port=x_idx bundle=v2tx1 depth=8192
#pragma HLS INTERFACE m_axi port=x_val bundle=v2tx2 depth=8192
#pragma HLS INTERFACE m_axi port=active_rows bundle=v2ta0 depth=2624
#pragma HLS INTERFACE m_axi port=work bundle=v2tw0 depth=2624
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status = LSLU_OK; *muladds = 0; *divisions = 0;
    if (!n || n > LSLU_V2_MAX_N || active_count > LSLU_V2_MAX_N) {
        *status = LSLU_BAD_SIZE; return;
    }
    lslu_id_t up[LSLU_V2_MAX_N + 1], ur[LSLU_V2_MAX_NNZ], um[LSLU_V2_MAX_NNZ], ud[LSLU_V2_MAX_N];
    lslu_val_t uv[LSLU_V2_MAX_NNZ];
    // One reciprocal per diagonal is shared by all RHS lanes and active rows.
    // This replaces the old per-lane/per-row division with one division per
    // diagonal followed by cheap multiplications.
    lslu_val_t diag_recip[LSLU_V2_MAX_N];
    lslu_val_t w[LSLU_V2_LANES][LSLU_V2_MAX_N];
    uint64_t lane_ma[LSLU_V2_LANES];
#pragma HLS BIND_STORAGE variable=up type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=ur type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=um type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=ud type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=uv type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=diag_recip type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=w type=ram_2p impl=bram
#pragma HLS ARRAY_PARTITION variable=w complete dim=1
#pragma HLS ARRAY_PARTITION variable=lane_ma complete dim=1
    for (lslu_id_t j=0; j<=n; ++j) up[j]=u_col_ptr[j];
    if (up[n] > LSLU_V2_MAX_NNZ) { *status = LSLU_BAD_SIZE; return; }
    for (lslu_id_t j=0; j<n; ++j) ud[j]=u_diag_pos[j];
    for (lslu_id_t p=0; p<up[n]; ++p) {
        ur[p]=u_row_idx[p]; uv[p]=u_csr_val[u_csc_to_csr[p]]; um[p]=u_csc_to_csr[p];
    }
    // The diagonal is invariant across all active rows and lanes. Compute its
    // reciprocal once, then reuse it for every row normalization. The output
    // counter now reports actual reciprocal divisions (n diagonals), rather
    // than counting the equivalent per-row divisions.
    for (lslu_id_t j=0; j<n; ++j) {
#pragma HLS PIPELINE II=16
        const lslu_id_t dp=ud[j];
        const lslu_val_t diag_val=(dp < up[n]) ? uv[dp] : 0.0f;
        if (fabsf(diag_val)<=pivot_eps) {
            diag_recip[j]=0.0f;
            *status=LSLU_ZERO_PIVOT;
        } else {
            diag_recip[j]=1.0f/diag_val;
            ++*divisions;
        }
    }
    for (lslu_id_t base=0; base<active_count; base+=LSLU_V2_LANES) {
        for (lslu_id_t lane=0; lane<LSLU_V2_LANES; ++lane) {
#pragma HLS UNROLL
            lane_ma[lane]=0;
            if (base + lane >= active_count) continue;
            const lslu_id_t row=active_rows[base+lane];
            if (row>=n) { *status=LSLU_BAD_SIZE; continue; }
            for (lslu_id_t j=0; j<n; ++j) {
#pragma HLS PIPELINE II=1
                w[lane][j]=0;
            }
            for (lslu_id_t p=b_ptr[row]; p<b_ptr[row+1]; ++p) {
#pragma HLS PIPELINE II=1
                w[lane][b_idx[p]] += b_val[p];
            }
            for (lslu_id_t j=0; j<n; ++j) {
                for (lslu_id_t p=up[j]; p<up[j+1]; ++p) {
                    const lslu_id_t k=ur[p];
                    if (k>=j) break;
                    w[lane][j] -= w[lane][k]*uv[p];
                    ++lane_ma[lane];
                }
                // Reuse the diagonal reciprocal computed above. This is a
                // multiply, not a new divide, for every active row/lane.
                w[lane][j] *= diag_recip[j];
            }
            for (lslu_id_t p=x_ptr[row]; p<x_ptr[row+1]; ++p) {
#pragma HLS PIPELINE II=1
                x_val[p]=w[lane][x_idx[p]];
            }
        }
        for (lslu_id_t lane=0; lane<LSLU_V2_LANES; ++lane) {
#pragma HLS UNROLL
            *muladds += lane_ma[lane];
        }
    }
}
