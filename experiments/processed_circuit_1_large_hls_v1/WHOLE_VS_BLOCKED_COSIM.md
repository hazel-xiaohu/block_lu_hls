# Whole GETRF versus 2x2 blocked LU RTL cosimulation

Matrix: `processed_circuit_1.mtx`, order 2624. The 2x2 split uses two 1312-by-1312 diagonal blocks. All cycle counts use a 5 ns clock (200 MHz).

| Configuration | Stage | Cycles | Time (ms) | Status |
|---|---|---:|---:|---|
| Whole | GETRF(2624) | 20,508,348 | 102.541740 | PASS |
| 2x2 | GETRF(A11) | 1,105,968 | 5.529840 | PASS |
| 2x2 | GESSM v2 | 4,169,694 | 20.848470 | PASS |
| 2x2 | TSTRF v2, reciprocal reuse | 4,935,090 | 24.675450 | PASS |
| 2x2 | SSSSM | 7,470,498 | 37.352490 | PASS |
| 2x2 | GETRF(Schur) | 12,041,027 | 60.205135 | PASS |
| **2x2 total** | **serial sum** | **29,722,277** | **148.611385** | **PASS** |

The complete blocked path costs 1.4493 times the whole GETRF path, or 44.93% more cycles. Equivalently, whole GETRF is 1.4493x faster than the serial 2x2 decomposition for this matrix and implementation.

The blocked total is the sum of the five kernel RTL latencies. It does not add host launch overhead or inter-kernel data-transfer overhead, and assumes no overlap between kernels.
