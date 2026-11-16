# Complete-LU Oriented Factor-Kernel Results

> Historical v3 result: target-resident Block still used `k-i-j` SSSSM atoms
> and the formal set still contained O and BR.  The current eight-trajectory
> v4 result is documented in `FULL_LU_EIGHT_TRAJECTORY_RESULTS.md`.

## Change

The Block trajectories now use the access direction of each factor kernel
instead of applying one common scalar order to all kernels:

| Kernel | Oriented atom order | Meaning |
|---|---|---|
| GETRF | `j -> k -> i`, then divide column `j` | complete one diagonal-block column before advancing |
| GESSM | `j -> k -> i` | complete one upper-panel column at a time |
| TSTRF | `i -> k -> divide -> j` | complete one lower-panel row at a time |
| SSSSM | unchanged: either `k -> i -> j` or `j -> k -> i` | preserves the existing matched-order experiment |

Uppercase `K/I/J` remain Block coordinates.  Lowercase `k/i/j` are scalar
coordinates within a Block.  The task-level dependency order is unchanged:

```text
GETRF(K,K)
  +-- GESSM(K,J) --+
  +-- TSTRF(I,K) --+--> SSSSM(I,J,K)
```

`GESSM` and `TSTRF` are independent after `GETRF`; the deterministic cache
trace still emits all GESSM tasks before all TSTRF tasks.

## Exactness audit

The formal replay uses `Zd_Jac3_db_after_symbolic.mtx`, `B=S=512`, FP32
values, 32-bit indices and 64-byte fully-associative write-back LRU lines.

```text
MAC events       1,271,271,358
division events      3,011,796
total events     1,274,283,154
duplicate events             0
```

All ten trajectories retain identical event-multiset hashes, read-line
hashes and write-line hashes.  Therefore the change modifies only legal
execution order, not the arithmetic work or address set.

## Block-trajectory traffic after the change

Data traffic in MiB, excluding normalized task metadata:

| Cache | target-resident `block` | right-looking `k-i-j` SSSSM | right-looking `j-k-i` SSSSM |
|---:|---:|---:|---:|
| 32 KiB | 53,461.375 | 53,463.368 | 16,130.330 |
| 64 KiB | 17,376.247 | 17,379.932 | 10,005.791 |
| 128 KiB | 15,999.319 | 16,005.922 | 9,026.478 |
| 256 KiB | 12,593.222 | 12,603.653 | 6,302.816 |
| 512 KiB | 4,646.612 | 4,695.925 | 2,936.994 |
| 1 MiB | 1,907.839 | 1,977.729 | 348.893 |
| 4 MiB | 140.376 | 160.481 | 163.607 |
| 8 MiB | 107.480 | 99.668 | 99.675 |
| 16 MiB | 96.993 | 92.774 | 93.730 |
| 32 MiB | 93.519 | 91.899 | 91.899 |

Relative to the previous common `k-i-j` factor-kernel traversal, the oriented
factor kernels reduce target-resident Block traffic by 31.3% at 32 KiB and
19.6% at 1 MiB.  With column-oriented SSSSM, the reductions are 60.2% and
57.2%, respectively.  At 8--32 MiB, compulsory traffic dominates and the
difference largely disappears.

## Reproduction

```bash
cd /output/block_lu_hls/trace_analysis
bash run_full_lu_inplace_pilot.sh \
  input/Zd_Jac3_db_after_symbolic.mtx \
  512 \
  32K,64K,128K,256K,512K,1M,4M,8M,16M,32M \
  outputs/full_lu_inplace_b512_oriented_factor_v3
```

Primary outputs:

- `full_lu_inplace_event_audit.csv`: exact event/address equivalence;
- `full_lu_inplace_cache_traffic.csv`: raw traffic counters;
- `full_lu_inplace_summary.csv`: normalized MiB, TA and speedups;
- `full_lu_inplace_report.json`: frozen v3 traversal semantics.
