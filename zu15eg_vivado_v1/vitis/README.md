# Vitis SD-card runner for symbolic Block-LU tasks

This is a standalone A53 software template for the Zynq UltraScale+ MPSoC
project in the parent directory. It reads a **binary task graph** from the SD
card, places the complete blob in DDR, configures one of the four AXI-Lite
HLS IPs, waits for completion, and then advances to the next task.

The task list must already be topologically ordered by the CPU symbolic stage.
The A53 is therefore a simple dependency-safe scheduler; it does not redo
symbolic analysis on the board.

## Important hardware fix

The legacy GESSM/TSTRF/SSSSM RTL has `active_count`, `n`, `pivot_eps`, and
`rows` as top-level scalar pins rather than AXI-Lite registers. The original
Block Design tied those pins to zero. The parent `02_create_bd.tcl` now adds
four AXI GPIO blocks:

- `gessm_cfg`: channel 1 = `active_count`, channel 2 = `n`
- `tstrf_cfg`: channel 1 = `active_count`, channel 2 = `n`
- `tstrf_eps`: `pivot_eps` bit pattern
- `ssssm_cfg`: `rows`

Rerun `02_create_bd.tcl`, check the generated address map, then regenerate
the XSA before creating the Vitis platform. Do not use an old XSA: it still
contains zero-valued scalar ties.

## Build order

```bash
cd /output/block_lu_hls/zu15eg_vivado_v1
source /output/xilinx_compat/xilinx_compat.sh
vivado -mode batch -source 00_package_rtl_ips.tcl
vivado -mode batch -source 01_create_project.tcl
vivado -mode batch -source 02_create_bd.tcl
# Inspect PS DDR settings and run implementation/bitstream generation.
vivado -mode batch -source 03_build_and_export.tcl

# The XSA must be the one generated after the GPIO modification.
./vitis/build_vitis.sh
```

The XSCT script creates a standalone A53 platform, enables `xilffs`, imports
`src/main.c` and `src/blu_format.h`, and builds the application. In Vitis
Unified IDE the equivalent steps are: **Create Platform from XSA** → select
`psu_cortexa53_0`/standalone → add `xilffs` → create an empty C application →
add the two source files → build.

## SD-card layout

Copy the generated file to the FAT partition as:

```text
/lu_case.blu
```

The application calls `f_mount` and opens `0:/lu_case.blu`. It prints one
line per task over UART0 (MIO42/MIO43). The SD controller is PS SD1 in 4-bit
SD 2.0 mode (MIO46..51, CD MIO45).

## Binary format and packing

Use `tools/pack_blu.py` on a JSON manifest and raw little-endian `.u32` or
`.f32` files. A manifest example is:

```json
{
  "n": 12127,
  "tasks": [
    {"kind": "GETRF", "n": 6063, "pivot_eps": 1e-30,
     "arrays": {
       "a_ptr": "t000_a_ptr.u32", "a_idx": "t000_a_idx.u32", "a_val": "t000_a_val.f32",
       "l_ptr": "t000_l_ptr.u32", "l_idx": "t000_l_idx.u32", "l_val": "t000_l_val.f32",
       "u_ptr": "t000_u_ptr.u32", "u_idx": "t000_u_idx.u32", "u_val": "t000_u_val.f32",
       "u_diag_pos": "t000_u_diag_pos.u32"}},
    {"kind": "GESSM", "n": 6063, "active_count": 12,
     "arrays": {
       "l_ptr":"...", "l_idx":"...", "l_val":"...",
       "b_ptr":"...", "b_idx":"...", "b_val":"...",
       "x_ptr":"...", "x_idx":"...", "x_val_csc":"...",
       "x_csc_to_csr":"...", "x_val_csr":"...", "active_cols":"...",
       "work":"..."}}
  ]
}
```

The complete slot names and task order are in `blu_format.h`. A task record
contains offsets, not absolute addresses; the application converts each
offset into a DDR pointer after loading the file. All sections are aligned to
64 bytes. Values are IEEE-754 binary32 and indices are little-endian uint32.
The file must contain numeric values as well as symbolic patterns; a pattern
only file cannot execute numerical GETRF/GESSM/TSTRF/SSSSM.

```bash
python3 tools/pack_blu.py case.json -o lu_case.blu
```

For a Matrix Market input, use the higher-level converter. It calls the
existing CPU `prepare.py`, constructs the 2x2 symbolic/numeric task data,
creates the derived diagonal-position and CSC-to-CSR maps, and writes both
`case.json` and `lu_case.blu`:

```bash
python3 tools/mtx_to_blu_json.py \
    /path/to/processed_matrix.mtx \
    --out-dir /path/to/case_prepared
```

If `prepare.py` has already been run, avoid repeating the CPU preparation:

```bash
python3 tools/mtx_to_blu_json.py \
    --prepared-dir /path/to/prepared \
    --out-dir /path/to/case_prepared
```

The generated sequence is five tasks:
`GETRF(A11) -> GESSM(A12) -> TSTRF(A21) -> SSSSM(A22) -> GETRF(Schur)`.
For a general symbolic DAG with more than one 2x2 level, the CPU symbolic
stage should emit a manifest with one record per task and call `pack_blu.py`
directly; the converter intentionally implements the current 2x2 bring-up
case only.

## Runtime sequence

1. `f_stat` obtains the file length; an aligned DDR buffer is allocated.
2. FatFs reads the file in 64 KiB chunks. The whole blob is flushed from the
   A53 cache before any IP starts.
3. For each already ordered task, the app writes pointer low/high words to
   the IP AXI-Lite bank, writes scalar GPIO values, starts AP, and polls
   `AP_CTRL.AP_DONE` with a timeout.
4. The blob is invalidated after completion so CPU-side checks/logging see
   hardware writes. This prototype runs tasks sequentially, which is the
   safest first bring-up policy; independent tasks can later be issued in
   parallel after the DAG scheduler is validated.
5. A nonzero timeout is reported as an execution failure. The current IP
   metadata exposes status/muladds/divisions as `ap_vld` scalar outputs, not
   memory buffers; the template therefore uses AP_DONE for completion. Add
   AXI GPIO input channels or change those outputs to `s_axilite` if software
   must collect the counters/status directly.

## First bring-up checklist

- Confirm the board's PS DDR preset and SD voltage/power settings in Vivado.
- Confirm the four HLS control bases and four GPIO bases in generated
  `xparameters.h`; the C file has fallback addresses for the current HWH, but
  generated macros take precedence.
- Boot the FSBL + PMUFW + bitstream + standalone ELF from SD.
- UART should print `SD mounted`, file size, task count, and task completion.
- Start with a tiny one-task GETRF blob, then a 2x2 sequence, then the full
  symbolic task DAG. Validate L/U and Schur outputs against the host replay
  before enabling any parallel scheduling.
