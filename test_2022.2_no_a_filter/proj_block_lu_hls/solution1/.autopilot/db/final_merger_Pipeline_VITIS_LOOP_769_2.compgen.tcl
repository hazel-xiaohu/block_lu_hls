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
    id 2042 \
    name enable_j_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable_j_12 \
    op interface \
    ports { enable_j_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2043 \
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
    id 2044 \
    name trunc_ln61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln61 \
    op interface \
    ports { trunc_ln61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2045 \
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
    id 2046 \
    name enable_i_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable_i_10 \
    op interface \
    ports { enable_i_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2047 \
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
    id 2048 \
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
    id 2049 \
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
    id 2050 \
    name final_merger_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_2 \
    op interface \
    ports { final_merger_2_dout { I 66 vector } final_merger_2_num_data_valid { I 11 vector } final_merger_2_fifo_cap { I 11 vector } final_merger_2_empty_n { I 1 bit } final_merger_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2051 \
    name final_merger_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_1 \
    op interface \
    ports { final_merger_1_dout { I 66 vector } final_merger_1_num_data_valid { I 11 vector } final_merger_1_fifo_cap { I 11 vector } final_merger_1_empty_n { I 1 bit } final_merger_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2052 \
    name final_merger_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_3 \
    op interface \
    ports { final_merger_3_din { O 66 vector } final_merger_3_num_data_valid { I 11 vector } final_merger_3_fifo_cap { I 11 vector } final_merger_3_full_n { I 1 bit } final_merger_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2053 \
    name temp1_global_end_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp1_global_end_6_out \
    op interface \
    ports { temp1_global_end_6_out { O 1 vector } temp1_global_end_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2054 \
    name temp_global_end_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_global_end_7_out \
    op interface \
    ports { temp_global_end_7_out { O 1 vector } temp_global_end_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2055 \
    name counter_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_counter_out \
    op interface \
    ports { counter_out { O 32 vector } counter_out_ap_vld { O 1 bit } } \
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


