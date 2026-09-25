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
    id 543 \
    name mi1_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_1 \
    op interface \
    ports { mi1_1_dout { I 5 vector } mi1_1_num_data_valid { I 2 vector } mi1_1_fifo_cap { I 2 vector } mi1_1_empty_n { I 1 bit } mi1_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name rm1_idle6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rm1_idle6 \
    op interface \
    ports { rm1_idle6_din { O 1 vector } rm1_idle6_num_data_valid { I 8 vector } rm1_idle6_fifo_cap { I 8 vector } rm1_idle6_full_n { I 1 bit } rm1_idle6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name mi2_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi2_1 \
    op interface \
    ports { mi2_1_dout { I 5 vector } mi2_1_num_data_valid { I 2 vector } mi2_1_fifo_cap { I 2 vector } mi2_1_empty_n { I 1 bit } mi2_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name mi3_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi3_1 \
    op interface \
    ports { mi3_1_dout { I 5 vector } mi3_1_num_data_valid { I 2 vector } mi3_1_fifo_cap { I 2 vector } mi3_1_empty_n { I 1 bit } mi3_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name mi4_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi4_1 \
    op interface \
    ports { mi4_1_dout { I 5 vector } mi4_1_num_data_valid { I 2 vector } mi4_1_fifo_cap { I 2 vector } mi4_1_empty_n { I 1 bit } mi4_1_read { O 1 bit } } \
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


