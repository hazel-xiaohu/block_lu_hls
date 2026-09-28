create_project -in_memory -part xczu15eg-ffvb1156-2-i
create_bd_design q
set v [lindex [get_ipdefs *zynq_ultra_ps_e*] end]
create_bd_cell -type ip -vlnv $v ps
set_property -dict [list CONFIG.PSU__USE__M_AXI_GP0 {1} CONFIG.PSU__USE__M_AXI_GP1 {0} CONFIG.PSU__USE__M_AXI_GP2 {0} CONFIG.PSU__USE__S_AXI_GP0 {1} CONFIG.PSU__USE__S_AXI_GP1 {0} CONFIG.PSU__USE__S_AXI_GP2 {0} CONFIG.PSU__USE__S_AXI_GP3 {0} CONFIG.PSU__USE__S_AXI_GP4 {0} CONFIG.PSU__USE__S_AXI_GP5 {0} CONFIG.PSU__USE__S_AXI_GP6 {0}] [get_bd_cells ps]
puts "INTF=[get_bd_intf_pins ps/*]"
exit
