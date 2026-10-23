# Rolling 4+4 timing-path optimization and RTL regression

## Scope

The rolling ready-queue, worker FIFO, done FIFO, sentinel, conflict policy,
and 4-LU/4-SSSSM dispatch protocol were kept unchanged. The tested changes
are limited to internal pipeline/register placement and kernel arithmetic:

1. Ready-queue candidate scans are bounded by the current queue occupancy
   instead of the compile-time 512-entry capacity.
2. A command register is inserted between each worker command FIFO and the
   worker dispatch/decode tree.
3. GETRF and TSTRF compute one reciprocal per pivot/diagonal and use a
   multiply in the write-back loop instead of one divide per entry.

The attempted `pb_private_get4` `INLINE off` experiment was rejected: it
reduced the estimated Fmax to 74.33 MHz and was reverted.

## Functional and synthesis checks

The wide 512-task configuration was rebuilt with:

```text
PB_ROLL_MAX_TASKS=512
PB_ROLL_MAX_EDGES=1024
PB_ROLL_MAX_MATRICES=512
PB_STAGED_PTR_CAP=257
PB_STAGED_LANE_CAP=512
```

The full 510-task/922-edge, 1024-by-1024, NB=16 CSim passed with
`issued=510`, `completed=510`, `structural=0`, `numeric=0`, and `status=0`.

The accepted synthesis result is:

```text
solution: hls/build/parallel4x4_rolling_wide512_csynth_opt3/solution1
estimated Fmax: 84.19 MHz
top timing slack: -4.58 ns at a 10 ns target
resources: BRAM 1331 (89%), DSP 304 (8%), FF 139502 (20%), LUT 206873 (60%)
```

The earlier accepted opt2 result was also 84.19 MHz; the `opt3` directory is
the reproducible post-revert result. The remaining critical path is the
packed GETRF write-back loop `VITIS_LOOP_1159_7`; the scheduler itself has
zero reported timing slack and is no longer the top critical module.

## Full rolling RTL regression

The complete regression was launched with:

```bash
RTL_TIMEOUT_SEC=14400 \
PB_ROLL_RTL_BUILD=$PWD/hls/build/parallel4x4_rolling_wide512_rtl_cosim \
PB_ROLL_FLAT=$PWD/artifacts/rolling_top1024_nb16.flat.bin \
./run_parallel4x4_rolling_rtl_cosim.sh
```

The HLS C/RTL setup phase completed, including the C test-bench PASS for all
510 tasks. XSim is currently executing the single top-level RTL transaction;
the generated progress line is `0 / 1` because HLS treats the complete DAG as
one transaction. The live log is:

```text
hls/build/parallel4x4_rolling_wide512_rtl_cosim/rolling_rtl_cosim.log
```

The process is guarded by a four-hour watchdog. A final PASS requires the
`run_quiet_xsim.sh` post-check and must not be inferred from the CSim PASS.
