#ifndef PB_HOST_ADAPTER_CSC_KERNELS_SHIM_H
#define PB_HOST_ADAPTER_CSC_KERNELS_SHIM_H

/* Keep the host adapter self-contained when Vitis HLS does not propagate the
 * testbench -I<hls/src> flag into the generated csim.mk.  The actual ABI
 * remains the single canonical header owned by hls/src. */
#include "../../hls/src/pb_csc_kernels.h"

#endif
