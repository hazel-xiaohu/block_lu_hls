# GETRF v4 status

- v2 software check: PASS.
- v3 software check: PASS; divisions 2624; max absolute L/U difference 1.8701e-6 / 2.40207e-5.
- v4 software check: PASS; divisions 2624; muladds 484052; max absolute L/U difference 1.8701e-6 / 2.40207e-5.
- v4 synthesis: PASS. Estimated Fmax 192.05 MHz (5.207 ns). Resources: 64 BRAM18K, 10 DSP, 15400 FF, 24629 LUT, 0 URAM.
- v4 achieved II: A scatter loop 9; U-row cache load 1; banked update branches 12; U writeback 2. The update II is lower than the v1 external-workspace II=18, but not yet II=1 because the four-bank BRAM update still has a carried write dependency.
- v4 RTL cosimulation: running in `proj_large_getrf_v4/solution1/sim/verilog/run_xsim_full.stdout`; final marker not yet emitted.
