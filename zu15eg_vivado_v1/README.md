# ZynqMP Block-LU Vivado project

Target part: `xczu15eg-ffvb1156-2-i`  
Vivado/Vitis HLS: `2022.2`  
PL clock: 100 MHz  
PS UART0: MIO 42..43
SD1: 4-bit SD 2.0 on MIO 46..51; card-detect: MIO 45

The project integrates four independent HLS kernels:

| Kernel | HLS top |
|---|---|
| GETRF | `large_getrf_v4` |
| GESSM | `large_gessm_v2` |
| TSTRF | `large_tstrf_v2` |
| SSSSM | `large_ssssm` |

`axi_ctrl_smartconnect` routes PS HPM0-FPD to the four AXI-Lite control
interfaces. `axi_data_smartconnect0..3` (16 SI each) collect the kernel
`m_axi` bundles, and `axi_data_aggregate` forwards them to PS
HPC0-FPD/DDR. Kernel interrupts are concatenated to `pl_ps_irq0`.

## Build

```bash
cd /output/block_lu_hls/zu15eg_vivado_v1
source /output/xilinx_compat/xilinx_compat.sh
vivado -mode batch -source 00_package_rtl_ips.tcl
vivado -mode batch -source 01_create_project.tcl
vivado -mode batch -source 02_create_bd.tcl
# Inspect/adjust PS DDR/MIO settings for the actual board, then:
vivado -mode batch -source 03_build_and_export.tcl
```

The current Block Design has passed `validate_bd_design`. The first version intentionally uses PS software as the scheduler. The
hardware design provides independent IPs, AXI control, DDR masters, and
completion interrupts; the A53 software should enforce the LU dependency DAG.

The board-specific DDR configuration must be checked before implementation.
If the board has a vendor board preset, apply it to the PS before validating
the block design. UART and SD1 MIO assignments now match the supplied board wiring:
UART0=MIO42..43, SD1=4Bit/SD2.0 on MIO46..51, CD=MIO45.

## Vitis SD-card software

A standalone A53/FatFs task-graph runner, binary packer, and XSCT build
script are in `vitis/`. It reads a symbolically ordered `.blu` file from
PS SD1, places its CSR/CSC arrays in DDR, and dispatches the four HLS IPs.
The current GESSM/TSTRF/SSSSM scalar pins must be exposed through the AXI
GPIO additions in `02_create_bd.tcl`; regenerate the XSA after that change.
See `vitis/README.md` before booting.
## Vivado 2022.2 container workaround

On this Ubuntu/container host, source the persistent compatibility environment before batch Vivado. It preloads the host `libudev.so.1` to avoid the Vivado 2022.2 FlexLM/WebTalk `realloc(): invalid pointer` crash:

```bash
source /output/xilinx_compat/xilinx_compat.sh
vivado -mode batch -source 03_build_and_export.tcl
```

If a previous Vivado process was terminated during `launch_runs`, reset the stale run once before retrying:

```tcl
open_project vivado_project/block_lu_zu15eg.xpr
reset_run synth_1
reset_run impl_1
close_project
```

The `Auto Incremental Compile: No reference checkpoint` message is informational; it falls back to a normal synthesis run.

