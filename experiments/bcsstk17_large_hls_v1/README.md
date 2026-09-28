# bcsstk17 large sparse-LU experiment

This experiment keeps the legacy `GETRF_MAX_N=64` design unchanged and adds
a DDR-backed fixed-pattern numerical path for large matrices.  Symbolic fill
is generated offline; the HLS kernels retain only `O(n)` dense work vectors,
not `O(n^2)` position tables.

The original `sparse_mm/processed_bcsstk17.mtx` is truncated.  The experiment
therefore uses the complete NIST Matrix Market copy in `input/bcsstk17.mtx`.
