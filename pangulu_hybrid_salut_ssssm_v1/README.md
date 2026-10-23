# PanguLU Hybrid SALUT/SSSSM Accelerator v1

This is an independent shadow project for the `xczu15eg-ffvb1156-2-i`.
It does not modify the deployable project in
`/output/block_lu_hls/pangulu_dual_schedule_fpga_v1`.

The target architecture is:

- one dynamically scheduled PE pool shared by GETRF, GESSM, and TSTRF;
- one independent four-PE SSSSM array derived from `/output/ssssm`;
- four packed factor-memory banks;
- a lightweight PL ready-task scheduler;
- PS-side matrix I/O, reordering, and symbolic analysis.

## Validation stages

1. `stage1`: validate the unified task ABI against the frozen scalar CSC
   kernels. Modes 0--2 use the shared four-lane LU datapath and mode 3 uses
   the four-way stream/merge SSSSM shadow.
2. `stage2`: validate four LU slots and four SSSSM slots in the dependency
   scheduler, including queue-full backpressure.
3. `stage3`: bind scheduler assignments to the real LU/SSSSM arithmetic,
   compare a real 4x4 Block-LU DAG element by element, then optimize and
   synthesize the SSSSM merge/writeback path.
4. `stage4`: run isolated RTL smoke tests, followed by a small Block-LU DAG.
5. `stage5`: connect the event scheduler to synthesizable command/done FIFOs
   and verify concurrent LU/SSSSM protocol traffic.  Vivado integration and
   XSA export remain a later gate.
6. `stage6`: replace latency-token worker bodies with real LU/SSSSM command
   adapters. Each adapter performs numerical dispatch and returns a real
   completion/status event; the current gate also includes the replicated
   four-LU/four-SSSSM batch pool, its Stage-5 scheduler bridge, and a
   continuous real-done dependency loop.

Run the current stage with:

```bash
cd /output/pangulu_hybrid_salut_ssssm_v1
./run_stage1_csim.sh
./run_stage1_dag_csim.sh
./run_stage1_csynth.sh
./run_stage2_scheduler_csim.sh
./run_stage2_scheduler_csynth.sh
./run_stage3_pool_csim.sh
./run_stage3_ssssm_baseline_csynth.sh
./run_stage3_ssssm_opt_csim.sh
./run_stage3_ssssm_opt_csynth.sh
./run_stage3_opt_rtl_cosim.sh
./run_stage4_event_csim.sh
./run_stage4_event_csynth.sh
./run_stage4_lu_pool_csim.sh
./run_stage4_lu_pool_csynth.sh
./run_stage4_lu_pool_rtl_cosim.sh
./run_stage5_fifo_csim.sh
./run_stage5_fifo_csynth.sh
./run_stage5_fifo_rtl_cosim.sh
./run_stage6_real_adapter_csim.sh
./run_stage6_real_adapter_csynth.sh
./run_stage6_real_adapter_rtl_cosim.sh
./run_stage6_real_pool_csim.sh
./run_stage6_stage5_bridge_csim.sh
./run_stage6_real_dependency_csim.sh
./run_stage6_real_dependency_stream_csynth.sh
./run_stage6_real_dependency_stream_rtl_cosim.sh
./run_global_mtx_csim.sh MATRIX.mtx NB [identity|ORDER.ord]
./run_global_dependency_csynth.sh
./run_global_dependency_rtl_cosim.sh
./run_coherent_staged_2x2_csim.sh
./run_coherent_staged_task_csynth.sh
./run_coherent_staged_task_rtl_cosim.sh
./run_coherent_dependency_csim.sh
./run_coherent_dependency_csynth.sh
./run_coherent_dependency_rtl_cosim.sh
./run_ddr_window_csim.sh
./run_ddr_window_mtx_csim.sh MATRIX.mtx NB [identity|ORDER.ord]
./run_ddr_window_csynth.sh
./run_ddr_window_rtl_cosim.sh
./run_parallel4x4_wave_validation.sh
```

Expected final line:

```text
PB_HYBRID_STAGE1_PASS getrf=0 gessm=0 tstrf=0 ssssm=0
```

The synthesis command creates only HLS reports/RTL under
`hls/build/stage1_csynth`; it does not export an IP, bitstream, or XSA.

`run_stage1_all.sh` repeats the source/input checksum checks and the Stage-1
commands. Current measured results and known blockers are in
`artifacts/STAGE1_REPORT.md`, `artifacts/STAGE2_SCHEDULER_REPORT.md`, and
`artifacts/STAGE3_WORKER_POOL_REPORT.md` and
`artifacts/STAGE4_EVENT_REPORT.md`.

Stage 4b also has a four-instance LU physical shell. Its CSim, HLS synthesis,
and RTL co-simulation gates now pass (`status=0,0,0,0`). The shell is still a
deterministic sequential control shell, so this is a functional/ABI gate and
not a throughput claim for four concurrent workers. No IP, bitstream, or XSA
is exported by these scripts. See `artifacts/STAGE4_LU_POOL_REPORT.md`.

The optional `PB_STAGE4_PARALLEL` DATAFLOW shadow also passes CSim, HLS
synthesis, and RTL co-simulation. Stage 5 adds live depth-8 command and done
FIFOs and a protocol-level concurrent mix of four LU and four SSSSM tasks.
Stage 6 additionally provides the real arithmetic pool and a bridge from the
Stage-5 PE assignment to real command/done events. See
`artifacts/STAGE5_FIFO_REPORT.md` and
`artifacts/STAGE6_REAL_ADAPTER_REPORT.md`.

The real 2x2 block-LU gate additionally runs the five-task DAG extracted from
`processed_circuit_1.mtx`, exposes the concurrent GESSM/TSTRF opportunity,
and compares all packed CSC lanes with a sequential topological oracle:

```bash
./run_real_2x2_dag_csim.sh
```

See `artifacts/REAL_DAG8_INTEGRATION_REPORT.md` for its CSim, synthesis, and
bounded RTL co-simulation results and for the remaining shared-DDR boundary.

The coherent staged bridge now resolves task-specific descriptors from one
canonical CSC4 pool, invokes the real arithmetic worker, commits GETRF L/U or
the in-place A target as appropriate, and emits completion only after
writeback.  The complete real 2x2 DAG passes CSim with zero lane mismatches,
and a bounded four-kernel RTL gate passes co-simulation in 4,687 cycles.  This
closes the single-command coherence proof.  The Stage-6 dependency extension
adds eight PE-specific command FIFOs, an explicit canonical-memory arbiter,
the staged execution service, and a done FIFO.  A successor is released only
after the service has committed the target matrix and emitted its done event.
The bounded five-task 2x2 DAG passes both CSim and RTL co-simulation with zero
lane mismatches.  See `artifacts/COHERENT_STAGED_BRIDGE_REPORT.md` and
`artifacts/COHERENT_STAGE6_FIFO_REPORT.md`.

The fixed worker-window proof is accompanied by a global DDR packed-pool ABI.
`./run_global_mtx_csim.sh` runs the same PS symbolic front-end and the
descriptor-based dependency path on a real Matrix Market file;
`./run_global_dependency_csynth.sh` checks its HLS top. See
`artifacts/GLOBAL_POOL_ADAPTER.md`. The old fixed-window top remains the
fallback until a physical DDR arbiter is integrated.

The DDR-DAG rolling-window top removes the fixed 64-task/256-edge scheduler
limit.  The complete task table, successor CSR, dependency counters, task
states, and ready queue reside in DDR; only a configurable descriptor window
and eight PE ownership records remain on chip.  A completion can release its
successors only after the staged arithmetic adapter has committed the target
matrix to the canonical CSC4 pool.  Descriptor records enter as scalar 32-bit
words, while the host supplies runtime capacities for every canonical pool.
The RTL-safe bounded gate passes 5/5 tasks with zero lane mismatches, and the
real Matrix Market CSim gate passes with 84 tasks and 164 edges, exceeding the
old task limit with zero numerical mismatches.  Production DATAFLOW synthesis
now estimates 136.99 MHz (7.300 ns).  See
`artifacts/DDR_DAG_ROLLING_WINDOW_REPORT.md` for architecture, capacity,
timing, and the remaining deployment constraints.

The rolling shared-pool protocol is also closed on the complete
1024x1024/NB=16 subgraph: all 510 tasks and 922 dependency edges pass CSim and
RTL co-simulation. The gate uses vectorized four-lane commit/ack packets,
256-entry pool request/response FIFOs, a 64-entry ready queue, and an external
on-chip pool cache around the DATAFLOW region. RTL finishes at 3,290,765 ns
(about 4 min 05 s host time). See
`artifacts/ROLLING_POOL_510_REGRESSION_REPORT.md`. This is the pool and
dependency protocol gate; the floating-point worker bodies remain a separate
RTL throughput gate and are intentionally stubbed in this regression.

The PS-side Matrix Market adapter is in `host_adapter/`. It reuses the
PanguLU CPU front-end for normalization, optional `.ord` reordering, symbolic
LU, sparse block extraction, dependency construction, and CSC4 packing. Run
`./run_mtx_to_flat_abi.sh MATRIX.mtx OUT.bin NB [identity|ORDER.ord]` to
produce a pointer-free flat task image. This image is the input to the next
DDR descriptor-loader step. The rolling-window proof top is
`pb_hybrid_ddr_window_dependency_flat`; it replaces the fixed-window
assumption while retaining the same task graph and packed CSC4 representation.

For a real PS/host launch, use the runtime pool helper in
`host_adapter/include/pb_ddr_runtime_pool.hpp`. It creates 64-byte aligned
descriptor/meta/lane buffers from the actual image sizes (optionally rounded
to a power-of-two page), returns their capacities, and is the place to swap in
the board's DDR/CMA allocator. The HLS top reads only `matrix_capacity`
descriptor records and rejects capacities above the compiled descriptor ABI.

Stage 3 executes the real arithmetic implementation selected by each of the
eight logical PE IDs and has zero elementwise mismatches against the
sequential oracle. Stage 4b additionally proves the flattened four-slot LU
ABI in RTL. Stage 6 passes CSim, HLS synthesis, and RTL co-simulation for the
single real adapter; its replicated four-LU/four-SSSSM pool and Stage-5
scheduler bridge pass CSim with 8/8 commands accepted and 8/8 real done
events. The continuous DATAFLOW dependency gate then runs 12 tasks, releases
successors from real completion events, and reissues four tasks while other
workers remain active (`max_inflight=8`, `reissued_while_active=4`). The flat
AXI-compatible top synthesizes at an estimated 106.37 MHz with 849 BRAM18K,
194 DSP, 79,735 FF, and 108,460 LUT, and its RTL co-simulation passes the same
12-task transaction. The reported `cycles` field is currently an arithmetic
work-envelope because the inherited kernel ABI does not expose a physical
clock counter. Therefore this project is not yet ready for IP export, Vivado
integration, bitstream generation, or XSA export.

The board-fit DDR-window XSA and a matching A53 standalone PS application are
now available under `vivado/output/` and `vitis/`. Build the application with
`source /output/xilinx_compat/xilinx_compat.sh && ./vitis/build_vitis.sh`; the
download target is `vitis/pb_hybrid_app.elf`. See
`vitis/VITIS_STANDALONE.md` for the SD-card files (`matrix.mtx` plus PBFA-v2
`pb_flat.bin`), cache maintenance, and JTAG/boot procedure. Full Matrix-Market
normalization and symbolic/DAG construction remain the host-side
`host_adapter` step; the PS application parses the MTX header and the complete
pointer-free DAG/CSC4 image before configuring the PL IP.

See `artifacts/STAGE6_REAL_ADAPTER_REPORT.md` for the adapter gate and
`artifacts/stage6_metrics.csv` for its reproducible measurements.

The true-parallel 4+4 arithmetic wave now passes CSim, synthesis, and Verilog
RTL co-simulation with four physical LU workers plus four physical SSSSM
workers active in the same DATAFLOW transaction.  The generated RTL contains
eight worker modules and eight AXI master bundles; the bounded test completes
in 3,424 cycles with zero packed-lane mismatches.  See
`docs/PARALLEL4X4_WAVE_V1.md` for the memory-conflict contract, resource
estimate, commands, and the remaining rolling-DAG integration boundary.

See `docs/VALIDATION_PLAN.md` for the acceptance gates and
`reference/SOURCE_MANIFEST.sha256` for the frozen-source provenance.
