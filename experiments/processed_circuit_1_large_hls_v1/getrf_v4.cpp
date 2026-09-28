#include "getrf_v4.h"
#include <math.h>
static const lslu_id_t V4_MAX_N=4096;
static const lslu_id_t V4_LANES=4;
static const lslu_id_t V4_BANK_N=(V4_MAX_N+V4_LANES-1)/V4_LANES;
static const lslu_id_t V4_MAX_ROW_NNZ=8192;
#define WB(j) work_bank[(j)&3][(j)>>2]
#define PT(j) pattern_bank[(j)&3][(j)>>2]
#define WT(j) worktag_bank[(j)&3][(j)>>2]
extern "C" void large_getrf_v4(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos, lslu_id_t n, lslu_val_t pivot_eps,
    lslu_id_t *status, uint64_t *muladds, uint64_t *divisions) {
#pragma HLS INTERFACE m_axi port=a_ptr bundle=v4a0 depth=2625
#pragma HLS INTERFACE m_axi port=a_idx bundle=v4a1 depth=45624
#pragma HLS INTERFACE m_axi port=a_val bundle=v4a2 depth=45624
#pragma HLS INTERFACE m_axi port=l_ptr bundle=v4l0 depth=2625
#pragma HLS INTERFACE m_axi port=l_idx bundle=v4l1 depth=24124
#pragma HLS INTERFACE m_axi port=l_val bundle=v4l2 depth=24124
#pragma HLS INTERFACE m_axi port=u_ptr bundle=v4u0 depth=2625
#pragma HLS INTERFACE m_axi port=u_idx bundle=v4u1 depth=24124
#pragma HLS INTERFACE m_axi port=u_val bundle=v4u2 depth=24124
#pragma HLS INTERFACE m_axi port=u_diag_pos bundle=v4u3 depth=2624
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
// output pointer uses the default ap_vld interface0 depth=1
// output pointer uses the default ap_vld interface1 depth=1
// output pointer uses the default ap_vld interface2 depth=1
#pragma HLS INTERFACE s_axilite port=return bundle=control
    *status=LSLU_OK;*muladds=0;*divisions=0;
    if(!n || n>V4_MAX_N){*status=LSLU_BAD_SIZE;return;}
    lslu_val_t work_bank[V4_LANES][V4_BANK_N];
    lslu_id_t pattern_bank[V4_LANES][V4_BANK_N], worktag_bank[V4_LANES][V4_BANK_N];
    lslu_val_t inv_diag[V4_MAX_N];
    lslu_id_t row_idx[V4_MAX_ROW_NNZ]; lslu_val_t row_val[V4_MAX_ROW_NNZ];
#pragma HLS ARRAY_PARTITION variable=work_bank complete dim=1
#pragma HLS ARRAY_PARTITION variable=pattern_bank complete dim=1
#pragma HLS ARRAY_PARTITION variable=worktag_bank complete dim=1
#pragma HLS BIND_STORAGE variable=work_bank type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=pattern_bank type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=worktag_bank type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=inv_diag type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=row_idx type=ram_1p impl=bram
#pragma HLS BIND_STORAGE variable=row_val type=ram_1p impl=bram
    for(lslu_id_t j=0;j<n;++j){
#pragma HLS PIPELINE II=1
        PT(j)=0;WT(j)=0;inv_diag[j]=0;
    }
    for(lslu_id_t i=0;i<n;++i){
        const lslu_id_t tag=i+1;
        for(lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            PT(l_idx[p])=tag;
        }
        for(lslu_id_t p=u_ptr[i];p<u_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            PT(u_idx[p])=tag;
        }
        for(lslu_id_t p=a_ptr[i];p<a_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            const lslu_id_t c=a_idx[p];
            if(c>=n || PT(c)!=tag){*status=LSLU_PATTERN_MISS;return;}
            if(WT(c)!=tag){WB(c)=0;WT(c)=tag;}
            WB(c)+=a_val[p];
        }
        for(lslu_id_t p=l_ptr[i];p<l_ptr[i+1];++p){
            const lslu_id_t k=l_idx[p];
            if(k==i){l_val[p]=1.0f;continue;}
            if(k>i)continue;
            if(WT(k)!=tag){WB(k)=0;WT(k)=tag;}
            const lslu_val_t pivot=u_val[u_diag_pos[k]];
            if(fabsf(pivot)<=pivot_eps){*status=LSLU_ZERO_PIVOT;return;}
            const lslu_val_t lik=WB(k)*inv_diag[k];
            l_val[p]=lik;++*muladds;
            const lslu_id_t q0=u_diag_pos[k]+1, q1=u_ptr[k+1];
            const lslu_id_t rn=q1-q0;
            if(rn>V4_MAX_ROW_NNZ){*status=LSLU_BAD_SIZE;return;}
            for(lslu_id_t r=0;r<rn;++r){
#pragma HLS PIPELINE II=1
                row_idx[r]=u_idx[q0+r];row_val[r]=u_val[q0+r];
            }
            for(lslu_id_t base=0;base<rn;base+=V4_LANES){
                lslu_id_t js[V4_LANES];lslu_val_t vs[V4_LANES];bool valid[V4_LANES];
#pragma HLS ARRAY_PARTITION variable=js complete
#pragma HLS ARRAY_PARTITION variable=vs complete
#pragma HLS ARRAY_PARTITION variable=valid complete
                bool conflict=false;
                for(lslu_id_t lane=0;lane<V4_LANES;++lane){
#pragma HLS UNROLL
                    valid[lane]=(base+lane<rn);
                    js[lane]=valid[lane]?row_idx[base+lane]:0;
                    vs[lane]=valid[lane]?row_val[base+lane]:0;
                    if(valid[lane] && (js[lane]>=n || PT(js[lane])!=tag))*status=LSLU_PATTERN_MISS;
                }
                if(*status!=LSLU_OK)return;
                for(lslu_id_t a=0;a<V4_LANES;++a)for(lslu_id_t b=a+1;b<V4_LANES;++b)
                    if(valid[a]&&valid[b]&&((js[a]&3)==(js[b]&3)))conflict=true;
                if(conflict){
                    for(lslu_id_t lane=0;lane<V4_LANES;++lane)if(valid[lane]){
                        const lslu_id_t j=js[lane];
                        if(WT(j)!=tag){WB(j)=0;WT(j)=tag;}
                        WB(j)-=lik*vs[lane];++*muladds;
                    }
                }else{
                    for(lslu_id_t lane=0;lane<V4_LANES;++lane)if(valid[lane]){
#pragma HLS UNROLL
                        const lslu_id_t j=js[lane];
                        if(WT(j)!=tag){WB(j)=0;WT(j)=tag;}
                        WB(j)-=lik*vs[lane];++*muladds;
                    }
                }
            }
        }
        for(lslu_id_t p=u_ptr[i];p<u_ptr[i+1];++p){
#pragma HLS PIPELINE II=1
            const lslu_id_t c=u_idx[p];
            if(WT(c)!=tag){WB(c)=0;WT(c)=tag;}
            u_val[p]=WB(c);
        }
        const lslu_val_t pivot=u_val[u_diag_pos[i]];
        if(fabsf(pivot)<=pivot_eps){*status=LSLU_ZERO_PIVOT;return;}
        inv_diag[i]=1.0f/pivot;++*divisions;
    }
}
