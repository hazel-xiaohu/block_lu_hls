# v4 GETRF RTL cycle comparison for `processed_circuit_1`

The v4 GETRF RTL design was cosimulated with the same synthesized snapshot for
the complete 2624-by-2624 block and for both 1312-by-1312 diagonal blocks used
by the 2x2 decomposition.  The cycle count is the HLS transaction latency
(`*.result.lat.rb`), not host wall-clock time.  One RTL cycle is 5 ns in this
cosimulation, so `time_ms = cycles * 0.000005`.

Measured v4 GETRF latencies:

| Variant | n | RTL cycles | RTL time |
|---|---:|---:|---:|
| Whole block | 2624 | 13,965,806 | 69.829030 ms |
| A11 | 1312 | 793,604 | 3.968020 ms |
| Schur (A22) | 1312 | 8,158,754 | 40.793770 ms |

Both subblock and whole-block runs completed one transaction (`1/1`) and the
Schur post-check returned `GETRF_V4_PASS` (status 0; the whole and A11 runs
also completed with status 0 and one transaction).

## 2x2 serial composition

Keeping the previously measured independent-IP costs for the non-GETRF stages
(GESSM 4,169,694 cycles, TSTRF reciprocal 4,935,090 cycles, and SSSSM
7,470,498 cycles), and replacing only both GETRF terms with the v4 values,

```
T_2x2,v4 = 793,604 + 4,169,694 + 4,935,090 + 7,470,498 + 8,158,754
          = 25,527,640 cycles = 127.638200 ms.
```

The corresponding whole-block v4 GETRF cost is 13,965,806 cycles (69.829030
ms).  Thus this serial 2x2 composition is `1.827867x` the whole-block v4
GETRF time (equivalently, whole-block GETRF is 0.547086x of the mixed serial
composition).  This is a stage-sum comparison: it excludes host setup,
inter-kernel transfers, and any overlap between independent kernels.  GESSM,
TSTRF, and SSSSM in this total remain the prior independent-IP measurements;
only GETRF has been replaced by the newly measured v4 RTL implementation.

The machine-readable values are in
[`v4_getrf_rtl_cycles.csv`](v4_getrf_rtl_cycles.csv).
