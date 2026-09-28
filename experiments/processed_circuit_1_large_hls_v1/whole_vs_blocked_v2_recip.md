# Whole GETRF vs 2x2 blocked solve (processed_circuit_1)

## Scope

This comparison uses the prepared `processed_circuit_1` test case (`n=2624`, two 1312 blocks) and the same host C-simulation executable. The blocked path is

`GETRF(A11) + GESSM_v2 + TSTRF_v2(reciprocal) + SSSSM + GETRF(Schur)`.

The reported time is the sum of the five kernel calls; it excludes external FPGA transfer, host scheduling, and symbolic preprocessing. Measurements were repeated 20 times and summarized by the median.

| configuration/stage | median time (ms) |
|---|---:|
| whole `large_getrf(A)` | 0.721876 |
| blocked `GETRF(A11)` | 0.060264 |
| blocked `GESSM_v2` | 0.929223 |
| blocked `TSTRF_v2` reciprocal | 0.444300 |
| blocked `SSSSM` | 0.252692 |
| blocked `GETRF(Schur)` | 0.432399 |
| **2x2 blocked total** | **2.126087** |

The blocked/whole ratio is **2.936x**; equivalently, whole GETRF is about **2.936x faster** in this host C-simulation (`whole/blocked = 0.3406`). Thus, for this small prepared case, 2x2 blocking does not provide an end-to-end advantage: the additional GESSM/TSTRF/SSSSM stages and synchronization dominate.

The reciprocal optimization improves the TSTRF stage itself, but it does not overturn this whole-vs-blocked conclusion. This result is not an FPGA RTL end-to-end comparison; a hardware claim requires a composed RTL/board run with identical transfer and launch policy.
