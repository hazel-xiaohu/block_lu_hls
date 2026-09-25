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
    id 436 \
    name rrequest1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest1 \
    op interface \
    ports { rrequest1_dout { I 398 vector } rrequest1_empty_n { I 1 bit } rrequest1_read { O 1 bit } rrequest1_num_data_valid { I 3 vector } rrequest1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name rrequest2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest2 \
    op interface \
    ports { rrequest2_dout { I 398 vector } rrequest2_empty_n { I 1 bit } rrequest2_read { O 1 bit } rrequest2_num_data_valid { I 3 vector } rrequest2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name rrequest3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest3 \
    op interface \
    ports { rrequest3_dout { I 398 vector } rrequest3_empty_n { I 1 bit } rrequest3_read { O 1 bit } rrequest3_num_data_valid { I 3 vector } rrequest3_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name rrequest4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest4 \
    op interface \
    ports { rrequest4_dout { I 398 vector } rrequest4_empty_n { I 1 bit } rrequest4_read { O 1 bit } rrequest4_num_data_valid { I 3 vector } rrequest4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name rrequestf \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequestf \
    op interface \
    ports { rrequestf_din { O 398 vector } rrequestf_full_n { I 1 bit } rrequestf_write { O 1 bit } rrequestf_num_data_valid { I 3 vector } rrequestf_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name temp_5_sroa_180_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_180_0_out \
    op interface \
    ports { temp_5_sroa_180_0_out { O 8 vector } temp_5_sroa_180_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name temp_5_sroa_171_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_171_0_out \
    op interface \
    ports { temp_5_sroa_171_0_out { O 8 vector } temp_5_sroa_171_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name temp_5_sroa_162_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_162_0_out \
    op interface \
    ports { temp_5_sroa_162_0_out { O 8 vector } temp_5_sroa_162_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name temp_5_sroa_153_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_153_0_out \
    op interface \
    ports { temp_5_sroa_153_0_out { O 8 vector } temp_5_sroa_153_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name temp_5_sroa_144_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_144_0_out \
    op interface \
    ports { temp_5_sroa_144_0_out { O 8 vector } temp_5_sroa_144_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name temp_5_sroa_135_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_135_0_out \
    op interface \
    ports { temp_5_sroa_135_0_out { O 8 vector } temp_5_sroa_135_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name temp_5_sroa_126_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_126_0_out \
    op interface \
    ports { temp_5_sroa_126_0_out { O 8 vector } temp_5_sroa_126_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name temp_5_sroa_117_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_117_0_out \
    op interface \
    ports { temp_5_sroa_117_0_out { O 8 vector } temp_5_sroa_117_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name temp_5_sroa_108_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_108_0_out \
    op interface \
    ports { temp_5_sroa_108_0_out { O 8 vector } temp_5_sroa_108_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name temp_5_sroa_99_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_99_0_out \
    op interface \
    ports { temp_5_sroa_99_0_out { O 8 vector } temp_5_sroa_99_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name temp_5_sroa_90_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_90_0_out \
    op interface \
    ports { temp_5_sroa_90_0_out { O 8 vector } temp_5_sroa_90_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name temp_5_sroa_81_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_81_0_out \
    op interface \
    ports { temp_5_sroa_81_0_out { O 8 vector } temp_5_sroa_81_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name temp_5_sroa_72_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_72_0_out \
    op interface \
    ports { temp_5_sroa_72_0_out { O 8 vector } temp_5_sroa_72_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name temp_5_sroa_63_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_63_0_out \
    op interface \
    ports { temp_5_sroa_63_0_out { O 8 vector } temp_5_sroa_63_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name temp_5_sroa_54_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_54_0_out \
    op interface \
    ports { temp_5_sroa_54_0_out { O 8 vector } temp_5_sroa_54_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name temp_5_sroa_45_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_45_0_out \
    op interface \
    ports { temp_5_sroa_45_0_out { O 8 vector } temp_5_sroa_45_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name temp_5_sroa_36_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_36_0_out \
    op interface \
    ports { temp_5_sroa_36_0_out { O 8 vector } temp_5_sroa_36_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name temp_5_sroa_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_27_0_out \
    op interface \
    ports { temp_5_sroa_27_0_out { O 8 vector } temp_5_sroa_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name temp_5_sroa_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_18_0_out \
    op interface \
    ports { temp_5_sroa_18_0_out { O 8 vector } temp_5_sroa_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name temp_5_sroa_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_9_0_out \
    op interface \
    ports { temp_5_sroa_9_0_out { O 8 vector } temp_5_sroa_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name temp_5_sroa_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_0_0_out \
    op interface \
    ports { temp_5_sroa_0_0_out { O 8 vector } temp_5_sroa_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name temp_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_6_0_out \
    op interface \
    ports { temp_6_0_out { O 160 vector } temp_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name temp_4511_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_4511_0_out \
    op interface \
    ports { temp_4511_0_out { O 32 vector } temp_4511_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name temp_3510_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_3510_0_out \
    op interface \
    ports { temp_3510_0_out { O 32 vector } temp_3510_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name temp_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_2_0_out \
    op interface \
    ports { temp_2_0_out { O 2 vector } temp_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name temp_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_0_0_out \
    op interface \
    ports { temp_0_0_out { O 3 vector } temp_0_0_out_ap_vld { O 1 bit } } \
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


