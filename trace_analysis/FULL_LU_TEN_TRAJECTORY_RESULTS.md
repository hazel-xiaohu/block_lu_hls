# Complete-LU Ten-Trajectory Capacity Results

> Historical v2 result: GETRF, GESSM and TSTRF used the earlier common
> pivot-oriented traversal.  The intermediate v3 result is documented in
> `FULL_LU_ORIENTED_FACTOR_RESULTS.md`; the current eight-trajectory v4 result
> is documented in `FULL_LU_EIGHT_TRAJECTORY_RESULTS.md`.

## Frozen scope

This experiment uses `Zd_Jac3_db_after_symbolic.mtx`, `B=S=512`, FP32 values,
32-bit indices, 64-byte cache lines, and a fully-associative write-back,
write-allocate LRU.  Unlike the earlier SSSSM-only experiment, it models the
canonical factor union in place and covers every strict update and strict-L
division:

```text
MAC events       1,271,271,358
division events      3,011,796
total events     1,274,283,154
logical FLOPs    2,545,554,512
```

All ten trajectories have identical event-multiset hashes, read-line hashes,
and write-line hashes.  Each event occurs exactly once.  The compulsory lower
bound is 91.88 MiB.

The legal complete-LU mappings are:

- `operation`: scalar right-looking `k,i,j`;
- `operation-column-order`: scalar left-looking `j,k,i`, followed by the
  divisions of the completed target column;
- `operation-segment-order`: exact `segment-native` data trace with operation
  VLIW16 task metadata;
- `operation-block-order`: exact target-resident `block` trace with operation
  VLIW16 task metadata;
- `segment-native`: lexicographic `(j,s)`, internal `(k,i)`;
- `segment-l-affinity`: pivot/segment order favoring L reuse;
- `segment-cache-aware`: exact-cache-hit greedy selection from a legal 2-D
  `(column,segment)` ready DAG;
- `block`: target-resident left-looking completion of each diagonal/panel
  before GETRF/GESSM/TSTRF;
- `block-kij-order`: strict right-looking `(K,I,J)` with SSSSM `(k,i,j)`;
- `block-kij-jki-inner`: the same right-looking task order, changing only
  ready SSSSM atoms to `(j,k,i)`.

## Normalized control scale

| Grain | Tasks | Dependencies/contributions | Metadata |
|---|---:|---:|---:|
| Operation/VLIW16 | 79,642,698 | 79,642,698 | 3,038.128 MiB |
| Segment | 78,750 | 12,688,466 | 99.209 MiB |
| Block | 667 | 1,430 | 0.031 MiB |

Metadata uses the normalized 32 B/task plus 8 B/dependency model and is kept
separate from matrix data traffic.

## Data traffic across capacities

Values are MiB and exclude normalized metadata.  Abbreviations are `O`, `OC`,
`OS`, `OB`, `SN`, `SL`, `SC`, `B`, `BR`, and `BRJ` in the method order above.

| Capacity | O | OC | OS | OB | SN | SL | SC | B | BR | BRJ |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 32 KiB | 220331.242 | **9955.446** | 10333.495 | 77865.570 | 10333.495 | 23771.364 | 10270.703 | 77865.570 | 77869.601 | 40536.614 |
| 64 KiB | 99748.274 | **9939.115** | 10300.483 | 21692.552 | 10300.483 | 23730.251 | 10153.770 | 21692.552 | 21700.384 | 14326.302 |
| 128 KiB | 22611.148 | 9905.821 | 10218.087 | 19803.453 | 10218.087 | 23616.188 | **9676.648** | 19803.453 | 19817.609 | 12838.147 |
| 256 KiB | 22278.989 | 9784.211 | 10018.527 | 15464.468 | 10018.527 | 23154.073 | **8828.897** | 15464.468 | 15493.477 | 9192.320 |
| 512 KiB | 21434.976 | 9299.518 | 9452.925 | 5414.871 | 9452.925 | 22044.542 | 7132.650 | 5414.871 | 5482.769 | **3723.446** |
| 1 MiB | 19556.833 | 8422.769 | 8504.008 | 2371.570 | 8504.008 | 19730.562 | 4757.728 | 2371.570 | 2443.611 | **814.485** |
| 4 MiB | 188.227 | 3375.473 | 3346.187 | **142.131** | 3346.187 | 186.426 | 702.343 | **142.131** | 159.691 | 162.032 |
| 8 MiB | **98.821** | 103.958 | 103.191 | 107.173 | 103.191 | 99.538 | 107.147 | 107.173 | 99.668 | 99.685 |
| 16 MiB | **91.901** | 97.877 | 97.871 | 97.018 | 97.871 | **91.901** | 97.298 | 97.018 | 92.774 | 93.697 |
| 32 MiB | **91.898** | 94.102 | 94.079 | 93.519 | 94.079 | **91.898** | 93.519 | 93.519 | 91.899 | 91.899 |

## Conclusions

1. Matched controls are exact: `OS=SN` and `OB=B` at every capacity.  With a
   shared cache and no task-boundary flush, aggregation changes control scale,
   not matrix traffic, when the atom order is held fixed.
2. No traversal is universally best.  Column-first operation wins at 32--64
   KiB, legal cache-aware Segment wins at 128--256 KiB, right-looking Block
   with column-oriented SSSSM wins at 512 KiB--1 MiB, and target-resident Block
   wins at 4 MiB.
3. `BRJ` reduces 1 MiB traffic from 2,443.611 to 814.485 MiB relative to `BR`.
   Its target-column locality is valuable under severe capacity pressure, but
   at 4 MiB its weaker L reuse makes it slightly worse than `BR`.
4. At 8--32 MiB, all non-pathological schedules approach the 91.88 MiB lower
   bound.  Block retains the system-level advantage because it reaches similar
   traffic with only 0.031 MiB of normalized control metadata.
5. A local cache-hit greedy policy is not a global optimum: `SC` helps at
   128--256 KiB but is worse at 4 MiB.  The legal dependency wavefront and
   future reuse distance must be considered, not only immediate hits.

The results support a capacity-aware Block mechanism: retain coarse Block DAG
tokens, use `(j,k,i)` SSSSM tiles when local capacity is very small, prefer
target-resident left-looking completion around the Block working-set fit point,
and avoid paying operation-level control cost once data traffic has converged.

## Reproduction

```bash
cd /output/block_lu_hls/trace_analysis
bash run_full_lu_inplace_pilot.sh \
  input/Zd_Jac3_db_after_symbolic.mtx \
  512 \
  32K,64K,128K,256K,512K,1M,4M,8M,16M,32M \
  outputs/full_lu_inplace_b512_ten_traces_v2
```

Primary outputs:

- `full_lu_inplace_cache_traffic.csv`: all 100 method/capacity records;
- `full_lu_inplace_summary.csv`: normalized MiB, TA and speedups;
- `full_lu_inplace_event_audit.csv`: ten-method exact equivalence audit;
- `full_lu_inplace_report.json`: frozen scope and method semantics.
