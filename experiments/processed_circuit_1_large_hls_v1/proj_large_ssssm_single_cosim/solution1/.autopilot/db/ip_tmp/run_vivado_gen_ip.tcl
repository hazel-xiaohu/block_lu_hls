create_project prj -part xczu15eg-ffvb1156-2-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/output/block_lu_hls/experiments/processed_circuit_1_large_hls_v1/proj_large_ssssm_single_cosim/solution1/syn/verilog/large_ssssm_fmul_32ns_32ns_32_5_max_dsp_1_ip.tcl"
source "/output/block_lu_hls/experiments/processed_circuit_1_large_hls_v1/proj_large_ssssm_single_cosim/solution1/syn/verilog/large_ssssm_faddfsub_32ns_32ns_32_8_full_dsp_1_ip.tcl"
