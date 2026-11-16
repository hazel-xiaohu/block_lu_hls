# Complete-LU Eight-Trajectory Capacity Results

## Frozen v4 semantics

The formal set removes scalar right-looking `O` and Block right-looking `BR`.
The retained trajectories are:

- `OC`: operation-column-order;
- `OS`: operation-segment-order;
- `OB`: operation-block-order;
- `SN`: segment-native;
- `SL`: segment-L-affinity;
- `SC`: segment-cache-aware;
- `B`: target-resident left-looking Block;
- `BRJ`: right-looking Block with column-oriented SSSSM atoms.

All Block factor kernels use GETRF/GESSM `j-k-i` and TSTRF `i-k-j`.  Both `B`
and `BRJ` now use `j-k-i` inside every SSSSM Block update.  Their remaining
difference is the outer schedule: target-resident left-looking versus strict
right-looking `K-I-J`.

## Exactness audit

The replay uses `Zd_Jac3_db_after_symbolic.mtx`, `B=S=512`, FP32 values,
32-bit indices and 64-byte fully-associative write-back/write-allocate LRU
lines.

```text
MAC events       1,271,271,358
division events      3,011,796
total events     1,274,283,154
duplicate events             0
```

All eight trajectories have identical event-multiset, read-address and
write-address hashes.

## Matrix data traffic

Values are MiB and exclude normalized control metadata.

| Capacity | OC | OS | OB | SN | SL | SC | B | BRJ |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 32 KiB | 9955.446 | 10333.495 | 16132.550 | 10333.495 | 23771.364 | 10270.703 | 16132.550 | 16130.330 |
| 64 KiB | 9939.115 | 10300.483 | 10009.615 | 10300.483 | 23730.251 | 10153.770 | 10009.615 | 10005.791 |
| 128 KiB | 9905.821 | 10218.087 | 9033.503 | 10218.087 | 23616.188 | 9676.648 | 9033.503 | 9026.478 |
| 256 KiB | 9784.211 | 10018.527 | 6318.161 | 10018.527 | 23154.073 | 8828.897 | 6318.161 | 6302.816 |
| 512 KiB | 9299.518 | 9452.925 | 2951.917 | 9452.925 | 22044.542 | 7132.650 | 2951.917 | 2936.994 |
| 1 MiB | 8422.769 | 8504.008 | 330.526 | 8504.008 | 19730.562 | 4757.728 | 330.526 | 348.893 |
| 4 MiB | 3375.473 | 3346.187 | 139.473 | 3346.187 | 186.426 | 702.343 | 139.473 | 163.607 |
| 8 MiB | 103.958 | 103.191 | 107.855 | 103.191 | 99.538 | 107.147 | 107.855 | 99.675 |
| 16 MiB | 97.877 | 97.871 | 96.935 | 97.871 | 91.901 | 97.298 | 96.935 | 93.730 |
| 32 MiB | 94.102 | 94.079 | 93.519 | 94.079 | 91.898 | 93.519 | 93.519 | 91.899 |

## Effect of changing target-resident Block from KIJ to JKI

| Capacity | v3 B: KIJ | v4 B: JKI | Reduction |
|---:|---:|---:|---:|
| 32 KiB | 53461.375 | 16132.550 | 69.82% |
| 64 KiB | 17376.247 | 10009.615 | 42.39% |
| 128 KiB | 15999.319 | 9033.503 | 43.54% |
| 256 KiB | 12593.222 | 6318.161 | 49.83% |
| 512 KiB | 4646.612 | 2951.917 | 36.47% |
| 1 MiB | 1907.839 | 330.526 | 82.68% |
| 4 MiB | 140.376 | 139.473 | 0.64% |
| 8 MiB | 107.480 | 107.855 | -0.35% |
| 16 MiB | 96.993 | 96.935 | 0.06% |
| 32 MiB | 93.519 | 93.519 | 0.00% |

The largest benefit occurs in the capacity-limited region.  Once cache
capacity is sufficient for the relevant reuse window, traversal direction no
longer materially changes traffic.

## Reproduction

```bash
cd /output/block_lu_hls/trace_analysis
bash run_full_lu_inplace_pilot.sh \
  input/Zd_Jac3_db_after_symbolic.mtx \
  512 \
  32K,64K,128K,256K,512K,1M,4M,8M,16M,32M \
  outputs/full_lu_inplace_b512_eight_traces_v4
```
