# Create the Zynq MPSoC Block Design.
# Assumptions for this first board-independent template:
#   - PS UART0 is routed to MIO 42..43; SD1 uses MIO 46..51 and CD MIO45.
#   - PL0 is 100 MHz.
#   - PS HPM0_FPD controls the four AXI-Lite register banks.
#   - Each kernel's m_axi ports are routed through a second SmartConnect to HP0.
# The DDR/MIO settings must be checked against the physical board schematic.

set root [file normalize [file dirname [info script]]]
set project_dir "$root/vivado_project"
set project_name "block_lu_zu15eg"
open_project "$project_dir/$project_name.xpr"

create_bd_design "block_lu_bd"
set bd [get_bd_designs block_lu_bd]

set ps_vlnv [lindex [get_ipdefs *zynq_ultra_ps_e*] end]
create_bd_cell -type ip -vlnv $ps_vlnv zynq_ultra_ps_e_0
set_property -dict [list \
  CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
  CONFIG.PSU__USE__M_AXI_GP0 {1} \
  CONFIG.PSU__USE__M_AXI_GP1 {0} \
  CONFIG.PSU__USE__M_AXI_GP2 {0} \
  CONFIG.PSU__USE__S_AXI_GP0 {1} \
  CONFIG.PSU__USE__S_AXI_GP1 {0} \
  CONFIG.PSU__USE__S_AXI_GP2 {0} \
  CONFIG.PSU__USE__S_AXI_GP3 {0} \
  CONFIG.PSU__USE__IRQ0 {1} \
  CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 42 .. 43} \
  CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
  CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
  CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
  CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
  CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
] [get_bd_cells zynq_ultra_ps_e_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_pl0
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins rst_pl0/slowest_sync_clk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins rst_pl0/ext_reset_in]

# One SmartConnect for PS control-register accesses.
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_ctrl_smartconnect
set_property CONFIG.NUM_SI {1} [get_bd_cells axi_ctrl_smartconnect]
# Four HLS control ports plus GPIO-backed scalar inputs for the kernels whose
# legacy RTL exposes n/active_count/rows as top-level pins.
set_property CONFIG.NUM_MI {8} [get_bd_cells axi_ctrl_smartconnect]
connect_bd_intf_net [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD] [get_bd_intf_pins axi_ctrl_smartconnect/S00_AXI]

# SmartConnect has a maximum of 16 slave interfaces in Vivado 2022.2.
# Four fan-in SmartConnects collect the kernel m_axi bundles, and a fifth
# aggregate SmartConnect forwards their outputs to PS HPC0/DDR.
for {set d 0} {$d < 4} {incr d} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_data_smartconnect${d}
    set_property CONFIG.NUM_SI {16} [get_bd_cells axi_data_smartconnect${d}]
    set_property CONFIG.NUM_MI {1} [get_bd_cells axi_data_smartconnect${d}]
}
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_data_aggregate
set_property CONFIG.NUM_SI {4} [get_bd_cells axi_data_aggregate]
set_property CONFIG.NUM_MI {1} [get_bd_cells axi_data_aggregate]
connect_bd_intf_net [get_bd_intf_pins axi_data_aggregate/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC0_FPD]
for {set d 0} {$d < 4} {incr d} {
    connect_bd_intf_net \
        [get_bd_intf_pins axi_data_smartconnect${d}/M00_AXI] \
        [get_bd_intf_pins axi_data_aggregate/S0${d}_AXI]
}

# Four independent HLS IP instances.
create_bd_cell -type ip -vlnv xilinx.com:hls:large_getrf_v4:1.0 getrf_0
create_bd_cell -type ip -vlnv xilinx.com:hls:large_gessm_v2:1.0 gessm_0
create_bd_cell -type ip -vlnv xilinx.com:hls:large_tstrf_v2:1.0 tstrf_0
create_bd_cell -type ip -vlnv xilinx.com:hls:large_ssssm:1.0 ssssm_0

# The packaged GESSM/TSTRF/SSSSM RTL was generated without s_axilite pragmas
# on scalar inputs. Expose those pins through AXI GPIO so software can set
# them per task; otherwise the generated BD ties them to zero.
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 gessm_cfg
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_IS_DUAL {1} \
  CONFIG.C_GPIO2_WIDTH {32} CONFIG.C_ALL_OUTPUTS {1} \
  CONFIG.C_ALL_OUTPUTS_2 {1}] [get_bd_cells gessm_cfg]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 tstrf_cfg
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_IS_DUAL {1} \
  CONFIG.C_GPIO2_WIDTH {32} CONFIG.C_ALL_OUTPUTS {1} \
  CONFIG.C_ALL_OUTPUTS_2 {1}] [get_bd_cells tstrf_cfg]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 tstrf_eps
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells tstrf_eps]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 ssssm_cfg
set_property -dict [list CONFIG.C_GPIO_WIDTH {32} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells ssssm_cfg]

# The HLS-generated IP metadata advertises 100 MHz, while the default PS
# PLL produces 96.968727 MHz.  Normalize all kernel bus metadata to the
# actual PL0 frequency before validation.
set pl_hz [expr {int(round(1000000.0 * [get_property CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ [get_bd_cells zynq_ultra_ps_e_0]]))}]
set kernels {getrf_0 gessm_0 tstrf_0 ssssm_0}
set ctrl_index 0
foreach k $kernels {
    catch {set_property CONFIG.FREQ_HZ $pl_hz [get_bd_pins $k/ap_clk]}
    foreach intf [get_bd_intf_pins $k/*axi*] { catch {set_property CONFIG.FREQ_HZ $pl_hz $intf} }
    connect_bd_intf_net [get_bd_intf_pins axi_ctrl_smartconnect/M0${ctrl_index}_AXI] [get_bd_intf_pins $k/s_axi_control]
    connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins $k/ap_clk]
    connect_bd_net [get_bd_pins rst_pl0/peripheral_aresetn] [get_bd_pins $k/ap_rst_n]
    incr ctrl_index
}

# GPIO control addresses follow the four HLS control banks (M04..M07).
set cfg_gpios {gessm_cfg tstrf_cfg tstrf_eps ssssm_cfg}
set cfg_index 4
foreach g $cfg_gpios {
    connect_bd_intf_net [get_bd_intf_pins axi_ctrl_smartconnect/M0${cfg_index}_AXI] [get_bd_intf_pins $g/S_AXI]
    connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins $g/s_axi_aclk]
    connect_bd_net [get_bd_pins rst_pl0/interconnect_aresetn] [get_bd_pins $g/s_axi_aresetn]
    incr cfg_index
}
connect_bd_net [get_bd_pins gessm_cfg/gpio_io_o]  [get_bd_pins gessm_0/active_count]
connect_bd_net [get_bd_pins gessm_cfg/gpio2_io_o] [get_bd_pins gessm_0/n]
connect_bd_net [get_bd_pins tstrf_cfg/gpio_io_o]  [get_bd_pins tstrf_0/active_count]
connect_bd_net [get_bd_pins tstrf_cfg/gpio2_io_o] [get_bd_pins tstrf_0/n]
connect_bd_net [get_bd_pins tstrf_eps/gpio_io_o] [get_bd_pins tstrf_0/pivot_eps]
connect_bd_net [get_bd_pins ssssm_cfg/gpio_io_o]  [get_bd_pins ssssm_0/rows]

# Connect all kernel AXI master bundles to the fan-in SmartConnects.
set data_si 0
foreach k $kernels {
    foreach intf [get_bd_intf_pins $k/m_axi_*] {
        set d [expr {$data_si / 16}]
        set local_si [expr {$data_si % 16}]
        connect_bd_intf_net \
            [get_bd_intf_pins axi_data_smartconnect${d}/S[format %02d $local_si]_AXI] \
            $intf
        incr data_si
    }
}
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins axi_ctrl_smartconnect/aclk]
connect_bd_net [get_bd_pins rst_pl0/interconnect_aresetn] [get_bd_pins axi_ctrl_smartconnect/aresetn]
# PS AXI clock inputs must be explicitly driven in Vivado 2022.2.
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/saxihpc0_fpd_aclk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins axi_data_aggregate/aclk]
connect_bd_net [get_bd_pins rst_pl0/interconnect_aresetn] [get_bd_pins axi_data_aggregate/aresetn]
for {set d 0} {$d < 4} {incr d} {
    connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins axi_data_smartconnect${d}/aclk]
    connect_bd_net [get_bd_pins rst_pl0/interconnect_aresetn] [get_bd_pins axi_data_smartconnect${d}/aresetn]
}

# Collect four completion interrupts for software scheduling.
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 kernel_irq_concat
set_property CONFIG.NUM_PORTS {4} [get_bd_cells kernel_irq_concat]
set i 0
foreach k $kernels {
    connect_bd_net [get_bd_pins $k/interrupt] [get_bd_pins kernel_irq_concat/In$i]
    incr i
}
connect_bd_net [get_bd_pins kernel_irq_concat/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]

assign_bd_address
validate_bd_design
save_bd_design
generate_target all [get_files block_lu_bd.bd]
make_wrapper -files [get_files block_lu_bd.bd] -top
set wrapper_files [glob -nocomplain "$project_dir/${project_name}.gen/sources_1/bd/block_lu_bd/hdl/*wrapper.v"]
if {[llength $wrapper_files] > 0} {
    add_files -norecurse [lindex $wrapper_files 0]
    set_property top block_lu_bd_wrapper [current_fileset]
}
puts "Block design created with $data_si data master interfaces."
close_project
exit
