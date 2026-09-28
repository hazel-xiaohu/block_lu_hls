# GETRF v2

This directory keeps the original `large_getrf` unchanged and adds
`large_getrf_v2`.  v2 stores `work_local`, `pattern_tag`, and `work_tag` in
on-chip RAM.  The two tag arrays distinguish legal sparsity from numerical
initialization, so a work entry is cleared only on its first use in a row.
The external `work` and `mark` pointers are removed from the v2 top-level
interface because they are no longer accessed.

Validation order:

1. C simulation compares L/U against the prepared reference.
2. HLS synthesis checks the achieved II and resource binding.
3. RTL co-simulation checks status, operation counters, and L/U residuals.

Only after these checks pass will the reciprocal-pivot cache (v3) be added.
