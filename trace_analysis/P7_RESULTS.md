# P7 multi-matrix mechanism validation

## Protocol

- Six additional post-symbolic L/U union patterns.
- `B=S=512`, SSSSM-only block-trailing scope (`I>K,J>K`).
- Exact fully associative write-back/write-allocate LRU at 4 and 16 MiB.
- The same six schedules and the same 64-byte address model as P4/P5.
- Operation uses 16-lane VLIW bundles and all sparse records use FP32 values
  plus int32 indices (8 B).
- Every schedule passed the canonical event-ID bitset, event-multiset hash,
  unique-address-set, and exact event-count checks.

The combined machine-readable table is
`outputs/multi_matrix_validation_b512/multi_matrix_cache_validation.csv`.

## Traffic amplification

| Matrix | Atomic MACs | Cache | Operation | Op-block-order | Segment-native | Segment-L-aff. | Segment-cache-aware | Block |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| G62 | 4,792,034 | 4 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| G62 | 4,792,034 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| bcsstk17 | 69,446,838 | 4 MiB | 1.007 | 1.123 | 1.038 | 1.126 | 1.122 | 1.123 |
| bcsstk17 | 69,446,838 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| circuit_2 | 272,492 | 4 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| circuit_2 | 272,492 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| cryg10000 | 4,303,630 | 4 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| cryg10000 | 4,303,630 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| rajat08 | 3,927,174 | 4 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| rajat08 | 3,927,174 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| shermanACb | 19,158,926 | 4 MiB | 1.000 | 1.162 | 1.078 | 1.169 | 1.047 | 1.162 |
| shermanACb | 19,158,926 | 16 MiB | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |

## Interpretation

The additional matrices confirm that the traffic result is capacity- and
structure-dependent.  Four matrices already fit their effective reuse windows
at 4 MiB, so all schedules reach the compulsory bound and Block cannot reduce
data traffic further.  For bcsstk17 and shermanACb, native Operation is actually
closer to the compulsory bound than Block at 4 MiB.  Thus the data-only result
must not be stated as “Block always transfers fewer bytes.”

Block's stable advantage in this set is task/control compression.  Under the
frozen 40-byte normalized control model applied per 16-lane bundle, the 4-MiB
Operation metadata footprint ranges from 0.65 MiB to 165.57 MiB, whereas the
Block footprint ranges from about 2.4 KiB to 26.3 KiB.  For example, bcsstk17
uses 20.45 MiB of Operation data traffic versus 22.82 MiB for Block, but its
normalized Operation metadata is 165.57 MiB versus only 6.45 KiB for Block.

The six-matrix set is a mechanism validation, not an unbiased generality set.
Matrices with very large post-symbolic fill were excluded because an exact
atomic-event traversal was not tractable in this pilot.  Those exclusions and
the observed symbolic-union sizes are recorded in
`input/multi_symbolic/EXCLUSIONS.csv`.  A scalable sampled/partitioned exact
simulator is needed before extending the statistical claim to those matrices.
