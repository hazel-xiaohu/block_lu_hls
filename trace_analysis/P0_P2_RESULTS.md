# Three-granularity count pilot: P0--P2

## Frozen input

- source: SuiteSparse `VanVelzen/Zd_Jac3_db`, 22,835 by 22,835, 713,907
  original nonzeros;
- reorder and symbolic factorization: the current PanguLU METIS + symmetric
  symbolic path;
- exported symbolic union: 6,046,427 entries, including 22,835 diagonal
  entries and 3,011,796 entries in each strict triangle;
- values and indices for later phases: FP32 (4 B) and int32 (4 B);
- OOLU operation issue model: 16 operations per VLIW bundle (`PE=16`), with
  full-lane loading assumed and only a possible final tail represented as
  padding;
- no operation trace was materialized.

The raw archive, raw MTX, and symbolic MTX SHA-256 hashes are frozen in
`experiment_config.json` and each report records the symbolic input hash.

## P0: Block baseline

All frozen Block counts were reproduced exactly.  A block update is scheduled
from the Cartesian product of occupied strict factor blocks
`L(I,K) x U(K,J)`, with `I>K,J>K`.

| B | Block update tasks | L blocks | U blocks | targets | zero-effective-MAC scheduled tasks |
|---:|---:|---:|---:|---:|---:|
| 256 | 1,761 | 301 | 301 | 618 | 188 |
| 512 | 414 | 104 | 104 | 193 | 32 |
| 1024 | 147 | 45 | 45 | 80 | 20 |

The zero-effective tasks are real block-schedule descriptors whose two sparse
factor blocks have no shared internal scalar pivot.  Omitting them would make
the B=512 atomic-key count 382 rather than the frozen schedule count 414.

## P1--P2: B=S=512 count pilot

The three compared rows cover the same **block-trailing** scalar MAC set:
701,781,110 updates.  Their MAC histograms sum back to this number, and the
program aborts if any sum differs.

| Method | Tasks | Contribution descriptors | Targets | Estimated metadata |
|---|---:|---:|---:|---:|
| operation VLIW16 | 43,861,320 | 43,861,320 | 3,541,784 | 1,754,452,800 B |
| segment (S=512) | 23,370 | 4,991,920 | 23,370 | 40,683,200 B |
| block (B=512) | 414 | 414 | 193 | 16,560 B |

Task MAC distributions:

| Method | min | median | mean | p95 | max |
|---|---:|---:|---:|---:|---:|
| operation VLIW16 | 16 | 16 | 16 | 16 | 16 |
| segment | 1 | 8,274 | 30,029.14 | 135,267.3 | 383,675 |
| block | 0 | 56,222.5 | 1,695,123.45 | 9,166,687.2 | 30,821,798 |

Target update distributions:

| Method | min | median | mean | p95 | max |
|---|---:|---:|---:|---:|---:|
| operation | 1 | 138 | 198.14 | 688 | 1,772 |
| segment | 1 | 147 | 213.60 | 684 | 1,772 |
| block | 1 | 1 | 2.15 | 6.8 | 18 |

## Scope finding that must be frozen before P3

The originally stated scalar condition `i>k,j>k` contains 1,271,271,358 MACs.
The Block baseline of 414 tasks instead describes only `I>K,J>K`, which
contains 701,781,110 MACs at B=512.  Thus 569,490,248 scalar updates (44.80%)
belong to the diagonal/panel work handled by GETRF/GESSM/TSTRF rather than the
Block SSSSM trailing-update schedule.

This is not a counting bug.  It means the following two experiments are
different and must not be mixed:

1. **SSSSM-only granularity comparison:** use `I>K,J>K`; the 414-task frozen
   baseline is valid, but the selected MAC set changes when B changes.
2. **Whole LU update comparison:** use all `i>k,j>k`; the MAC set is independent
   of B, but Block tasks must also include diagonal and panel work, so “414
   tasks” is no longer the complete Block task count.

P3 cache-address construction should begin only after choosing one of these
two scopes.  The current outputs intentionally stop at P2.
