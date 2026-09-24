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
