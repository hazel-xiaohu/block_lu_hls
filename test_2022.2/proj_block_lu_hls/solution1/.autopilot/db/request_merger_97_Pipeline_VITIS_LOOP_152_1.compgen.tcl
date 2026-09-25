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
    id 1306 \
    name c_first \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_first \
    op interface \
    ports { c_first_dout { I 209 vector } c_first_num_data_valid { I 7 vector } c_first_fifo_cap { I 7 vector } c_first_empty_n { I 1 bit } c_first_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1307 \
    name crequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest4 \
    op interface \
    ports { crequest4_din { O 209 vector } crequest4_num_data_valid { I 7 vector } crequest4_fifo_cap { I 7 vector } crequest4_full_n { I 1 bit } crequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1308 \
    name c_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_dout { I 209 vector } c_req_num_data_valid { I 7 vector } c_req_fifo_cap { I 7 vector } c_req_empty_n { I 1 bit } c_req_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1309 \
    name temp_data_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_data_V_out \
    op interface \
    ports { temp_data_V_out { O 128 vector } temp_data_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1310 \
    name temp_brlen_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_brlen_out \
    op interface \
    ports { temp_brlen_out { O 32 vector } temp_brlen_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1311 \
    name temp_brid_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_brid_out \
    op interface \
    ports { temp_brid_out { O 32 vector } temp_brid_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1312 \
    name temp_write_idx_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_write_idx_V_out \
    op interface \
    ports { temp_write_idx_V_out { O 3 vector } temp_write_idx_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1313 \
    name temp_dest_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_dest_V_out \
    op interface \
    ports { temp_dest_V_out { O 5 vector } temp_dest_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1314 \
    name temp_peID_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_peID_V_out \
    op interface \
    ports { temp_peID_V_out { O 3 vector } temp_peID_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1315 \
    name temp_type_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_type_V_out \
    op interface \
    ports { temp_type_V_out { O 3 vector } temp_type_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1316 \
    name temp_target_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_target_V_out \
    op interface \
    ports { temp_target_V_out { O 2 vector } temp_target_V_out_ap_vld { O 1 bit } } \
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


