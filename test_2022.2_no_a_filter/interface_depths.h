#ifndef SPMM_INTERFACE_DEPTHS_H
#define SPMM_INTERFACE_DEPTHS_H
// Depths count port elements: 32-bit words for A/C, 128-bit words for B.
// B_rcsr is the packed B row-pointer port, so it uses PACKED_ROW_DEPTH;
// ROW_DEPTH is reserved for the 32-bit A/C row-pointer ports.
// Cosim copies the FULL depth and creates AXI memory for every separate port.
// Keep the default sized for the six boundary/cache tests, even for empty input.
// The active RTL test profile is selected by hls_config.cfg. Keep B input
// depth large enough for the selected matrix, while bounding A/C by the test.
// XSIM allocates a separate UVM memory for every AXI port, so using the maximum
// application depth here can exhaust the host memory.
#ifdef SPMM_COSIM_CIRCUIT204
#define SPMM_ROW_DEPTH 512
#define SPMM_INPUT_DEPTH 1024
#define SPMM_PACKED_ROW_DEPTH 128
#define SPMM_PACKED_INPUT_DEPTH 256
#define SPMM_OUTPUT_DEPTH 16384
#elif defined(SPMM_COSIM_LU_CASCADE)
// circuit_3_12127 blocked-LU cascade regression: 32x32 L21/U12/C blocks.
#define SPMM_ROW_DEPTH 64
#define SPMM_INPUT_DEPTH 1024
#define SPMM_PACKED_ROW_DEPTH 16
#define SPMM_PACKED_INPUT_DEPTH 256
#define SPMM_OUTPUT_DEPTH 1025
#elif defined(SPMM_COSIM_RANDOM_EMPTY)
// random_filter_empty: A=2048x2048 (nnz=2831), B=2048x2048 (nnz=3581),
// C=2048x2048 (nnz=3626).  Row-pointer ports include one guard entry;
// packed B row pointers use ceil((2048+1)/4)=513 words, and C output
// ports include one guard element.
#define SPMM_ROW_DEPTH 2050
#define SPMM_INPUT_DEPTH 2831
#define SPMM_PACKED_ROW_DEPTH 513
#define SPMM_PACKED_INPUT_DEPTH 896
#define SPMM_OUTPUT_DEPTH 3627
#elif defined(SPMM_COSIM_POISSON10)
#define SPMM_ROW_DEPTH 128
#define SPMM_INPUT_DEPTH 4096
#define SPMM_PACKED_ROW_DEPTH 3380
#define SPMM_PACKED_INPUT_DEPTH 88191
#define SPMM_OUTPUT_DEPTH 4096
#elif defined(SPMM_LARGE_COSIM)
#define SPMM_ROW_DEPTH 13515
#define SPMM_INPUT_DEPTH 352762
#define SPMM_PACKED_ROW_DEPTH 3380
#define SPMM_PACKED_INPUT_DEPTH 88191
#define SPMM_OUTPUT_DEPTH 2957530
#else
#define SPMM_ROW_DEPTH 128
#define SPMM_INPUT_DEPTH 256
#define SPMM_PACKED_ROW_DEPTH 64
#define SPMM_PACKED_INPUT_DEPTH 128
#define SPMM_OUTPUT_DEPTH 512
#endif
#endif
