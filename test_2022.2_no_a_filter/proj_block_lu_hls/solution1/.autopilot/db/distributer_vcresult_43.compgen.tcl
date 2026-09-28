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
    id 1841 \
    name vcache_bank1_cresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank1_cresult1 \
    op interface \
    ports { vcache_bank1_cresult1_dout { I 1031 vector } vcache_bank1_cresult1_num_data_valid { I 4 vector } vcache_bank1_cresult1_fifo_cap { I 4 vector } vcache_bank1_cresult1_empty_n { I 1 bit } vcache_bank1_cresult1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1842 \
    name cresult117 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult117 \
    op interface \
    ports { cresult117_din { O 1024 vector } cresult117_num_data_valid { I 6 vector } cresult117_fifo_cap { I 6 vector } cresult117_full_n { I 1 bit } cresult117_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1843 \
    name cresult218 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult218 \
    op interface \
    ports { cresult218_din { O 1024 vector } cresult218_num_data_valid { I 6 vector } cresult218_fifo_cap { I 6 vector } cresult218_full_n { I 1 bit } cresult218_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1844 \
    name cresult319 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult319 \
    op interface \
    ports { cresult319_din { O 1024 vector } cresult319_num_data_valid { I 6 vector } cresult319_fifo_cap { I 6 vector } cresult319_full_n { I 1 bit } cresult319_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1845 \
    name cresult420 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult420 \
    op interface \
    ports { cresult420_din { O 1024 vector } cresult420_num_data_valid { I 6 vector } cresult420_fifo_cap { I 6 vector } cresult420_full_n { I 1 bit } cresult420_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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
set InstName spmm_flow_control_loop_pipe_U
set CompName spmm_flow_control_loop_pipe
set name flow_control_loop_pipe
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


