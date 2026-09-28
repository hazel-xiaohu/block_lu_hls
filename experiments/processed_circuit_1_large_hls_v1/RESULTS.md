# processed_circuit_1 HLS comparison

Input: `input/processed_circuit_1.mtx`, already preprocessed/sorted Matrix Market,
2624 by 2624, 45,624 real entries. The experiment does not apply a new ordering.
The reference factorization uses natural ordering and no numerical row/column
permutation; structural symbolic slots are retained even when a numerical value
is zero.

## C simulation

| path | host C-sim time (ms) |
|---|---:|
| whole GETRF | 0.718350 |
| GETRF(A11) + GESSM + TSTRF + SSSSM + GETRF(Schur) | 2.799690 |

The blocked/whole host C-sim ratio is 3.897x. All stages returned status 0,
all outputs are finite, and relative L2 errors against the double reference are
reported in `csim_results.txt`.

## Synthesis summary

See `synthesis_summary.csv` for clock and resource estimates. GETRF estimated clock is 6.826 ns; GESSM/TSTRF/SSSSM are 3.650 ns at the 5 ns target.

## RTL status

All four top functions were synthesized for `xczu15eg-ffvb1156-2-i` with a
5.0-ns target clock. The generated latency is dynamic and Vitis HLS reports `?`;
therefore `rtl_cycle_estimate.csv` reports a conservative cycle lower bound from
the measured operation counts and the synthesized loop II values. It excludes
AXI arbitration, burst startup, loop prologue/epilogue, and outer control states.

A current-engine smoke C/RTL cosim (`n=4`) passed Verilog RTL. Its generated
transaction was 2,676 cycles (13.38 microseconds at 5 ns); this validates the
interface/depth and numerical handshake, but is not a full-matrix timing result.
A full 2624-row XSIM run is not started because the lower-bound model already
requires millions of cycles and the observed XSIM rate makes that run many
hours; reporting it as measured would be misleading.
