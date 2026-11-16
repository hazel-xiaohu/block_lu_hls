# Complete-LU In-place L/U Traffic Validation

## Purpose and scope

This experiment replaces the earlier trailing-update-only `L/U/A` traffic
model with a complete sparse-LU model.  It covers every strict update

\[
A_{ij}\leftarrow A_{ij}-L_{ik}U_{kj},\qquad i>k,\ j>k,
\]

and every strict-lower division

\[
L_{ik}\leftarrow L_{ik}/U_{kk},\qquad i>k.
\]

The post-symbolic factor union is stored once in canonical CSC order.  Strict
lower entries, diagonal entries, and strict upper entries are respectively the
in-place L, diagonal-U, and U records.  There is no artificial, disjoint A
array: an updated target is the same record subsequently consumed as a factor.

The frozen storage/cache conventions are:

- FP32 value plus uint32 index: 8 bytes per sparse record;
- 64-byte cache lines;
- fully associative LRU;
- write-back and write-allocate;
- dirty lines are flushed at the end;
- normalized task metadata: 32 bytes per task and 8 bytes per dependency.

Pointer, DMA-descriptor, tag/LRU, and cache-control traffic are intentionally
outside this first-order model.  Metadata is reported separately from data and
is a representation/streaming model, not an assertion that static schedules
must be reread on every repeated factorization.

## Strict equivalence audit

For `Zd_Jac3_db_after_symbolic.mtx`, all four independently generated
traversals produce exactly:

| Quantity | Value |
|---|---:|
| Multiply-subtract events | 1,271,271,358 |
| Division events | 3,011,796 |
| Total atomic events | 1,274,283,154 |
| Logical FLOPs, `2*MAC+DIV` | 2,545,554,512 |
| Duplicate canonical events | 0 |
| Unique read lines | 754,892 |
| Unique written lines | 750,434 |

The operation, segment-column, segment-L-affinity, and block traversals have
identical three-component event-multiset hashes, read-line hashes, and
write-line hashes.  Thus the compared executions differ only in grouping and
legal execution order, not in arithmetic coverage or address set.

The compulsory traffic lower bound is

\[
B_{\min}=64(N_{\rm read}+N_{\rm write})
=96{,}340{,}864\ \text{B}=91.88\ \text{MiB}.
\]

Traffic amplification is `TA = data_bytes / B_min`.

## Capacity sweep at B=S=512

The following table reports exact cache data traffic.  Metadata is shown in a
separate column because it depends on how the static schedule is stored and
amortized.

| Cache | Method | Data MiB | TA | Metadata MiB | Data+metadata MiB |
|---:|---|---:|---:|---:|---:|
| 1 MiB | Operation | 19,556.833 | 212.8570x | 3,038.128 | 22,594.961 |
|  | Operation-block-order | 2,443.611 | 26.5963x | 3,038.128 | 5,481.739 |
|  | Segment-column | 8,504.008 | 92.5578x | 99.209 | 8,603.217 |
|  | Segment-L-affinity | 19,730.562 | 214.7479x | 99.209 | 19,829.771 |
|  | Block | **2,443.611** | **26.5963x** | **0.031** | **2,443.643** |
| 4 MiB | Operation | 188.227 | 2.0487x | 3,038.128 | 3,226.355 |
|  | Operation-block-order | 159.691 | 1.7381x | 3,038.128 | 3,197.819 |
|  | Segment-column | 3,346.187 | 36.4200x | 99.209 | 3,445.395 |
|  | Segment-L-affinity | 186.426 | 2.0291x | 99.209 | 285.635 |
|  | Block | **159.691** | **1.7381x** | **0.031** | **159.722** |
| 8 MiB | Operation | 98.821 | 1.0756x | 3,038.128 | 3,136.949 |
|  | Operation-block-order | 99.668 | 1.0848x | 3,038.128 | 3,137.796 |
|  | Segment-column | 103.191 | 1.1231x | 99.209 | 202.400 |
|  | Segment-L-affinity | 99.538 | 1.0834x | 99.209 | 198.747 |
|  | Block | **99.668** | **1.0848x** | **0.031** | **99.700** |
| 16 MiB | Operation | 91.901 | 1.0003x | 3,038.128 | 3,130.029 |
|  | Operation-block-order | 92.774 | 1.0098x | 3,038.128 | 3,130.901 |
|  | Segment-column | 97.871 | 1.0652x | 99.209 | 197.079 |
|  | Segment-L-affinity | **91.901** | **1.0003x** | 99.209 | 191.110 |
|  | Block | 92.774 | 1.0098x | **0.031** | **92.805** |
| 32 MiB | Operation | 91.898 | 1.0002x | 3,038.128 | 3,130.026 |
|  | Operation-block-order | 91.899 | 1.0002x | 3,038.128 | 3,130.027 |
|  | Segment-column | 94.079 | 1.0240x | 99.209 | 193.287 |
|  | Segment-L-affinity | 91.898 | 1.0002x | 99.209 | 191.107 |
|  | Block | **91.899** | **1.0002x** | **0.031** | **91.930** |

## What the controls establish

### Access order versus task aggregation

`Operation-block-order` retains the operation/VLIW16 task count and metadata
but replays exactly the block traversal.  Its data traffic is therefore
identical to Block at every capacity.  This cleanly separates two benefits:

1. Block-compatible ordering supplies the locality benefit.
2. Block aggregation compresses the normalized metadata from 3,038.128 MiB to
   0.031 MiB.

At 4 MiB, ordering alone lowers operation data traffic from 188.227 to 159.691
MiB (15.2%).  Aggregation then removes about 3.04 GiB of explicit normalized
operation descriptors.

### Segment scheduling is capacity-sensitive

The native column-segment traversal is pathological at 4 MiB: 3,346.187 MiB,
or 36.42x compulsory traffic, mainly because L factors are revisited after
their useful cache lifetime.  L-affinity reduces it to 186.426 MiB.  Hence the
large native-segment penalty cannot be attributed to one-dimensional segment
granularity alone; scheduling order is a first-class variable.

At 1 MiB, however, L-affinity itself becomes pathological because retaining L
causes severe target/U thrashing.  No one static priority is best across all
capacities.  This is direct evidence for a capacity-aware schedule rather than
a universal locality heuristic.

### Capacity regimes

- **1 MiB:** every method is far from the lower bound.  Block/order grouping is
  still best, but its 26.60x amplification shows that the tile must be split or
  streamed rather than treated as resident.
- **4 MiB:** Block is within 1.74x of compulsory traffic and has by far the
  smallest total footprint.
- **8 MiB:** all non-pathological traversals are within about 8.5% of the lower
  bound; task metadata becomes the dominant differentiator.
- **16--32 MiB:** data traffic is essentially compulsory.  Block remains the
  best total representation because it achieves this locality with negligible
  normalized control metadata.

These results support the hardware rule: emit a whole Block task only when its
active target accumulator and needed panels fit the usable local capacity;
otherwise split it into capacity-fitting tiles while retaining the same Block
descriptor and dependency semantics.

## Block-size sensitivity

The same experiment was repeated at B=S=256 and 1024.  The cross-B audit
confirms identical arithmetic-event multisets and read/write address sets; only
task boundaries and legal traversal order change.

| Cache | B=256 Block TA | B=512 Block TA | B=1024 Block TA |
|---:|---:|---:|---:|
| 1 MiB | **3.9630x** | 26.5963x | 33.9877x |
| 4 MiB | **1.6720x** | 1.7381x | 1.6924x |
| 8 MiB | **1.0794x** | 1.0848x | 1.1078x |
| 16 MiB | **1.0003x** | 1.0098x | 1.0184x |
| 32 MiB | 1.0002x | 1.0002x | 1.0002x |

At 1 MiB the smaller block changes the result qualitatively: B=256 cuts Block
data traffic from 2,443.611 MiB at B=512 to 364.113 MiB.  This is not a change
in work or address set; it is the consequence of reducing the active block
working set enough to avoid repeated eviction.  At 4--8 MiB the three block
sizes are already close, while at 16--32 MiB capacity dominates and the data
traffic converges to the same compulsory bound.

Normalized Block metadata moves in the opposite direction:

| B | Block tasks | Metadata MiB |
|---:|---:|---:|
| 256 | 2,453 | 0.119 |
| 512 | 667 | 0.031 |
| 1024 | 260 | 0.012 |

The metadata increase at B=256 is negligible beside its 1 MiB traffic saving.
Once the cache reaches 32 MiB and data traffic is indistinguishable, larger B
wins only on descriptor count but may reduce DAG parallelism, as quantified in
`FULL_LU_RESULTS.md`.  The hardware policy should therefore be capacity-aware:
use the largest task/tile that fits, not the globally largest block size.

## Independent-matrix validation

The B=512 experiment was repeated on six additional post-symbolic factor
patterns.  Every matrix passed the same four-traversal event-multiset and
read/write-set audit.  The table reports data-traffic amplification; metadata
is excluded here to expose locality alone.

| Matrix | Atomic events | Cache | Operation TA | Segment-column TA | Segment-L-affinity TA | Block TA |
|---|---:|---:|---:|---:|---:|---:|
| G62 | 13,161,752 | 1 MiB | 1.028x | 1.117x | 1.028x | 1.031x |
| bcsstk17 | 167,743,302 | 1 MiB | 8.000x | 13.440x | 7.823x | **1.597x** |
| circuit_2 | 490,216 | 1 MiB | 1.000x | 1.000x | 1.000x | 1.000x |
| cryg10000 | 10,545,532 | 1 MiB | 1.012x | 1.075x | 1.012x | 1.015x |
| rajat08 | 9,384,422 | 1 MiB | 1.001x | 1.079x | 1.001x | 1.000x |
| shermanACb | 36,808,874 | 1 MiB | **1.125x** | 4.121x | 1.126x | 1.173x |

At 4 MiB, five matrices are exactly at the compulsory bound for Operation and
Block; bcsstk17 is within 1.4%.  This is expected: their factor working sets or
reuse distances are much smaller than `Zd_Jac3_db`.  The correct conclusion is
not that Block always minimizes raw data bytes.  Rather:

- when capacity is sufficient, legal schedules converge to compulsory data
  traffic and aggregation mainly saves control state;
- when a large working set exceeds capacity, Block-compatible ordering can
  prevent severe reload amplification, as bcsstk17 and Zd_Jac3_db demonstrate;
- native segment-column ordering is consistently the most vulnerable to L
  reloads;
- a capacity-aware Block implementation must split oversized working sets,
  because an overlarge unsplit block can itself thrash at very small capacity.

The six-matrix consolidated table is
`outputs/full_lu_inplace_multi_b512_v1.csv`.

## Target-board-derived capacity point

The placed ZU15EG 4LU+4SSSSM design leaves a physical BRAM+URAM upper bound of
5,882,112 bytes (5.61 MiB) after subtracting existing worker, pool, FIFO,
scheduler, and control memories.  Replaying complete LU at that exact capacity
gives:

| Representation | B=256 | B=512 | B=1024 |
|---|---:|---:|---:|
| Block data MiB | **107.405** | 112.178 | 124.234 |
| Block TA | **1.1690x** | 1.2209x | 1.3522x |
| Block metadata MiB | 0.119 | 0.031 | 0.012 |
| Block streamed total MiB | **107.524** | 112.209 | 124.246 |

At this capacity, B=256's extra 0.107 MiB of metadata relative to B=1024 is
negligible beside its 16.829 MiB data-traffic saving.  The result supports a
tile dimension near 256 rows/columns for the current upper-bound capacity
point.

This does **not** require the global numerical partition NB to become 256.
The intended hardware mechanism is to keep the outer Block task and DAG while
executing an oversized task as B=256-like internal tiles:

```text
outer Block descriptor / dependency token
                    |
       capacity check for active A + L/U panels
              / fits             \ exceeds
     whole-block issue       tile iterator (about 256)
                                 |
                    shared L/U panel cache
                                 |
                 worker-local ping-pong A tile
                                 |
                   one outer completion event
```

The 5.61 MiB figure is an optimistic physical-bit bound.  A realizable cache
must reserve tag/LRU state, banking/ports, primitive fragmentation, and routing
margin; therefore the final tile should be selected from the smaller *usable*
capacity and revalidated with the same simulator.  Raw outputs are under
`outputs/full_lu_inplace_board_capacity_v1/`.

## Reproduction

```bash
cd /output/block_lu_hls/trace_analysis
bash tests/test_full_lu_inplace.sh
bash run_full_lu_inplace_pilot.sh \
  input/Zd_Jac3_db_after_symbolic.mtx \
  512 1M,4M,8M,16M,32M \
  outputs/full_lu_inplace_b512_capacity_v1

# Reproduce B=256/512/1024 and combine all 75 records.
bash run_full_lu_inplace_grain_scan.sh
```

Primary outputs:

- `outputs/full_lu_inplace_b512_capacity_v1/full_lu_inplace_cache_traffic.csv`
- `outputs/full_lu_inplace_b512_capacity_v1/full_lu_inplace_event_audit.csv`
- `outputs/full_lu_inplace_b512_capacity_v1/full_lu_inplace_summary.csv`
- `outputs/full_lu_inplace_b512_capacity_v1/full_lu_inplace_report.json`
- `outputs/full_lu_inplace_grain_capacity_v1.csv`
- `outputs/full_lu_inplace_multi_b512_v1.csv`
- `outputs/full_lu_inplace_board_capacity_v1/`
