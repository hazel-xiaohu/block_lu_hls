# P4 fairness controls before the capacity scan

## Scope and compulsory lower bound

The experiment remains restricted to SSSSM/block-trailing updates with
`I>K,J>K`, `B=S=512`, 64-byte lines and write-back/write-allocate LRU.

The common unique line counts are `N_L=N_U=263,169` and `N_A=442,723`.
Because every A target must be read once and written once:

```text
B_min = 64 * (N_L + N_U + 2*N_A)
      = 90,354,176 B
      = 0.084149 GiB
```

For 701,781,110 MACs (1,403,562,220 logical FLOPs), the lower bound is
0.0643749 B/FLOP.

## Traffic amplification and scheduling controls

| Method | 4 MiB data | 4 MiB TA | 16 MiB data | 16 MiB TA |
|---|---:|---:|---:|---:|
| Operation VLIW16 | 0.153295 GiB | 1.82171x | 0.085047 GiB | 1.01068x |
| Operation-block-order VLIW16 | 0.111827 GiB | 1.32892x | 0.090112 GiB | 1.07087x |
| Segment-native | 1.049396 GiB | 12.47071x | 0.088527 GiB | 1.05203x |
| Segment-L-affinity | 0.106597 GiB | 1.26677x | 0.089207 GiB | 1.06011x |
| Segment-cache-aware | 0.103921 GiB | 1.23496x | 0.091099 GiB | 1.08259x |
| Block | 0.111827 GiB | 1.32892x | 0.090112 GiB | 1.07087x |

Segment-L-affinity reduces 4 MiB traffic by 9.84x relative to the native
column/segment order.  With the FP32 working set, it is 4.7% below Block, and
the deterministic cache-aware policy is 7.1% below Block.  Thus the old FP64
conclusion that Block was data-traffic-best at 4 MiB no longer holds.  The
defensible statement is about the tested task/order variants, not SALUT as a
complete architecture.

Operation-block-order and Block have exactly the same data traffic at both
capacities.  Task boundaries do not flush the shared LRU and no private task
scratchpad is modeled.  Under this model, the Block data-traffic benefit over
native Operation comes from the atom order enabled by block grouping; the
remaining difference is task/dependency representation.

## Exact event-equivalence audit

Every traversal uses a canonical event ID:

```text
event_id = event_base[k] + l_position * |U_active(k)| + u_position
```

For each traversal, an approximately 84 MiB bitset verifies that all
701,781,110 event IDs occur exactly once.  All six schedules report:

```text
canonical_event_ids = 701,781,110
duplicate_event_ids = 0
```

Three order-independent 64-bit hashes of the full
`(L_line,U_line,A_line)` multiset also match.  This is stronger than comparing
the three unique address sets alone.

## Metadata interpretation and sensitivity

The normalized baseline footprint is 32 B/task plus 8 B/contribution
descriptor, expressed as 8 and 2 32-bit words respectively.  An Operation
task is now one 16-lane VLIW bundle, not one scalar MAC.  It is reported
separately as static footprint, stream-each-run,
preload-once amortized bytes for 1/2/5/10/20/100 repetitions, and online
generation with zero external metadata bytes while excluding generator cost.

`descriptor_width_scan.csv` scans normalized total control widths of
0/1/2/4/8/16/32/40 B per task.  At 16 MiB, native Operation has a 5,438,464 B
data advantage over Block.  The exact break-even normalized width is:

```text
d* = 0.123993 B per 16-lane Operation VLIW bundle
```

Any explicit per-bundle control stream larger than this removes the small
16 MiB data advantage of native Operation over Block.  This remains a
normalized sensitivity result, not a claim about OOLU's literal instruction
encoding.
