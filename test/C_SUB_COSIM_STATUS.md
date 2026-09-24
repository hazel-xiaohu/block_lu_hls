# C -= A*B cosim status

Date: 2026-09-24

The active `test/` profile uses `SPMM_C_SUB_AB` and reads the generated
`random_many_empty` CSR dataset. It has 64 A rows (40 empty), 48 B rows (30
empty), and a structure-preserving C input with 143 entries covering A*B.
CSim is expected to exercise all 64 rows, including empty-row handling and
read/modify/write through the original C ports.

Validation completed with the random case: CSim and full 64-row C/RTL Cosim
both pass (`nnz=143`). XSIM reported a peak of 1,418 MB. HLS synthesis for
this profile reported a separate peak of about 4.03 GB; synthesis and XSIM do
not need to run concurrently.

The reduced interface-depth profile keeps the random RTL transaction small
enough for a normal cosim run. Waveform tracing remains disabled and simulator
optimization remains enabled. Use `SPMM_TEST_ROWS=1` for a fast boundary check
or 64 for the complete generated case.
