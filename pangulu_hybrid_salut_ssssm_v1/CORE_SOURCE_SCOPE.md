# Rolling 4+4 core source snapshot

This directory contains the source snapshot for the experimental
`pb_hybrid_parallel4x4_rolling` HLS design.

## Hardware hierarchy

- Top: `hls/src/hybrid_parallel4x4_rolling.cpp`
  - `pb_hybrid_parallel4x4_rolling`
  - `pb_roll_dataflow`
  - `pb_roll_dataflow_core`
  - `pb_roll_scheduler`
  - `pb_pool_server`
  - `pb_roll_worker<0..7>`
- Arithmetic dispatch: `hls/src/hybrid_worker_pool.cpp`
  - workers 0..3: GETRF/GESSM/TSTRF
  - workers 4..7: SSSSM
- Packed CSC4 kernels: `hls/src/pb_csc_kernels_project.cpp`
  - `pb_getrf_csc_factor4_packed_all`
  - `pb_gessm_csc_tv_factor4_packed_all`
  - `pb_tstrf_csc_tv_factor4_packed_all`
  - `pb_ssssm_csc_tv_factor4_streammerge4_shadow`

## Reproduction entry points

- C simulation: `run_parallel4x4_rolling_nb16_wide512_validation.sh`
- HLS synthesis: `run_parallel4x4_rolling_csynth.sh`
- RTL co-simulation: `run_parallel4x4_rolling_rtl_cosim.sh`
- Protocol-only 510-task gate: `run_rolling_pool_510_regression.sh`

## First run on a new host

The snapshot vendors the required single-process PanguLU CPU front end under
`host_adapter/pangulu_cpu`; no `/output/block_lu_hls/...` source tree is
required.  The CSim and wide-512 validation entry points automatically build
the ignored host executables on first use:

```bash
source /path/to/Xilinx/Vitis_HLS/2022.2/settings64.sh
bash run_parallel4x4_rolling_csim.sh
```

To build the Matrix Market adapter explicitly, run:

```bash
bash host_adapter/build_mtx_to_flat_abi.sh
```

Required host tools are `gcc`, `g++`, Bash, and Vitis HLS 2022.2. The
`/output/xilinx_compat/xilinx_compat.sh` environment is optional and is only
loaded when it exists.

The protocol-only gate defines `PB_ROLL_DIAG_STUB_KERNEL`; it must not be
reported as a real floating-point RTL result. The full real-float 510-task
co-simulation had not completed successfully at the time of this snapshot:
CSim and synthesis completed, while XSim reached the watchdog with the HLS
transaction still at `0 / 1`.

Generated HLS/Vivado projects, XSim logs, bitstreams, XSA files, and binary
flat images are intentionally excluded. The included Matrix Market fixture
can be converted into the flat ABI by the host adapter scripts.
