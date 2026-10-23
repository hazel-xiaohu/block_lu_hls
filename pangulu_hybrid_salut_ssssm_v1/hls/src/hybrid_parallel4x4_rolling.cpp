#include "hybrid_parallel4x4_rolling.h"
#include "hybrid_worker_pool.h"
#include <hls_stream.h>

#define PB_ROLL_PES 8U
#define PB_ROLL_LU_PES 4U
#define PB_ROLL_SS_BASE 4U
#ifndef PB_ROLL_FIFO_DEPTH
#define PB_ROLL_FIFO_DEPTH 8U
#endif
/* A stage response contains a header, two pointer arrays and four lane
 * streams.  With the current ABI it can be more than 180 packets, so using
 * the small command FIFO depth for pool traffic creates head-of-line
 * blocking: the pool server can stop servicing another worker while its
 * response FIFO is full.  Keep command/done FIFOs small, but provision the
 * per-worker pool request/response channels independently. */
#ifndef PB_ROLL_POOL_FIFO_DEPTH
#define PB_ROLL_POOL_FIFO_DEPTH 256U
#endif
/* The ready frontier is bounded by the DAG width, not by the total task
 * count.  Keeping this queue at 64 entries prevents a large MAX_TASKS value
 * from changing the scheduler's LUTRAM timing/handshake implementation. */
#ifndef PB_ROLL_READY_CAP
#define PB_ROLL_READY_CAP 64U
#endif
#define PB_ROLL_NO_TASK 0xffffffffU
#ifndef PB_ROLL_MAX_POLLS
#define PB_ROLL_MAX_POLLS 4000000000ULL
#endif

enum pb_roll_state {
    PB_ROLL_BLOCKED=0U,
    PB_ROLL_READY=1U,
    PB_ROLL_INFLIGHT=2U,
    PB_ROLL_COMPLETE=3U
};

struct pb_roll_done {
    pb_hls_u32 task_id;
    pb_hls_u32 pe_id;
    pb_hls_u32 kind;
    pb_hls_u32 status;
    pb_hls_u64 read_bytes;
    pb_hls_u64 write_bytes;
};

/* The scheduler must not write the top-level scalar result ports directly.
 * Those ports create a start-propagation dependency in Vitis HLS: the
 * generated wrapper starts the scheduler, waits for it to finish, and only
 * then starts the workers.  Since the scheduler waits for worker completions,
 * that ordering is a hardware deadlock.  A summary stream makes the result
 * handoff an ordinary DATAFLOW channel; scheduler and workers can start
 * together, while the small finish process writes the scalar ports after the
 * scheduler has emitted its summary. */
struct pb_roll_summary {
    pb_hls_u32 issued, completed, max_inflight, max_lu, max_ss, reissued;
    pb_hls_u64 read_bytes, write_bytes;
    pb_hls_u32 errors, status;
};

/* Shared-pool protocol.  Each worker owns one req/rsp pair; only the pool
 * server touches the canonical DDR arrays.  A packet is deliberately fixed
 * width so it can be implemented as a small FIFO without an aggregate
 * pointer or an AXI-dependent side channel. */
enum pb_pool_op {
    PB_POOL_STAGE_REQ=0U, PB_POOL_STAGE_HDR=1U, PB_POOL_STAGE_PTR=2U,
    PB_POOL_STAGE_PACK=3U, PB_POOL_STAGE_L0=4U, PB_POOL_STAGE_L1=5U,
    PB_POOL_STAGE_L2=6U, PB_POOL_STAGE_L3=7U,
    PB_POOL_COMMIT_HDR=8U, PB_POOL_COMMIT_L0=9U, PB_POOL_COMMIT_L1=10U,
    PB_POOL_COMMIT_L2=11U, PB_POOL_COMMIT_L3=12U,
    PB_POOL_COMMIT_ACK=13U, PB_POOL_STOP=14U,
    /* One commit packet carries all four lane values for one index.  The
     * previous four-packets-per-index protocol could fill a worker request
     * FIFO while the server was waiting on another channel. */
    PB_POOL_COMMIT_VEC=15U
};

struct pb_pool_pkt {
    pb_hls_u32 worker;
    pb_hls_u32 op;
    pb_hls_u32 matrix;
    pb_hls_u32 index;
    pb_hls_u32 ptr_len;
    pb_hls_u32 pack_len;
    pb_hls_u32 lane_len;
    pb_hls_u32 value_u32;
    pb_hls_lword value_lane;
    pb_hls_lword value_lane1;
    pb_hls_lword value_lane2;
    pb_hls_lword value_lane3;
    pb_hls_u32 status;
};

static void pb_roll_emit_summary(
    hls::stream<pb_roll_summary> &out,
    pb_hls_u32 issued,pb_hls_u32 completed,pb_hls_u32 max_inflight,
    pb_hls_u32 max_lu,pb_hls_u32 max_ss,pb_hls_u32 reissued,
    pb_hls_u64 read_bytes,pb_hls_u64 write_bytes,
    pb_hls_u32 errors,pb_hls_u32 status)
{
#pragma HLS INLINE
    pb_roll_summary s={};
    s.issued=issued;s.completed=completed;s.max_inflight=max_inflight;
    s.max_lu=max_lu;s.max_ss=max_ss;s.reissued=reissued;
    s.read_bytes=read_bytes;s.write_bytes=write_bytes;
    s.errors=errors;s.status=status;
    out.write(s);
}

static void pb_roll_finish(
    hls::stream<pb_roll_summary> &in,
    pb_hls_u32 &issued,pb_hls_u32 &completed,pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu,pb_hls_u32 &max_ss,pb_hls_u32 &reissued,
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,
    pb_hls_u32 &errors,pb_hls_u32 &status)
{
#pragma HLS INLINE off
    const pb_roll_summary s=in.read();
    issued=s.issued;completed=s.completed;max_inflight=s.max_inflight;
    max_lu=s.max_lu;max_ss=s.max_ss;reissued=s.reissued;
    read_bytes=s.read_bytes;write_bytes=s.write_bytes;
    errors=s.errors;status=s.status;
}

static bool pb_roll_kind_ok(pb_hls_u32 kind)
{ return kind<=PB_LU_SHARED_SSSSM; }

static bool pb_roll_is_ssssm(pb_hls_u32 kind)
{ return kind==PB_LU_SHARED_SSSSM; }

static pb_global_matrix_desc pb_roll_load_desc(
    const pb_hls_u32 words[PB_ROLL_MAX_MATRICES*PB_GLOBAL_DESC_WORDS],
    pb_hls_u32 id)
{
#pragma HLS INLINE
    pb_global_matrix_desc d={};
    const pb_hls_u32 b=id*PB_GLOBAL_DESC_WORDS;
    d.rows=words[b+0U];d.cols=words[b+1U];d.nnz=words[b+2U];
    d.packed_words=words[b+3U];d.ptr_offset=words[b+4U];
    d.ptr_length=words[b+5U];d.pack_ptr_offset=words[b+6U];
    d.pack_ptr_length=words[b+7U];d.lane_offset=words[b+8U];
    d.lane_length=words[b+9U];
    return d;
}

static pb_global_worker_cmd pb_roll_cmd(
    pb_hls_u32 t,pb_hls_u32 pe,
    const pb_hls_u32 kind[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 aid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 lid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 uid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 rows[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 shared[PB_ROLL_MAX_TASKS],
    const pb_hls_f32 eps[PB_ROLL_MAX_TASKS])
{
#pragma HLS INLINE
    pb_global_worker_cmd c={};
    c.task_id=t;c.kind=kind[t];c.pe_id=pe;
    c.a_matrix=aid[t];c.l_matrix=lid[t];c.u_matrix=uid[t];
    c.a_rows=rows[t];c.a_cols=cols[t];c.shared_dim=shared[t];
    c.pivot_eps=eps[t];
    return c;
}

static bool pb_roll_writes(pb_hls_u32 kind,pb_hls_u32 role)
{
#pragma HLS INLINE
    /* role: 0=A, 1=L, 2=U */
    return kind==PB_LU_SHARED_GETRF ? role!=0U : role==0U;
}

static pb_hls_u32 pb_roll_matrix(const pb_global_worker_cmd &c,pb_hls_u32 role)
{
#pragma HLS INLINE
    return role==0U?c.a_matrix:(role==1U?c.l_matrix:c.u_matrix);
}

static bool pb_roll_conflict(const pb_global_worker_cmd &a,
                             const pb_global_worker_cmd &b)
{
#pragma HLS INLINE
    for(pb_hls_u32 ar=0U;ar<3U;++ar){
#pragma HLS UNROLL
        for(pb_hls_u32 br=0U;br<3U;++br){
#pragma HLS UNROLL
            if(pb_roll_matrix(a,ar)==pb_roll_matrix(b,br) &&
               (pb_roll_writes(a.kind,ar)||pb_roll_writes(b.kind,br)))
                return true;
        }
    }
    return false;
}

static void pb_roll_send(pb_hls_u32 pe,const pb_global_worker_cmd &c,
    hls::stream<pb_global_worker_cmd> &q0,
    hls::stream<pb_global_worker_cmd> &q1,
    hls::stream<pb_global_worker_cmd> &q2,
    hls::stream<pb_global_worker_cmd> &q3,
    hls::stream<pb_global_worker_cmd> &q4,
    hls::stream<pb_global_worker_cmd> &q5,
    hls::stream<pb_global_worker_cmd> &q6,
    hls::stream<pb_global_worker_cmd> &q7)
{
#pragma HLS INLINE
    if(pe==0U)q0.write(c);else if(pe==1U)q1.write(c);
    else if(pe==2U)q2.write(c);else if(pe==3U)q3.write(c);
    else if(pe==4U)q4.write(c);else if(pe==5U)q5.write(c);
    else if(pe==6U)q6.write(c);else q7.write(c);
}

static void pb_roll_stops(
    hls::stream<pb_global_worker_cmd> &q0,
    hls::stream<pb_global_worker_cmd> &q1,
    hls::stream<pb_global_worker_cmd> &q2,
    hls::stream<pb_global_worker_cmd> &q3,
    hls::stream<pb_global_worker_cmd> &q4,
    hls::stream<pb_global_worker_cmd> &q5,
    hls::stream<pb_global_worker_cmd> &q6,
    hls::stream<pb_global_worker_cmd> &q7)
{
    pb_global_worker_cmd stop={};stop.task_id=PB_ROLL_NO_TASK;
    for(pb_hls_u32 pe=0U;pe<PB_ROLL_PES;++pe){
#pragma HLS UNROLL
        stop.pe_id=pe;pb_roll_send(pe,stop,q0,q1,q2,q3,q4,q5,q6,q7);
    }
}

/* The pool protocol deliberately uses one request and one response FIFO per
 * worker.  A single FIFO with eight writers would violate HLS dataflow's
 * single-writer rule; routing here keeps ownership explicit and makes the
 * pool_server the only process which dereferences the DDR pools. */
static void pb_pool_req_read(
    pb_hls_u32 worker, pb_pool_pkt &p,
    hls::stream<pb_pool_pkt> &q0,hls::stream<pb_pool_pkt> &q1,
    hls::stream<pb_pool_pkt> &q2,hls::stream<pb_pool_pkt> &q3,
    hls::stream<pb_pool_pkt> &q4,hls::stream<pb_pool_pkt> &q5,
    hls::stream<pb_pool_pkt> &q6,hls::stream<pb_pool_pkt> &q7)
{
#pragma HLS INLINE
    if(worker==0U)q0.read(p); else if(worker==1U)q1.read(p);
    else if(worker==2U)q2.read(p); else if(worker==3U)q3.read(p);
    else if(worker==4U)q4.read(p); else if(worker==5U)q5.read(p);
    else if(worker==6U)q6.read(p); else q7.read(p);
}

static void pb_pool_rsp_write(
    pb_hls_u32 worker, const pb_pool_pkt &p,
    hls::stream<pb_pool_pkt> &q0,hls::stream<pb_pool_pkt> &q1,
    hls::stream<pb_pool_pkt> &q2,hls::stream<pb_pool_pkt> &q3,
    hls::stream<pb_pool_pkt> &q4,hls::stream<pb_pool_pkt> &q5,
    hls::stream<pb_pool_pkt> &q6,hls::stream<pb_pool_pkt> &q7)
{
#pragma HLS INLINE
    if(worker==0U)q0.write(p); else if(worker==1U)q1.write(p);
    else if(worker==2U)q2.write(p); else if(worker==3U)q3.write(p);
    else if(worker==4U)q4.write(p); else if(worker==5U)q5.write(p);
    else if(worker==6U)q6.write(p); else q7.write(p);
}

static bool pb_pool_req_read_nb(
    pb_hls_u32 worker, pb_pool_pkt &p,
    hls::stream<pb_pool_pkt> &q0,hls::stream<pb_pool_pkt> &q1,
    hls::stream<pb_pool_pkt> &q2,hls::stream<pb_pool_pkt> &q3,
    hls::stream<pb_pool_pkt> &q4,hls::stream<pb_pool_pkt> &q5,
    hls::stream<pb_pool_pkt> &q6,hls::stream<pb_pool_pkt> &q7)
{
#pragma HLS INLINE
    /* empty()+read is used instead of read_nb here.  In Vitis HLS 2022.2
     * read_nb on a stream selected through a runtime mux can be lowered to a
     * combinational probe that never observes a token in RTL, although CSim
     * accepts it.  The explicit probe/read pair preserves nonblocking
     * arbitration while generating a registered FIFO-valid check. */
    if(worker==0U){if(q0.empty())return false;q0.read(p);return true;}
    if(worker==1U){if(q1.empty())return false;q1.read(p);return true;}
    if(worker==2U){if(q2.empty())return false;q2.read(p);return true;}
    if(worker==3U){if(q3.empty())return false;q3.read(p);return true;}
    if(worker==4U){if(q4.empty())return false;q4.read(p);return true;}
    if(worker==5U){if(q5.empty())return false;q5.read(p);return true;}
    if(worker==6U){if(q6.empty())return false;q6.read(p);return true;}
    if(q7.empty())return false;q7.read(p);return true;
}

/* One owner for all DDR pools.  Workers never receive a pool pointer.  The
 * server serializes stage/commit transactions, while the arithmetic kernels
 * execute on worker-local BRAM/LUTRAM staging arrays. */
static void pb_pool_server(
    const pb_global_matrix_desc desc[PB_ROLL_MAX_MATRICES], pb_hls_u32 matrices,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_count,
    const pb_hls_u32 *pack_pool,pb_hls_u32 pack_count,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,
    pb_hls_lword *lane2_pool,pb_hls_lword *lane3_pool,pb_hls_u32 lane_count,
    hls::stream<pb_pool_pkt> &q0,hls::stream<pb_pool_pkt> &q1,
    hls::stream<pb_pool_pkt> &q2,hls::stream<pb_pool_pkt> &q3,
    hls::stream<pb_pool_pkt> &q4,hls::stream<pb_pool_pkt> &q5,
    hls::stream<pb_pool_pkt> &q6,hls::stream<pb_pool_pkt> &q7,
    hls::stream<pb_pool_pkt> &r0,hls::stream<pb_pool_pkt> &r1,
    hls::stream<pb_pool_pkt> &r2,hls::stream<pb_pool_pkt> &r3,
    hls::stream<pb_pool_pkt> &r4,hls::stream<pb_pool_pkt> &r5,
    hls::stream<pb_pool_pkt> &r6,hls::stream<pb_pool_pkt> &r7)
{
#pragma HLS INLINE off
#if defined(PB_ROLL_LOCAL_POOL_CACHE) && !defined(PB_ROLL_EXTERNAL_POOL_CACHE)
    /* Keep DDR ownership in pool_server, but make the transaction loop use a
     * local cache.  This removes concurrent AXI response back-pressure while
     * preserving the pool_req/rsp/commit/ack protocol. */
    pb_hls_u32 ptr_cache[PB_ROLL_PTR_POOL_CAP];
    pb_hls_u32 pack_cache[PB_ROLL_PACK_POOL_CAP];
    pb_hls_lword lane0_cache[PB_ROLL_LANE_POOL_CAP];
    pb_hls_lword lane1_cache[PB_ROLL_LANE_POOL_CAP];
    pb_hls_lword lane2_cache[PB_ROLL_LANE_POOL_CAP];
    pb_hls_lword lane3_cache[PB_ROLL_LANE_POOL_CAP];
#pragma HLS BIND_STORAGE variable=ptr_cache type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=pack_cache type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane1_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane2_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane3_cache type=ram_2p impl=uram
    for(pb_hls_u32 i=0U;i<ptr_count;++i){
#pragma HLS PIPELINE II=1
#if !defined(PB_ROLL_CACHE_SKIP_LOAD)
        ptr_cache[i]=ptr_pool[i];
#else
        ptr_cache[i]=0U;
#endif
    }
    for(pb_hls_u32 i=0U;i<pack_count;++i){
#pragma HLS PIPELINE II=1
#if !defined(PB_ROLL_CACHE_SKIP_LOAD)
        pack_cache[i]=pack_pool[i];
#else
        pack_cache[i]=0U;
#endif
    }
    for(pb_hls_u32 i=0U;i<lane_count;++i){
#pragma HLS PIPELINE II=1
#if !defined(PB_ROLL_CACHE_SKIP_LOAD)
        lane0_cache[i]=lane0_pool[i]; lane1_cache[i]=lane1_pool[i];
        lane2_cache[i]=lane2_pool[i]; lane3_cache[i]=lane3_pool[i];
#else
        lane0_cache[i]=0U; lane1_cache[i]=0U; lane2_cache[i]=0U; lane3_cache[i]=0U;
#endif
    }
    const pb_hls_u32 *pool_ptr=ptr_cache, *pool_pack=pack_cache;
    pb_hls_lword *pool_l0=lane0_cache, *pool_l1=lane1_cache;
    pb_hls_lword *pool_l2=lane2_cache, *pool_l3=lane3_cache;
#else
    const pb_hls_u32 *pool_ptr=ptr_pool, *pool_pack=pack_pool;
    pb_hls_lword *pool_l0=lane0_pool, *pool_l1=lane1_pool;
    pb_hls_lword *pool_l2=lane2_pool, *pool_l3=lane3_pool;
#endif
    pb_hls_u32 stopped=0U,rr=0U;
    while(stopped<PB_ROLL_PES){
        pb_pool_pkt p={}; bool got=false; pb_hls_u32 owner=rr;
        /* Keep the arbiter as an explicit priority chain.  A loop around a
         * runtime-selected empty()/read pair was accepted by CSim but HLS
         * 2022.2 generated a stalled valid path in RTL.  The eight-way chain
         * is small and is only in the pool-server control process. */
        for(pb_hls_u32 k=0U;k<PB_ROLL_PES && !got;++k){
            const pb_hls_u32 w=(rr+k)%PB_ROLL_PES;
            if(w==0U && !q0.empty()){q0.read(p);owner=0U;got=true;}
            else if(w==1U && !q1.empty()){q1.read(p);owner=1U;got=true;}
            else if(w==2U && !q2.empty()){q2.read(p);owner=2U;got=true;}
            else if(w==3U && !q3.empty()){q3.read(p);owner=3U;got=true;}
            else if(w==4U && !q4.empty()){q4.read(p);owner=4U;got=true;}
            else if(w==5U && !q5.empty()){q5.read(p);owner=5U;got=true;}
            else if(w==6U && !q6.empty()){q6.read(p);owner=6U;got=true;}
            else if(w==7U && !q7.empty()){q7.read(p);owner=7U;got=true;}
        }
        if(!got)continue;
        rr=(owner+1U)%PB_ROLL_PES;
        p.worker=owner;
        if(p.op==PB_POOL_STOP){++stopped;continue;}
        pb_pool_pkt out={};out.worker=owner;out.matrix=p.matrix;
        out.op=PB_POOL_STAGE_HDR;out.status=PB_HLS_OK;
        if(p.matrix>=matrices){out.status=PB_HLS_BAD_SIZE;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);continue;}
        const pb_global_matrix_desc d=desc[p.matrix];
        if(d.ptr_offset+d.ptr_length>ptr_count || d.pack_ptr_offset+d.pack_ptr_length>pack_count ||
           d.lane_offset+d.lane_length>lane_count || d.ptr_length>PB_STAGED_PTR_CAP ||
           d.pack_ptr_length>PB_STAGED_PTR_CAP || d.lane_length>PB_STAGED_LANE_CAP){
            out.status=PB_HLS_BAD_SIZE;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);continue;
        }
        if(p.op==PB_POOL_STAGE_REQ){
#if defined(PB_ROLL_POOL_STUB_MEMORY)
            /* Protocol-only smoke build: exercise req/rsp/commit/ack without
             * issuing AXI traffic.  This separates a stream handshake issue
             * from the DDR adapter; production builds do not define it. */
            out.ptr_len=0U;out.pack_len=0U;out.lane_len=0U;
            pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);
#else
            out.ptr_len=d.ptr_length;out.pack_len=d.pack_ptr_length;out.lane_len=d.lane_length;
            pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);
            for(pb_hls_u32 i=0U;i<d.ptr_length;++i){pb_pool_pkt z={};z.worker=owner;z.op=PB_POOL_STAGE_PTR;z.matrix=p.matrix;z.index=i;z.value_u32=pool_ptr[d.ptr_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);}
            for(pb_hls_u32 i=0U;i<d.pack_ptr_length;++i){pb_pool_pkt z={};z.worker=owner;z.op=PB_POOL_STAGE_PACK;z.matrix=p.matrix;z.index=i;z.value_u32=pool_pack[d.pack_ptr_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);}
            for(pb_hls_u32 i=0U;i<d.lane_length;++i){
                pb_pool_pkt z={};z.worker=owner;z.matrix=p.matrix;z.index=i;
                z.op=PB_POOL_STAGE_L0;z.value_lane=pool_l0[d.lane_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);
                z.op=PB_POOL_STAGE_L1;z.value_lane=pool_l1[d.lane_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);
                z.op=PB_POOL_STAGE_L2;z.value_lane=pool_l2[d.lane_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);
                z.op=PB_POOL_STAGE_L3;z.value_lane=pool_l3[d.lane_offset+i];pb_pool_rsp_write(owner,z,r0,r1,r2,r3,r4,r5,r6,r7);
            }
#endif
        } else if(p.op==PB_POOL_COMMIT_HDR){
#if defined(PB_ROLL_POOL_STUB_MEMORY)
            out.op=PB_POOL_COMMIT_ACK;out.status=PB_HLS_OK;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);
#else
            if(p.lane_len!=d.lane_length){out.status=PB_HLS_BAD_SIZE;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);continue;}
            for(pb_hls_u32 i=0U;i<d.lane_length;++i){
                pb_pool_pkt z={};pb_pool_req_read(owner,z,q0,q1,q2,q3,q4,q5,q6,q7);
                if(z.op!=PB_POOL_COMMIT_VEC||z.index!=i){out.status=PB_HLS_BAD_PATTERN;}
                else { pool_l0[d.lane_offset+i]=z.value_lane; pool_l1[d.lane_offset+i]=z.value_lane1;
                       pool_l2[d.lane_offset+i]=z.value_lane2; pool_l3[d.lane_offset+i]=z.value_lane3; }
            }
            out.op=PB_POOL_COMMIT_ACK;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);
#endif
        } else {out.status=PB_HLS_BAD_PATTERN;pb_pool_rsp_write(owner,out,r0,r1,r2,r3,r4,r5,r6,r7);}
    }
#if defined(PB_ROLL_LOCAL_POOL_CACHE) && !defined(PB_ROLL_EXTERNAL_POOL_CACHE)
    for(pb_hls_u32 i=0U;i<lane_count;++i){
#pragma HLS PIPELINE II=1
        lane0_pool[i]=lane0_cache[i]; lane1_pool[i]=lane1_cache[i];
        lane2_pool[i]=lane2_cache[i]; lane3_pool[i]=lane3_cache[i];
    }
#endif
}

static pb_hls_u32 pb_pool_worker_stage(
    pb_hls_u32 worker,pb_hls_u32 matrix,
    hls::stream<pb_pool_pkt> &req,hls::stream<pb_pool_pkt> &rsp,
    pb_hls_u32 *pp,pb_hls_u32 *kp,pb_hls_lword *v0,pb_hls_lword *v1,
    pb_hls_lword *v2,pb_hls_lword *v3,pb_hls_u32 &n)
{
#pragma HLS INLINE off
    pb_pool_pkt rq={};rq.worker=worker;rq.op=PB_POOL_STAGE_REQ;rq.matrix=matrix;req.write(rq);
    pb_pool_pkt h=rsp.read();
    if(h.status!=PB_HLS_OK||h.op!=PB_POOL_STAGE_HDR||h.ptr_len>PB_STAGED_PTR_CAP||h.pack_len>PB_STAGED_PTR_CAP||h.lane_len>PB_STAGED_LANE_CAP)return PB_HLS_BAD_SIZE;
    n=h.lane_len;
    for(pb_hls_u32 i=0U;i<h.ptr_len;++i){pb_pool_pkt z=rsp.read();if(z.op!=PB_POOL_STAGE_PTR||z.index!=i)return PB_HLS_BAD_PATTERN;pp[i]=z.value_u32;}
    for(pb_hls_u32 i=0U;i<h.pack_len;++i){pb_pool_pkt z=rsp.read();if(z.op!=PB_POOL_STAGE_PACK||z.index!=i)return PB_HLS_BAD_PATTERN;kp[i]=z.value_u32;}
    for(pb_hls_u32 i=0U;i<h.lane_len;++i){pb_pool_pkt z=rsp.read();if(z.op!=PB_POOL_STAGE_L0||z.index!=i)return PB_HLS_BAD_PATTERN;v0[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L1||z.index!=i)return PB_HLS_BAD_PATTERN;v1[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L2||z.index!=i)return PB_HLS_BAD_PATTERN;v2[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L3||z.index!=i)return PB_HLS_BAD_PATTERN;v3[i]=z.value_lane;}
    return PB_HLS_OK;
}

/* Keep the request write and the response read in separate HLS call
 * boundaries.  If they are placed in one helper, Vitis HLS 2022.2 can use
 * the not-yet-valid response header as a guard for the request write.  The
 * resulting RTL waits for a response before it has emitted the request. */
static void pb_pool_worker_stage_send(
    pb_hls_u32 worker,pb_hls_u32 matrix,hls::stream<pb_pool_pkt> &req)
{
#pragma HLS INLINE off
    pb_pool_pkt rq={};rq.worker=worker;rq.op=PB_POOL_STAGE_REQ;rq.matrix=matrix;
    req.write(rq);
}

static pb_hls_u32 pb_pool_worker_stage_recv(
    hls::stream<pb_pool_pkt> &rsp,
    pb_hls_u32 *pp,pb_hls_u32 *kp,pb_hls_lword *v0,pb_hls_lword *v1,
    pb_hls_lword *v2,pb_hls_lword *v3,pb_hls_u32 &n)
{
#pragma HLS INLINE off
    pb_pool_pkt h=rsp.read();
    if(h.status!=PB_HLS_OK||h.op!=PB_POOL_STAGE_HDR||h.ptr_len>PB_STAGED_PTR_CAP||
       h.pack_len>PB_STAGED_PTR_CAP||h.lane_len>PB_STAGED_LANE_CAP)return PB_HLS_BAD_SIZE;
    n=h.lane_len;
    for(pb_hls_u32 i=0U;i<h.ptr_len;++i){pb_pool_pkt z=rsp.read();
        if(z.op!=PB_POOL_STAGE_PTR||z.index!=i)return PB_HLS_BAD_PATTERN;pp[i]=z.value_u32;}
    for(pb_hls_u32 i=0U;i<h.pack_len;++i){pb_pool_pkt z=rsp.read();
        if(z.op!=PB_POOL_STAGE_PACK||z.index!=i)return PB_HLS_BAD_PATTERN;kp[i]=z.value_u32;}
    for(pb_hls_u32 i=0U;i<h.lane_len;++i){pb_pool_pkt z=rsp.read();
        if(z.op!=PB_POOL_STAGE_L0||z.index!=i)return PB_HLS_BAD_PATTERN;v0[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L1||z.index!=i)return PB_HLS_BAD_PATTERN;v1[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L2||z.index!=i)return PB_HLS_BAD_PATTERN;v2[i]=z.value_lane;
        z=rsp.read();if(z.op!=PB_POOL_STAGE_L3||z.index!=i)return PB_HLS_BAD_PATTERN;v3[i]=z.value_lane;}
    return PB_HLS_OK;
}

static pb_hls_u32 pb_pool_worker_commit(
    pb_hls_u32 worker,pb_hls_u32 matrix,pb_hls_u32 n,
    hls::stream<pb_pool_pkt> &req,hls::stream<pb_pool_pkt> &rsp,
    const pb_hls_lword *v0,const pb_hls_lword *v1,const pb_hls_lword *v2,const pb_hls_lword *v3)
{
#pragma HLS INLINE off
    pb_pool_pkt h={};h.worker=worker;h.op=PB_POOL_COMMIT_HDR;h.matrix=matrix;h.lane_len=n;req.write(h);
    for(pb_hls_u32 lane=0U;lane<4U;++lane)for(pb_hls_u32 i=0U;i<n;++i){pb_pool_pkt z={};z.worker=worker;z.op=PB_POOL_COMMIT_L0+lane;z.matrix=matrix;z.index=i;z.value_lane=lane==0U?v0[i]:(lane==1U?v1[i]:(lane==2U?v2[i]:v3[i]));req.write(z);}
    pb_pool_pkt a=rsp.read();return a.op==PB_POOL_COMMIT_ACK?a.status:PB_HLS_BAD_PATTERN;
}

static void pb_pool_worker_commit_send(
    pb_hls_u32 worker,pb_hls_u32 matrix,pb_hls_u32 n,
    hls::stream<pb_pool_pkt> &req,
    const pb_hls_lword *v0,const pb_hls_lword *v1,const pb_hls_lword *v2,const pb_hls_lword *v3)
{
#pragma HLS INLINE off
    pb_pool_pkt h={};h.worker=worker;h.op=PB_POOL_COMMIT_HDR;h.matrix=matrix;h.lane_len=n;req.write(h);
    for(pb_hls_u32 i=0U;i<n;++i){pb_pool_pkt z={};z.worker=worker;z.op=PB_POOL_COMMIT_VEC;z.matrix=matrix;z.index=i;
        z.value_lane=v0[i];z.value_lane1=v1[i];z.value_lane2=v2[i];z.value_lane3=v3[i];req.write(z);}
}

static pb_hls_u32 pb_pool_worker_commit_recv(hls::stream<pb_pool_pkt> &rsp)
{
#pragma HLS INLINE off
    pb_pool_pkt a=rsp.read();return a.op==PB_POOL_COMMIT_ACK?a.status:PB_HLS_BAD_PATTERN;
}

static void pb_roll_scheduler(
    const pb_hls_u32 kind[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 aid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 lid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 uid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 rows[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 shared[PB_ROLL_MAX_TASKS],
    const pb_hls_f32 eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dep[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 succ_ptr[PB_ROLL_MAX_TASKS+1U],
    const pb_hls_u32 succ_idx[PB_ROLL_MAX_EDGES],
    pb_hls_u32 tasks,pb_hls_u32 edges,
    hls::stream<pb_global_worker_cmd> &q0,
    hls::stream<pb_global_worker_cmd> &q1,
    hls::stream<pb_global_worker_cmd> &q2,
    hls::stream<pb_global_worker_cmd> &q3,
    hls::stream<pb_global_worker_cmd> &q4,
    hls::stream<pb_global_worker_cmd> &q5,
    hls::stream<pb_global_worker_cmd> &q6,
    hls::stream<pb_global_worker_cmd> &q7,
    hls::stream<pb_roll_done> &d0,hls::stream<pb_roll_done> &d1,
    hls::stream<pb_roll_done> &d2,hls::stream<pb_roll_done> &d3,
    hls::stream<pb_roll_done> &d4,hls::stream<pb_roll_done> &d5,
    hls::stream<pb_roll_done> &d6,hls::stream<pb_roll_done> &d7,
    hls::stream<pb_roll_summary> &summary_out)
{
#pragma HLS INLINE off
    pb_hls_u32 state[PB_ROLL_MAX_TASKS],remaining[PB_ROLL_MAX_TASKS];
    pb_hls_u32 ready_lu[PB_ROLL_READY_CAP],ready_ss[PB_ROLL_READY_CAP];
    pb_hls_u32 pe_task[PB_ROLL_PES];
    pb_global_worker_cmd pe_cmd[PB_ROLL_PES];
#if defined(PB_ROLL_PARTITION_SCHED_STATE)
#pragma HLS ARRAY_PARTITION variable=state complete
#pragma HLS ARRAY_PARTITION variable=remaining complete
#else
#pragma HLS BIND_STORAGE variable=state type=ram_2p impl=lutram
#pragma HLS BIND_STORAGE variable=remaining type=ram_2p impl=lutram
#endif
#pragma HLS BIND_STORAGE variable=ready_lu type=ram_2p impl=lutram
#pragma HLS BIND_STORAGE variable=ready_ss type=ram_2p impl=lutram
#pragma HLS ARRAY_PARTITION variable=pe_task complete
#pragma HLS ARRAY_PARTITION variable=pe_cmd complete
    pb_hls_u32 issued=0U,completed=0U,max_inflight=0U,max_lu=0U;
    pb_hls_u32 max_ss=0U,reissued=0U,errors=0U,status=PB_HLS_OK;
    pb_hls_u64 read_bytes=0U,write_bytes=0U;
    if(tasks==0U||tasks>PB_ROLL_MAX_TASKS||edges>PB_ROLL_MAX_EDGES||
       succ_ptr[tasks]!=edges){status=PB_HLS_BAD_SIZE;++errors;
       pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);
       pb_roll_emit_summary(summary_out,issued,completed,max_inflight,max_lu,max_ss,
           reissued,read_bytes,write_bytes,errors,status);return;}
    pb_hls_u32 lu_head=0U,lu_tail=0U,lu_ready=0U;
    pb_hls_u32 ss_head=0U,ss_tail=0U,ss_ready=0U;
    for(pb_hls_u32 t=0U;t<tasks;++t){
        remaining[t]=dep[t];state[t]=dep[t]?PB_ROLL_BLOCKED:PB_ROLL_READY;
        if(!pb_roll_kind_ok(kind[t])){status=PB_HLS_BAD_SIZE;++errors;}
        else if(dep[t]==0U){
            if(pb_roll_is_ssssm(kind[t])){
                if(ss_ready>=PB_ROLL_READY_CAP){status=PB_HLS_BAD_SIZE;++errors;}
                else {ready_ss[ss_tail]=t;ss_tail=ss_tail+1U==PB_ROLL_READY_CAP?0U:ss_tail+1U;++ss_ready;}
            }else{
                if(lu_ready>=PB_ROLL_READY_CAP){status=PB_HLS_BAD_SIZE;++errors;}
                else {ready_lu[lu_tail]=t;lu_tail=lu_tail+1U==PB_ROLL_READY_CAP?0U:lu_tail+1U;++lu_ready;}
            }
        }
    }
    for(pb_hls_u32 pe=0U;pe<PB_ROLL_PES;++pe){
#pragma HLS UNROLL
        pe_task[pe]=PB_ROLL_NO_TASK;pe_cmd[pe]={};
    }
    if(status!=PB_HLS_OK){pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);
        pb_roll_emit_summary(summary_out,issued,completed,max_inflight,max_lu,max_ss,
            reissued,read_bytes,write_bytes,errors,status);return;}
    bool stop_sent=false,stop_seen[PB_ROLL_PES]={false,false,false,false,false,false,false,false};
    pb_hls_u32 stop_count=0U;
    for(pb_hls_u64 guard=0U;guard<PB_ROLL_MAX_POLLS;++guard){
        /* At most one command is in flight per PE.  Select an occupied PE
         * and block on that worker's done FIFO.  All other workers continue
         * executing while this event is consumed; no internal non-blocking
         * FIFO merge is required. */
        pb_hls_u32 wait_pe=PB_ROLL_NO_TASK;
        for(pb_hls_u32 pe=0U;pe<PB_ROLL_PES;++pe){
#pragma HLS UNROLL
            if(wait_pe==PB_ROLL_NO_TASK&&
               ((stop_sent&&!stop_seen[pe])||(!stop_sent&&pe_task[pe]!=PB_ROLL_NO_TASK)))
                wait_pe=pe;
        }
        if(wait_pe!=PB_ROLL_NO_TASK){
            pb_roll_done d;
            if(wait_pe==0U)d0.read(d);else if(wait_pe==1U)d1.read(d);
            else if(wait_pe==2U)d2.read(d);else if(wait_pe==3U)d3.read(d);
            else if(wait_pe==4U)d4.read(d);else if(wait_pe==5U)d5.read(d);
            else if(wait_pe==6U)d6.read(d);else d7.read(d);
            if(d.task_id==PB_ROLL_NO_TASK){
                if(!stop_seen[d.pe_id]){stop_seen[d.pe_id]=true;++stop_count;}
                continue;
            }
            if(d.task_id>=tasks||d.pe_id>=PB_ROLL_PES||
               pe_task[d.pe_id]!=d.task_id||state[d.task_id]!=PB_ROLL_INFLIGHT||
               kind[d.task_id]!=d.kind||d.status!=PB_HLS_OK){
                status=d.status==PB_HLS_OK?PB_HLS_BAD_PATTERN:d.status;
                ++errors;continue;
            }
            const pb_hls_u32 t=d.task_id;
            state[t]=PB_ROLL_COMPLETE;pe_task[d.pe_id]=PB_ROLL_NO_TASK;
            read_bytes+=d.read_bytes;write_bytes+=d.write_bytes;++completed;
            const pb_hls_u32 begin=succ_ptr[t],end=succ_ptr[t+1U];
            if(end<begin||end>edges){status=PB_HLS_BAD_PATTERN;++errors;continue;}
            for(pb_hls_u32 e=begin;e<end;++e){
#pragma HLS PIPELINE II=1
                const pb_hls_u32 s=succ_idx[e];
                if(s>=tasks||remaining[s]==0U){status=PB_HLS_BAD_PATTERN;++errors;continue;}
                const pb_hls_u32 next=remaining[s]-1U;remaining[s]=next;
                if(next==0U){
                    state[s]=PB_ROLL_READY;
                    if(pb_roll_is_ssssm(kind[s])){
                        if(ss_ready>=PB_ROLL_MAX_TASKS){status=PB_HLS_BAD_PATTERN;++errors;}
                        else if(ss_ready<PB_ROLL_READY_CAP){ready_ss[ss_tail]=s;ss_tail=ss_tail+1U==PB_ROLL_READY_CAP?0U:ss_tail+1U;++ss_ready;}
                        else {status=PB_HLS_BAD_SIZE;++errors;}
                    }else{
                        if(lu_ready>=PB_ROLL_MAX_TASKS){status=PB_HLS_BAD_PATTERN;++errors;}
                        else if(lu_ready<PB_ROLL_READY_CAP){ready_lu[lu_tail]=s;lu_tail=lu_tail+1U==PB_ROLL_READY_CAP?0U:lu_tail+1U;++lu_ready;}
                        else {status=PB_HLS_BAD_SIZE;++errors;}
                    }
                }
            }
        }
        if(status!=PB_HLS_OK&&!stop_sent){pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);stop_sent=true;}
        if(status==PB_HLS_OK){
            for(pb_hls_u32 pe=0U;pe<PB_ROLL_PES;++pe){
#if defined(PB_ROLL_SERIAL_DEBUG)
                if(issued!=completed && pe>0U) break;
#endif
                if(pe_task[pe]!=PB_ROLL_NO_TASK)continue;
                pb_hls_u32 chosen=PB_ROLL_NO_TASK;
                const bool ss_pe=pe>=PB_ROLL_SS_BASE;
                const pb_hls_u32 attempts=ss_pe?ss_ready:lu_ready;
                /* The old loop was statically bounded by the full 512-task
                 * capacity for every PE, even when only a few ready entries
                 * existed.  Keep the same FIFO order and conflict policy,
                 * but bound the scan by the current ready count.  This cuts
                 * the wide ready-queue mux/comparator cone without changing
                 * the event protocol or the selected task sequence. */
                for(pb_hls_u32 a=0U;a<attempts;++a){
                    if(chosen!=PB_ROLL_NO_TASK)break;
                    pb_hls_u32 t=PB_ROLL_NO_TASK;
                    if(ss_pe){
                        t=ready_ss[ss_head];ss_head=ss_head+1U==PB_ROLL_READY_CAP?0U:ss_head+1U;--ss_ready;
                    }else{
                        t=ready_lu[lu_head];lu_head=lu_head+1U==PB_ROLL_READY_CAP?0U:lu_head+1U;--lu_ready;
                    }
                    if(t>=tasks||state[t]!=PB_ROLL_READY){status=PB_HLS_BAD_PATTERN;++errors;continue;}
                    const pb_global_worker_cmd candidate=pb_roll_cmd(t,pe,kind,aid,lid,uid,rows,cols,shared,eps);
                    bool conflict=false;
                    for(pb_hls_u32 other=0U;other<PB_ROLL_PES;++other){
#pragma HLS UNROLL
                        if(pe_task[other]!=PB_ROLL_NO_TASK&&pb_roll_conflict(candidate,pe_cmd[other]))
                            conflict=true;
                    }
                    if(!conflict)chosen=t;
                    else if(ss_pe){
                        if(ss_ready<PB_ROLL_READY_CAP){ready_ss[ss_tail]=t;ss_tail=ss_tail+1U==PB_ROLL_READY_CAP?0U:ss_tail+1U;++ss_ready;} else {status=PB_HLS_BAD_SIZE;++errors;}
                    }else{
                        if(lu_ready<PB_ROLL_READY_CAP){ready_lu[lu_tail]=t;lu_tail=lu_tail+1U==PB_ROLL_READY_CAP?0U:lu_tail+1U;++lu_ready;} else {status=PB_HLS_BAD_SIZE;++errors;}
                    }
                }
                if(chosen!=PB_ROLL_NO_TASK){
                    const pb_global_worker_cmd c=pb_roll_cmd(chosen,pe,kind,aid,lid,uid,rows,cols,shared,eps);
                    state[chosen]=PB_ROLL_INFLIGHT;pe_task[pe]=chosen;pe_cmd[pe]=c;
                    pb_roll_send(pe,c,q0,q1,q2,q3,q4,q5,q6,q7);++issued;
                    if(issued>PB_ROLL_PES&&completed<issued)++reissued;
#if defined(PB_ROLL_SERIAL_DEBUG)
                    break;
#endif
                }
            }
        }
        pb_hls_u32 lu=0U,ss=0U;
        for(pb_hls_u32 pe=0U;pe<PB_ROLL_PES;++pe){
#pragma HLS UNROLL
            if(pe_task[pe]!=PB_ROLL_NO_TASK){if(pe<PB_ROLL_LU_PES)++lu;else ++ss;}
        }
        if(lu>max_lu)max_lu=lu;if(ss>max_ss)max_ss=ss;
        if(lu+ss>max_inflight)max_inflight=lu+ss;
        if(completed==tasks&&!stop_sent){pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);stop_sent=true;}
        if(stop_sent&&stop_count==PB_ROLL_PES)break;
        if(!stop_sent&&issued==completed&&completed<tasks){
            if(lu_ready==0U&&ss_ready==0U){status=PB_HLS_BAD_PATTERN;++errors;pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);stop_sent=true;}
        }
    }
    if(!stop_sent)pb_roll_stops(q0,q1,q2,q3,q4,q5,q6,q7);
    if((completed!=tasks||stop_count!=PB_ROLL_PES)&&status==PB_HLS_OK){status=PB_HLS_TIMEOUT;++errors;}
    pb_roll_emit_summary(summary_out,issued,completed,max_inflight,max_lu,max_ss,
        reissued,read_bytes,write_bytes,errors,status);
}

template<int PE>
static void pb_roll_worker(
    hls::stream<pb_global_worker_cmd> &in,hls::stream<pb_roll_done> &out,
    hls::stream<pb_pool_pkt> &req,hls::stream<pb_pool_pkt> &rsp)
{
#pragma HLS INLINE off
    pb_hls_u32 ap[PB_STAGED_PTR_CAP],app[PB_STAGED_PTR_CAP];
    pb_hls_u32 lp[PB_STAGED_PTR_CAP],lpp[PB_STAGED_PTR_CAP];
    pb_hls_u32 up[PB_STAGED_PTR_CAP],upp[PB_STAGED_PTR_CAP];
    pb_hls_lword a0[PB_STAGED_LANE_CAP],a1[PB_STAGED_LANE_CAP],a2[PB_STAGED_LANE_CAP],a3[PB_STAGED_LANE_CAP];
    pb_hls_lword l0[PB_STAGED_LANE_CAP],l1[PB_STAGED_LANE_CAP],l2[PB_STAGED_LANE_CAP],l3[PB_STAGED_LANE_CAP];
    pb_hls_lword u0[PB_STAGED_LANE_CAP],u1[PB_STAGED_LANE_CAP],u2[PB_STAGED_LANE_CAP],u3[PB_STAGED_LANE_CAP];
    /* Explicit protocol FSM.  Keeping request emission and response
     * consumption in different loop states is important for Vitis HLS
     * 2022.2: if both calls are in one helper, the response-dependent
     * predicate can be scheduled before the request write and the RTL
     * request is silently suppressed. */
    pb_global_worker_cmd c={};
    pb_hls_u32 phase=0U; /* 0 command, 1/3/5 req, 2/4/6 rsp, 7 kernel,
                          * 8/10 commit-send, 9/11 ack, 12 done */
    pb_hls_u32 al=0U,ll=0U,ul=0U;
    pb_hls_u64 rb=0U,wb=0U; pb_hls_u32 ks=PB_HLS_OK;
    for(pb_hls_u64 guard=0U;guard<PB_ROLL_MAX_POLLS;++guard){
        if(phase==0U){
            if(in.empty())continue;
            in.read(c);
            if(c.task_id==PB_ROLL_NO_TASK){
                pb_pool_pkt ps={};ps.worker=PE;ps.op=PB_POOL_STOP;req.write(ps);
                pb_roll_done stop={};stop.task_id=PB_ROLL_NO_TASK;stop.pe_id=PE;out.write(stop);return;
            }
            rb=0U;wb=0U;ks=PB_HLS_OK;al=0U;ll=0U;ul=0U;
            const bool kind_ok=PE<4?(c.kind<=PB_LU_SHARED_TSTRF):(c.kind==PB_LU_SHARED_SSSSM);
            if(c.pe_id!=(pb_hls_u32)PE||!kind_ok)ks=PB_HLS_BAD_SIZE;
            if(ks==PB_HLS_OK)phase=1U;else phase=12U;
        } else if(phase==1U){
            pb_pool_pkt rq={};rq.worker=PE;rq.op=PB_POOL_STAGE_REQ;rq.matrix=c.a_matrix;req.write(rq);phase=2U;
        } else if(phase==2U){
            ks=pb_pool_worker_stage_recv(rsp,ap,app,a0,a1,a2,a3,al);
            rb+=(pb_hls_u64)al*4U*sizeof(pb_hls_lword);if(ks==PB_HLS_OK)phase=3U;else phase=12U;
        } else if(phase==3U){
            pb_pool_pkt rq={};rq.worker=PE;rq.op=PB_POOL_STAGE_REQ;rq.matrix=c.l_matrix;req.write(rq);phase=4U;
        } else if(phase==4U){
            ks=pb_pool_worker_stage_recv(rsp,lp,lpp,l0,l1,l2,l3,ll);
            rb+=(pb_hls_u64)ll*4U*sizeof(pb_hls_lword);if(ks==PB_HLS_OK)phase=5U;else phase=12U;
        } else if(phase==5U){
            pb_pool_pkt rq={};rq.worker=PE;rq.op=PB_POOL_STAGE_REQ;rq.matrix=c.u_matrix;req.write(rq);phase=6U;
        } else if(phase==6U){
            ks=pb_pool_worker_stage_recv(rsp,up,upp,u0,u1,u2,u3,ul);
            rb+=(pb_hls_u64)ul*4U*sizeof(pb_hls_lword);if(ks==PB_HLS_OK)phase=7U;else phase=12U;
        } else if(phase==7U){
#if defined(PB_ROLL_DIAG_STUB_KERNEL) && defined(__SYNTHESIS__)
            rb=sizeof(pb_global_worker_cmd);wb=sizeof(pb_roll_done);ks=PB_HLS_OK;
#else
            if(PE<4)pb_hybrid_lu_dispatch(c.kind,ap,app,a0,a1,a2,a3,lp,lpp,l0,l1,l2,l3,up,upp,u0,u1,u2,u3,
                c.a_rows,c.a_cols,c.shared_dim,c.pivot_eps,ks);
            else pb_hybrid_ssssm_dispatch(ap,app,a0,a1,a2,a3,lp,lpp,l0,l1,l2,l3,up,upp,u0,u1,u2,u3,
                c.a_rows,c.a_cols,c.shared_dim,ks);
#endif
            if(ks==PB_HLS_OK)phase=8U;else phase=12U;
        } else if(phase==8U){
            if(c.kind==PB_LU_SHARED_GETRF)pb_pool_worker_commit_send(PE,c.l_matrix,ll,req,l0,l1,l2,l3);
            else pb_pool_worker_commit_send(PE,c.a_matrix,al,req,a0,a1,a2,a3);
            phase=9U;
        } else if(phase==9U){
            ks=pb_pool_worker_commit_recv(rsp);
            if(ks!=PB_HLS_OK)phase=12U;
            else if(c.kind==PB_LU_SHARED_GETRF)phase=10U;
            else {wb+=(pb_hls_u64)al*4U*sizeof(pb_hls_lword);phase=12U;}
        } else if(phase==10U){
            pb_pool_worker_commit_send(PE,c.u_matrix,ul,req,u0,u1,u2,u3);phase=11U;
        } else if(phase==11U){
            ks=pb_pool_worker_commit_recv(rsp);if(ks==PB_HLS_OK)wb+=(pb_hls_u64)(ll+ul)*4U*sizeof(pb_hls_lword);phase=12U;
        } else { /* phase 12: emit completion and return to command state */
            pb_roll_done d={};d.task_id=c.task_id;d.pe_id=PE;d.kind=c.kind;d.status=ks;d.read_bytes=rb;d.write_bytes=wb;out.write(d);phase=0U;
        }
    }
    pb_roll_done d={};d.task_id=PB_ROLL_NO_TASK-1U;d.pe_id=PE;d.status=PB_HLS_TIMEOUT;out.write(d);
}

/* Sequential C model.  It preserves the same dependency-release point and
 * canonical pool semantics.  The synthesized branch below is the physical
 * rolling DATAFLOW implementation. */
static void pb_roll_csim(
    const pb_hls_u32 kind[PB_ROLL_MAX_TASKS],const pb_hls_u32 aid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 lid[PB_ROLL_MAX_TASKS],const pb_hls_u32 uid[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 rows[PB_ROLL_MAX_TASKS],const pb_hls_u32 cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 shared[PB_ROLL_MAX_TASKS],const pb_hls_f32 eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dep[PB_ROLL_MAX_TASKS],const pb_hls_u32 sp[PB_ROLL_MAX_TASKS+1U],
    const pb_hls_u32 si[PB_ROLL_MAX_EDGES],pb_hls_u32 tasks,pb_hls_u32 edges,
    const pb_global_matrix_desc desc[PB_ROLL_MAX_MATRICES],pb_hls_u32 matrices,
    const pb_hls_u32 *ptr,pb_hls_u32 ptr_count,const pb_hls_u32 *pack,pb_hls_u32 pack_count,
    pb_hls_lword *x0,pb_hls_lword *x1,pb_hls_lword *x2,pb_hls_lword *x3,pb_hls_u32 lane_count,
    pb_hls_u32 &issued,pb_hls_u32 &completed,pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu,pb_hls_u32 &max_ss,pb_hls_u32 &reissued,
    pb_hls_u64 &read_bytes,pb_hls_u64 &write_bytes,pb_hls_u32 &errors,pb_hls_u32 &status)
{
    pb_hls_u32 rem[PB_ROLL_MAX_TASKS],state[PB_ROLL_MAX_TASKS];
    issued=completed=max_inflight=max_lu=max_ss=reissued=errors=0U;
    read_bytes=write_bytes=0U;status=PB_HLS_OK;
    if(!tasks||tasks>PB_ROLL_MAX_TASKS||edges>PB_ROLL_MAX_EDGES||sp[tasks]!=edges){status=PB_HLS_BAD_SIZE;++errors;return;}
    for(pb_hls_u32 t=0U;t<tasks;++t){rem[t]=dep[t];state[t]=dep[t]?PB_ROLL_BLOCKED:PB_ROLL_READY;}
    pb_staged_slot slot;
    while(completed<tasks){
        pb_hls_u32 chosen=PB_ROLL_NO_TASK;
        for(pb_hls_u32 t=0U;t<tasks;++t)if(chosen==PB_ROLL_NO_TASK&&state[t]==PB_ROLL_READY)chosen=t;
        if(chosen==PB_ROLL_NO_TASK){status=PB_HLS_BAD_PATTERN;++errors;return;}
        const pb_hls_u32 pe=pb_roll_is_ssssm(kind[chosen])?4U:0U;
        pb_global_worker_cmd c=pb_roll_cmd(chosen,pe,kind,aid,lid,uid,rows,cols,shared,eps);
        state[chosen]=PB_ROLL_INFLIGHT;++issued;
        pb_hls_u64 rb=0U,wb=0U;pb_hls_u32 ks=PB_HLS_OK;
        pb_coherent_staged_dispatch_runtime(c,desc,matrices,PB_ROLL_MAX_MATRICES,
            ptr,ptr_count,pack,pack_count,x0,x1,x2,x3,lane_count,slot,rb,wb,ks);
        if(ks!=PB_HLS_OK){status=ks;++errors;return;}
        read_bytes+=rb;write_bytes+=wb;state[chosen]=PB_ROLL_COMPLETE;++completed;
        for(pb_hls_u32 e=sp[chosen];e<sp[chosen+1U];++e){const pb_hls_u32 s=si[e];
            if(s>=tasks||rem[s]==0U){status=PB_HLS_BAD_PATTERN;++errors;return;}
            if(--rem[s]==0U)state[s]=PB_ROLL_READY;}
    }
    /* Functional CSim is sequential; report the architectural worker bound,
     * while RTL latency is taken from the co-simulation report. */
    max_inflight=max_lu=1U;max_ss=0U;reissued=0U;
}

/* Keep the DATAFLOW region in a dedicated function.  In Vitis HLS 2022.2 a
 * DATAFLOW pragma placed in the top function can be folded into the top
 * control FSM when the top also contains descriptor loading and scalar output
 * ports.  That causes the scheduler to be started and awaited before the
 * workers.  This wrapper contains only the stream declarations and process
 * calls, so the scheduler/worker start protocol is generated from the FIFO
 * graph rather than from the top-level scalar ports. */
static void pb_roll_dataflow_core(
    const pb_hls_u32 task_kind[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_u_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_ROLL_MAX_TASKS],const pb_hls_f32 task_pivot_eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_ROLL_MAX_TASKS],const pb_hls_u32 successor_ptr[PB_ROLL_MAX_TASKS+1U],
    const pb_hls_u32 successor_idx[PB_ROLL_MAX_EDGES],pb_hls_u32 task_count,pb_hls_u32 edge_count,
    const pb_global_matrix_desc desc[PB_ROLL_MAX_MATRICES],pb_hls_u32 matrix_count,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_pool_count,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_pool_count,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,pb_hls_lword *lane2_pool,
    pb_hls_lword *lane3_pool,pb_hls_u32 lane_pool_count,
    pb_hls_u32 &issued_count,pb_hls_u32 &completed_count,pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu_inflight,pb_hls_u32 &max_ssssm_inflight,pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_read_bytes,pb_hls_u64 &total_write_bytes,pb_hls_u32 &protocol_errors,pb_hls_u32 &status)
{
    hls::stream<pb_global_worker_cmd> q0("roll_q0"),q1("roll_q1"),q2("roll_q2"),q3("roll_q3");
    hls::stream<pb_global_worker_cmd> q4("roll_q4"),q5("roll_q5"),q6("roll_q6"),q7("roll_q7");
    hls::stream<pb_roll_done> d0("roll_d0"),d1("roll_d1"),d2("roll_d2"),d3("roll_d3");
    hls::stream<pb_roll_done> d4("roll_d4"),d5("roll_d5"),d6("roll_d6"),d7("roll_d7");
    hls::stream<pb_pool_pkt> r0("pool_req0"),r1("pool_req1"),r2("pool_req2"),r3("pool_req3");
    hls::stream<pb_pool_pkt> r4("pool_req4"),r5("pool_req5"),r6("pool_req6"),r7("pool_req7");
    hls::stream<pb_pool_pkt> s0("pool_rsp0"),s1("pool_rsp1"),s2("pool_rsp2"),s3("pool_rsp3");
    hls::stream<pb_pool_pkt> s4("pool_rsp4"),s5("pool_rsp5"),s6("pool_rsp6"),s7("pool_rsp7");
    hls::stream<pb_roll_summary> summary("roll_summary");
#pragma HLS STREAM variable=q0 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q1 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q2 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q3 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q4 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q5 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q6 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=q7 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d0 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d1 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d2 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d3 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d4 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d5 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d6 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=d7 depth=PB_ROLL_FIFO_DEPTH
#pragma HLS STREAM variable=r0 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r1 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r2 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r3 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r4 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r5 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r6 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=r7 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s0 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s1 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s2 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s3 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s4 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s5 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s6 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=s7 depth=PB_ROLL_POOL_FIFO_DEPTH
#pragma HLS STREAM variable=summary depth=2
#pragma HLS DATAFLOW disable_start_propagation
    pb_roll_scheduler(task_kind,task_a_matrix,task_l_matrix,task_u_matrix,task_a_rows,task_a_cols,
        task_shared_dim,task_pivot_eps,dependency_count,successor_ptr,successor_idx,task_count,edge_count,
        q0,q1,q2,q3,q4,q5,q6,q7,d0,d1,d2,d3,d4,d5,d6,d7,summary);
    pb_pool_server(desc,matrix_count,ptr_pool,ptr_pool_count,pack_ptr_pool,pack_pool_count,
        lane0_pool,lane1_pool,lane2_pool,lane3_pool,lane_pool_count,
        r0,r1,r2,r3,r4,r5,r6,r7,s0,s1,s2,s3,s4,s5,s6,s7);
    pb_roll_worker<0>(q0,d0,r0,s0);
    pb_roll_worker<1>(q1,d1,r1,s1);
    pb_roll_worker<2>(q2,d2,r2,s2);
    pb_roll_worker<3>(q3,d3,r3,s3);
    pb_roll_worker<4>(q4,d4,r4,s4);
    pb_roll_worker<5>(q5,d5,r5,s5);
    pb_roll_worker<6>(q6,d6,r6,s6);
    pb_roll_worker<7>(q7,d7,r7,s7);
    pb_roll_finish(summary,issued_count,completed_count,max_inflight,max_lu_inflight,
        max_ssssm_inflight,reissued_while_active,total_read_bytes,total_write_bytes,
        protocol_errors,status);
}

/* AXI pool preload is deliberately outside the DATAFLOW region.  Keeping
 * m_axi reads in pb_pool_server made the 512-task scheduler sensitive to
 * start-propagation and AXI response back-pressure; the 64-task build hid
 * that race.  The server still owns the shared pool protocol, but consumes
 * this on-chip cached view, then the wrapper writes the committed lane pool
 * back to DDR after all workers have stopped. */
static void pb_roll_dataflow(
    const pb_hls_u32 task_kind[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_u_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_ROLL_MAX_TASKS],const pb_hls_f32 task_pivot_eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_ROLL_MAX_TASKS],const pb_hls_u32 successor_ptr[PB_ROLL_MAX_TASKS+1U],
    const pb_hls_u32 successor_idx[PB_ROLL_MAX_EDGES],pb_hls_u32 task_count,pb_hls_u32 edge_count,
    const pb_global_matrix_desc desc[PB_ROLL_MAX_MATRICES],pb_hls_u32 matrix_count,
    const pb_hls_u32 *ptr_pool,pb_hls_u32 ptr_pool_count,
    const pb_hls_u32 *pack_ptr_pool,pb_hls_u32 pack_pool_count,
    pb_hls_lword *lane0_pool,pb_hls_lword *lane1_pool,pb_hls_lword *lane2_pool,
    pb_hls_lword *lane3_pool,pb_hls_u32 lane_pool_count,
    pb_hls_u32 &issued_count,pb_hls_u32 &completed_count,pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu_inflight,pb_hls_u32 &max_ssssm_inflight,pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_read_bytes,pb_hls_u64 &total_write_bytes,pb_hls_u32 &protocol_errors,pb_hls_u32 &status)
{
#if defined(PB_ROLL_EXTERNAL_POOL_CACHE)
    pb_hls_u32 ptr_cache[PB_ROLL_PTR_POOL_CAP],pack_cache[PB_ROLL_PACK_POOL_CAP];
    pb_hls_lword lane0_cache[PB_ROLL_LANE_POOL_CAP],lane1_cache[PB_ROLL_LANE_POOL_CAP];
    pb_hls_lword lane2_cache[PB_ROLL_LANE_POOL_CAP],lane3_cache[PB_ROLL_LANE_POOL_CAP];
#pragma HLS BIND_STORAGE variable=ptr_cache type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=pack_cache type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane1_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane2_cache type=ram_2p impl=uram
#pragma HLS BIND_STORAGE variable=lane3_cache type=ram_2p impl=uram
    for(pb_hls_u32 i=0U;i<ptr_pool_count;++i){
#pragma HLS PIPELINE II=1
        ptr_cache[i]=ptr_pool[i];
    }
    for(pb_hls_u32 i=0U;i<pack_pool_count;++i){
#pragma HLS PIPELINE II=1
        pack_cache[i]=pack_ptr_pool[i];
    }
    for(pb_hls_u32 i=0U;i<lane_pool_count;++i){
#pragma HLS PIPELINE II=1
        lane0_cache[i]=lane0_pool[i];lane1_cache[i]=lane1_pool[i];
        lane2_cache[i]=lane2_pool[i];lane3_cache[i]=lane3_pool[i];
    }
    pb_roll_dataflow_core(task_kind,task_a_matrix,task_l_matrix,task_u_matrix,task_a_rows,task_a_cols,
        task_shared_dim,task_pivot_eps,dependency_count,successor_ptr,successor_idx,task_count,edge_count,
        desc,matrix_count,ptr_cache,ptr_pool_count,pack_cache,pack_pool_count,
        lane0_cache,lane1_cache,lane2_cache,lane3_cache,lane_pool_count,
        issued_count,completed_count,max_inflight,max_lu_inflight,max_ssssm_inflight,
        reissued_while_active,total_read_bytes,total_write_bytes,protocol_errors,status);
    for(pb_hls_u32 i=0U;i<lane_pool_count;++i){
#pragma HLS PIPELINE II=1
        lane0_pool[i]=lane0_cache[i];lane1_pool[i]=lane1_cache[i];
        lane2_pool[i]=lane2_cache[i];lane3_pool[i]=lane3_cache[i];
    }
#else
    pb_roll_dataflow_core(task_kind,task_a_matrix,task_l_matrix,task_u_matrix,task_a_rows,task_a_cols,
        task_shared_dim,task_pivot_eps,dependency_count,successor_ptr,successor_idx,task_count,edge_count,
        desc,matrix_count,ptr_pool,ptr_pool_count,pack_ptr_pool,pack_pool_count,
        lane0_pool,lane1_pool,lane2_pool,lane3_pool,lane_pool_count,
        issued_count,completed_count,max_inflight,max_lu_inflight,max_ssssm_inflight,
        reissued_while_active,total_read_bytes,total_write_bytes,protocol_errors,status);
#endif
}

extern "C" void pb_hybrid_parallel4x4_rolling(
    const pb_hls_u32 task_kind[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_l_matrix[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_u_matrix[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_a_rows[PB_ROLL_MAX_TASKS],const pb_hls_u32 task_a_cols[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 task_shared_dim[PB_ROLL_MAX_TASKS],const pb_hls_f32 task_pivot_eps[PB_ROLL_MAX_TASKS],
    const pb_hls_u32 dependency_count[PB_ROLL_MAX_TASKS],const pb_hls_u32 successor_ptr[PB_ROLL_MAX_TASKS+1U],
    const pb_hls_u32 successor_idx[PB_ROLL_MAX_EDGES],pb_hls_u32 task_count,pb_hls_u32 edge_count,
    const pb_hls_u32 matrix_desc_words[PB_ROLL_MAX_MATRICES*PB_GLOBAL_DESC_WORDS],pb_hls_u32 matrix_count,
    const pb_hls_u32 ptr_pool[PB_ROLL_PTR_POOL_CAP],pb_hls_u32 ptr_pool_count,
    const pb_hls_u32 pack_ptr_pool[PB_ROLL_PACK_POOL_CAP],pb_hls_u32 pack_pool_count,
    pb_hls_lword lane0_pool[PB_ROLL_LANE_POOL_CAP],pb_hls_lword lane1_pool[PB_ROLL_LANE_POOL_CAP],
    pb_hls_lword lane2_pool[PB_ROLL_LANE_POOL_CAP],pb_hls_lword lane3_pool[PB_ROLL_LANE_POOL_CAP],pb_hls_u32 lane_pool_count,
    pb_hls_u32 &issued_count,pb_hls_u32 &completed_count,pb_hls_u32 &max_inflight,
    pb_hls_u32 &max_lu_inflight,pb_hls_u32 &max_ssssm_inflight,pb_hls_u32 &reissued_while_active,
    pb_hls_u64 &total_read_bytes,pb_hls_u64 &total_write_bytes,pb_hls_u32 &protocol_errors,pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=task_kind offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_a_matrix offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_l_matrix offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_u_matrix offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_a_rows offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_a_cols offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_shared_dim offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=task_pivot_eps offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=dependency_count offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS
#pragma HLS INTERFACE m_axi port=successor_ptr offset=slave bundle=dag depth=PB_ROLL_MAX_TASKS+1
#pragma HLS INTERFACE m_axi port=successor_idx offset=slave bundle=dag depth=PB_ROLL_MAX_EDGES
#pragma HLS INTERFACE m_axi port=matrix_desc_words offset=slave bundle=desc depth=PB_ROLL_MAX_MATRICES*PB_GLOBAL_DESC_WORDS
#pragma HLS INTERFACE m_axi port=ptr_pool offset=slave bundle=meta depth=PB_ROLL_PTR_POOL_CAP
#pragma HLS INTERFACE m_axi port=pack_ptr_pool offset=slave bundle=meta depth=PB_ROLL_PACK_POOL_CAP
#pragma HLS INTERFACE m_axi port=lane0_pool offset=slave bundle=lane0 depth=PB_ROLL_LANE_POOL_CAP
#pragma HLS INTERFACE m_axi port=lane1_pool offset=slave bundle=lane1 depth=PB_ROLL_LANE_POOL_CAP
#pragma HLS INTERFACE m_axi port=lane2_pool offset=slave bundle=lane2 depth=PB_ROLL_LANE_POOL_CAP
#pragma HLS INTERFACE m_axi port=lane3_pool offset=slave bundle=lane3 depth=PB_ROLL_LANE_POOL_CAP
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_global_matrix_desc desc[PB_ROLL_MAX_MATRICES];
#pragma HLS BIND_STORAGE variable=desc type=ram_2p impl=bram
    issued_count=completed_count=max_inflight=max_lu_inflight=max_ssssm_inflight=0U;
    reissued_while_active=protocol_errors=0U;total_read_bytes=total_write_bytes=0U;status=PB_HLS_OK;
    if(matrix_count==0U||matrix_count>PB_ROLL_MAX_MATRICES||
       ptr_pool_count>PB_ROLL_PTR_POOL_CAP||pack_pool_count>PB_ROLL_PACK_POOL_CAP||
       lane_pool_count>PB_ROLL_LANE_POOL_CAP){status=PB_HLS_BAD_SIZE;protocol_errors=1U;return;}
    for(pb_hls_u32 i=0U;i<matrix_count;++i){
#pragma HLS PIPELINE II=1
        desc[i]=pb_roll_load_desc(matrix_desc_words,i);
    }
#ifndef __SYNTHESIS__
    pb_roll_csim(task_kind,task_a_matrix,task_l_matrix,task_u_matrix,task_a_rows,task_a_cols,
        task_shared_dim,task_pivot_eps,dependency_count,successor_ptr,successor_idx,task_count,edge_count,
        desc,matrix_count,ptr_pool,ptr_pool_count,pack_ptr_pool,pack_pool_count,lane0_pool,lane1_pool,
        lane2_pool,lane3_pool,lane_pool_count,issued_count,completed_count,max_inflight,max_lu_inflight,
        max_ssssm_inflight,reissued_while_active,total_read_bytes,total_write_bytes,protocol_errors,status);
#else
    pb_roll_dataflow(task_kind,task_a_matrix,task_l_matrix,task_u_matrix,task_a_rows,task_a_cols,
        task_shared_dim,task_pivot_eps,dependency_count,successor_ptr,successor_idx,task_count,edge_count,
        desc,matrix_count,ptr_pool,ptr_pool_count,pack_ptr_pool,pack_pool_count,
        lane0_pool,lane1_pool,lane2_pool,lane3_pool,lane_pool_count,
        issued_count,completed_count,max_inflight,max_lu_inflight,max_ssssm_inflight,
        reissued_while_active,total_read_bytes,total_write_bytes,protocol_errors,status);
#endif
}
