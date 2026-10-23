#ifndef PB_HYBRID_POOL4X4_TILED_H
#define PB_HYBRID_POOL4X4_TILED_H

#include "hybrid_panel_cache4x4.h"

#define PB_P4X4_WORKERS 8U
#define PB_P4X4_LU_WORKERS 4U
#define PB_P4X4_TILE_ROWS 256U
#define PB_P4X4_TARGET_CAP (PB_P4X4_WORKERS * PB_P4X4_TILE_ROWS)
/* Maximum addressable packed-panel words exposed through the HLS m_axi
 * metadata.  The runtime panel_lane_capacity argument remains the exact
 * valid length for each invocation; this constant only prevents Vitis HLS
 * from inferring depth=1 for a pointer port during co-simulation/IP export. */
#define PB_P4X4_PANEL_CAPACITY 4096U

enum pb_p4x4_worker_role {
    PB_P4X4_ROLE_LU = 0U,
    PB_P4X4_ROLE_SSSSM = 1U
};

/* One tiled sparse update issued to a physical worker.  Worker 0--3 are LU
 * workers, worker 4--7 are SSSSM workers.  Both types reuse this primitive:
 * a target tile is staged locally, a read-only L/U panel is streamed through
 * the shared cache, and four lane-private deltas are accumulated. */
struct pb_p4x4_tiled_cmd {
    pb_hls_u32 role;
    pb_hls_u32 matrix_id;
    pb_hls_u32 column;
    pb_hls_u32 lane_offset;
    pb_hls_u32 word_base;
    pb_hls_u32 word_count;
    pb_hls_u32 entry_count;
    pb_hls_u32 row_base;
    pb_hls_u32 row_count;
    pb_hls_u32 target_offset;
    pb_hls_u32 target_count;
    pb_hls_f32 alpha;
};

extern "C" void pb_hybrid_pool4x4_tiled_shadow(
    const pb_p4x4_tiled_cmd commands[PB_P4X4_WORKERS],
    const pb_hls_u32 target_row[PB_P4X4_TARGET_CAP],
    const pb_hls_f32 target_value[PB_P4X4_TARGET_CAP],
    pb_hls_f32 output_value[PB_P4X4_TARGET_CAP],
    const pb_hls_lword *panel_lane0,
    const pb_hls_lword *panel_lane1,
    const pb_hls_lword *panel_lane2,
    const pb_hls_lword *panel_lane3,
    pb_hls_u32 panel_lane_capacity,
    pb_hls_u32 worker_status[PB_P4X4_WORKERS],
    pb_hls_u32 &cache_requests,
    pb_hls_u32 &cache_hits,
    pb_hls_u32 &cache_misses,
    pb_hls_u32 &cache_errors,
    pb_hls_u32 &status);

#endif
