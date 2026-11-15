# P3--P4 unified-address cache pilot

## Frozen scope

- Input: `Zd_Jac3_db_after_symbolic.mtx`.
- Only SSSSM/block-trailing updates are included:
  `floor(i/B)>floor(k/B)` and `floor(j/B)>floor(k/B)`.
- `B=S=512`.
- Logical work: 701,781,110 MACs = 1,403,562,220 logical FLOPs.
- Operation issue: OOLU-style 16-lane VLIW, 43,861,320 bundles and 10
  final padding slots under the full-load simplification.
- Data layout: FP32 value + int32 index, 8-byte AoS records.
- Cache: exact fully associative write-back/write-allocate LRU, 64-byte line.
- Capacities: 4 MiB and 16 MiB.

No GETRF/GESSM/TSTRF work or panel update is counted.

## Coverage and address-set audit

All three traversals passed the same-set test:

| Method | Atomic updates | Unique L lines | Unique U lines | Unique A lines |
|---|---:|---:|---:|---:|
| Operation | 701,781,110 | 263,169 | 263,169 | 442,723 |
| Segment | 701,781,110 | 263,169 | 263,169 | 442,723 |
| Block | 701,781,110 | 263,169 | 263,169 | 442,723 |

The per-region set hashes are also identical.  Thus the comparison changes
only access order and task granularity, not logical work or unique data.

## Pilot results

| Method | Cache | Data traffic | Metadata | Total | Bytes/FLOP |
|---|---:|---:|---:|---:|---:|
| Operation VLIW16 | 4 MiB | 0.153295 GiB | 1.633961 GiB | 1.787257 GiB | 1.36727 |
| Operation VLIW16 | 16 MiB | 0.085047 GiB | 1.633961 GiB | 1.719009 GiB | 1.31506 |
| Segment-native | 4 MiB | 1.049396 GiB | 0.037889 GiB | 1.087285 GiB | 0.831786 |
| Segment-native | 16 MiB | 0.088527 GiB | 0.037889 GiB | 0.126416 GiB | 0.096710 |
| Block | 4 MiB | 0.111827 GiB | 0.000015 GiB | 0.111842 GiB | 0.085561 |
| Block | 16 MiB | 0.090112 GiB | 0.000015 GiB | 0.090128 GiB | 0.068949 |

At 4 MiB, Block reduces data traffic by 1.37x relative to native Operation and
9.38x relative to Segment-native.  The smaller FP32 working set also lets the
reordered Segment variants slightly beat Block in data-only traffic (see the
fairness controls).  At 16 MiB, all streams approach their compulsory working
sets and native Operation has slightly lower data traffic than Block.  Under
the normalized control model, however, Operation now emits 43,861,320 VLIW
bundles rather than 701,781,110 scalar descriptors; Block still has the lowest
total traffic because it needs only 414 block tasks.

The exact source values are in
`outputs/granularity_pilot/block_b512_cache/cache_traffic.csv`.
