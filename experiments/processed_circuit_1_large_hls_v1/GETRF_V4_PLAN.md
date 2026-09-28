# GETRF v2-v4 optimization plan

- v2: BRAM workspace and lazy row initialization.
- v3: v2 plus one cached reciprocal per completed pivot.
- v4: v3 plus a local U-row buffer, four cyclic workspace banks, and a
  conflict-aware four-lane update.  Conflicting banks use a sequential fallback
  so the arithmetic result remains deterministic.

`run_getrf_v4.tcl` is intentionally the only RTL/cosim entry point.  It is not
run until the v4 C simulation passes.
