# Complete Block-LU Granularity Analysis

## Scope

The previous P3--P6 results remain frozen to the SSSSM/block-trailing scope

\[
I>K,\qquad J>K.
\]

This experiment extends the same post-symbolic `Zd_Jac3_db` L/U union to the
complete strict LU arithmetic set

\[
i>k,\qquad j>k.
\]

For each scalar multiply-subtract, the block coordinates form a disjoint and
exhaustive four-kernel partition:

| Kernel | Block-coordinate condition |
|---|---|
| GETRF | \(I=K,J=K\) |
| GESSM | \(I=K,J>K\) |
| TSTRF | \(I>K,J=K\) |
| SSSSM | \(I>K,J>K\) |

Every strict-L entry contributes one division. Divisions are assigned to
GETRF when \(I=K\) and TSTRF when \(I>K\). The logical-FLOP convention is

\[
F_{\mathrm{LU}}=2N_{\mathrm{MAC}}+N_{\mathrm{div}}.
\]

The complete right-looking dependency chain is:

```text
prior updates of A(K,K)
          |
       GETRF(K)
       /      \
GESSM(K,J)  TSTRF(I,K)
       \      /
      SSSSM(I,J,K) ---> next update/factor/solve of A(I,J)
```

Updates to the same target block are ordered by increasing \(K\). Distinct
targets can execute concurrently when their producer dependencies are ready.

## Arithmetic coverage at B=512

| Kernel | Tasks | MACs | Divisions | Logical FLOPs | FLOP share |
|---|---:|---:|---:|---:|---:|
| GETRF | 45 | 178,347,594 | 967,158 | 357,662,346 | 14.05% |
| GESSM | 104 | 195,571,327 | 0 | 391,142,654 | 15.37% |
| TSTRF | 104 | 195,571,327 | 2,044,638 | 393,187,292 | 15.45% |
| SSSSM | 414 | 701,781,110 | 0 | 1,403,562,220 | 55.14% |
| **Total** | **667** | **1,271,271,358** | **3,011,796** | **2,545,554,512** | **100%** |

The old SSSSM-only experiment covers 701,781,110 MACs, or 55.20% of all LU
MACs. It therefore captures the dominant single kernel, but omits 44.80% of
the multiply-subtract work plus all divisions. Its traffic results must not be
relabeled as complete-LU traffic.

## Granularity comparison at B=S=512

| Representation | Tasks | Dependency descriptors | Normalized metadata footprint |
|---|---:|---:|---:|
| Scalar operation | 1,274,283,154 | 1,274,283,154 | 50,971,326,160 B |
| Ideal operation VLIW16 | 79,642,698 | 79,642,698 | 3,185,707,920 B |
| Segment | 78,750 | 12,688,466 | 104,027,728 B |
| Complete Block-LU | 667 | 1,430 | 32,784 B |

The metadata calculation keeps the earlier normalized assumption of 32 B per
task and 8 B per dependency/contribution descriptor. It is a representation
footprint, not a claim that all bytes must cross DDR on every factorization.

Relative to Segment, complete Block-LU reduces the task count by 118.1x and
the normalized metadata footprint by about 3,173x. Relative to ideal VLIW16,
it reduces the task count by about 119,404x.

## Block-size sensitivity

The complete arithmetic is invariant across block sizes; only its placement
among kernels, task count, and available parallelism change.

| B | Blocks | Tasks | Edges | Ready frontier | Critical-path tasks | Work/span | SSSSM MAC share |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 256 | 90 | 2,453 | 5,789 | 100 | 174 | 4.47 | 68.89% |
| 512 | 45 | 667 | 1,430 | 36 | 91 | 2.63 | 55.20% |
| 1024 | 23 | 260 | 523 | 16 | 46 | 2.16 | 43.43% |

This exposes the central tradeoff:

- Larger blocks sharply reduce tasks, edges, and control metadata.
- Larger blocks move more work into GETRF/GESSM/TSTRF and reduce the ready
  frontier and work/span parallelism.
- Smaller blocks expose more SSSSM work and concurrency, but increase the
  scheduler and descriptor burden.

Therefore, the full-LU result strengthens the block-granularity argument but
also rules out the simplistic conclusion that the largest block is always
best. A capacity-aware implementation should choose the largest block/tile
that fits its local accumulator and panel-cache budget while preserving enough
ready tasks to occupy the available workers.

## Validation

The implementation asserts all of the following:

1. The four kernel MAC counts sum exactly to
   \(\sum_k |L_{>k}(:,k)|\,|U_{>k}(k,:)|\).
2. GETRF and TSTRF divisions sum exactly to strict-L NNZ.
3. Every scheduled task is placed once in the right-looking DAG.
4. Kahn traversal visits every task, proving the generated DAG is acyclic.
5. A 4x4 synthetic symbolic pattern has hand-checked counts: 10 MACs,
   5 divisions, 25 logical FLOPs, 5 tasks, and 5 dependency edges.

## Important boundary

This stage completes the arithmetic, task, metadata, and dependency analysis.
The older exact 64-B LRU model with read-only L/U plus a separate A target
remains explicitly SSSSM-only.  The follow-on complete-LU simulator now uses a
canonical factor union, updates L/U/diagonal records in place, includes pivot
reads and strict-L divisions, and validates independent event multisets before
accepting traffic results.  See `FULL_LU_INPLACE_RESULTS.md`; the two models are
kept separate so the frozen P3--P5 evidence is not silently reinterpreted.

## Reproduction

```bash
cd /output/block_lu_hls/trace_analysis
python3 tests/test_full_lu_analysis.py
bash run_full_lu_scan.sh
```

Primary outputs:

- `outputs/full_lu_scan_v1/full_lu_block_size_scan.csv`
- `outputs/full_lu_scan_v1/full_lu_three_granularity_comparison.csv`
- `outputs/full_lu_scan_v1/block_b512/full_lu_kernel_summary.csv`
- `outputs/full_lu_scan_v1/block_b512/full_lu_tasks.csv`
- `outputs/full_lu_scan_v1/block_b512/full_lu_dag_summary.csv`
- `outputs/full_lu_scan_v1/block_b512/full_lu_report.json`
