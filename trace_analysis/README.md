# Three-granularity count pilot

This directory implements P0--P7 of the granularity experiment.  It reads the
**post-symbolic L/U union pattern** and counts the same trailing-update MAC set
at operation, SALUT-style segment, and block granularity.  It deliberately does
not materialize the `(i,j,k)` operation trace.  The cache pilot streams the
same atoms directly through an exact fully-associative LRU simulator.

The operation baseline follows the 2025 IEEE TC OOLU architecture at the
modeled issue level: one VLIW bundle contains 16 operations (`PE=16`).  To keep
the comparison auditable, PE lanes are assumed full; a final partial bundle is
rounded up and its unused lanes are reported as padding.  Scalar MAC/event
counts and scalar memory accesses remain exact.  All matrix values and indices
are 32-bit (`FP32 value + int32 index`, 8-byte sparse AoS record).

## Input contract

- Matrix Market coordinate, square;
- union of symbolic `L` and `U` after reorder and symbolic factorization;
- strict lower entries are interpreted as `L(i,k)` and strict upper entries as
  `U(k,j)`;
- diagonal entries are ignored; the default comparable scope further requires
  `I>K,J>K`, while `--scope scalar-strict` is available as an audit mode for
  all `i>k,j>k` updates.

An input whose filename is not marked with `symbolic` is rejected unless the
caller explicitly confirms provenance with `--input-kind symbolic-lu-union`.

## Run the first pilot

```bash
cd /output/block_lu_hls
python3 trace_analysis/analyze_reuse.py symbolic \
  --matrix trace_analysis/input/Zd_Jac3_db_after_symbolic.mtx \
  --block-size 512 \
  --segment-height 512 \
  --scope block-trailing \
  --output trace_analysis/outputs/granularity_pilot/block_b512
```

For `Zd_Jac3_db`, the command fails with exit code 2 unless the block counts
match the frozen baseline: 414 `(I,J,K)` tasks, 104 L factor blocks, 104 U
factor blocks, and 193 target blocks.

The frozen block baseline is a block-level schedule: it requires `I>K,J>K`
and forms the Cartesian product of occupied `L(I,K)` and `U(K,J)` blocks.
This is stricter than the scalar-only condition `i>k,j>k`.  The report retains
the latter as `scalar_strict_atomic_updates_before_block_scope`, while the
three compared methods use the same block-trailing scalar MAC set.  Scheduled
block products with no common internal scalar pivot are retained as zero-
effective-MAC tasks because they still consume descriptors and scheduling.

The outputs are:

- `granularity_counts.csv`: task/dependency/target and descriptor counts;
- `scope_audit.csv`: scalar-strict versus block-trailing MAC coverage;
- `task_mac_distribution.csv`: exact histogram of MACs per task;
- `target_update_distribution.csv`: exact histogram of contributions per target;
- `pilot_report.json`: provenance, frozen conventions, summaries, and baseline
  validation.

At this stage `dependency_edges` means contribution descriptors:

- operation: one per 16-lane VLIW bundle over `(i,j,k)` operations;
- segment: one per unique `(k,j,s)`;
- block: one per unique `(I,J,K)`.

It is not the full execution DAG edge count; producer/consumer and update-order
edges belong to the later DAG phase.

## Self-test

```bash
python3 trace_analysis/tests/test_count_granularity.py
```

## Exact 64-byte LRU pilot

The cache experiment is intentionally restricted to the same SSSSM-only
`block-trailing` scope used above.  It does not include GETRF, GESSM, TSTRF,
diagonal panels, or panel updates.

```bash
cd /output/block_lu_hls
bash trace_analysis/run_cache_pilot.sh
```

The default pilot fixes `B=S=512` and simulates 4 MiB and 16 MiB fully
associative, write-back/write-allocate LRU caches.  All schedules share:

- the exact same 701,781,110 scalar updates;
- disjoint, 64-byte-aligned L, U, and A address regions;
- 8-byte AoS records (`fp32 value + int32 index`);
- L in column/row order, U in row/column order, and sparse-product A targets
  in column/row order.

Only traversal and task grouping differ:

- operation: 16-lane bundles over `(k,i,j)`;
- operation-column-order: 16-lane bundles over the left-looking `(j,k,i)`
  scalar stream;
- operation-segment-order: operation/VLIW16 task cardinality with the exact
  `(j,s,k,i)` atom stream of segment-native;
- operation-block-order: 16-lane bundle cardinality with the exact Block atom
  order;
- segment-native: task `(j,s)`, then `(k,i)`;
- segment-L-affinity: task `(s,j)`, then `(k,i)`;
- segment-cache-aware: one ascending-`j` queue head per segment is ready; pick
  the task with the largest resident L/U/A line footprint;
- block: task `(I,J,K)`, then `(k,i,j)`.
- block-kij-order: the exact same Block tasks and internal `(k,i,j)` atoms,
  reordered lexicographically as `(K,I,J)` to represent strict right-looking
  pivot-block-major execution.
- block-kij-jki-inner: the same strict `(K,I,J)` Block-task order, but sparse
  atoms inside each task are reordered as `(j,k,i)` to test CSC target-column
  locality against the L-factor reuse of `(k,i,j)`.

The implementation streams all accesses in C++ without writing the roughly
2.1 billion individual L/U/A references to disk.  Outputs are:

- `cache_traffic.csv`: misses, reloads, compulsory bytes, traffic
  amplification, metadata interpretations and bytes per logical FLOP;
- `address_set_audit.csv`: unique line sets plus canonical-event bitset and
  event-multiset hash validation;
- `descriptor_width_scan.csv`: normalized 0--40 B/task sensitivity;
- `metadata_amortization.csv`: footprint, stream-each-run, preload-once and
  online-generation interpretations;
- `cache_pilot_report.json`: frozen scope, layout, traversal and cache policy;
- `run.log`: progress and elapsed time.

The model intentionally excludes column-pointer traffic and DMA descriptor
traffic.  Each 8-byte record fits wholly in one 64-byte cache line; its line is
determined by the record start address.  This convention is frozen in
`experiment_config.json`.

The P4 controls and their interpretation are frozen in
`P4_FAIRNESS_RESULTS.md`.

## P5 capacity/grain scan

```bash
cd /output/block_lu_hls
bash trace_analysis/run_capacity_grain_scan.sh
python3 trace_analysis/summarize_capacity_grain_scan.py
python3 trace_analysis/plot_capacity_grain_scan.py
```

This scans B=S in 256/512/1024 and cache capacity in 1/4/8/16/32 MiB.
Changing B also changes the `I>K,J>K` event set, so absolute traffic is not
compared across B.  The frozen tables, plots, and interpretation are in
`P5_RESULTS.md` and `outputs/capacity_grain_scan/`.

## P6 update-only DAG analysis

`analyze_reuse.py` also emits `update_dag_metrics.csv`.  It reports weighted
ready width, critical-path MACs, work/span, and criticality-first four/eight
worker list-schedule utilization.  This is an SSSSM update-only abstraction,
not a full GETRF/GESSM/TSTRF/SSSSM execution model.  See `P6_RESULTS.md`.

## Complete Block-LU arithmetic and DAG extension

The frozen P3--P6 outputs are not overwritten.  A separate analyzer covers
all strict updates and divisions, classifies them into GETRF/GESSM/TSTRF/
SSSSM, and builds the complete right-looking producer/update DAG:

```bash
cd /output/block_lu_hls/trace_analysis
python3 tests/test_full_lu_analysis.py
bash run_full_lu_scan.sh
```

See `FULL_LU_RESULTS.md` and `outputs/full_lu_scan_v1/`.  This extension is an
exact arithmetic/task/DAG analysis.  Complete-LU cache traffic remains a
separate next step because L/U change from read-only factors into produced,
written-back, and subsequently consumed data.

The complete in-place model now also provides ten matched operation, segment,
and Block trajectories over 32 KiB--32 MiB.  See
`FULL_LU_TEN_TRAJECTORY_RESULTS.md` and
`outputs/full_lu_inplace_b512_ten_traces_v2/`.

## Complete-LU in-place L/U traffic model

The separate complete-LU traffic simulator now models the factor union in
canonical CSC storage and updates L/U/diagonal records in place.  It covers all
strict multiply-subtracts and strict-L divisions and rejects an input that is
not symbolically closed.  Four independent traversals must pass exact event
multiset, read-set, and write-set audits before traffic is accepted.

```bash
cd /output/block_lu_hls/trace_analysis
bash tests/test_full_lu_inplace.sh
bash run_full_lu_inplace_pilot.sh \
  input/Zd_Jac3_db_after_symbolic.mtx \
  512 1M,4M,8M,16M,32M \
  outputs/full_lu_inplace_b512_capacity_v1
```

Methods include operation, two legal segment orders, Block, and the key
`operation-block-order` control.  The latter uses the exact Block access order
but retains operation/VLIW16 metadata, separating locality/order gains from
task aggregation gains.  Frozen results and interpretation are in
`FULL_LU_INPLACE_RESULTS.md`.

The full capacity/grain reproduction additionally runs B=S=256/512/1024:

```bash
bash run_full_lu_inplace_grain_scan.sh
```

It writes the strictly cross-audited 75-row table to
`outputs/full_lu_inplace_grain_capacity_v1.csv`.

Six independent post-symbolic matrices have also been replayed at B=512.  Each
matrix must pass the same exact event audit before entering the consolidated
150-row result:

```bash
python3 summarize_full_lu_inplace_multi.py
```

See `outputs/full_lu_inplace_multi_b512_v1.csv` and the independent-matrix
section of `FULL_LU_INPLACE_RESULTS.md`.

The complete-LU model has also been replayed at the exact 5,882,112-byte
physical upper bound derived from the placed ZU15EG design.  B=256/512/1024
results are stored under `outputs/full_lu_inplace_board_capacity_v1/`; see the
target-board section of `FULL_LU_INPLACE_RESULTS.md`.  This point motivates
internal tiled streaming and does not by itself change the outer partition NB.

## P7 multi-matrix validation

```bash
cd /output/block_lu_hls
bash trace_analysis/run_multi_matrix_validation.sh
python3 trace_analysis/summarize_multi_matrix_validation.py
```

The exact-event and cache experiments are repeated on six additional
post-symbolic matrices.  The results and the high-fill exclusion boundary are
documented in `P7_RESULTS.md`, `input/multi_symbolic/EXCLUSIONS.csv`, and
`outputs/multi_matrix_validation_b512/`.

## P8 target-board capacity point

The capacity curve remains fixed at 1/4/8/16/32 MiB.  P8 adds one exact point
derived from the placed `xczu15eg-ffvb1156-2-i` 4-LU + 4-SSSSM design under
`/output/pangulu_hybrid_salut_ssssm_v1/vivado_parallel4x4_v1`:

```bash
cd /output/block_lu_hls
bash trace_analysis/run_board_capacity_experiment.sh
python3 trace_analysis/tests/test_board_capacity.py
```

The parser subtracts every BRAM/URAM primitive already consumed by the placed
design, including worker-local A/L/U windows, the external pool cache, FIFOs,
scheduler and control storage.  Queues mapped to LUTRAM remain represented in
the Vivado LUT utilization rather than being incorrectly charged against the
BRAM/URAM byte pool.  The remaining physical-bit budget is replayed at
`B=S=512`, and `BOARD_CAPACITY_RESULTS.md` reports Block and
Segment-cache-aware matrix traffic separately from normalized control
metadata.  Frozen results and the resource arithmetic are in `P8_RESULTS.md`.

This is an upper-bound storage-capacity experiment: the exact LRU model treats
the remaining BRAM+URAM as one fully associative store.  A future physical
cache still needs tag/LRU storage, banking, ports, fragmentation and routing
margin.
