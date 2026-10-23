#include "pb_mtx_flat_adapter.hpp"

#include <cstdio>
#include <cstdlib>

namespace {

constexpr pb_hls_u32 kLegacyStage6MaxTasks = 64U;
constexpr pb_hls_u32 kLegacyStage6MaxEdges = 256U;
constexpr pb_hls_u32 kDdrWindowMaxTasks = 1048576U;
constexpr pb_hls_u32 kDdrWindowMaxEdges = 8388608U;
/* Limits of the resource-constrained IP currently present in the exported
 * board bitstream.  They are stricter than the generic DDR-window ABI. */
constexpr pb_hls_u32 kBoardMaxMatrices = 16U;
constexpr pb_hls_u32 kBoardMaxTasks = 512U;
constexpr pb_hls_u32 kBoardMaxEdges = 4096U;
constexpr pb_hls_u32 kBoardMaxPoolWords = 65536U;
constexpr pb_hls_u32 kBoardMaxLaneWords = 262144U;
constexpr pb_hls_u32 kBoardStagedPtrWords = 1025U;
constexpr pb_hls_u32 kBoardStagedLaneWords = 16384U;

} // namespace

static void usage(const char *name)
{
    std::fprintf(stderr,
        "usage: %s MATRIX.mtx OUT.bin [NB] [identity|ORDER.ord]\n", name);
}

int main(int argc, char **argv)
{
    if (argc < 3 || argc > 5) {
        usage(argv[0]);
        return 2;
    }
    pb_mtx_flat_options options;
    if (argc >= 4) options.nb = static_cast<pb_hls_u32>(std::strtoul(argv[3], nullptr, 10));
    if (argc >= 5) options.order_path = argv[4];
    pb_mtx_flat_image image;
    pb_mtx_flat_report report;
    std::string error;
    int rc = pb_mtx_flat_build(argv[1], options, image, report, error);
    if (rc != 0) {
        std::fprintf(stderr, "PB_MTX_FLAT_ERROR stage=build rc=%d %s\n",
                     rc, error.c_str());
        return 1;
    }
    rc = pb_mtx_flat_write_binary(argv[2], image, error);
    if (rc != 0) {
        std::fprintf(stderr, "PB_MTX_FLAT_ERROR stage=write rc=%d %s\n",
                     rc, error.c_str());
        return 1;
    }
    std::printf("PB_MTX_FLAT_PASS n=%u nnz=%u symbolic_l_nnz=%u symbolic_u_nnz=%u "
                "nb=%u blocks=%u active_blocks=%u matrices=%u tasks=%u edges=%u "
                "max_matrix_nnz=%u max_packed_words=%u total_packed_words=%llu "
                "output=%s\n",
                image.n, report.input_nnz, report.symbolic_l_nnz,
                report.symbolic_u_nnz, image.nb, image.block_count,
                image.active_block_count, image.matrix_count, image.task_count,
                image.edge_count, report.max_matrix_nnz, report.max_packed_words,
                static_cast<unsigned long long>(report.total_packed_words), argv[2]);
    if (image.task_count > kLegacyStage6MaxTasks ||
        image.edge_count > kLegacyStage6MaxEdges) {
        std::printf("PB_MTX_FLAT_LEGACY_STAGE6_EXCEEDED tasks=%u edges=%u "
                    "limits_tasks=%u limits_edges=%u use=ddr_window\n",
                    image.task_count, image.edge_count,
                    kLegacyStage6MaxTasks, kLegacyStage6MaxEdges);
    } else {
        std::printf("PB_MTX_FLAT_LEGACY_STAGE6_CAPACITY within=1\n");
    }
    if (image.task_count <= kDdrWindowMaxTasks &&
        image.edge_count <= kDdrWindowMaxEdges) {
        std::printf("PB_MTX_FLAT_DDR_WINDOW_CAPACITY within=1 "
                    "limits_tasks=%u limits_edges=%u\n",
                    kDdrWindowMaxTasks, kDdrWindowMaxEdges);
    } else {
        std::printf("PB_MTX_FLAT_DDR_WINDOW_CAPACITY within=0 tasks=%u edges=%u "
                    "limits_tasks=%u limits_edges=%u\n",
                    image.task_count, image.edge_count,
                    kDdrWindowMaxTasks, kDdrWindowMaxEdges);
        return 3;
    }
    bool board_fit = image.matrix_count <= kBoardMaxMatrices &&
        image.task_count <= kBoardMaxTasks && image.edge_count <= kBoardMaxEdges &&
        image.ptr_pool.size() <= kBoardMaxPoolWords &&
        image.pack_ptr_pool.size() <= kBoardMaxPoolWords &&
        image.lane0_pool.size() <= kBoardMaxLaneWords;
    pb_hls_u32 bad_matrix = image.matrix_count;
    for (pb_hls_u32 i=0U; i<image.matrix_count; ++i) {
        const pb_mtx_flat_matrix_record &m=image.matrices[i];
        if (m.ptr_length > kBoardStagedPtrWords ||
            m.pack_ptr_length > kBoardStagedPtrWords ||
            m.lane_length > kBoardStagedLaneWords) {
            board_fit=false; bad_matrix=i; break;
        }
    }
    if (board_fit) {
        std::printf("PB_MTX_FLAT_BOARD_FIT_CAPACITY within=1 matrices=%u tasks=%u edges=%u staged_ptr=%u staged_lane=%u\n",
                    image.matrix_count,image.task_count,image.edge_count,
                    kBoardStagedPtrWords,kBoardStagedLaneWords);
    } else if (bad_matrix < image.matrix_count) {
        const pb_mtx_flat_matrix_record &m=image.matrices[bad_matrix];
        std::printf("PB_MTX_FLAT_BOARD_FIT_CAPACITY within=0 reason=staged_matrix matrix=%u rows=%u cols=%u ptr_len=%u pack_ptr_len=%u lane_len=%u limits_ptr=%u limits_lane=%u\n",
                    bad_matrix,m.rows,m.cols,m.ptr_length,m.pack_ptr_length,
                    m.lane_length,kBoardStagedPtrWords,kBoardStagedLaneWords);
    } else {
        std::printf("PB_MTX_FLAT_BOARD_FIT_CAPACITY within=0 reason=global_pool matrices=%u tasks=%u edges=%u ptr=%zu pack=%zu lanes=%zu limits_matrices=%u limits_tasks=%u limits_edges=%u limits_ptr=%u limits_lane=%u\n",
                    image.matrix_count,image.task_count,image.edge_count,
                    image.ptr_pool.size(),image.pack_ptr_pool.size(),image.lane0_pool.size(),
                    kBoardMaxMatrices,kBoardMaxTasks,kBoardMaxEdges,
                    kBoardMaxPoolWords,kBoardMaxLaneWords);
    }
    return 0;
}
