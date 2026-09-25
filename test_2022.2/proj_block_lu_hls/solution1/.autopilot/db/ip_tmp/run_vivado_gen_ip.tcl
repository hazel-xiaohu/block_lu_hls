create_project prj -part xczu15eg-ffvb1156-2-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/output/block_lu_hls/test_2022.2/proj_block_lu_hls/solution1/syn/verilog/spmm_fmul_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/output/block_lu_hls/test_2022.2/proj_block_lu_hls/solution1/syn/verilog/spmm_fsub_32ns_32ns_32_8_full_dsp_1_ip.tcl"
source "/output/block_lu_hls/test_2022.2/proj_block_lu_hls/solution1/syn/verilog/spmm_fadd_32ns_32ns_32_8_full_dsp_1_ip.tcl"
