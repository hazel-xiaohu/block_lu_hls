#ifndef PB_MTX_FLAT_ADAPTER_HPP
#define PB_MTX_FLAT_ADAPTER_HPP

#include <cstdint>
#include <string>
#include <vector>

extern "C" {
#include "pb_block_lu.h"
#include "pb_mtx.h"
#include "pb_runtime.h"
}

#include "pb_csc_kernels.h"

/* Host-side image produced by the PS front-end.  It is intentionally
 * pointer-free: every task refers to matrix IDs and every matrix refers to a
 * contiguous range in one of the three CSC4 pools.  The image can therefore
 * be copied to DDR and consumed by a future AXI descriptor loader without
 * depending on host virtual addresses. */
struct pb_mtx_flat_matrix_record {
    pb_hls_u32 rows;
    pb_hls_u32 cols;
    pb_hls_u32 nnz;
    pb_hls_u32 packed_words;
    pb_hls_u32 ptr_offset;
    pb_hls_u32 ptr_length;
    pb_hls_u32 pack_ptr_offset;
    pb_hls_u32 pack_ptr_length;
    pb_hls_u32 lane_offset;
    pb_hls_u32 lane_length;
};

struct pb_mtx_flat_task_record {
    pb_hls_u32 kind;
    pb_hls_u32 a_matrix;
    pb_hls_u32 l_matrix;
    pb_hls_u32 u_matrix;
    pb_hls_u32 x;
    pb_hls_u32 dependency_count;
    pb_hls_u32 a_rows;
    pb_hls_u32 a_cols;
    pb_hls_u32 shared_dim;
    pb_hls_f32 pivot_eps;
};

struct pb_mtx_flat_image {
    static const pb_hls_u32 MAGIC = 0x50424641U; /* PBFA */
    static const pb_hls_u32 VERSION = 2U;

    pb_hls_u32 magic = MAGIC;
    pb_hls_u32 version = VERSION;
    pb_hls_u32 n = 0U;
    pb_hls_u32 nb = 0U;
    pb_hls_u32 block_count = 0U;
    pb_hls_u32 active_block_count = 0U;
    pb_hls_u32 matrix_count = 0U;
    pb_hls_u32 task_count = 0U;
    pb_hls_u32 edge_count = 0U;

    std::vector<pb_mtx_flat_matrix_record> matrices;
    std::vector<pb_mtx_flat_task_record> tasks;
    std::vector<pb_hls_u32> successor_ptr;
    std::vector<pb_hls_u32> successor_idx;

    /* Canonical CSC counts and CSC4 metadata are stored separately.  The
     * four lane pools contain one 64-bit {value,row} word per packed lane. */
    std::vector<pb_hls_u32> ptr_pool;
    std::vector<pb_hls_u32> pack_ptr_pool;
    std::vector<pb_hls_lword> lane0_pool;
    std::vector<pb_hls_lword> lane1_pool;
    std::vector<pb_hls_lword> lane2_pool;
    std::vector<pb_hls_lword> lane3_pool;
};

struct pb_mtx_flat_options {
    pb_hls_u32 nb = 512U;
    pb_hls_u32 arena_mb = 768U;
    pb_hls_u32 graph_arena_mb = 64U;
    std::string order_path = "identity";
    pb_hls_f32 pivot_eps = 1.0e-6f;
};

struct pb_mtx_flat_report {
    pb_hls_u32 input_nnz = 0U;
    pb_hls_u32 symbolic_l_nnz = 0U;
    pb_hls_u32 symbolic_u_nnz = 0U;
    pb_hls_u32 max_matrix_nnz = 0U;
    pb_hls_u32 max_packed_words = 0U;
    pb_hls_u32 max_ptr_words = 0U;
    pb_hls_u64 total_packed_words = 0U;
};

/* Build the exact PanguLU CPU-front-end representation and convert it to the
 * pointer-free flat image.  The input may be an original numeric Matrix
 * Market file; order_path may be "identity" or a PanguLU .ord file. */
int pb_mtx_flat_build(const char *matrix_path,
                      const pb_mtx_flat_options &options,
                      pb_mtx_flat_image &image,
                      pb_mtx_flat_report &report,
                      std::string &error);

/* Binary serialization for PS/PL bring-up.  The file uses little-endian
 * fixed-width fields and contains no process pointers. */
int pb_mtx_flat_write_binary(const char *path,
                             const pb_mtx_flat_image &image,
                             std::string &error);

/* Read a previously generated pointer-free image.  RTL testbenches use this
 * entry point so Vitis HLS never has to compile the CPU symbolic front-end. */
int pb_mtx_flat_read_binary(const char *path,
                            pb_mtx_flat_image &image,
                            std::string &error);

/* Structural and offset checks performed before an image is handed to an
 * AXI descriptor loader. */
int pb_mtx_flat_validate(const pb_mtx_flat_image &image, std::string &error);

#endif
