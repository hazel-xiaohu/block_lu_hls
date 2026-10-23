# `pb_hybrid_ddr_window_dependency_flat` deployment status

## Delivered hardware artifacts

The board-fit configuration targets `xczu15eg-ffvb1156-2-i` and uses the
Samsung DDR4 preset requested for the MPSoC-P15 board.  The PS configuration
enables UART0 on MIO42/43 and SD1 on MIO46..51 with CD on MIO45.  The PL data
path exposes four DDR masters through HP0, HP1, HPC0 and HPC1; the AXI-Lite
control path is connected through the PS HPM0 interface.

Final artifacts:

* `vivado/output/pangulu_hybrid_ddr_zu15eg.bit`
* `vivado/output/pangulu_hybrid_ddr_zu15eg.xsa`
* `vivado/output/timing_summary.rpt`
* `vivado/output/utilization.rpt`

The XSA contains the bitstream.  Post-route timing is met: setup WNS is
`+1.316 ns`, hold WHS is `+0.010 ns`, and both total setup/hold violations are
zero.  Utilization is 77,836 LUTs (22.81%), 96,446 FFs (14.13%), 451 BRAM
tiles (60.62%), and 87 DSP48E2 (2.47%).

## PS runtime adapter

The pool allocator and register programming adapter are in:

* `ps_runtime/include/pb_hybrid_runtime.h`
* `ps_runtime/src/pb_hybrid_runtime.c`

The caller must reserve a physically contiguous, device-visible DDR region
(or a CMA allocation under Linux), initialize `pb_hybrid_pool_allocator` with
that region, call `pb_hybrid_pool_alloc_layout()`, fill the DAG/descriptor/pool
arrays, and call `pb_hybrid_configure()` with the AXI-Lite base addresses.
For the board-fit build, use `pb_hybrid_pool_alloc_layout_ex()` with
`ptr_per_matrix=1025`, `pack_ptr_per_matrix=1025`, and
`lane_per_matrix=16384`; this keeps the PS-side capacities consistent with the
synthesized IP instead of allocating the larger production defaults.
Then use `pb_hybrid_start()` and either `pb_hybrid_wait()` or the done IRQ
helpers.  The pointer arguments are programmed through the second AXI-Lite
bank; all buffers must be flushed before starting and invalidated after done
when the PS cache is enabled.

The host-side ABI smoke test is:

```bash
./ps_runtime/build_host_smoke.sh
```

It reports `PB_PS_RUNTIME_SMOKE_PASS`.

## Validation sequence

1. Five-task smoke test:

   ```bash
   ./run_ddr_window_production_csim.sh
   ```

   Result: 5 issued/completed/committed, dependency order and metadata checks
   pass, zero mismatches.

2. Real processed matrix:

   ```bash
   ./run_ddr_window_production_mtx_csim.sh \
       /output/block_lu_hls/sparse_mm/processed_circuit_1.mtx 328 identity
   ```

   Result: 84 tasks, 164 edges, 56 matrix descriptors, 84 refills,
   84 completions/commits, maximum in-flight concurrency 7, zero mismatches
   and zero incomplete tasks.

3. Production DATAFLOW concurrency:

   The synthesized top enters the `#pragma HLS DATAFLOW` path when
   `PB_DDR_RTL_SAFE` is not defined.  The real-matrix CSim above exercises the
   rolling window and reports the concurrent result.  The small DATAFLOW RTL
   smoke (`run_ddr_window_dataflow_rtl_smoke.sh`) completed 1/1 at
   26,226,335 ps (about 26.2 us simulated time; about 33.5 min wall time) and
   reached `$finish`.  The full production-capacity RTL smoke is not yet a
   passing regression: its XSIM run remained at 0/1 and was stopped.  Thus
   production CSim concurrency and the small DATAFLOW RTL path are validated,
   but full-capacity DATAFLOW RTL and board-level concurrency still require a
   follow-up handshake/scale test.

Useful scripts:

* `vivado/build_board_fit.sh` — rebuild the board-fit project.
* `vivado/export_completed.sh` — export bit/XSA from a completed impl run
  without rerunning synthesis.
* `run_ddr_window_production_rtl_smoke.sh` — production-capacity unsafe RTL
  regression (currently expected to expose the DATAFLOW hang).
* `run_ddr_window_dataflow_rtl_smoke.sh` — small DATAFLOW RTL regression.

## Standalone PS application

The XSA now has a matching A53 standalone domain/BSP and application source
under `vitis/`.  The reproducible build is:

```bash
source /output/xilinx_compat/xilinx_compat.sh
./vitis/build_vitis.sh
```

The resulting download artifact is `vitis/pb_hybrid_app.elf` (ELF64/AArch64,
entry `0x100000`); a raw `vitis/pb_hybrid_app.bin` is emitted as well.  The
application includes the PS runtime register adapter, FatFs Matrix-Market
header parser, PBFA v2 DAG/CSC4 loader, and cache flush/invalidate calls.
The host-side `run_mtx_to_flat_abi.sh` must be used first to generate
`pb_flat.bin`; the current board ABI intentionally keeps full PanguLU
normalization/symbolic analysis on the host and sends a pointer-free DAG image
to the PS/PL path.  The platform-generated FSBL and PMUFW are under
`vitis/workspace/pb_hybrid_platform/`; actual board execution remains pending
the matching SD-card image and hardware smoke test.
