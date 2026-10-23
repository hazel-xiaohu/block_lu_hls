#ifndef PB_HYBRID_WORKER_EVENTS_H
#define PB_HYBRID_WORKER_EVENTS_H

#include "pb_csc_kernels.h"

/* Stage-4 physical-pool contract.  These records are deliberately smaller
 * than the matrix descriptors: PS/PL transfers the descriptor once, while
 * the arithmetic workers access the packed CSC4 views through the addresses
 * carried by the descriptor.  A completion event is the only input used by
 * the dependency counter update; no estimated duration is allowed on this
 * path. */
enum pb_hybrid_worker_state {
    PB_HY_WORKER_IDLE = 0,
    PB_HY_WORKER_BUSY = 1,
    PB_HY_WORKER_DONE = 2,
    PB_HY_WORKER_ERROR = 3
};

struct pb_hybrid_worker_cmd {
    pb_hls_u32 task_id;
    pb_hls_u32 kind;
    pb_hls_u32 pe_id;
    pb_hls_u32 a_rows;
    pb_hls_u32 a_cols;
    pb_hls_u32 shared_dim;
    pb_hls_f32 pivot_eps;
    pb_hls_u64 a_ptr;
    pb_hls_u64 a_pack_ptr;
    pb_hls_u64 a_lane0;
    pb_hls_u64 a_lane1;
    pb_hls_u64 a_lane2;
    pb_hls_u64 a_lane3;
    pb_hls_u64 l_ptr;
    pb_hls_u64 l_pack_ptr;
    pb_hls_u64 l_lane0;
    pb_hls_u64 l_lane1;
    pb_hls_u64 l_lane2;
    pb_hls_u64 l_lane3;
    pb_hls_u64 u_ptr;
    pb_hls_u64 u_pack_ptr;
    pb_hls_u64 u_lane0;
    pb_hls_u64 u_lane1;
    pb_hls_u64 u_lane2;
    pb_hls_u64 u_lane3;
};

struct pb_hybrid_worker_done {
    pb_hls_u32 task_id;
    pb_hls_u32 pe_id;
    pb_hls_u32 kind;
    pb_hls_u32 status;
    /* Echo of the command token; it lets a rolling scheduler retire the
     * exact descriptor slot without reconstructing ownership from DDR. */
    pb_hls_u32 window_slot;
    pb_hls_u64 cycles;
};

/* Per-slot protocol diagnostics.  These counters are monotonic over one
 * top-level invocation and make a stalled RTL worker observable without a
 * waveform. */
struct pb_hybrid_worker_debug {
    pb_hls_u32 heartbeat;
    pb_hls_u32 command_received;
    pb_hls_u32 sentinel_seen;
    pb_hls_u32 done_emitted;
    pb_hls_u32 watchdog_timeout;
};

/* The event protocol is intentionally level-independent:
 *   command_valid && command_ready -> worker owns one command;
 *   done_valid && done_ready       -> scheduler consumes one completion.
 * A worker must not overwrite its command registers until done is accepted. */
struct pb_hybrid_worker_event_counters {
    pb_hls_u32 command_accepted;
    pb_hls_u32 completion_emitted;
    pb_hls_u32 completion_consumed;
    pb_hls_u32 protocol_errors;
};

#endif
