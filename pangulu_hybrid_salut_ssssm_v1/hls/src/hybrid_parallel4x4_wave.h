#ifndef PB_HYBRID_PARALLEL4X4_WAVE_H
#define PB_HYBRID_PARALLEL4X4_WAVE_H

#include "hybrid_global_dependency_scheduler.h"

/* One conflict-free execution wave.  PE 0..3 are complete LU workers
 * (GETRF/GESSM/TSTRF) and PE 4..7 are complete SSSSM workers.  Every PE has
 * a distinct AXI master bundle, but software programs the eight bundle base
 * addresses to the same canonical CSC4 pool.  The DAG scheduler may place
 * tasks in one wave only when no task reads or writes another task's output.
 */
#define PB_PAR4_WORKERS 8U
#define PB_PAR4_LU_WORKERS 4U

#ifndef PB_PAR4_PTR_POOL_CAP
#define PB_PAR4_PTR_POOL_CAP PB_GLOBAL_PTR_POOL_CAP
#endif
#ifndef PB_PAR4_PACK_POOL_CAP
#define PB_PAR4_PACK_POOL_CAP PB_GLOBAL_PACK_POOL_CAP
#endif
#ifndef PB_PAR4_LANE_POOL_CAP
#define PB_PAR4_LANE_POOL_CAP PB_GLOBAL_LANE_POOL_CAP
#endif

struct pb_parallel4x4_wave_cmd {
    /* A partially occupied wave keeps all eight physical workers present but
     * lets the DAG scheduler leave individual slots idle. */
    pb_hls_u32 active;
    pb_global_worker_cmd task;
    pb_global_matrix_desc a_desc;
    pb_global_matrix_desc l_desc;
    pb_global_matrix_desc u_desc;
};

#define PB_PAR4_PORT_DECL(ID) \
    const pb_hls_u32 *w##ID##_ptr, const pb_hls_u32 *w##ID##_pack, \
    pb_hls_lword *w##ID##_lane0, pb_hls_lword *w##ID##_lane1, \
    pb_hls_lword *w##ID##_lane2, pb_hls_lword *w##ID##_lane3

extern "C" void pb_hybrid_parallel4x4_wave(
    const pb_parallel4x4_wave_cmd commands[PB_PAR4_WORKERS],
    PB_PAR4_PORT_DECL(0), PB_PAR4_PORT_DECL(1),
    PB_PAR4_PORT_DECL(2), PB_PAR4_PORT_DECL(3),
    PB_PAR4_PORT_DECL(4), PB_PAR4_PORT_DECL(5),
    PB_PAR4_PORT_DECL(6), PB_PAR4_PORT_DECL(7),
    pb_hls_u32 worker_status[PB_PAR4_WORKERS],
    pb_hls_u64 worker_work[PB_PAR4_WORKERS],
    pb_hls_u32 &done_mask, pb_hls_u32 &max_inflight,
    pb_hls_u32 &status);

#undef PB_PAR4_PORT_DECL

#endif
