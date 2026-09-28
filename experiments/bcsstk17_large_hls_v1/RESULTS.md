# bcsstk17 large sparse-LU refactor results

## Input integrity

The repository file `sparse_mm/processed_bcsstk17.mtx` is truncated: its Matrix
Market header declares 2,170,488 records, while the file ends after 429,656
data records.  It is therefore not a valid factorization input.  This experiment
uses the complete NIST Matrix Market bcsstk17 file (gzip verified), expanded to a
10974 x 10974 symmetric matrix with 428,650 nonzeros.

## Refactor

The legacy dense-position HLS implementation is bounded by `GETRF_MAX_N=64` and
requires O(N^2) local storage.  `large_sparse_lu.cpp` instead uses fixed symbolic
CSR/CSC patterns in external memory and O(N) reusable work/marker arrays.  It
implements separate GETRF, GESSM, TSTRF and SSSSM entry points.  Static index
maps connect CSR and CSC value order without a CPU numerical conversion between
kernels.

The 2x2 split is 5487 + 5487.  Symbolic/numeric reference pattern sizes are:

- whole L/U: 1,596,240 nonzeros each;
- L11/U11: 486,353 each;
- U12/L21: 31,698 each (243 active columns/rows);
- Schur complement: 285,015;
- L22/U22: 1,078,189 each.

## Full C simulation

Command:

```bash
python3 prepare.py input/bcsstk17.mtx --out prepared
g++ -O3 -std=c++17 -Wno-unknown-pragmas large_sparse_lu.cpp \
    tb_large_sparse_lu.cpp -o tb_large_sparse_lu
./tb_large_sparse_lu prepared/
```

All kernels returned status 0, with no non-finite output and no fixed-pattern
miss.  Times below are host C-simulation wall times, **not FPGA latency**:

| path/stage | C-sim time (ms) | relative L2 error vs double reference |
|---|---:|---:|
| whole GETRF | 306.003 | L 4.92e-5; U 1.57e-5 |
| GETRF(A11) | 57.221 | L11 2.13e-5; U11 1.72e-6 |
| GESSM | 516.306 | U12 7.77e-6 |
| TSTRF | 528.750 | L21 2.93e-5 |
| SSSSM | 6.289 | Schur 5.21e-7 |
| GETRF(Schur) | 242.512 | L22 6.24e-5; U22 2.36e-5 |
| blocked total | 1351.078 | all stages finite/status 0 |

The elementwise maximum relative error is not used as the acceptance metric
because many reference fill values are near zero.  Relative L2 error and
non-finite/pattern/status checks are reported instead.

## RTL synthesis status

`run_csynth_getrf.tcl` is provided for the same Zynq UltraScale+ target and 5 ns
clock used by `test_2022.2`.  Vitis HLS starts successfully with the persistent
compatibility runtime, but this host currently rejects synthesis with
`[Common 17-217] Failed to load feature 'base'`.  Consequently no new RTL cycle
or resource claim is made here; a valid Xilinx license is required to finish
CSynth/cosim.
