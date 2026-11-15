# P6 update-only DAG and parallelism results

## Scope and model

This phase evaluates only the SSSSM/block-trailing update set selected by
`I>K,J>K`.  It does **not** model GETRF, GESSM, TSTRF, panel-production
dependencies, memory stalls, descriptor fetch, or FPGA pipeline latency.
Consequently, these numbers quantify the parallelism retained by each update
representation; they are not end-to-end Block-LU cycle predictions.

Operation uses an OOLU-style 16-lane VLIW issue model.  Its `Tasks` column is
the number of VLIW bundles (`ceil(MACs/16)`), while critical-path MACs retain
the exact scalar target dependency chain.  The utilization model assumes all
16 PE lanes are useful except possible final padding slots.

For Operation and Block, updates to the same scalar or block target are chained
in increasing `k` or `K`.  Distinct targets are independent.  A Segment task
owns one `(j,s)` target region and therefore appears as one independent task in
this update-only abstraction.  Task weight is the exact number of scalar MACs.
The list scheduler selects the currently ready task with the longest remaining
weighted path and assigns it to the earliest available worker.

## Results

| B=S | Method | Tasks | Peak ready | Critical-path MACs | Work/span | 4-worker utilization | 8-worker utilization |
|---:|---|---:|---:|---:|---:|---:|---:|
| 256 | Operation VLIW16 | 54,736,807 | 274,465 | 2,028 | 26,990.5 | 100.000% | 100.000% |
| 256 | Segment | 44,972 | 44,972 | 234,356 | 3,737.0 | 100.000% | 100.000% |
| 256 | Block | 1,761 | 618 | 51,468,665 | 17.016 | 100.000% | 100.000% |
| 512 | Operation VLIW16 | 43,861,320 | 221,362 | 1,772 | 24,752.4 | 100.000% | 100.000% |
| 512 | Segment | 23,370 | 23,370 | 383,675 | 1,829.1 | 100.000% | 100.000% |
| 512 | Block | 414 | 193 | 114,956,135 | 6.105 | 100.000% | 76.310% |
| 1024 | Operation VLIW16 | 34,508,942 | 149,430 | 1,772 | 19,474.6 | 100.000% | 100.000% |
| 1024 | Segment | 14,237 | 14,237 | 383,675 | 1,439.1 | 100.000% | 100.000% |
| 1024 | Block | 147 | 80 | 114,956,135 | 4.803 | 99.998% | 60.038% |

The exact per-configuration files are under
`outputs/granularity_pilot/block_b*/update_dag_metrics.csv`.

## Interpretation

Block aggregation greatly reduces ready-task cardinality, but it still retains
enough weighted parallelism to keep the current four-SSSSM-worker design almost
fully occupied for all three grain sizes.  The conclusion does not extend to
arbitrarily many workers: at B=512 and B=1024 the heavy critical target chain
limits the modeled 8-worker utilization to 76.3% and 60.0%, respectively.

This is the intended fair claim: for the evaluated matrix, Block granularity
compresses task/control state without sacrificing the parallelism needed by a
four-worker FPGA.  A complete LU-DAG experiment is still required before
claiming the same utilization for the entire factorization.
