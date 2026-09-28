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
    id 1523 \
    name vccache_re_bank1_pe1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe1 \
    op interface \
    ports { vccache_re_bank1_pe1_dout { I 209 vector } vccache_re_bank1_pe1_num_data_valid { I 4 vector } vccache_re_bank1_pe1_fifo_cap { I 4 vector } vccache_re_bank1_pe1_empty_n { I 1 bit } vccache_re_bank1_pe1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1524 \
    name vccache_re_bank1_pe2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe2 \
    op interface \
    ports { vccache_re_bank1_pe2_dout { I 209 vector } vccache_re_bank1_pe2_num_data_valid { I 4 vector } vccache_re_bank1_pe2_fifo_cap { I 4 vector } vccache_re_bank1_pe2_empty_n { I 1 bit } vccache_re_bank1_pe2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1525 \
    name vccache_re_bank1_pe3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe3 \
    op interface \
    ports { vccache_re_bank1_pe3_dout { I 209 vector } vccache_re_bank1_pe3_num_data_valid { I 4 vector } vccache_re_bank1_pe3_fifo_cap { I 4 vector } vccache_re_bank1_pe3_empty_n { I 1 bit } vccache_re_bank1_pe3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1526 \
    name vccache_re_bank1_pe4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe4 \
    op interface \
    ports { vccache_re_bank1_pe4_dout { I 209 vector } vccache_re_bank1_pe4_num_data_valid { I 4 vector } vccache_re_bank1_pe4_fifo_cap { I 4 vector } vccache_re_bank1_pe4_empty_n { I 1 bit } vccache_re_bank1_pe4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1527 \
    name vccache_re_bank1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1 \
    op interface \
    ports { vccache_re_bank1_din { O 209 vector } vccache_re_bank1_num_data_valid { I 7 vector } vccache_re_bank1_fifo_cap { I 7 vector } vccache_re_bank1_full_n { I 1 bit } vccache_re_bank1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1528 \
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
    id 1529 \
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
    id 1530 \
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
    id 1531 \
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
    id 1532 \
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
    id 1533 \
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
    id 1534 \
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
    id 1535 \
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


