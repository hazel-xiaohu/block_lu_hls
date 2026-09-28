# Sparse triangular kernel v2

This directory keeps v1 unchanged and adds `large_gessm_v2` and `large_tstrf_v2` with the same external signatures. The v2 implementation caches the reused factor in BRAM, allocates a private BRAM work vector per RHS lane, and unrolls four RHS lanes. `LSLU_V2_LANES` can be changed at compile time. The current bounds are `LSLU_V2_MAX_N=2624` and `LSLU_V2_MAX_NNZ=8192`; increase them for larger blocks.

## Correctness

`tb_large_sparse_lu_v2.cpp` compares v2 with the existing reference on `processed_circuit_1`. Both kernels returned `status=0`; GESSM and TSTRF operation counters were exactly unchanged (`232634` multiply-adds and `107584` divisions for TSTRF). The output relative L2 errors matched v1: GESSM `4.34e-16`; TSTRF `1.09e-7`; no non-finite values.

## Synthesis

The factor/work arrays are inferred as BRAM. The dependent sparse-update loop improved from II=27 (v1) to II=13 (v2). Estimated clock remains 3.650 ns. Resource use is reported in `v2_synthesis_summary.csv`: GESSM uses 72 BRAM18K, 5 DSP, 21,018 FF, 30,355 LUT; TSTRF uses 80 BRAM18K, 5 DSP, 22,278 FF, 31,344 LUT.

The values in `v2_cycle_estimate.csv` are optimistic architectural estimates, not measured RTL latency. Exact dynamic latency still requires C/RTL cosimulation. The single divider is intentionally shared in v2; division approximation is not enabled.


## Measured C/RTL cosimulation

Both full cosimulations completed with `RTL Simulation : 1 / 1` and no testbench errors. The transaction starts at 113,000 ps and the reported simulation time uses a 5 ns clock period (200 MHz). The measured transaction latency is computed as `(end_ps - 113000) / 5000`.

| kernel | end marker (ps) | cycles | simulated latency (ms) | C/RTL result |
|---|---:|---:|---:|---|
| GESSM v2 | 20,848,583,000 | 4,169,694 | 20.84847 | PASS |
| TSTRF v2 | 32,508,353,000 | 6,501,648 | 32.50824 | PASS |

These are RTL-simulated dynamic latencies, not the optimistic II-based estimates. The gap is expected because the full test includes AXI/control scheduling, memory transfers, floating-point pipeline latency, and the serialized shared divider; it should not be interpreted as a failure of the functional test.


## TSTRF reciprocal-reuse optimization

The TSTRF v2 normalization was changed from `w[lane][j] /= diag_val` to one cached reciprocal per diagonal, `diag_recip[j] = 1/diag_val`, followed by `w[lane][j] *= diag_recip[j]` for every active row and lane. For this test, actual division/reciprocal operations decreased from 107,584 to 1,312 (98.8% fewer).

| version | RTL cycles | RTL latency (ms) | relative to original |
|---|---:|---:|---:|
| TSTRF v2 original | 6,501,648 | 32.50824 | 1.000x |
| TSTRF v2 reciprocal reuse | 4,935,090 | 24.67545 | 1.318x |

The reciprocal version reduces cycles and latency by 24.1%. C simulation remains numerically consistent (`status=0`, relative L2 error `1.15744e-07`, no nonfinite output). Synthesis keeps the main sparse-update loop at II=13; the reciprocal preload loop is II=16. Resource use changes from 80 to 88 BRAM18K, 5 to 5 DSP, 22,278 to 21,213 FF, and 31,344 to 30,470 LUT; estimated Fmax remains 273.97 MHz.
