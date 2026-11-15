# P5 capacity and grain-size scan

## Protocol

- Matrix: `Zd_Jac3_db_after_symbolic.mtx`.
- Scope: SSSSM-only block trailing, `I>K,J>K`.
- `B=S` in 256/512/1024.
- Fully associative write-back/write-allocate LRU.
- Capacity in 1/4/8/16/32 MiB.
- Six schedules: Operation, Operation-block-order, Segment-native,
  Segment-L-affinity, Segment-cache-aware, and Block.
- Operation schedules use 16-lane OOLU-style VLIW bundles; all sparse records
  are 8-byte FP32-value + int32-index pairs.
- All 90 schedule/capacity/grain rows pass canonical-event and address-set
  equivalence within their own B/S configuration.

Changing B changes the selected `I>K,J>K` SSSSM event set.  The MAC counts are
875,788,904 for B=256, 701,781,110 for B=512, and 552,143,071 for B=1024.
Therefore absolute bytes must not be compared across B as if the work were
identical.  The table below uses each configuration's own compulsory lower
bound and reports traffic amplification (TA).

## Traffic amplification

| B | Cache | Operation | Op-block-order | Segment-native | Segment-L-aff. | Segment-cache-aware | Block |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 256 | 1 MiB | 120.332 | 1.928 | 56.380 | 24.042 | 24.034 | 1.928 |
| 256 | 4 MiB | 1.773 | 1.509 | 11.870 | 1.462 | 1.391 | 1.509 |
| 256 | 8 MiB | 1.068 | 1.264 | 1.091 | 1.270 | 1.237 | 1.264 |
| 256 | 16 MiB | 1.010 | 1.072 | 1.060 | 1.072 | 1.110 | 1.072 |
| 256 | 32 MiB | 1.000 | 1.021 | 1.019 | 1.021 | 1.070 | 1.021 |
| 512 | 1 MiB | 110.912 | 16.875 | 53.764 | 28.389 | 28.400 | 16.875 |
| 512 | 4 MiB | 1.822 | 1.329 | 12.471 | 1.267 | 1.235 | 1.329 |
| 512 | 8 MiB | 1.052 | 1.190 | 1.082 | 1.188 | 1.148 | 1.190 |
| 512 | 16 MiB | 1.011 | 1.071 | 1.052 | 1.060 | 1.083 | 1.071 |
| 512 | 32 MiB | 1.000 | 1.021 | 1.020 | 1.021 | 1.056 | 1.021 |
| 1024 | 1 MiB | 103.939 | 13.314 | 59.353 | 36.565 | 36.589 | 13.314 |
| 1024 | 4 MiB | 2.043 | 1.290 | 16.061 | 1.248 | 1.225 | 1.290 |
| 1024 | 8 MiB | 1.056 | 1.187 | 1.083 | 1.181 | 1.114 | 1.187 |
| 1024 | 16 MiB | 1.000 | 1.057 | 1.046 | 1.057 | 1.060 | 1.057 |
| 1024 | 32 MiB | 1.000 | 1.022 | 1.011 | 1.027 | 1.033 | 1.022 |

## Interpretation

At 1 MiB, Block order remains much better than the other schedules.  With the
FP32 working set, the crossover moves downward: at 4 MiB the cache-aware
Segment order is best for all three B values, while native Operation becomes
best at 8 MiB and above (except tiny rounding-level differences near the
compulsory bound).

Operation-block-order equals Block at every point, which confirms that their
data traces are identical.  Any difference between them is entirely metadata
and scheduling representation in this model.

At 32 MiB native Operation reaches TA=1.000 for all three B values.  This does
not mean the cache contains the complete address space; it means its traversal
finishes necessary reuse before eviction.  Conversely, Block order retains a
small 2.1--2.2% amplification at 32 MiB because its cross-block order can
reload some factor lines.

The results support a capacity-dependent conclusion rather than a universal
claim: block ordering is valuable in constrained-cache regimes, while fine
operation ordering can approach the compulsory bound once the effective reuse
window fits.
