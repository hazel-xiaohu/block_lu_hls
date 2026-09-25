# Vitis simulation

Run from `test/`, with the Vitis/Vivado environment configured:

```sh
make run TARGET=csim XPART=xczu15eg-ffvb1156-2-i
make run TARGET=cosim XPART=xczu15eg-ffvb1156-2-i
```

Both `hls_config.tmpl` and the generated `hls_config.cfg` build the C++ sources
in **this directory**. The testbench includes this directory's `core.h`.
`make run TARGET=cosim` synthesizes the current sources before running RTL
co-simulation. Use `SKIP_CSYNTH=1` only when the synthesized RTL is already current;
changes to interface depths require synthesis again.

The testbench's boundary cases remain available (uncomment them in `tb.cpp` when
needed). The active `SPMM_COSIM_RANDOM_EMPTY` profile uses the deterministic
dataset in `random_many_empty/`: A is 64x48 with 40 empty rows, B is 48x64 with
30 empty rows, and C is 64x64 with 40 empty rows and 143 stored entries. C's
CSR columns contain the complete A*B sparsity pattern. Set `SPMM_TEST_ROWS` to
change the benchmark prefix. `SPMM_DATA_DIR` selects the B CSR directory;
`SPMM_A_DATA_DIR` and `SPMM_C_DATA_DIR` select the A and initial C directories.
The boundary cases cover zero output rows, empty A, empty B,
leading/internal/trailing empty rows, idle PEs, and a cached row with an
off-chip tail.

`interface_depths.h` contains separate profiles for the random empty-row,
circuit204, and poisson3Da/10-row tests. The random profile uses 128
row-pointer words, 256 A input words, and 2048 C output words. The previous maximum profile
copied 2,957,530 elements for each output port on every invocation; XSIM's
AXI/UVM memory representation made that profile grow to several GiB and could
crash the host before RTL completed.

The normal cosim configuration explicitly disables waveform retention and
enables simulator optimization (`cosim.trace_level=none`,
`cosim.wave_debug=false`, `cosim.O=true`). These settings are important for
large runs. For the generated random case, XSIM used about 1.38 GiB at peak;
the HLS synthesis process separately used about 4.03 GB. The old large-depth
profile could require several GiB just to construct AXI/UVM memories before
the RTL transaction began, which is why it could be killed even when CSim
passed.

With `SPMM_C_SUB_AB`, the public `spmm` signature is unchanged. The existing
`C_rcsr`, `C_cid`, and `C_val` AXI buffers are read and written in place, one
row at a time. The C input must already contain the `A*B` sparsity pattern;
the operation updates only matching values and preserves the CSR structure.

For a larger dataset, enable the dataset section in `tb.cpp`, replace both
profile flags in `hls_config.tmpl` with the large profile, and resynthesize:

```ini
syn.cflags=-DSPMM_LARGE_COSIM
tb.cflags=-DSPMM_LARGE_COSIM
```

The large profile needs substantially more simulator memory. Prefer setting
shared depths in `interface_depths.h` to the actual dataset and output size.
The dataset section defaults to poisson3Da's first row; `SPMM_DATA_DIR` selects
the dataset directory and `SPMM_TEST_ROWS` selects how many A rows to multiply.
Host allocation and synthesis must use the same depth profile.

## Why C simulation can pass while cosim segfaults

The generated cosim wrapper copies the full `m_axi depth` for each port, including
small and empty matrix cases. All host buffers must therefore be allocated to
that depth. `interface_depths.h` is shared by the pragmas and testbench. Depths
count the port's elements: `A` and `C` use 32-bit elements, while the packed
`B` ports use 128-bit elements. B's packed row-pointer ports use
`SPMM_PACKED_ROW_DEPTH`, not the 32-bit `SPMM_ROW_DEPTH`. A guard word is also
required for the testbench's output checks.

`ap_uint<128>` host objects must be constructed and packed explicitly; casting a
`float*` or `uint32_t*` to `ap_uint<128>*` is not a valid C++ memory view. The
previous testbench combined such casts with unchecked file reads.

`csim_dataflow.h` runs the DATAFLOW stages concurrently during the C phases of
csim/cosim, including task/idle feedback. It registers those workers with the
Vitis stream checker. Under `__SYNTHESIS__`, the macros expand to direct calls,
without threads. Do not enable `ALLOW_EMPTY_HLS_STREAM_READS`.

Cache collectors consume explicit hit/miss metadata before choosing the cached
prefix or off-chip stream. Caches track filled words to prevent reads of a
partially filled line. LRU counters are initialized on every invocation.

The numerical reference uses double precision and an FP32 rounding bound based
on the number and absolute sum of products, allowing different accumulation
orders. The existing 1000-element partial-result buffer limit remains.

## How to config the interface_depths
SPMM_ROW_DEPTH          2050  // 2049 个行指针 + 1 个 guard
SPMM_INPUT_DEPTH        2831  // A nnz
SPMM_PACKED_ROW_DEPTH    513  // ceil(2049 / 4)
SPMM_PACKED_INPUT_DEPTH  896  // ceil(3581 / 4)
SPMM_OUTPUT_DEPTH       3627  // C nnz + 1 个 guard

## Fixed-pattern sparse GETRF

The LU path and SSSSM are separate hardware kernels.
`sparse_lu_shared_cached.cpp` implements the current shared top selected by
`operation`: `0=GETRF`, `1=GESSM`, and `2=TSTRF`. The earlier
`sparse_lu_shared.cpp` is retained as a comparison baseline. The existing
`spmm` top remains the independent SSSSM
`C-=A*B` engine and its source and interface are unchanged.

GETRF accepts scalar CSR `A`, read-only CSR structures for `L` and `U`, and
produces `L_val`/`U_val`. GESSM performs `X <- inv(L)*X`; TSTRF performs
`X <- X*inv(U)`. `X` is read and written in place. Every CSR structure must be
sorted and must already contain all symbolic fill. `L` includes an explicit
unit diagonal and `U` includes every diagonal entry. Runtime pivoting and
dynamic fill insertion are not implemented.

The default compile-time limits in `sparse_getrf.h` are `n <= 64`,
`A_nnz <= 1024`, and `L_nnz,U_nnz <= 2048`; the fixed panel width is four.
`sparse_lu_shared_cached.cpp` reads CSR structures sequentially and builds
on-chip row/column position maps and value caches, so arithmetic performs no
random AXI searches. `GETRF_COMPUTE_UNITS` selects the parallel update lanes
(default four): GETRF updates factor columns, GESSM updates right-hand-side
columns, and TSTRF updates block rows in parallel. The three operations share
these parallel arithmetic lanes. A host-side blocked factorization calls
GETRF on a diagonal block, GESSM on its block row, TSTRF on its block column,
and then invokes the separate SSSSM kernel for the trailing update.

Run the standalone GETRF flow from `test/`:

```sh
make run TARGET=csim CONFIG_FILE=$PWD/hls_getrf_config.cfg \
  WORK_DIR=hls_getrf XPART=xczu15eg-ffvb1156-2-i
make run TARGET=csynth CONFIG_FILE=$PWD/hls_getrf_config.cfg \
  WORK_DIR=hls_getrf XPART=xczu15eg-ffvb1156-2-i
make run TARGET=cosim CONFIG_FILE=$PWD/hls_getrf_config.cfg \
  WORK_DIR=hls_getrf XPART=xczu15eg-ffvb1156-2-i
```

The testbench creates a diagonally dominant 12-by-12 sparse matrix, computes
its fill pattern independently, and compares the hardware factors against a
dense reference and the residual `L*U-A`. Its host vectors are padded to the
full AXI depths because RTL cosim copies each compile-time depth, while the
logical nnz arguments retain their actual values.

The status output is `0` for success, `1` for a size beyond the compile-time
limits, `2` for malformed CSR, `3` for a missing symbolic fill position, and
`4` for a pivot whose magnitude is at most `pivot_eps`, and `5` for an invalid
operation. `failed_row` identifies the first failing row.

Run the shared LU regression with:

```sh
make run TARGET=csim CONFIG_FILE=$PWD/hls_lu_shared_config.cfg \
  WORK_DIR=hls_lu_cached XPART=xczu15eg-ffvb1156-2-i
make run TARGET=cosim CONFIG_FILE=$PWD/hls_lu_shared_config.cfg \
  WORK_DIR=hls_lu_cached XPART=xczu15eg-ffvb1156-2-i
```

For the included three-operation regression, cached four-lane RTL cosim takes
7341 cycles in total versus 31753 cycles for the baseline. The cached design
uses 136 BRAM18K, 24 DSP, 26538 FF and 41662 LUT. Its 3.961 ns HLS estimate is
below the nominal 5 ns period, but misses the tool's 3.650 ns uncertainty-
adjusted delay budget by 0.311 ns. The main update loops achieve II=1.

### Real blocked-LU cascade regression

`tb_lu_spmm_cascade.cpp` exercises the two kernels as a blocked factorization
sequence on the `circuit_3_12127` data: GETRF factors `A11`, GESSM produces
`U12`, TSTRF produces `L21`, and SSSSM applies
`C22 <- C22 - L21*U12`. The test uses the fixed sparsity structures from
`0_getrf_L_{colptr,rowidx}.BIN` and `0_getrf_U_{colptr,rowidx}.BIN` rather than
generating those structures at runtime.

One HLS cosimulation can have only one RTL top, so validate the cascade with
two serial runs from `test/`:

```sh
make run TARGET=cosim CONFIG_FILE=$PWD/hls_lu_real_config.cfg \
  WORK_DIR=hls_lu_real XPART=xczu15eg-ffvb1156-2-i
make run TARGET=cosim CONFIG_FILE=$PWD/hls_lu_spmm_cascade_config.cfg \
  WORK_DIR=hls_lu_spmm_cascade XPART=xczu15eg-ffvb1156-2-i
```

The first run validates GETRF, GESSM, and TSTRF as the RTL top. The second
uses their C model to prepare the intermediate CSR blocks, packs `U12` for the
existing SSSSM interface, and validates `spmm` as the RTL top. This represents
a controller-sequenced cascade through shared DDR. A direct on-chip stream
connection would additionally need an adapter between LU's scalar CSR arrays
and SSSSM's four replicated 128-bit B ports.

The regression selects the valid 64-by-64 principal window at global indices
4608 through 4671 and splits it into 32-by-32 blocks. After duplicate entries
are accumulated, `A11` has 86 entries; the supplied patterns give 62 entries
each for `L11` and `U11`, and 68 entries each for `L21` and `U12`. The source
dataset cannot safely cover the complete nominal 12127-by-12127 matrix: its A
column-pointer file contains only 6064 64-bit entries, and its A value file
contains 40601 complete doubles plus four trailing bytes. The test therefore
rejects an invalid requested window and stays within the complete prefix.

On this window, RTL cosim passes all three LU operations in 51879 total cycles;
their reported latency is 12885/17260/24882 cycles for minimum/average/maximum.
The SSSSM trailing update takes 5896 cycles. Numerical
residuals are `4.66047e-09` for GETRF, `8.0781e-10` for GESSM,
`2.80218e-08` for TSTRF, and `1.6394e-08` for the final Schur update.
