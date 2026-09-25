# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2074 \
    name enable_j_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable_j_4 \
    op interface \
    ports { enable_j_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2075 \
    name temp1_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp1_cid \
    op interface \
    ports { temp1_cid { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2076 \
    name trunc_ln13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln13 \
    op interface \
    ports { trunc_ln13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2077 \
    name temp1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp1_val \
    op interface \
    ports { temp1_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2078 \
    name enable_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable_i_4 \
    op interface \
    ports { enable_i_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2079 \
    name temp_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_cid \
    op interface \
    ports { temp_cid { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2080 \
    name trunc_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln \
    op interface \
    ports { trunc_ln { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2081 \
    name temp_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_val \
    op interface \
    ports { temp_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2082 \
    name result_pe4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_pe4 \
    op interface \
    ports { result_pe4_dout { I 66 vector } result_pe4_num_data_valid { I 11 vector } result_pe4_fifo_cap { I 11 vector } result_pe4_empty_n { I 1 bit } result_pe4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2083 \
    name result_pe3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_pe3 \
    op interface \
    ports { result_pe3_dout { I 66 vector } result_pe3_num_data_valid { I 11 vector } result_pe3_fifo_cap { I 11 vector } result_pe3_empty_n { I 1 bit } result_pe3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2084 \
    name final_merger_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_2 \
    op interface \
    ports { final_merger_2_din { O 66 vector } final_merger_2_num_data_valid { I 11 vector } final_merger_2_fifo_cap { I 11 vector } final_merger_2_full_n { I 1 bit } final_merger_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2085 \
    name temp1_global_end_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp1_global_end_1_out \
    op interface \
    ports { temp1_global_end_1_out { O 1 vector } temp1_global_end_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2086 \
    name temp_global_end_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_global_end_3_out \
    op interface \
    ports { temp_global_end_3_out { O 1 vector } temp_global_end_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName spmm_flow_control_loop_pipe_sequential_init_U
set CompName spmm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix spmm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


