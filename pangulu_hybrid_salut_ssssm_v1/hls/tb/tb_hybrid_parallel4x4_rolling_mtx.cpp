#include "hybrid_parallel4x4_rolling.h"
#include "pb_mtx_flat_adapter.hpp"

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

static pb_global_matrix_desc make_desc(const pb_mtx_flat_matrix_record &m)
{
    pb_global_matrix_desc d={};
    d.rows=m.rows;d.cols=m.cols;d.nnz=m.nnz;d.packed_words=m.packed_words;
    d.ptr_offset=m.ptr_offset;d.ptr_length=m.ptr_length;
    d.pack_ptr_offset=m.pack_ptr_offset;d.pack_ptr_length=m.pack_ptr_length;
    d.lane_offset=m.lane_offset;d.lane_length=m.lane_length;
    return d;
}

static pb_global_worker_cmd make_cmd(const pb_mtx_flat_task_record &t,
                                     pb_hls_u32 id)
{
    pb_global_worker_cmd c={};c.task_id=id;c.kind=t.kind;
    c.pe_id=t.kind==PB_LU_SHARED_SSSSM?4U:0U;
    c.a_matrix=t.a_matrix;c.l_matrix=t.l_matrix;c.u_matrix=t.u_matrix;
    c.a_rows=t.a_rows;c.a_cols=t.a_cols;c.shared_dim=t.shared_dim;
    c.pivot_eps=t.pivot_eps;return c;
}

static bool run_oracle(const pb_mtx_flat_image &image,
                       const std::vector<pb_global_matrix_desc> &desc,
                       std::vector<pb_hls_lword> &x0,
                       std::vector<pb_hls_lword> &x1,
                       std::vector<pb_hls_lword> &x2,
                       std::vector<pb_hls_lword> &x3)
{
    std::vector<pb_hls_u32> rem(image.task_count),queue(image.task_count);
    pb_hls_u32 head=0U,tail=0U,done=0U;
    for(pb_hls_u32 t=0U;t<image.task_count;++t){
        rem[t]=image.tasks[t].dependency_count;if(!rem[t])queue[tail++]=t;
    }
    static pb_staged_slot slot;
    while(head<tail){
        const pb_hls_u32 t=queue[head++];const pb_global_worker_cmd c=make_cmd(image.tasks[t],t);
        pb_hls_u64 rb=0U,wb=0U;pb_hls_u32 status=~0U;
        pb_coherent_staged_dispatch_runtime(c,desc.data(),image.matrix_count,
            (pb_hls_u32)desc.size(),image.ptr_pool.data(),(pb_hls_u32)image.ptr_pool.size(),
            image.pack_ptr_pool.data(),(pb_hls_u32)image.pack_ptr_pool.size(),
            x0.data(),x1.data(),x2.data(),x3.data(),(pb_hls_u32)x0.size(),
            slot,rb,wb,status);
        if(status!=PB_HLS_OK){std::printf("PB_ROLL_MTX_ERROR oracle_task=%u status=%u\n",t,status);return false;}
        ++done;
        for(pb_hls_u32 e=image.successor_ptr[t];e<image.successor_ptr[t+1U];++e){
            const pb_hls_u32 s=image.successor_idx[e];
            if(s>=image.task_count||rem[s]==0U)return false;
            if(--rem[s]==0U)queue[tail++]=s;
        }
    }
    return done==image.task_count;
}

static void dag_width(const pb_mtx_flat_image &image,pb_hls_u32 &levels,
                      pb_hls_u32 &max_ready,pb_hls_u32 &max_lu,
                      pb_hls_u32 &max_ss)
{
    std::vector<pb_hls_u32> rem(image.task_count);
    std::vector<unsigned char> done(image.task_count,0U);
    for(pb_hls_u32 t=0U;t<image.task_count;++t)rem[t]=image.tasks[t].dependency_count;
    levels=max_ready=max_lu=max_ss=0U;pb_hls_u32 retired=0U;
    while(retired<image.task_count){
        std::vector<pb_hls_u32> ready;pb_hls_u32 lu=0U,ss=0U;
        for(pb_hls_u32 t=0U;t<image.task_count;++t)if(!done[t]&&!rem[t]){
            ready.push_back(t);if(image.tasks[t].kind==PB_LU_SHARED_SSSSM)++ss;else ++lu;
        }
        if(ready.empty())break;
        max_ready=std::max(max_ready,(pb_hls_u32)ready.size());
        max_lu=std::max(max_lu,lu);max_ss=std::max(max_ss,ss);++levels;
        for(pb_hls_u32 t:ready){done[t]=1U;++retired;
            for(pb_hls_u32 e=image.successor_ptr[t];e<image.successor_ptr[t+1U];++e)--rem[image.successor_idx[e]];}
    }
}

int main(int argc,char **argv)
{
    const char *flat=argc>1?argv[1]:
        "/output/pangulu_hybrid_salut_ssssm_v1/artifacts/rolling_top1024_nb256.flat.bin";
    pb_mtx_flat_image image;std::string error;
    if(pb_mtx_flat_read_binary(flat,image,error)!=0){
        std::printf("PB_ROLL_MTX_ERROR load=%s\n",error.c_str());return 1;
    }
    if(image.task_count>PB_ROLL_MAX_TASKS||image.edge_count>PB_ROLL_MAX_EDGES||
       image.matrix_count>PB_ROLL_MAX_MATRICES||image.ptr_pool.size()>PB_ROLL_PTR_POOL_CAP||
       image.pack_ptr_pool.size()>PB_ROLL_PACK_POOL_CAP||image.lane0_pool.size()>PB_ROLL_LANE_POOL_CAP){
        std::printf("PB_ROLL_MTX_ERROR capacity tasks=%u/%u edges=%u/%u matrices=%u/%u ptr=%zu/%u pack=%zu/%u lane=%zu/%u\n",
            image.task_count,(pb_hls_u32)PB_ROLL_MAX_TASKS,image.edge_count,(pb_hls_u32)PB_ROLL_MAX_EDGES,
            image.matrix_count,(pb_hls_u32)PB_ROLL_MAX_MATRICES,image.ptr_pool.size(),(pb_hls_u32)PB_ROLL_PTR_POOL_CAP,
            image.pack_ptr_pool.size(),(pb_hls_u32)PB_ROLL_PACK_POOL_CAP,image.lane0_pool.size(),(pb_hls_u32)PB_ROLL_LANE_POOL_CAP);
        return 2;
    }
    std::vector<pb_global_matrix_desc> desc(PB_ROLL_MAX_MATRICES);
    std::vector<pb_hls_u32> desc_words(PB_ROLL_MAX_MATRICES*PB_GLOBAL_DESC_WORDS,0U);
    for(pb_hls_u32 i=0U;i<image.matrix_count;++i){
        desc[i]=make_desc(image.matrices[i]);const pb_hls_u32 b=i*PB_GLOBAL_DESC_WORDS;
        desc_words[b+0U]=desc[i].rows;desc_words[b+1U]=desc[i].cols;
        desc_words[b+2U]=desc[i].nnz;desc_words[b+3U]=desc[i].packed_words;
        desc_words[b+4U]=desc[i].ptr_offset;desc_words[b+5U]=desc[i].ptr_length;
        desc_words[b+6U]=desc[i].pack_ptr_offset;desc_words[b+7U]=desc[i].pack_ptr_length;
        desc_words[b+8U]=desc[i].lane_offset;desc_words[b+9U]=desc[i].lane_length;
    }
    std::vector<pb_hls_u32> kind(PB_ROLL_MAX_TASKS),aid(PB_ROLL_MAX_TASKS),lid(PB_ROLL_MAX_TASKS),
        uid(PB_ROLL_MAX_TASKS),rows(PB_ROLL_MAX_TASKS),cols(PB_ROLL_MAX_TASKS),
        shared(PB_ROLL_MAX_TASKS),dep(PB_ROLL_MAX_TASKS),sp(PB_ROLL_MAX_TASKS+1U),si(PB_ROLL_MAX_EDGES);
    std::vector<pb_hls_f32> eps(PB_ROLL_MAX_TASKS,1.0e-6f);
    for(pb_hls_u32 t=0U;t<image.task_count;++t){const pb_mtx_flat_task_record &x=image.tasks[t];
        kind[t]=x.kind;aid[t]=x.a_matrix;lid[t]=x.l_matrix;uid[t]=x.u_matrix;
        rows[t]=x.a_rows;cols[t]=x.a_cols;shared[t]=x.shared_dim;dep[t]=x.dependency_count;eps[t]=x.pivot_eps;}
    std::copy(image.successor_ptr.begin(),image.successor_ptr.end(),sp.begin());
    std::copy(image.successor_idx.begin(),image.successor_idx.end(),si.begin());

    std::vector<pb_hls_u32> ptr(PB_ROLL_PTR_POOL_CAP),pack(PB_ROLL_PACK_POOL_CAP);
    std::copy(image.ptr_pool.begin(),image.ptr_pool.end(),ptr.begin());
    std::copy(image.pack_ptr_pool.begin(),image.pack_ptr_pool.end(),pack.begin());
    std::vector<pb_hls_lword> x0(PB_ROLL_LANE_POOL_CAP),x1(PB_ROLL_LANE_POOL_CAP),
        x2(PB_ROLL_LANE_POOL_CAP),x3(PB_ROLL_LANE_POOL_CAP);
    std::copy(image.lane0_pool.begin(),image.lane0_pool.end(),x0.begin());
    std::copy(image.lane1_pool.begin(),image.lane1_pool.end(),x1.begin());
    std::copy(image.lane2_pool.begin(),image.lane2_pool.end(),x2.begin());
    std::copy(image.lane3_pool.begin(),image.lane3_pool.end(),x3.begin());
    std::vector<pb_hls_lword> o0=image.lane0_pool,o1=image.lane1_pool,o2=image.lane2_pool,o3=image.lane3_pool;
    if(!run_oracle(image,desc,o0,o1,o2,o3))return 3;

    pb_hls_u32 issued=0U,completed=0U,max_inflight=0U,max_lu=0U,max_ss=0U,reissued=0U,errors=0U,status=~0U;
    pb_hls_u64 rb=0U,wb=0U;
    pb_hybrid_parallel4x4_rolling(kind.data(),aid.data(),lid.data(),uid.data(),rows.data(),cols.data(),
        shared.data(),eps.data(),dep.data(),sp.data(),si.data(),image.task_count,image.edge_count,
        desc_words.data(),image.matrix_count,ptr.data(),(pb_hls_u32)image.ptr_pool.size(),pack.data(),
        (pb_hls_u32)image.pack_ptr_pool.size(),x0.data(),x1.data(),x2.data(),x3.data(),
        (pb_hls_u32)image.lane0_pool.size(),issued,completed,max_inflight,max_lu,max_ss,reissued,rb,wb,errors,status);
    pb_hls_u64 structural=0U,numeric=0U;float max_abs=0.0f,max_rel=0.0f;
    for(size_t i=0;i<image.lane0_pool.size();++i){
        const pb_hls_lword ow[4]={o0[i],o1[i],o2[i],o3[i]},rw[4]={x0[i],x1[i],x2[i],x3[i]};
        for(unsigned l=0;l<4;++l){if(ow[l]==rw[l])continue;
            if((pb_hls_u32)ow[l]!=(pb_hls_u32)rw[l]){++structural;continue;}
            pb_hls_u32 ob=(pb_hls_u32)(ow[l]>>32U),rbits=(pb_hls_u32)(rw[l]>>32U);float of=0.0f,rf=0.0f;
            std::memcpy(&of,&ob,4);std::memcpy(&rf,&rbits,4);const float ae=std::fabs(of-rf),re=ae/(std::fabs(of)+1.0e-6f);
            max_abs=std::max(max_abs,ae);max_rel=std::max(max_rel,re);if(ae>1.0e-3f&&re>1.0e-4f)++numeric;
        }
    }
    pb_hls_u32 levels=0U,width=0U,width_lu=0U,width_ss=0U;dag_width(image,levels,width,width_lu,width_ss);
#ifdef PB_ROLL_DIAG_STUB_KERNEL
    /* The stub build intentionally does not update value lanes; use it only
     * to validate scheduler/FIFO termination, not arithmetic equivalence. */
    const bool ok=status==PB_HLS_OK&&!errors&&issued==image.task_count&&completed==image.task_count;
#else
    const bool ok=status==PB_HLS_OK&&!errors&&issued==image.task_count&&completed==image.task_count&&!structural&&!numeric;
#endif
    std::printf("PB_ROLLING_MTX_%s n=%u nb=%u blocks=%u tasks=%u edges=%u levels=%u ready_width=%u lu_width=%u ss_width=%u issued=%u completed=%u max_inflight=%u max_lu=%u max_ss=%u reissued=%u read_bytes=%llu write_bytes=%llu structural=%llu numeric=%llu max_abs=%.9g max_rel=%.9g status=%u errors=%u\n",
        ok?"PASS":"FAIL",image.n,image.nb,image.block_count,image.task_count,image.edge_count,
        levels,width,width_lu,width_ss,issued,completed,max_inflight,max_lu,max_ss,reissued,
        (unsigned long long)rb,(unsigned long long)wb,(unsigned long long)structural,
        (unsigned long long)numeric,max_abs,max_rel,status,errors);
    return ok?0:4;
}
