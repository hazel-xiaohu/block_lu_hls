#ifndef PB_HYBRID_PANEL_CACHE4X4_H
#define PB_HYBRID_PANEL_CACHE4X4_H

#include "pb_csc_kernels.h"
#include <hls_stream.h>

/* Shared read-only L/U column cache used by the physical 4+4 pool.
 *
 * A cache line contains one packed CSC4 column.  A 1024-row block needs at
 * most 256 packed words per column; the larger 1024-word bound also permits
 * rectangular blocks with up to 4096 rows.  Four cache lines occupy sixteen
 * URAM288 blocks when the four 64-bit lanes are bound independently.
 */
#ifndef PB_P4X4_CACHE_SLOTS
#define PB_P4X4_CACHE_SLOTS 4U
#endif

#ifndef PB_P4X4_TILE_WORDS
#define PB_P4X4_TILE_WORDS 1024U
#endif

#define PB_P4X4_CLIENTS 8U
#define PB_P4X4_NO_CLIENT 0xffffffffU

enum pb_p4x4_cache_status {
    PB_P4X4_CACHE_OK = 0U,
    PB_P4X4_CACHE_BAD_REQUEST = 1U,
    PB_P4X4_CACHE_OVERSIZE = 2U
};

struct pb_p4x4_panel_request {
    pb_hls_u32 client;
    pb_hls_u32 matrix_id;
    pb_hls_u32 column;
    pb_hls_u32 lane_offset;
    pb_hls_u32 word_base;
    pb_hls_u32 word_count;
    /* Valid scalar records in these packed words.  The final CSC4 word can
     * contain up to three padding lanes. */
    pb_hls_u32 entry_count;
    pb_hls_u32 stop;
};

struct pb_p4x4_panel_word {
    pb_hls_u32 matrix_id;
    pb_hls_u32 column;
    pb_hls_u32 index;
    pb_hls_u32 count;
    pb_hls_u32 entry_count;
    pb_hls_u32 status;
    pb_hls_u32 last;
    pb_hls_lword lane0;
    pb_hls_lword lane1;
    pb_hls_lword lane2;
    pb_hls_lword lane3;
};

void pb_p4x4_panel_cache_service(
    hls::stream<pb_p4x4_panel_request> &r0,
    hls::stream<pb_p4x4_panel_request> &r1,
    hls::stream<pb_p4x4_panel_request> &r2,
    hls::stream<pb_p4x4_panel_request> &r3,
    hls::stream<pb_p4x4_panel_request> &r4,
    hls::stream<pb_p4x4_panel_request> &r5,
    hls::stream<pb_p4x4_panel_request> &r6,
    hls::stream<pb_p4x4_panel_request> &r7,
    hls::stream<pb_p4x4_panel_word> &o0,
    hls::stream<pb_p4x4_panel_word> &o1,
    hls::stream<pb_p4x4_panel_word> &o2,
    hls::stream<pb_p4x4_panel_word> &o3,
    hls::stream<pb_p4x4_panel_word> &o4,
    hls::stream<pb_p4x4_panel_word> &o5,
    hls::stream<pb_p4x4_panel_word> &o6,
    hls::stream<pb_p4x4_panel_word> &o7,
    const pb_hls_lword *lane0_pool,
    const pb_hls_lword *lane1_pool,
    const pb_hls_lword *lane2_pool,
    const pb_hls_lword *lane3_pool,
    pb_hls_u32 lane_capacity,
    pb_hls_u32 &requests,
    pb_hls_u32 &hits,
    pb_hls_u32 &misses,
    pb_hls_u32 &errors);

#endif
