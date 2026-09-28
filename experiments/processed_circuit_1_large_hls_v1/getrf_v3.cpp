#include "getrf_v3.h"
#include <math.h>
static const lslu_id_t GETRF_V3_MAX_N=4096;
extern "C" void large_getrf_v3(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos, lslu_id_t n, lslu_val_t pivot_eps,
    lslu_id_t *status, uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=a_ptr bundle=v3a0 depth=4097
#pragma HLS INTERFACE m_axi port=a_idx bundle=v3a1 depth=65536
#pragma HLS INTERFACE m_axi port=a_val bundle=v3a2 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr bundle=v3l0 depth=4097
#pragma HLS INTERFACE m_axi port=l_idx bundle=v3l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_val bundle=v3l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr bundle=v3u0 depth=4097
#pragma HLS INTERFACE m_axi port=u_idx bundle=v3u1 depth=65536
#pragma HLS INTERFACE m_axi port=u_val bundle=v3u2 depth=65536
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=v3u3 depth=4096
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
// output pointer uses the default ap_vld interface0 depth=1
// output pointer uses the default ap_vld interface1 depth=1
// output pointer uses the default ap_vld interface2 depth=1
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK; *muladds=0; *divisions=0;
    if (!n || n>GETRF_V3_MAX_N) { *status=LSLU_BAD_SIZE; return; }
    lslu_val_t w[GETRF_V3_MAX_N], inv_diag[GETRF_V3_MAX_N];
    lslu_id_t pt[GETRF_V3_MAX_N], wt[GETRF_V3_MAX_N];
#pragma HLS BIND_STORAGE variable=w type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=inv_diag type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=pt type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=wt type=ram_2p impl=bram
    for(lslu_id_t j=0;j<n;++j){
#pragma HLS PIPELINE II=1
        pt[j]=0; wt[j]=0; inv_diag[j]=0;
    }
    for(lslu_id_t i=0;i<n;++i){
        const lslu_id_t tag=i+1;
        for(lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            pt[l_idx[p]]=tag;
        }
        for(lslu_id_t p=u_ptr[i];p<u_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            pt[u_idx[p]]=tag;
        }
        for(lslu_id_t p=a_ptr[i];p<a_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            const lslu_id_t c=a_idx[p];
            if(c>=n || pt[c]!=tag){*status=LSLU_PATTERN_MISS;return;}
            if(wt[c]!=tag){w[c]=0;wt[c]=tag;}
            w[c]+=a_val[p];
        }
        for(lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p){
            const lslu_id_t k=l_idx[p];
            if(k==i){l_val[p]=1.0f;continue;}
            if(k>i)continue;
            if(wt[k]!=tag){w[k]=0;wt[k]=tag;}
            const lslu_val_t pivot=u_val[u_diag_pos[k]];
            if(fabsf(pivot)<=pivot_eps){*status=LSLU_ZERO_PIVOT;return;}
            const lslu_val_t lik=w[k]*inv_diag[k];
            l_val[p]=lik;++*muladds;
            for(lslu_id_t q=u_diag_pos[k]+1;q<u_ptr[k+1];++q){
#pragma HLS PIPELINE II=1
                const lslu_id_t j=u_idx[q];
                if(j>=n || pt[j]!=tag){*status=LSLU_PATTERN_MISS;return;}
                if(wt[j]!=tag){w[j]=0;wt[j]=tag;}
                w[j]-=lik*u_val[q];++*muladds;
            }
        }
        for(lslu_id_t p=u_ptr[i];p<u_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            const lslu_id_t c=u_idx[p];
            if(wt[c]!=tag){w[c]=0;wt[c]=tag;}
            u_val[p]=w[c];
        }
        const lslu_val_t pivot=u_val[u_diag_pos[i]];
        if(fabsf(pivot)<=pivot_eps){*status=LSLU_ZERO_PIVOT;return;}
        inv_diag[i]=1.0f/pivot;++*divisions;
    }
}
