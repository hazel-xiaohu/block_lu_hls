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
    id 862 \
    name rcache_result_bank2_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank2_b \
    op interface \
    ports { rcache_result_bank2_b_dout { I 68 vector } rcache_result_bank2_b_num_data_valid { I 7 vector } rcache_result_bank2_b_fifo_cap { I 7 vector } rcache_result_bank2_b_empty_n { I 1 bit } rcache_result_bank2_b_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name vrequest \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest \
    op interface \
    ports { vrequest_din { O 68 vector } vrequest_num_data_valid { I 7 vector } vrequest_fifo_cap { I 7 vector } vrequest_full_n { I 1 bit } vrequest_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name crequest \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest \
    op interface \
    ports { crequest_din { O 68 vector } crequest_num_data_valid { I 7 vector } crequest_fifo_cap { I 7 vector } crequest_full_n { I 1 bit } crequest_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name vcollector \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcollector \
    op interface \
    ports { vcollector_din { O 68 vector } vcollector_num_data_valid { I 7 vector } vcollector_fifo_cap { I 7 vector } vcollector_full_n { I 1 bit } vcollector_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name ccollector \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ccollector \
    op interface \
    ports { ccollector_din { O 68 vector } ccollector_num_data_valid { I 7 vector } ccollector_fifo_cap { I 7 vector } ccollector_full_n { I 1 bit } ccollector_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name vscheduler \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vscheduler \
    op interface \
    ports { vscheduler_din { O 68 vector } vscheduler_num_data_valid { I 7 vector } vscheduler_fifo_cap { I 7 vector } vscheduler_full_n { I 1 bit } vscheduler_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name cscheduler \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cscheduler \
    op interface \
    ports { cscheduler_din { O 68 vector } cscheduler_num_data_valid { I 7 vector } cscheduler_fifo_cap { I 7 vector } cscheduler_full_n { I 1 bit } cscheduler_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name tcontrol_peID_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tcontrol_peID_V_out \
    op interface \
    ports { tcontrol_peID_V_out { O 3 vector } tcontrol_peID_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name tcontrol_bridx_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tcontrol_bridx_out \
    op interface \
    ports { tcontrol_bridx_out { O 32 vector } tcontrol_bridx_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name tcontrol_brlen_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tcontrol_brlen_out \
    op interface \
    ports { tcontrol_brlen_out { O 32 vector } tcontrol_brlen_out_ap_vld { O 1 bit } } \
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


