# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 460 \
    name work_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename work_3 \
    op interface \
    ports { work_3_address0 { O 10 vector } work_3_ce0 { O 1 bit } work_3_we0 { O 1 bit } work_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 461 \
    name work_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename work_2 \
    op interface \
    ports { work_2_address0 { O 10 vector } work_2_ce0 { O 1 bit } work_2_we0 { O 1 bit } work_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 462 \
    name work_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename work_1 \
    op interface \
    ports { work_1_address0 { O 10 vector } work_1_ce0 { O 1 bit } work_1_we0 { O 1 bit } work_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 463 \
    name work_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename work_0 \
    op interface \
    ports { work_0_address0 { O 10 vector } work_0_ce0 { O 1 bit } work_0_we0 { O 1 bit } work_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 467 \
    name lower_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_0 \
    op interface \
    ports { lower_pos_0_address0 { O 10 vector } lower_pos_0_ce0 { O 1 bit } lower_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 468 \
    name lower_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_1 \
    op interface \
    ports { lower_pos_1_address0 { O 10 vector } lower_pos_1_ce0 { O 1 bit } lower_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 469 \
    name lower_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_2 \
    op interface \
    ports { lower_pos_2_address0 { O 10 vector } lower_pos_2_ce0 { O 1 bit } lower_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 470 \
    name lower_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_3 \
    op interface \
    ports { lower_pos_3_address0 { O 10 vector } lower_pos_3_ce0 { O 1 bit } lower_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 471 \
    name upper_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_0 \
    op interface \
    ports { upper_pos_0_address0 { O 10 vector } upper_pos_0_ce0 { O 1 bit } upper_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 472 \
    name upper_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_1 \
    op interface \
    ports { upper_pos_1_address0 { O 10 vector } upper_pos_1_ce0 { O 1 bit } upper_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 473 \
    name upper_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_2 \
    op interface \
    ports { upper_pos_2_address0 { O 10 vector } upper_pos_2_ce0 { O 1 bit } upper_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 474 \
    name upper_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_3 \
    op interface \
    ports { upper_pos_3_address0 { O 10 vector } upper_pos_3_ce0 { O 1 bit } upper_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name zext_ln210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln210 \
    op interface \
    ports { zext_ln210 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name A_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_val \
    op interface \
    ports { A_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name a_val_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_val_r \
    op interface \
    ports { m_axi_a_val_r_0_AWVALID { O 1 bit } m_axi_a_val_r_0_AWREADY { I 1 bit } m_axi_a_val_r_0_AWADDR { O 64 vector } m_axi_a_val_r_0_AWID { O 1 vector } m_axi_a_val_r_0_AWLEN { O 32 vector } m_axi_a_val_r_0_AWSIZE { O 3 vector } m_axi_a_val_r_0_AWBURST { O 2 vector } m_axi_a_val_r_0_AWLOCK { O 2 vector } m_axi_a_val_r_0_AWCACHE { O 4 vector } m_axi_a_val_r_0_AWPROT { O 3 vector } m_axi_a_val_r_0_AWQOS { O 4 vector } m_axi_a_val_r_0_AWREGION { O 4 vector } m_axi_a_val_r_0_AWUSER { O 1 vector } m_axi_a_val_r_0_WVALID { O 1 bit } m_axi_a_val_r_0_WREADY { I 1 bit } m_axi_a_val_r_0_WDATA { O 32 vector } m_axi_a_val_r_0_WSTRB { O 4 vector } m_axi_a_val_r_0_WLAST { O 1 bit } m_axi_a_val_r_0_WID { O 1 vector } m_axi_a_val_r_0_WUSER { O 1 vector } m_axi_a_val_r_0_ARVALID { O 1 bit } m_axi_a_val_r_0_ARREADY { I 1 bit } m_axi_a_val_r_0_ARADDR { O 64 vector } m_axi_a_val_r_0_ARID { O 1 vector } m_axi_a_val_r_0_ARLEN { O 32 vector } m_axi_a_val_r_0_ARSIZE { O 3 vector } m_axi_a_val_r_0_ARBURST { O 2 vector } m_axi_a_val_r_0_ARLOCK { O 2 vector } m_axi_a_val_r_0_ARCACHE { O 4 vector } m_axi_a_val_r_0_ARPROT { O 3 vector } m_axi_a_val_r_0_ARQOS { O 4 vector } m_axi_a_val_r_0_ARREGION { O 4 vector } m_axi_a_val_r_0_ARUSER { O 1 vector } m_axi_a_val_r_0_RVALID { I 1 bit } m_axi_a_val_r_0_RREADY { O 1 bit } m_axi_a_val_r_0_RDATA { I 32 vector } m_axi_a_val_r_0_RLAST { I 1 bit } m_axi_a_val_r_0_RID { I 1 vector } m_axi_a_val_r_0_RFIFONUM { I 9 vector } m_axi_a_val_r_0_RUSER { I 1 vector } m_axi_a_val_r_0_RRESP { I 2 vector } m_axi_a_val_r_0_BVALID { I 1 bit } m_axi_a_val_r_0_BREADY { O 1 bit } m_axi_a_val_r_0_BRESP { I 2 vector } m_axi_a_val_r_0_BID { I 1 vector } m_axi_a_val_r_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row \
    op interface \
    ports { row { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name A_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_cid \
    op interface \
    ports { A_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name a_col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_col \
    op interface \
    ports { m_axi_a_col_0_AWVALID { O 1 bit } m_axi_a_col_0_AWREADY { I 1 bit } m_axi_a_col_0_AWADDR { O 64 vector } m_axi_a_col_0_AWID { O 1 vector } m_axi_a_col_0_AWLEN { O 32 vector } m_axi_a_col_0_AWSIZE { O 3 vector } m_axi_a_col_0_AWBURST { O 2 vector } m_axi_a_col_0_AWLOCK { O 2 vector } m_axi_a_col_0_AWCACHE { O 4 vector } m_axi_a_col_0_AWPROT { O 3 vector } m_axi_a_col_0_AWQOS { O 4 vector } m_axi_a_col_0_AWREGION { O 4 vector } m_axi_a_col_0_AWUSER { O 1 vector } m_axi_a_col_0_WVALID { O 1 bit } m_axi_a_col_0_WREADY { I 1 bit } m_axi_a_col_0_WDATA { O 32 vector } m_axi_a_col_0_WSTRB { O 4 vector } m_axi_a_col_0_WLAST { O 1 bit } m_axi_a_col_0_WID { O 1 vector } m_axi_a_col_0_WUSER { O 1 vector } m_axi_a_col_0_ARVALID { O 1 bit } m_axi_a_col_0_ARREADY { I 1 bit } m_axi_a_col_0_ARADDR { O 64 vector } m_axi_a_col_0_ARID { O 1 vector } m_axi_a_col_0_ARLEN { O 32 vector } m_axi_a_col_0_ARSIZE { O 3 vector } m_axi_a_col_0_ARBURST { O 2 vector } m_axi_a_col_0_ARLOCK { O 2 vector } m_axi_a_col_0_ARCACHE { O 4 vector } m_axi_a_col_0_ARPROT { O 3 vector } m_axi_a_col_0_ARQOS { O 4 vector } m_axi_a_col_0_ARREGION { O 4 vector } m_axi_a_col_0_ARUSER { O 1 vector } m_axi_a_col_0_RVALID { I 1 bit } m_axi_a_col_0_RREADY { O 1 bit } m_axi_a_col_0_RDATA { I 32 vector } m_axi_a_col_0_RLAST { I 1 bit } m_axi_a_col_0_RID { I 1 vector } m_axi_a_col_0_RFIFONUM { I 9 vector } m_axi_a_col_0_RUSER { I 1 vector } m_axi_a_col_0_RRESP { I 2 vector } m_axi_a_col_0_BVALID { I 1 bit } m_axi_a_col_0_BREADY { O 1 bit } m_axi_a_col_0_BRESP { I 2 vector } m_axi_a_col_0_BID { I 1 vector } m_axi_a_col_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name zext_ln217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln217 \
    op interface \
    ports { zext_ln217 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n \
    op interface \
    ports { n { I 32 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 2 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


