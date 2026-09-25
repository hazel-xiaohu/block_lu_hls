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
    id 563 \
    name mi1_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_3 \
    op interface \
    ports { mi1_3_dout { I 5 vector } mi1_3_num_data_valid { I 2 vector } mi1_3_fifo_cap { I 2 vector } mi1_3_empty_n { I 1 bit } mi1_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name rm3_idle8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rm3_idle8 \
    op interface \
    ports { rm3_idle8_din { O 1 vector } rm3_idle8_num_data_valid { I 8 vector } rm3_idle8_fifo_cap { I 8 vector } rm3_idle8_full_n { I 1 bit } rm3_idle8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name mi2_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi2_3 \
    op interface \
    ports { mi2_3_dout { I 5 vector } mi2_3_num_data_valid { I 2 vector } mi2_3_fifo_cap { I 2 vector } mi2_3_empty_n { I 1 bit } mi2_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name mi3_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi3_3 \
    op interface \
    ports { mi3_3_dout { I 5 vector } mi3_3_num_data_valid { I 2 vector } mi3_3_fifo_cap { I 2 vector } mi3_3_empty_n { I 1 bit } mi3_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name mi4_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi4_3 \
    op interface \
    ports { mi4_3_dout { I 5 vector } mi4_3_num_data_valid { I 2 vector } mi4_3_fifo_cap { I 2 vector } mi4_3_empty_n { I 1 bit } mi4_3_read { O 1 bit } } \
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


