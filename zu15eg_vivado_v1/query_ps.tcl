open_project vivado_project/block_lu_zu15eg.xpr
open_bd_design [get_files vivado_project/block_lu_zu15eg.srcs/sources_1/bd/block_lu_bd/block_lu_bd.bd]
puts "PS VLNV=[get_property VLNV [get_bd_cells zynq_ultra_ps_e_0]]"
puts "PS interfaces=[get_bd_intf_pins zynq_ultra_ps_e_0/*]"
puts "PS pins=[get_bd_pins zynq_ultra_ps_e_0/*]"
exit
