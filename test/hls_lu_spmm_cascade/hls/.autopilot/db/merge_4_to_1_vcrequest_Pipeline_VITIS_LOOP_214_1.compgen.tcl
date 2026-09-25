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
    id 1818 \
    name vccache_re_bank2_pe5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe5 \
    op interface \
    ports { vccache_re_bank2_pe5_dout { I 225 vector } vccache_re_bank2_pe5_empty_n { I 1 bit } vccache_re_bank2_pe5_read { O 1 bit } vccache_re_bank2_pe5_num_data_valid { I 4 vector } vccache_re_bank2_pe5_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1819 \
    name vccache_re_bank2_pe6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe6 \
    op interface \
    ports { vccache_re_bank2_pe6_dout { I 225 vector } vccache_re_bank2_pe6_empty_n { I 1 bit } vccache_re_bank2_pe6_read { O 1 bit } vccache_re_bank2_pe6_num_data_valid { I 4 vector } vccache_re_bank2_pe6_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1820 \
    name vccache_re_bank2_pe7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe7 \
    op interface \
    ports { vccache_re_bank2_pe7_dout { I 225 vector } vccache_re_bank2_pe7_empty_n { I 1 bit } vccache_re_bank2_pe7_read { O 1 bit } vccache_re_bank2_pe7_num_data_valid { I 4 vector } vccache_re_bank2_pe7_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1821 \
    name vccache_re_bank2_pe8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe8 \
    op interface \
    ports { vccache_re_bank2_pe8_dout { I 225 vector } vccache_re_bank2_pe8_empty_n { I 1 bit } vccache_re_bank2_pe8_read { O 1 bit } vccache_re_bank2_pe8_num_data_valid { I 4 vector } vccache_re_bank2_pe8_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1822 \
    name vccache_re_bank4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank4 \
    op interface \
    ports { vccache_re_bank4_din { O 225 vector } vccache_re_bank4_full_n { I 1 bit } vccache_re_bank4_write { O 1 bit } vccache_re_bank4_num_data_valid { I 7 vector } vccache_re_bank4_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1823 \
    name temp_8_sroa_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_8_sroa_9_0_out \
    op interface \
    ports { temp_8_sroa_9_0_out { O 8 vector } temp_8_sroa_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1824 \
    name temp_8_sroa_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_8_sroa_0_0_out \
    op interface \
    ports { temp_8_sroa_0_0_out { O 8 vector } temp_8_sroa_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1825 \
    name temp_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_9_0_out \
    op interface \
    ports { temp_9_0_out { O 128 vector } temp_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1826 \
    name temp_7223_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_7223_0_out \
    op interface \
    ports { temp_7223_0_out { O 32 vector } temp_7223_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1827 \
    name temp_6222_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_6222_0_out \
    op interface \
    ports { temp_6222_0_out { O 32 vector } temp_6222_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1828 \
    name temp_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_0_out \
    op interface \
    ports { temp_5_0_out { O 3 vector } temp_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1829 \
    name temp_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_4_0_out \
    op interface \
    ports { temp_4_0_out { O 5 vector } temp_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1830 \
    name temp_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_3_0_out \
    op interface \
    ports { temp_3_0_out { O 3 vector } temp_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1831 \
    name temp_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_2_0_out \
    op interface \
    ports { temp_2_0_out { O 3 vector } temp_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1832 \
    name temp_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_1_0_out \
    op interface \
    ports { temp_1_0_out { O 2 vector } temp_1_0_out_ap_vld { O 1 bit } } \
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


