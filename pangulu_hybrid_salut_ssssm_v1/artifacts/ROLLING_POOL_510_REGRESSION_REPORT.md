# 510-task rolling pool regression

Date: 2026-10-22

## Scope

This gate validates the real shared-pool protocol for the rolling DAG:

`worker -> pool_req -> pool_server -> pool_rsp -> worker`

with vectorized `commit/ack` writeback.  The test uses the 1024x1024
`processed_circuit_1` submatrix, `NB=16`, and the complete 510-task/922-edge
task graph.  The arithmetic dispatch is kept in the diagnostic RTL stub for
this protocol gate; C simulation still executes the real arithmetic dispatch.
The purpose of this gate is to isolate pool ownership, staging, commit, and
dependency-release correctness before enabling the expensive floating-point
RTL workers.

## Changes validated

- One `PB_POOL_COMMIT_VEC` packet carries all four packed lanes for one matrix
  element, replacing four serial lane packets.
- Pool request/response and commit/ack FIFOs use a 256-entry depth; command and
  done FIFOs remain depth 8.
- The external pool-cache mode preloads pointer/packed/lane arrays before the
  DATAFLOW region and writes committed lanes back after all workers stop.  No
  AXI pool read is performed from inside `pb_pool_server` in this mode.
- Ready queues are bounded independently at 64 entries, while scheduler state
  and dependency counters use LUTRAM unless full partitioning is explicitly
  requested.

## Results

The following builds used the same source and the same external-cache/vector-
commit protocol.  All CSim checks reported `status=0`, `errors=0`, and equal
issued/completed counts.  RTL results are from the generated HLS testbench and
end with `$finish`.

| DAG prefix | tasks | edges | RTL result | RTL sim time | host elapsed |
|---:|---:|---:|---|---:|---:|
| 32 | 32 | 62 | PASS | 386,765 ns | 27 s |
| 48 | 48 | 62 | PASS | 499,625 ns | 34 s |
| 64 | 64 | (prefix CSR) | PASS | 600,605 ns | 43 s |
| full | 510 | 922 | PASS | 3,290,765 ns | 4 min 05 s |

The full CSim line is:

```text
PB_ROLLING_MTX_PASS n=1024 nb=16 blocks=64 tasks=510 edges=922 levels=106 ready_width=40 lu_width=40 ss_width=9 issued=510 completed=510 max_inflight=1 max_lu=1 max_ss=0 reissued=0 read_bytes=759888 write_bytes=214976 structural=0 numeric=0 max_abs=0 max_rel=0 status=0 errors=0
```

The full RTL log is:

```text
RTL Simulation : 1 / 1 ... @ 3290705000
$finish called at time : 3290765 ns
```

The HLS setup/cosimulation-generation log also ends with
`PB_PARALLEL4X4_ROLLING_RTL_COSIM_TCL_PASS`.

## Reproduction

The full artifacts are:

- flat image: `artifacts/rolling_top1024_nb16.flat.bin`
- HLS log: `/tmp/rolling510_externalcache_ready64_hls.log`
- RTL log: `/tmp/rolling510_externalcache_ready64_xsim.log`
- RTL build: `hls/build/rolling510_externalcache_ready64/solution1/sim/verilog`

The build used:

```text
PB_ROLL_MAX_TASKS=512
PB_ROLL_MAX_EDGES=1024
PB_ROLL_EXTERNAL_POOL_CACHE
PB_ROLL_DIAG_STUB_KERNEL
```

The 510-task pool/dependency protocol is therefore closed.  The next separate
gate is to remove `PB_ROLL_DIAG_STUB_KERNEL` and run the same complete DAG with
the floating-point worker bodies; that is an arithmetic RTL-throughput test,
not a pool-protocol test.
