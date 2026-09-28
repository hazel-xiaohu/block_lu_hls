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
#pragma HLS INTERFACE m_axi port=a_ptr bundle=a0 depth=10975
#pragma HLS INTERFACE m_axi port=a_idx bundle=a1 depth=428650
#pragma HLS INTERFACE m_axi port=a_val bundle=a2 depth=428650
#pragma HLS INTERFACE m_axi port=l_ptr bundle=l0 depth=10975
#pragma HLS INTERFACE m_axi port=l_idx bundle=l1 depth=1596240
#pragma HLS INTERFACE m_axi port=l_val bundle=l2 depth=1596240
#pragma HLS INTERFACE m_axi port=u_ptr bundle=u0 depth=10975
#pragma HLS INTERFACE m_axi port=u_idx bundle=u1 depth=1596240
#pragma HLS INTERFACE m_axi port=u_val bundle=u2 depth=1596240
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=u3 depth=10974
#pragma HLS INTERFACE m_axi port=work bundle=w0 depth=10974
#pragma HLS INTERFACE m_axi port=mark bundle=w1 depth=10974
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
#pragma HLS INTERFACE m_axi port=l_ptr bundle=gl0 depth=5488
#pragma HLS INTERFACE m_axi port=l_idx bundle=gl1 depth=486353
#pragma HLS INTERFACE m_axi port=l_val bundle=gl2 depth=486353
#pragma HLS INTERFACE m_axi port=b_ptr bundle=gb0 depth=5488
#pragma HLS INTERFACE m_axi port=b_idx bundle=gb1 depth=3257
#pragma HLS INTERFACE m_axi port=b_val bundle=gb2 depth=3257
#pragma HLS INTERFACE m_axi port=x_ptr bundle=gx0 depth=5488
#pragma HLS INTERFACE m_axi port=x_idx bundle=gx1 depth=31698
#pragma HLS INTERFACE m_axi port=x_val_csc bundle=gx2 depth=31698
#pragma HLS INTERFACE m_axi port=x_csc_to_csr bundle=gx3 depth=31698
#pragma HLS INTERFACE m_axi port=x_val_csr bundle=gx4 depth=31698
#pragma HLS INTERFACE m_axi port=active_cols bundle=ga0 depth=5487
#pragma HLS INTERFACE m_axi port=work bundle=gw0 depth=5487
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
#pragma HLS INTERFACE m_axi port=u_col_ptr bundle=tu0 depth=5488
#pragma HLS INTERFACE m_axi port=u_row_idx bundle=tu1 depth=486353
#pragma HLS INTERFACE m_axi port=u_csr_val bundle=tu2 depth=486353
#pragma HLS INTERFACE m_axi port=u_csc_to_csr bundle=tu3 depth=486353
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=tu4 depth=5487
#pragma HLS INTERFACE m_axi port=b_ptr bundle=tb0 depth=5488
#pragma HLS INTERFACE m_axi port=b_idx bundle=tb1 depth=3257
#pragma HLS INTERFACE m_axi port=b_val bundle=tb2 depth=3257
#pragma HLS INTERFACE m_axi port=x_ptr bundle=tx0 depth=5488
#pragma HLS INTERFACE m_axi port=x_idx bundle=tx1 depth=31698
#pragma HLS INTERFACE m_axi port=x_val bundle=tx2 depth=31698
#pragma HLS INTERFACE m_axi port=active_rows bundle=ta0 depth=5487
#pragma HLS INTERFACE m_axi port=work bundle=tw0 depth=5487
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
#pragma HLS INTERFACE m_axi port=a_ptr bundle=sa0 depth=5488
#pragma HLS INTERFACE m_axi port=a_idx bundle=sa1 depth=230541
#pragma HLS INTERFACE m_axi port=a_val bundle=sa2 depth=230541
#pragma HLS INTERFACE m_axi port=l_ptr bundle=sl0 depth=5488
#pragma HLS INTERFACE m_axi port=l_idx bundle=sl1 depth=31698
#pragma HLS INTERFACE m_axi port=l_val bundle=sl2 depth=31698
#pragma HLS INTERFACE m_axi port=u_ptr bundle=su0 depth=5488
#pragma HLS INTERFACE m_axi port=u_idx bundle=su1 depth=31698
#pragma HLS INTERFACE m_axi port=u_val bundle=su2 depth=31698
#pragma HLS INTERFACE m_axi port=s_ptr bundle=ss0 depth=5488
#pragma HLS INTERFACE m_axi port=s_idx bundle=ss1 depth=285015
#pragma HLS INTERFACE m_axi port=s_val bundle=ss2 depth=285015
#pragma HLS INTERFACE m_axi port=work bundle=sw0 depth=5487
#pragma HLS INTERFACE m_axi port=mark bundle=sw1 depth=5487
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
