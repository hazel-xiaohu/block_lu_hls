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
    id 472 \
    name rrequestf \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequestf \
    op interface \
    ports { rrequestf_dout { I 398 vector } rrequestf_empty_n { I 1 bit } rrequestf_read { O 1 bit } rrequestf_num_data_valid { I 3 vector } rrequestf_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name rcache_re_bank1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank1 \
    op interface \
    ports { rcache_re_bank1_din { O 398 vector } rcache_re_bank1_full_n { I 1 bit } rcache_re_bank1_write { O 1 bit } rcache_re_bank1_num_data_valid { I 4 vector } rcache_re_bank1_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name rcache_re_bank2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank2 \
    op interface \
    ports { rcache_re_bank2_din { O 398 vector } rcache_re_bank2_full_n { I 1 bit } rcache_re_bank2_write { O 1 bit } rcache_re_bank2_num_data_valid { I 4 vector } rcache_re_bank2_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name rcache_re_bank3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank3 \
    op interface \
    ports { rcache_re_bank3_din { O 398 vector } rcache_re_bank3_full_n { I 1 bit } rcache_re_bank3_write { O 1 bit } rcache_re_bank3_num_data_valid { I 4 vector } rcache_re_bank3_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name rcache_re_bank4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank4 \
    op interface \
    ports { rcache_re_bank4_din { O 398 vector } rcache_re_bank4_full_n { I 1 bit } rcache_re_bank4_write { O 1 bit } rcache_re_bank4_num_data_valid { I 4 vector } rcache_re_bank4_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name temp_req_5_sroa_180_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_180_0_out \
    op interface \
    ports { temp_req_5_sroa_180_0_out { O 8 vector } temp_req_5_sroa_180_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name temp_req_5_sroa_171_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_171_0_out \
    op interface \
    ports { temp_req_5_sroa_171_0_out { O 8 vector } temp_req_5_sroa_171_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name temp_req_5_sroa_162_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_162_0_out \
    op interface \
    ports { temp_req_5_sroa_162_0_out { O 8 vector } temp_req_5_sroa_162_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name temp_req_5_sroa_153_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_153_0_out \
    op interface \
    ports { temp_req_5_sroa_153_0_out { O 8 vector } temp_req_5_sroa_153_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name temp_req_5_sroa_144_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_144_0_out \
    op interface \
    ports { temp_req_5_sroa_144_0_out { O 8 vector } temp_req_5_sroa_144_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name temp_req_5_sroa_135_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_135_0_out \
    op interface \
    ports { temp_req_5_sroa_135_0_out { O 8 vector } temp_req_5_sroa_135_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name temp_req_5_sroa_126_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_126_0_out \
    op interface \
    ports { temp_req_5_sroa_126_0_out { O 8 vector } temp_req_5_sroa_126_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name temp_req_5_sroa_117_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_117_0_out \
    op interface \
    ports { temp_req_5_sroa_117_0_out { O 8 vector } temp_req_5_sroa_117_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name temp_req_5_sroa_108_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_108_0_out \
    op interface \
    ports { temp_req_5_sroa_108_0_out { O 8 vector } temp_req_5_sroa_108_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name temp_req_5_sroa_99_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_99_0_out \
    op interface \
    ports { temp_req_5_sroa_99_0_out { O 8 vector } temp_req_5_sroa_99_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name temp_req_5_sroa_90_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_90_0_out \
    op interface \
    ports { temp_req_5_sroa_90_0_out { O 8 vector } temp_req_5_sroa_90_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name temp_req_5_sroa_81_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_81_0_out \
    op interface \
    ports { temp_req_5_sroa_81_0_out { O 8 vector } temp_req_5_sroa_81_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name temp_req_5_sroa_72_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_72_0_out \
    op interface \
    ports { temp_req_5_sroa_72_0_out { O 8 vector } temp_req_5_sroa_72_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name temp_req_5_sroa_63_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_63_0_out \
    op interface \
    ports { temp_req_5_sroa_63_0_out { O 8 vector } temp_req_5_sroa_63_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name temp_req_5_sroa_54_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_54_0_out \
    op interface \
    ports { temp_req_5_sroa_54_0_out { O 8 vector } temp_req_5_sroa_54_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name temp_req_5_sroa_45_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_45_0_out \
    op interface \
    ports { temp_req_5_sroa_45_0_out { O 8 vector } temp_req_5_sroa_45_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name temp_req_5_sroa_36_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_36_0_out \
    op interface \
    ports { temp_req_5_sroa_36_0_out { O 8 vector } temp_req_5_sroa_36_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name temp_req_5_sroa_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_27_0_out \
    op interface \
    ports { temp_req_5_sroa_27_0_out { O 8 vector } temp_req_5_sroa_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name temp_req_5_sroa_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_18_0_out \
    op interface \
    ports { temp_req_5_sroa_18_0_out { O 8 vector } temp_req_5_sroa_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name temp_req_5_sroa_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_9_0_out \
    op interface \
    ports { temp_req_5_sroa_9_0_out { O 8 vector } temp_req_5_sroa_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name temp_req_5_sroa_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_5_sroa_0_0_out \
    op interface \
    ports { temp_req_5_sroa_0_0_out { O 8 vector } temp_req_5_sroa_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name temp_req_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_6_0_out \
    op interface \
    ports { temp_req_6_0_out { O 160 vector } temp_req_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name temp_req_4578_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_4578_0_out \
    op interface \
    ports { temp_req_4578_0_out { O 32 vector } temp_req_4578_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name temp_req_3577_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_3577_0_out \
    op interface \
    ports { temp_req_3577_0_out { O 32 vector } temp_req_3577_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name temp_req_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_2_0_out \
    op interface \
    ports { temp_req_2_0_out { O 2 vector } temp_req_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name temp_req_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_0_0_out \
    op interface \
    ports { temp_req_0_0_out { O 3 vector } temp_req_0_0_out_ap_vld { O 1 bit } } \
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


