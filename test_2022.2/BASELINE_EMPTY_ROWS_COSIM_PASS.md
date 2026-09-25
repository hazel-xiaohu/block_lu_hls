# Baseline: empty-row cosim pass

- Date: 2026-09-23
- Dataset: `circuit204_ssssm_510`
- A: 510 rows, 947 nonzeros, 409 empty rows
- Result: CSim and C/RTL cosim passed; output nonzero count 1357
- Command profile: `SPMM_COSIM_CIRCUIT204`

This marker is the restore point before adding the `C -= A*B` operation.
