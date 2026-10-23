#include "hybrid_coherent_staged_bridge.h"
#include "hybrid_worker_pool.h"

static bool pb_staged_range_ok(pb_hls_u32 offset,
                               pb_hls_u32 length,
                               pb_hls_u32 capacity)
{
    /* Written this way rather than offset+length<=capacity so a malformed
     * descriptor cannot pass validation through unsigned wraparound. */
    return offset <= capacity && length <= capacity - offset;
}

static bool pb_staged_desc_ok_runtime(const pb_global_matrix_desc &d,
                                      pb_hls_u32 matrix_count,
                                      pb_hls_u32 matrix_capacity,
                                      pb_hls_u32 matrix_id,
                                      pb_hls_u32 ptr_capacity,
                                      pb_hls_u32 pack_capacity,
                                      pb_hls_u32 lane_capacity)
{
    if (matrix_capacity == 0U || matrix_count == 0U ||
        matrix_count > matrix_capacity || matrix_id >= matrix_count ||
        d.rows == 0U || d.cols == 0U)
        return false;
    if (d.ptr_length < d.cols + 1U ||
        d.pack_ptr_length < d.cols + 1U ||
        d.lane_length < d.packed_words)
        return false;
    if (d.ptr_length > PB_STAGED_PTR_CAP ||
        d.pack_ptr_length > PB_STAGED_PTR_CAP ||
        d.lane_length > PB_STAGED_LANE_CAP)
        return false;
    if (!pb_staged_range_ok(d.ptr_offset,d.ptr_length,ptr_capacity) ||
        !pb_staged_range_ok(d.pack_ptr_offset,d.pack_ptr_length,pack_capacity) ||
        !pb_staged_range_ok(d.lane_offset,d.lane_length,lane_capacity))
        return false;
    return true;
}

static bool pb_staged_desc_ok(const pb_global_matrix_desc &d,
                              pb_hls_u32 matrix_count,
                              pb_hls_u32 matrix_id)
{
    return pb_staged_desc_ok_runtime(d,matrix_count,PB_GLOBAL_MAX_MATRICES,
        matrix_id,PB_GLOBAL_PTR_POOL_CAP,PB_GLOBAL_PACK_POOL_CAP,
        PB_GLOBAL_LANE_POOL_CAP);
}

static void pb_stage_matrix(const pb_global_matrix_desc &d,
                            const pb_hls_u32 *ptr_pool,
                            const pb_hls_u32 *pack_ptr_pool,
                            const pb_hls_lword *lane0_pool,
                            const pb_hls_lword *lane1_pool,
                            const pb_hls_lword *lane2_pool,
                            const pb_hls_lword *lane3_pool,
                            pb_hls_u32 *out_ptr,
                            pb_hls_u32 *out_pack_ptr,
                            pb_hls_lword *out_lane0,
                            pb_hls_lword *out_lane1,
                            pb_hls_lword *out_lane2,
                            pb_hls_lword *out_lane3,
                            pb_hls_u64 &read_bytes)
{
#pragma HLS INLINE off
    for (pb_hls_u32 i = 0U; i < d.ptr_length; ++i) {
#pragma HLS PIPELINE II=1
        out_ptr[i] = ptr_pool[d.ptr_offset + i];
    }
    for (pb_hls_u32 i = 0U; i < d.pack_ptr_length; ++i) {
#pragma HLS PIPELINE II=1
        out_pack_ptr[i] = pack_ptr_pool[d.pack_ptr_offset + i];
    }
    for (pb_hls_u32 i = 0U; i < d.lane_length; ++i) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p = d.lane_offset + i;
        out_lane0[i] = lane0_pool[p];
        out_lane1[i] = lane1_pool[p];
        out_lane2[i] = lane2_pool[p];
        out_lane3[i] = lane3_pool[p];
    }
    read_bytes += (pb_hls_u64)d.ptr_length * sizeof(pb_hls_u32) +
                  (pb_hls_u64)d.pack_ptr_length * sizeof(pb_hls_u32) +
                  (pb_hls_u64)d.lane_length * sizeof(pb_hls_lword) * 4U;
}

static void pb_commit_matrix(const pb_global_matrix_desc &d,
                             const pb_hls_lword *in_lane0,
                             const pb_hls_lword *in_lane1,
                             const pb_hls_lword *in_lane2,
                             const pb_hls_lword *in_lane3,
                             pb_hls_lword *lane0_pool,
                             pb_hls_lword *lane1_pool,
                             pb_hls_lword *lane2_pool,
                             pb_hls_lword *lane3_pool,
                             pb_hls_u64 &write_bytes)
{
#pragma HLS INLINE off
    /* Kernel arithmetic changes values only.  ptr[]/pack_ptr[] and packed row
     * fields are fixed by symbolic analysis, so only the four lane arrays are
     * committed. */
    for (pb_hls_u32 i = 0U; i < d.lane_length; ++i) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p = d.lane_offset + i;
        lane0_pool[p] = in_lane0[i];
        lane1_pool[p] = in_lane1[i];
        lane2_pool[p] = in_lane2[i];
        lane3_pool[p] = in_lane3[i];
    }
    write_bytes += (pb_hls_u64)d.lane_length * sizeof(pb_hls_lword) * 4U;
}

void pb_coherent_staged_dispatch(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_staged_slot &slot,
    pb_hls_u64 &read_bytes,
    pb_hls_u64 &write_bytes,
    pb_hls_u32 &status)
{
#pragma HLS INLINE off
    read_bytes = 0U;
    write_bytes = 0U;
    status = PB_HLS_OK;
    if (matrix_count == 0U || matrix_count > PB_GLOBAL_MAX_MATRICES ||
        cmd.kind > PB_LU_SHARED_SSSSM || cmd.pe_id >= 8U ||
        (cmd.kind == PB_LU_SHARED_SSSSM ? cmd.pe_id < 4U : cmd.pe_id >= 4U) ||
        cmd.a_matrix >= matrix_count || cmd.l_matrix >= matrix_count ||
        cmd.u_matrix >= matrix_count) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    const pb_global_matrix_desc &a = matrix_desc[cmd.a_matrix];
    const pb_global_matrix_desc &l = matrix_desc[cmd.l_matrix];
    const pb_global_matrix_desc &u = matrix_desc[cmd.u_matrix];
    if (!pb_staged_desc_ok(a,matrix_count,cmd.a_matrix) ||
        !pb_staged_desc_ok(l,matrix_count,cmd.l_matrix) ||
        !pb_staged_desc_ok(u,matrix_count,cmd.u_matrix)) {
        status = PB_HLS_BAD_SIZE;
        return;
    }

    slot.a.ptr_length=a.ptr_length;slot.a.pack_ptr_length=a.pack_ptr_length;slot.a.lane_length=a.lane_length;
    slot.l.ptr_length=l.ptr_length;slot.l.pack_ptr_length=l.pack_ptr_length;slot.l.lane_length=l.lane_length;
    slot.u.ptr_length=u.ptr_length;slot.u.pack_ptr_length=u.pack_ptr_length;slot.u.lane_length=u.lane_length;
    pb_stage_matrix(a,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.a.ptr,slot.a.pack_ptr,slot.a.lane0,
                    slot.a.lane1,slot.a.lane2,slot.a.lane3,read_bytes);
    pb_stage_matrix(l,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.l.ptr,slot.l.pack_ptr,slot.l.lane0,
                    slot.l.lane1,slot.l.lane2,slot.l.lane3,read_bytes);
    pb_stage_matrix(u,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.u.ptr,slot.u.pack_ptr,slot.u.lane0,
                    slot.u.lane1,slot.u.lane2,slot.u.lane3,read_bytes);

    pb_hybrid_worker_dispatch(
        cmd.pe_id,cmd.kind,
        slot.a.ptr,slot.a.pack_ptr,slot.a.lane0,slot.a.lane1,
        slot.a.lane2,slot.a.lane3,
        slot.l.ptr,slot.l.pack_ptr,slot.l.lane0,slot.l.lane1,
        slot.l.lane2,slot.l.lane3,
        slot.u.ptr,slot.u.pack_ptr,slot.u.lane0,slot.u.lane1,
        slot.u.lane2,slot.u.lane3,
        cmd.a_rows,cmd.a_cols,cmd.shared_dim,cmd.pivot_eps,status);
    if (status != PB_HLS_OK) return;

    /* The done event is intentionally outside this function: callers may
     * emit it only after all required commits below have completed. */
    if (cmd.kind == PB_LU_SHARED_GETRF) {
        pb_commit_matrix(l,slot.l.lane0,slot.l.lane1,slot.l.lane2,slot.l.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,
                         write_bytes);
        pb_commit_matrix(u,slot.u.lane0,slot.u.lane1,slot.u.lane2,slot.u.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,
                         write_bytes);
    } else {
        pb_commit_matrix(a,slot.a.lane0,slot.a.lane1,slot.a.lane2,slot.a.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,
                         write_bytes);
    }
}

void pb_coherent_staged_dispatch_flat(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],
    pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
#pragma HLS INLINE off
    read_bytes=0U;write_bytes=0U;status=PB_HLS_OK;
    if(matrix_count==0U||matrix_count>PB_GLOBAL_MAX_MATRICES||
       cmd.kind>PB_LU_SHARED_SSSSM||cmd.pe_id>=8U||
       (cmd.kind==PB_LU_SHARED_SSSSM?cmd.pe_id<4U:cmd.pe_id>=4U)||
       cmd.a_matrix>=matrix_count||cmd.l_matrix>=matrix_count||
       cmd.u_matrix>=matrix_count){status=PB_HLS_BAD_SIZE;return;}
    const pb_global_matrix_desc &ad=matrix_desc[cmd.a_matrix];
    const pb_global_matrix_desc &ld=matrix_desc[cmd.l_matrix];
    const pb_global_matrix_desc &ud=matrix_desc[cmd.u_matrix];
    if(!pb_staged_desc_ok(ad,matrix_count,cmd.a_matrix)||
       !pb_staged_desc_ok(ld,matrix_count,cmd.l_matrix)||
       !pb_staged_desc_ok(ud,matrix_count,cmd.u_matrix)){
        status=PB_HLS_BAD_SIZE;return;
    }
    pb_stage_matrix(ad,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,a_ptr,a_pack,a0,a1,a2,a3,read_bytes);
    pb_stage_matrix(ld,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,l_ptr,l_pack,l0,l1,l2,l3,read_bytes);
    pb_stage_matrix(ud,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,u_ptr,u_pack,u0,u1,u2,u3,read_bytes);
    pb_hybrid_worker_dispatch(cmd.pe_id,cmd.kind,
        a_ptr,a_pack,a0,a1,a2,a3,l_ptr,l_pack,l0,l1,l2,l3,
        u_ptr,u_pack,u0,u1,u2,u3,cmd.a_rows,cmd.a_cols,cmd.shared_dim,
        cmd.pivot_eps,status);
    if(status!=PB_HLS_OK)return;
    if(cmd.kind==PB_LU_SHARED_GETRF){
        pb_commit_matrix(ld,l0,l1,l2,l3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
        pb_commit_matrix(ud,u0,u1,u2,u3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }else{
        pb_commit_matrix(ad,a0,a1,a2,a3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }
}

void pb_coherent_staged_dispatch_runtime(
    const pb_global_worker_cmd &cmd,
    const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,
    pb_hls_u32 lane_capacity,pb_staged_slot &slot,
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
#pragma HLS INLINE off
    read_bytes=0U;write_bytes=0U;status=PB_HLS_OK;
    if(matrix_count==0U||
       matrix_count>matrix_capacity||cmd.kind>PB_LU_SHARED_SSSSM||
       cmd.pe_id>=8U||(cmd.kind==PB_LU_SHARED_SSSSM?cmd.pe_id<4U:cmd.pe_id>=4U)||
       cmd.a_matrix>=matrix_count||cmd.l_matrix>=matrix_count||
       cmd.u_matrix>=matrix_count){status=PB_HLS_BAD_SIZE;return;}
    const pb_global_matrix_desc &ad=matrix_desc[cmd.a_matrix];
    const pb_global_matrix_desc &ld=matrix_desc[cmd.l_matrix];
    const pb_global_matrix_desc &ud=matrix_desc[cmd.u_matrix];
    const bool a_ok=pb_staged_desc_ok_runtime(ad,matrix_count,matrix_capacity,cmd.a_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool l_ok=pb_staged_desc_ok_runtime(ld,matrix_count,matrix_capacity,cmd.l_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool u_ok=pb_staged_desc_ok_runtime(ud,matrix_count,matrix_capacity,cmd.u_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    if(!a_ok||!l_ok||!u_ok){status=PB_HLS_BAD_SIZE;return;}
    slot.a.ptr_length=ad.ptr_length;slot.a.pack_ptr_length=ad.pack_ptr_length;
    slot.a.lane_length=ad.lane_length;
    slot.l.ptr_length=ld.ptr_length;slot.l.pack_ptr_length=ld.pack_ptr_length;
    slot.l.lane_length=ld.lane_length;
    slot.u.ptr_length=ud.ptr_length;slot.u.pack_ptr_length=ud.pack_ptr_length;
    slot.u.lane_length=ud.lane_length;
    pb_stage_matrix(ad,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.a.ptr,slot.a.pack_ptr,slot.a.lane0,
                    slot.a.lane1,slot.a.lane2,slot.a.lane3,read_bytes);
    pb_stage_matrix(ld,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.l.ptr,slot.l.pack_ptr,slot.l.lane0,
                    slot.l.lane1,slot.l.lane2,slot.l.lane3,read_bytes);
    pb_stage_matrix(ud,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,slot.u.ptr,slot.u.pack_ptr,slot.u.lane0,
                    slot.u.lane1,slot.u.lane2,slot.u.lane3,read_bytes);
    pb_hybrid_worker_dispatch(cmd.pe_id,cmd.kind,
        slot.a.ptr,slot.a.pack_ptr,slot.a.lane0,slot.a.lane1,slot.a.lane2,slot.a.lane3,
        slot.l.ptr,slot.l.pack_ptr,slot.l.lane0,slot.l.lane1,slot.l.lane2,slot.l.lane3,
        slot.u.ptr,slot.u.pack_ptr,slot.u.lane0,slot.u.lane1,slot.u.lane2,slot.u.lane3,
        cmd.a_rows,cmd.a_cols,cmd.shared_dim,cmd.pivot_eps,status);
    if(status!=PB_HLS_OK)return;
    if(cmd.kind==PB_LU_SHARED_GETRF){
        pb_commit_matrix(ld,slot.l.lane0,slot.l.lane1,slot.l.lane2,slot.l.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,write_bytes);
        pb_commit_matrix(ud,slot.u.lane0,slot.u.lane1,slot.u.lane2,slot.u.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,write_bytes);
    }else{
        pb_commit_matrix(ad,slot.a.lane0,slot.a.lane1,slot.a.lane2,slot.a.lane3,
                         lane0_pool,lane1_pool,lane2_pool,lane3_pool,write_bytes);
    }
}

void pb_coherent_staged_dispatch_runtime_flat(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
#pragma HLS INLINE off
    read_bytes=0U;write_bytes=0U;status=PB_HLS_OK;
    if(matrix_count==0U||
       matrix_count>matrix_capacity||cmd.kind>PB_LU_SHARED_SSSSM||
       cmd.pe_id>=8U||(cmd.kind==PB_LU_SHARED_SSSSM?cmd.pe_id<4U:cmd.pe_id>=4U)||
       cmd.a_matrix>=matrix_count||cmd.l_matrix>=matrix_count||
       cmd.u_matrix>=matrix_count){status=PB_HLS_BAD_SIZE;return;}
    const pb_global_matrix_desc &ad=matrix_desc[cmd.a_matrix];
    const pb_global_matrix_desc &ld=matrix_desc[cmd.l_matrix];
    const pb_global_matrix_desc &ud=matrix_desc[cmd.u_matrix];
    const bool a_ok=pb_staged_desc_ok_runtime(ad,matrix_count,matrix_capacity,cmd.a_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool l_ok=pb_staged_desc_ok_runtime(ld,matrix_count,matrix_capacity,cmd.l_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool u_ok=pb_staged_desc_ok_runtime(ud,matrix_count,matrix_capacity,cmd.u_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    if(!a_ok||!l_ok||!u_ok){status=PB_HLS_BAD_SIZE;return;}
    pb_stage_matrix(ad,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,a_ptr,a_pack,a0,a1,a2,a3,read_bytes);
    pb_stage_matrix(ld,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,l_ptr,l_pack,l0,l1,l2,l3,read_bytes);
    pb_stage_matrix(ud,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,u_ptr,u_pack,u0,u1,u2,u3,read_bytes);
    pb_hybrid_worker_dispatch(cmd.pe_id,cmd.kind,
        a_ptr,a_pack,a0,a1,a2,a3,l_ptr,l_pack,l0,l1,l2,l3,
        u_ptr,u_pack,u0,u1,u2,u3,cmd.a_rows,cmd.a_cols,cmd.shared_dim,
        cmd.pivot_eps,status);
    if(status!=PB_HLS_OK)return;
    if(cmd.kind==PB_LU_SHARED_GETRF){
        pb_commit_matrix(ld,l0,l1,l2,l3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
        pb_commit_matrix(ud,u0,u1,u2,u3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }else{
        pb_commit_matrix(ad,a0,a1,a2,a3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }
}

template<bool SSSSM_ONLY>
static void pb_coherent_staged_dispatch_runtime_flat_specialized(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
#pragma HLS INLINE off
    read_bytes=0U;write_bytes=0U;status=PB_HLS_OK;
    const bool kind_ok=SSSSM_ONLY ? cmd.kind==PB_LU_SHARED_SSSSM
                                  : cmd.kind<=PB_LU_SHARED_TSTRF;
    const bool pe_ok=SSSSM_ONLY ? (cmd.pe_id>=4U&&cmd.pe_id<8U)
                                : cmd.pe_id<4U;
    if(matrix_count==0U||matrix_count>matrix_capacity||!kind_ok||!pe_ok||
       cmd.a_matrix>=matrix_count||cmd.l_matrix>=matrix_count||
       cmd.u_matrix>=matrix_count){status=PB_HLS_BAD_SIZE;return;}
    const pb_global_matrix_desc &ad=matrix_desc[cmd.a_matrix];
    const pb_global_matrix_desc &ld=matrix_desc[cmd.l_matrix];
    const pb_global_matrix_desc &ud=matrix_desc[cmd.u_matrix];
    const bool a_ok=pb_staged_desc_ok_runtime(ad,matrix_count,matrix_capacity,cmd.a_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool l_ok=pb_staged_desc_ok_runtime(ld,matrix_count,matrix_capacity,cmd.l_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    const bool u_ok=pb_staged_desc_ok_runtime(ud,matrix_count,matrix_capacity,cmd.u_matrix,
                                               ptr_capacity,pack_capacity,lane_capacity);
    if(!a_ok||!l_ok||!u_ok){status=PB_HLS_BAD_SIZE;return;}
    pb_stage_matrix(ad,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,a_ptr,a_pack,a0,a1,a2,a3,read_bytes);
    pb_stage_matrix(ld,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,l_ptr,l_pack,l0,l1,l2,l3,read_bytes);
    pb_stage_matrix(ud,ptr_pool,pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,
                    lane3_pool,u_ptr,u_pack,u0,u1,u2,u3,read_bytes);
    if(SSSSM_ONLY){
        pb_hybrid_ssssm_dispatch(a_ptr,a_pack,a0,a1,a2,a3,
            l_ptr,l_pack,l0,l1,l2,l3,u_ptr,u_pack,u0,u1,u2,u3,
            cmd.a_rows,cmd.a_cols,cmd.shared_dim,status);
    }else{
        pb_hybrid_lu_dispatch(cmd.kind,a_ptr,a_pack,a0,a1,a2,a3,
            l_ptr,l_pack,l0,l1,l2,l3,u_ptr,u_pack,u0,u1,u2,u3,
            cmd.a_rows,cmd.a_cols,cmd.shared_dim,cmd.pivot_eps,status);
    }
    if(status!=PB_HLS_OK)return;
    if(!SSSSM_ONLY&&cmd.kind==PB_LU_SHARED_GETRF){
        pb_commit_matrix(ld,l0,l1,l2,l3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
        pb_commit_matrix(ud,u0,u1,u2,u3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }else{
        pb_commit_matrix(ad,a0,a1,a2,a3,lane0_pool,lane1_pool,lane2_pool,
                         lane3_pool,write_bytes);
    }
}

void pb_coherent_staged_dispatch_runtime_flat_lu(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
    pb_coherent_staged_dispatch_runtime_flat_specialized<false>(cmd,matrix_desc,
        matrix_count,matrix_capacity,ptr_pool,ptr_capacity,pack_ptr_pool,pack_capacity,
        lane0_pool,lane1_pool,lane2_pool,lane3_pool,lane_capacity,
        a_ptr,a_pack,a0,a1,a2,a3,l_ptr,l_pack,l0,l1,l2,l3,
        u_ptr,u_pack,u0,u1,u2,u3,read_bytes,write_bytes,status);
}

void pb_coherent_staged_dispatch_runtime_flat_ssssm(
    const pb_global_worker_cmd &cmd,const pb_global_matrix_desc *matrix_desc,
    pb_hls_u32 matrix_count,pb_hls_u32 matrix_capacity,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_capacity,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_capacity,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_capacity,
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 a_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword a0[PB_STAGED_LANE_CAP],pb_hls_lword a1[PB_STAGED_LANE_CAP],
    pb_hls_lword a2[PB_STAGED_LANE_CAP],pb_hls_lword a3[PB_STAGED_LANE_CAP],
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 l_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword l0[PB_STAGED_LANE_CAP],pb_hls_lword l1[PB_STAGED_LANE_CAP],
    pb_hls_lword l2[PB_STAGED_LANE_CAP],pb_hls_lword l3[PB_STAGED_LANE_CAP],
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],pb_hls_u32 u_pack[PB_STAGED_PTR_CAP],
    pb_hls_lword u0[PB_STAGED_LANE_CAP],pb_hls_lword u1[PB_STAGED_LANE_CAP],
    pb_hls_lword u2[PB_STAGED_LANE_CAP],pb_hls_lword u3[PB_STAGED_LANE_CAP],
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &status)
{
    pb_coherent_staged_dispatch_runtime_flat_specialized<true>(cmd,matrix_desc,
        matrix_count,matrix_capacity,ptr_pool,ptr_capacity,pack_ptr_pool,pack_capacity,
        lane0_pool,lane1_pool,lane2_pool,lane3_pool,lane_capacity,
        a_ptr,a_pack,a0,a1,a2,a3,l_ptr,l_pack,l0,l1,l2,l3,
        u_ptr,u_pack,u0,u1,u2,u3,read_bytes,write_bytes,status);
}

extern "C" void pb_hybrid_coherent_staged_task_flat(
    pb_hls_u32 task_id, pb_hls_u32 kind, pb_hls_u32 pe_id,
    pb_hls_u32 a_matrix, pb_hls_u32 l_matrix, pb_hls_u32 u_matrix,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_f32 pivot_eps,
    const pb_global_matrix_desc matrix_desc[PB_GLOBAL_MAX_MATRICES],
    pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_GLOBAL_PTR_POOL_CAP],
    const pb_hls_u32 pack_ptr_pool[PB_GLOBAL_PACK_POOL_CAP],
    pb_hls_lword lane0_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane1_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_lword lane3_pool[PB_GLOBAL_LANE_POOL_CAP],
    pb_hls_u64 &read_bytes, pb_hls_u64 &write_bytes,
    pb_hls_u32 &completed_task, pb_hls_u32 &completed_pe,
    pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=matrix_desc offset=slave bundle=gmem_desc
#pragma HLS INTERFACE m_axi port=ptr_pool offset=slave bundle=gmem_meta
#pragma HLS INTERFACE m_axi port=pack_ptr_pool offset=slave bundle=gmem_meta
#pragma HLS INTERFACE m_axi port=lane0_pool offset=slave bundle=gmem_lane0
#pragma HLS INTERFACE m_axi port=lane1_pool offset=slave bundle=gmem_lane1
#pragma HLS INTERFACE m_axi port=lane2_pool offset=slave bundle=gmem_lane2
#pragma HLS INTERFACE m_axi port=lane3_pool offset=slave bundle=gmem_lane3
#pragma HLS INTERFACE s_axilite port=return bundle=control
    /* Keep the synthesizable boundary flat.  Vitis HLS 2022.2's LTO pass can
     * crash when a struct containing eighteen local arrays is passed through
     * several non-inlined functions, even though the equivalent C model is
     * valid. */
    pb_hls_u32 a_ptr[PB_STAGED_PTR_CAP],a_pack[PB_STAGED_PTR_CAP];
    pb_hls_u32 l_ptr[PB_STAGED_PTR_CAP],l_pack[PB_STAGED_PTR_CAP];
    pb_hls_u32 u_ptr[PB_STAGED_PTR_CAP],u_pack[PB_STAGED_PTR_CAP];
    pb_hls_lword a0[PB_STAGED_LANE_CAP],a1[PB_STAGED_LANE_CAP];
    pb_hls_lword a2[PB_STAGED_LANE_CAP],a3[PB_STAGED_LANE_CAP];
    pb_hls_lword l0[PB_STAGED_LANE_CAP],l1[PB_STAGED_LANE_CAP];
    pb_hls_lword l2[PB_STAGED_LANE_CAP],l3[PB_STAGED_LANE_CAP];
    pb_hls_lword u0[PB_STAGED_LANE_CAP],u1[PB_STAGED_LANE_CAP];
    pb_hls_lword u2[PB_STAGED_LANE_CAP],u3[PB_STAGED_LANE_CAP];
    pb_global_worker_cmd cmd = {};
    cmd.task_id=task_id; cmd.kind=kind; cmd.pe_id=pe_id;
    cmd.a_matrix=a_matrix; cmd.l_matrix=l_matrix; cmd.u_matrix=u_matrix;
    cmd.a_rows=a_rows; cmd.a_cols=a_cols; cmd.shared_dim=shared_dim;
    cmd.pivot_eps=pivot_eps;
    completed_task=0xffffffffU;
    completed_pe=0xffffffffU;
    pb_coherent_staged_dispatch_flat(cmd,matrix_desc,matrix_count,ptr_pool,
        pack_ptr_pool,lane0_pool,lane1_pool,lane2_pool,lane3_pool,
        a_ptr,a_pack,a0,a1,a2,a3,l_ptr,l_pack,l0,l1,l2,l3,
        u_ptr,u_pack,u0,u1,u2,u3,read_bytes,write_bytes,status);
    if (status==PB_HLS_OK) {
        /* Completion is made visible only after the canonical commit. */
        completed_task=task_id;
        completed_pe=pe_id;
    }
}
