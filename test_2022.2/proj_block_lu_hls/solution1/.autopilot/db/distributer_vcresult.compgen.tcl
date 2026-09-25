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
    id 1845 \
    name vcache_bank1_vresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank1_vresult1 \
    op interface \
    ports { vcache_bank1_vresult1_dout { I 1031 vector } vcache_bank1_vresult1_num_data_valid { I 4 vector } vcache_bank1_vresult1_fifo_cap { I 4 vector } vcache_bank1_vresult1_empty_n { I 1 bit } vcache_bank1_vresult1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1846 \
    name vresult114 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult114 \
    op interface \
    ports { vresult114_din { O 1024 vector } vresult114_num_data_valid { I 6 vector } vresult114_fifo_cap { I 6 vector } vresult114_full_n { I 1 bit } vresult114_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1847 \
    name vresult215 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult215 \
    op interface \
    ports { vresult215_din { O 1024 vector } vresult215_num_data_valid { I 6 vector } vresult215_fifo_cap { I 6 vector } vresult215_full_n { I 1 bit } vresult215_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1848 \
    name vresult316 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult316 \
    op interface \
    ports { vresult316_din { O 1024 vector } vresult316_num_data_valid { I 6 vector } vresult316_fifo_cap { I 6 vector } vresult316_full_n { I 1 bit } vresult316_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1849 \
    name vresult417 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult417 \
    op interface \
    ports { vresult417_din { O 1024 vector } vresult417_num_data_valid { I 6 vector } vresult417_fifo_cap { I 6 vector } vresult417_full_n { I 1 bit } vresult417_write { O 1 bit } } \
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


