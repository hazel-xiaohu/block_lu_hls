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
    id 593 \
    name lower_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lower_pos_0 \
    op interface \
    ports { lower_pos_0_address0 { O 10 vector } lower_pos_0_ce0 { O 1 bit } lower_pos_0_we0 { O 1 bit } lower_pos_0_d0 { O 12 vector } lower_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 594 \
    name lower_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lower_pos_1 \
    op interface \
    ports { lower_pos_1_address0 { O 10 vector } lower_pos_1_ce0 { O 1 bit } lower_pos_1_we0 { O 1 bit } lower_pos_1_d0 { O 12 vector } lower_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 595 \
    name lower_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lower_pos_2 \
    op interface \
    ports { lower_pos_2_address0 { O 10 vector } lower_pos_2_ce0 { O 1 bit } lower_pos_2_we0 { O 1 bit } lower_pos_2_d0 { O 12 vector } lower_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 596 \
    name lower_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lower_pos_3 \
    op interface \
    ports { lower_pos_3_address0 { O 10 vector } lower_pos_3_ce0 { O 1 bit } lower_pos_3_we0 { O 1 bit } lower_pos_3_d0 { O 12 vector } lower_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 597 \
    name upper_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename upper_pos_0 \
    op interface \
    ports { upper_pos_0_address0 { O 10 vector } upper_pos_0_ce0 { O 1 bit } upper_pos_0_we0 { O 1 bit } upper_pos_0_d0 { O 12 vector } upper_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 598 \
    name upper_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename upper_pos_1 \
    op interface \
    ports { upper_pos_1_address0 { O 10 vector } upper_pos_1_ce0 { O 1 bit } upper_pos_1_we0 { O 1 bit } upper_pos_1_d0 { O 12 vector } upper_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 599 \
    name upper_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename upper_pos_2 \
    op interface \
    ports { upper_pos_2_address0 { O 10 vector } upper_pos_2_ce0 { O 1 bit } upper_pos_2_we0 { O 1 bit } upper_pos_2_d0 { O 12 vector } upper_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 600 \
    name upper_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename upper_pos_3 \
    op interface \
    ports { upper_pos_3_address0 { O 10 vector } upper_pos_3_ce0 { O 1 bit } upper_pos_3_we0 { O 1 bit } upper_pos_3_d0 { O 12 vector } upper_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 601 \
    name work_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_0 \
    op interface \
    ports { work_0_address0 { O 10 vector } work_0_ce0 { O 1 bit } work_0_we0 { O 1 bit } work_0_d0 { O 32 vector } work_0_q0 { I 32 vector } work_0_address1 { O 10 vector } work_0_ce1 { O 1 bit } work_0_q1 { I 32 vector } work_0_address2 { O 10 vector } work_0_ce2 { O 1 bit } work_0_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 602 \
    name work_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_1 \
    op interface \
    ports { work_1_address0 { O 10 vector } work_1_ce0 { O 1 bit } work_1_we0 { O 1 bit } work_1_d0 { O 32 vector } work_1_q0 { I 32 vector } work_1_address1 { O 10 vector } work_1_ce1 { O 1 bit } work_1_q1 { I 32 vector } work_1_address2 { O 10 vector } work_1_ce2 { O 1 bit } work_1_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 603 \
    name work_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_2 \
    op interface \
    ports { work_2_address0 { O 10 vector } work_2_ce0 { O 1 bit } work_2_we0 { O 1 bit } work_2_d0 { O 32 vector } work_2_q0 { I 32 vector } work_2_address1 { O 10 vector } work_2_ce1 { O 1 bit } work_2_q1 { I 32 vector } work_2_address2 { O 10 vector } work_2_ce2 { O 1 bit } work_2_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 604 \
    name work_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_3 \
    op interface \
    ports { work_3_address0 { O 10 vector } work_3_ce0 { O 1 bit } work_3_we0 { O 1 bit } work_3_d0 { O 32 vector } work_3_q0 { I 32 vector } work_3_address1 { O 10 vector } work_3_ce1 { O 1 bit } work_3_q1 { I 32 vector } work_3_address2 { O 10 vector } work_3_ce2 { O 1 bit } work_3_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name a_row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_row \
    op interface \
    ports { m_axi_a_row_0_AWVALID { O 1 bit } m_axi_a_row_0_AWREADY { I 1 bit } m_axi_a_row_0_AWADDR { O 64 vector } m_axi_a_row_0_AWID { O 1 vector } m_axi_a_row_0_AWLEN { O 32 vector } m_axi_a_row_0_AWSIZE { O 3 vector } m_axi_a_row_0_AWBURST { O 2 vector } m_axi_a_row_0_AWLOCK { O 2 vector } m_axi_a_row_0_AWCACHE { O 4 vector } m_axi_a_row_0_AWPROT { O 3 vector } m_axi_a_row_0_AWQOS { O 4 vector } m_axi_a_row_0_AWREGION { O 4 vector } m_axi_a_row_0_AWUSER { O 1 vector } m_axi_a_row_0_WVALID { O 1 bit } m_axi_a_row_0_WREADY { I 1 bit } m_axi_a_row_0_WDATA { O 32 vector } m_axi_a_row_0_WSTRB { O 4 vector } m_axi_a_row_0_WLAST { O 1 bit } m_axi_a_row_0_WID { O 1 vector } m_axi_a_row_0_WUSER { O 1 vector } m_axi_a_row_0_ARVALID { O 1 bit } m_axi_a_row_0_ARREADY { I 1 bit } m_axi_a_row_0_ARADDR { O 64 vector } m_axi_a_row_0_ARID { O 1 vector } m_axi_a_row_0_ARLEN { O 32 vector } m_axi_a_row_0_ARSIZE { O 3 vector } m_axi_a_row_0_ARBURST { O 2 vector } m_axi_a_row_0_ARLOCK { O 2 vector } m_axi_a_row_0_ARCACHE { O 4 vector } m_axi_a_row_0_ARPROT { O 3 vector } m_axi_a_row_0_ARQOS { O 4 vector } m_axi_a_row_0_ARREGION { O 4 vector } m_axi_a_row_0_ARUSER { O 1 vector } m_axi_a_row_0_RVALID { I 1 bit } m_axi_a_row_0_RREADY { O 1 bit } m_axi_a_row_0_RDATA { I 32 vector } m_axi_a_row_0_RLAST { I 1 bit } m_axi_a_row_0_RID { I 1 vector } m_axi_a_row_0_RFIFONUM { I 9 vector } m_axi_a_row_0_RUSER { I 1 vector } m_axi_a_row_0_RRESP { I 2 vector } m_axi_a_row_0_BVALID { I 1 bit } m_axi_a_row_0_BREADY { O 1 bit } m_axi_a_row_0_BRESP { I 2 vector } m_axi_a_row_0_BID { I 1 vector } m_axi_a_row_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name A_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_rcsr \
    op interface \
    ports { A_rcsr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
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
    id 573 \
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
    id 574 \
    name a_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_val \
    op interface \
    ports { m_axi_a_val_0_AWVALID { O 1 bit } m_axi_a_val_0_AWREADY { I 1 bit } m_axi_a_val_0_AWADDR { O 64 vector } m_axi_a_val_0_AWID { O 1 vector } m_axi_a_val_0_AWLEN { O 32 vector } m_axi_a_val_0_AWSIZE { O 3 vector } m_axi_a_val_0_AWBURST { O 2 vector } m_axi_a_val_0_AWLOCK { O 2 vector } m_axi_a_val_0_AWCACHE { O 4 vector } m_axi_a_val_0_AWPROT { O 3 vector } m_axi_a_val_0_AWQOS { O 4 vector } m_axi_a_val_0_AWREGION { O 4 vector } m_axi_a_val_0_AWUSER { O 1 vector } m_axi_a_val_0_WVALID { O 1 bit } m_axi_a_val_0_WREADY { I 1 bit } m_axi_a_val_0_WDATA { O 32 vector } m_axi_a_val_0_WSTRB { O 4 vector } m_axi_a_val_0_WLAST { O 1 bit } m_axi_a_val_0_WID { O 1 vector } m_axi_a_val_0_WUSER { O 1 vector } m_axi_a_val_0_ARVALID { O 1 bit } m_axi_a_val_0_ARREADY { I 1 bit } m_axi_a_val_0_ARADDR { O 64 vector } m_axi_a_val_0_ARID { O 1 vector } m_axi_a_val_0_ARLEN { O 32 vector } m_axi_a_val_0_ARSIZE { O 3 vector } m_axi_a_val_0_ARBURST { O 2 vector } m_axi_a_val_0_ARLOCK { O 2 vector } m_axi_a_val_0_ARCACHE { O 4 vector } m_axi_a_val_0_ARPROT { O 3 vector } m_axi_a_val_0_ARQOS { O 4 vector } m_axi_a_val_0_ARREGION { O 4 vector } m_axi_a_val_0_ARUSER { O 1 vector } m_axi_a_val_0_RVALID { I 1 bit } m_axi_a_val_0_RREADY { O 1 bit } m_axi_a_val_0_RDATA { I 32 vector } m_axi_a_val_0_RLAST { I 1 bit } m_axi_a_val_0_RID { I 1 vector } m_axi_a_val_0_RFIFONUM { I 9 vector } m_axi_a_val_0_RUSER { I 1 vector } m_axi_a_val_0_RRESP { I 2 vector } m_axi_a_val_0_BVALID { I 1 bit } m_axi_a_val_0_BREADY { O 1 bit } m_axi_a_val_0_BRESP { I 2 vector } m_axi_a_val_0_BID { I 1 vector } m_axi_a_val_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name A_val_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_val_r \
    op interface \
    ports { A_val_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name l_row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_row \
    op interface \
    ports { m_axi_l_row_0_AWVALID { O 1 bit } m_axi_l_row_0_AWREADY { I 1 bit } m_axi_l_row_0_AWADDR { O 64 vector } m_axi_l_row_0_AWID { O 1 vector } m_axi_l_row_0_AWLEN { O 32 vector } m_axi_l_row_0_AWSIZE { O 3 vector } m_axi_l_row_0_AWBURST { O 2 vector } m_axi_l_row_0_AWLOCK { O 2 vector } m_axi_l_row_0_AWCACHE { O 4 vector } m_axi_l_row_0_AWPROT { O 3 vector } m_axi_l_row_0_AWQOS { O 4 vector } m_axi_l_row_0_AWREGION { O 4 vector } m_axi_l_row_0_AWUSER { O 1 vector } m_axi_l_row_0_WVALID { O 1 bit } m_axi_l_row_0_WREADY { I 1 bit } m_axi_l_row_0_WDATA { O 32 vector } m_axi_l_row_0_WSTRB { O 4 vector } m_axi_l_row_0_WLAST { O 1 bit } m_axi_l_row_0_WID { O 1 vector } m_axi_l_row_0_WUSER { O 1 vector } m_axi_l_row_0_ARVALID { O 1 bit } m_axi_l_row_0_ARREADY { I 1 bit } m_axi_l_row_0_ARADDR { O 64 vector } m_axi_l_row_0_ARID { O 1 vector } m_axi_l_row_0_ARLEN { O 32 vector } m_axi_l_row_0_ARSIZE { O 3 vector } m_axi_l_row_0_ARBURST { O 2 vector } m_axi_l_row_0_ARLOCK { O 2 vector } m_axi_l_row_0_ARCACHE { O 4 vector } m_axi_l_row_0_ARPROT { O 3 vector } m_axi_l_row_0_ARQOS { O 4 vector } m_axi_l_row_0_ARREGION { O 4 vector } m_axi_l_row_0_ARUSER { O 1 vector } m_axi_l_row_0_RVALID { I 1 bit } m_axi_l_row_0_RREADY { O 1 bit } m_axi_l_row_0_RDATA { I 32 vector } m_axi_l_row_0_RLAST { I 1 bit } m_axi_l_row_0_RID { I 1 vector } m_axi_l_row_0_RFIFONUM { I 9 vector } m_axi_l_row_0_RUSER { I 1 vector } m_axi_l_row_0_RRESP { I 2 vector } m_axi_l_row_0_BVALID { I 1 bit } m_axi_l_row_0_BREADY { O 1 bit } m_axi_l_row_0_BRESP { I 2 vector } m_axi_l_row_0_BID { I 1 vector } m_axi_l_row_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name L_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_L_rcsr \
    op interface \
    ports { L_rcsr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name l_col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_col \
    op interface \
    ports { m_axi_l_col_0_AWVALID { O 1 bit } m_axi_l_col_0_AWREADY { I 1 bit } m_axi_l_col_0_AWADDR { O 64 vector } m_axi_l_col_0_AWID { O 1 vector } m_axi_l_col_0_AWLEN { O 32 vector } m_axi_l_col_0_AWSIZE { O 3 vector } m_axi_l_col_0_AWBURST { O 2 vector } m_axi_l_col_0_AWLOCK { O 2 vector } m_axi_l_col_0_AWCACHE { O 4 vector } m_axi_l_col_0_AWPROT { O 3 vector } m_axi_l_col_0_AWQOS { O 4 vector } m_axi_l_col_0_AWREGION { O 4 vector } m_axi_l_col_0_AWUSER { O 1 vector } m_axi_l_col_0_WVALID { O 1 bit } m_axi_l_col_0_WREADY { I 1 bit } m_axi_l_col_0_WDATA { O 32 vector } m_axi_l_col_0_WSTRB { O 4 vector } m_axi_l_col_0_WLAST { O 1 bit } m_axi_l_col_0_WID { O 1 vector } m_axi_l_col_0_WUSER { O 1 vector } m_axi_l_col_0_ARVALID { O 1 bit } m_axi_l_col_0_ARREADY { I 1 bit } m_axi_l_col_0_ARADDR { O 64 vector } m_axi_l_col_0_ARID { O 1 vector } m_axi_l_col_0_ARLEN { O 32 vector } m_axi_l_col_0_ARSIZE { O 3 vector } m_axi_l_col_0_ARBURST { O 2 vector } m_axi_l_col_0_ARLOCK { O 2 vector } m_axi_l_col_0_ARCACHE { O 4 vector } m_axi_l_col_0_ARPROT { O 3 vector } m_axi_l_col_0_ARQOS { O 4 vector } m_axi_l_col_0_ARREGION { O 4 vector } m_axi_l_col_0_ARUSER { O 1 vector } m_axi_l_col_0_RVALID { I 1 bit } m_axi_l_col_0_RREADY { O 1 bit } m_axi_l_col_0_RDATA { I 32 vector } m_axi_l_col_0_RLAST { I 1 bit } m_axi_l_col_0_RID { I 1 vector } m_axi_l_col_0_RFIFONUM { I 9 vector } m_axi_l_col_0_RUSER { I 1 vector } m_axi_l_col_0_RRESP { I 2 vector } m_axi_l_col_0_BVALID { I 1 bit } m_axi_l_col_0_BREADY { O 1 bit } m_axi_l_col_0_BRESP { I 2 vector } m_axi_l_col_0_BID { I 1 vector } m_axi_l_col_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name L_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_L_cid \
    op interface \
    ports { L_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name l_val \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val \
    op interface \
    ports { m_axi_l_val_0_AWVALID { O 1 bit } m_axi_l_val_0_AWREADY { I 1 bit } m_axi_l_val_0_AWADDR { O 64 vector } m_axi_l_val_0_AWID { O 1 vector } m_axi_l_val_0_AWLEN { O 32 vector } m_axi_l_val_0_AWSIZE { O 3 vector } m_axi_l_val_0_AWBURST { O 2 vector } m_axi_l_val_0_AWLOCK { O 2 vector } m_axi_l_val_0_AWCACHE { O 4 vector } m_axi_l_val_0_AWPROT { O 3 vector } m_axi_l_val_0_AWQOS { O 4 vector } m_axi_l_val_0_AWREGION { O 4 vector } m_axi_l_val_0_AWUSER { O 1 vector } m_axi_l_val_0_WVALID { O 1 bit } m_axi_l_val_0_WREADY { I 1 bit } m_axi_l_val_0_WDATA { O 32 vector } m_axi_l_val_0_WSTRB { O 4 vector } m_axi_l_val_0_WLAST { O 1 bit } m_axi_l_val_0_WID { O 1 vector } m_axi_l_val_0_WUSER { O 1 vector } m_axi_l_val_0_ARVALID { O 1 bit } m_axi_l_val_0_ARREADY { I 1 bit } m_axi_l_val_0_ARADDR { O 64 vector } m_axi_l_val_0_ARID { O 1 vector } m_axi_l_val_0_ARLEN { O 32 vector } m_axi_l_val_0_ARSIZE { O 3 vector } m_axi_l_val_0_ARBURST { O 2 vector } m_axi_l_val_0_ARLOCK { O 2 vector } m_axi_l_val_0_ARCACHE { O 4 vector } m_axi_l_val_0_ARPROT { O 3 vector } m_axi_l_val_0_ARQOS { O 4 vector } m_axi_l_val_0_ARREGION { O 4 vector } m_axi_l_val_0_ARUSER { O 1 vector } m_axi_l_val_0_RVALID { I 1 bit } m_axi_l_val_0_RREADY { O 1 bit } m_axi_l_val_0_RDATA { I 32 vector } m_axi_l_val_0_RLAST { I 1 bit } m_axi_l_val_0_RID { I 1 vector } m_axi_l_val_0_RFIFONUM { I 9 vector } m_axi_l_val_0_RUSER { I 1 vector } m_axi_l_val_0_RRESP { I 2 vector } m_axi_l_val_0_BVALID { I 1 bit } m_axi_l_val_0_BREADY { O 1 bit } m_axi_l_val_0_BRESP { I 2 vector } m_axi_l_val_0_BID { I 1 vector } m_axi_l_val_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name L_val_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_L_val_r \
    op interface \
    ports { L_val_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name u_row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_row \
    op interface \
    ports { m_axi_u_row_0_AWVALID { O 1 bit } m_axi_u_row_0_AWREADY { I 1 bit } m_axi_u_row_0_AWADDR { O 64 vector } m_axi_u_row_0_AWID { O 1 vector } m_axi_u_row_0_AWLEN { O 32 vector } m_axi_u_row_0_AWSIZE { O 3 vector } m_axi_u_row_0_AWBURST { O 2 vector } m_axi_u_row_0_AWLOCK { O 2 vector } m_axi_u_row_0_AWCACHE { O 4 vector } m_axi_u_row_0_AWPROT { O 3 vector } m_axi_u_row_0_AWQOS { O 4 vector } m_axi_u_row_0_AWREGION { O 4 vector } m_axi_u_row_0_AWUSER { O 1 vector } m_axi_u_row_0_WVALID { O 1 bit } m_axi_u_row_0_WREADY { I 1 bit } m_axi_u_row_0_WDATA { O 32 vector } m_axi_u_row_0_WSTRB { O 4 vector } m_axi_u_row_0_WLAST { O 1 bit } m_axi_u_row_0_WID { O 1 vector } m_axi_u_row_0_WUSER { O 1 vector } m_axi_u_row_0_ARVALID { O 1 bit } m_axi_u_row_0_ARREADY { I 1 bit } m_axi_u_row_0_ARADDR { O 64 vector } m_axi_u_row_0_ARID { O 1 vector } m_axi_u_row_0_ARLEN { O 32 vector } m_axi_u_row_0_ARSIZE { O 3 vector } m_axi_u_row_0_ARBURST { O 2 vector } m_axi_u_row_0_ARLOCK { O 2 vector } m_axi_u_row_0_ARCACHE { O 4 vector } m_axi_u_row_0_ARPROT { O 3 vector } m_axi_u_row_0_ARQOS { O 4 vector } m_axi_u_row_0_ARREGION { O 4 vector } m_axi_u_row_0_ARUSER { O 1 vector } m_axi_u_row_0_RVALID { I 1 bit } m_axi_u_row_0_RREADY { O 1 bit } m_axi_u_row_0_RDATA { I 32 vector } m_axi_u_row_0_RLAST { I 1 bit } m_axi_u_row_0_RID { I 1 vector } m_axi_u_row_0_RFIFONUM { I 9 vector } m_axi_u_row_0_RUSER { I 1 vector } m_axi_u_row_0_RRESP { I 2 vector } m_axi_u_row_0_BVALID { I 1 bit } m_axi_u_row_0_BREADY { O 1 bit } m_axi_u_row_0_BRESP { I 2 vector } m_axi_u_row_0_BID { I 1 vector } m_axi_u_row_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name U_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_U_rcsr \
    op interface \
    ports { U_rcsr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name u_col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_col \
    op interface \
    ports { m_axi_u_col_0_AWVALID { O 1 bit } m_axi_u_col_0_AWREADY { I 1 bit } m_axi_u_col_0_AWADDR { O 64 vector } m_axi_u_col_0_AWID { O 1 vector } m_axi_u_col_0_AWLEN { O 32 vector } m_axi_u_col_0_AWSIZE { O 3 vector } m_axi_u_col_0_AWBURST { O 2 vector } m_axi_u_col_0_AWLOCK { O 2 vector } m_axi_u_col_0_AWCACHE { O 4 vector } m_axi_u_col_0_AWPROT { O 3 vector } m_axi_u_col_0_AWQOS { O 4 vector } m_axi_u_col_0_AWREGION { O 4 vector } m_axi_u_col_0_AWUSER { O 1 vector } m_axi_u_col_0_WVALID { O 1 bit } m_axi_u_col_0_WREADY { I 1 bit } m_axi_u_col_0_WDATA { O 32 vector } m_axi_u_col_0_WSTRB { O 4 vector } m_axi_u_col_0_WLAST { O 1 bit } m_axi_u_col_0_WID { O 1 vector } m_axi_u_col_0_WUSER { O 1 vector } m_axi_u_col_0_ARVALID { O 1 bit } m_axi_u_col_0_ARREADY { I 1 bit } m_axi_u_col_0_ARADDR { O 64 vector } m_axi_u_col_0_ARID { O 1 vector } m_axi_u_col_0_ARLEN { O 32 vector } m_axi_u_col_0_ARSIZE { O 3 vector } m_axi_u_col_0_ARBURST { O 2 vector } m_axi_u_col_0_ARLOCK { O 2 vector } m_axi_u_col_0_ARCACHE { O 4 vector } m_axi_u_col_0_ARPROT { O 3 vector } m_axi_u_col_0_ARQOS { O 4 vector } m_axi_u_col_0_ARREGION { O 4 vector } m_axi_u_col_0_ARUSER { O 1 vector } m_axi_u_col_0_RVALID { I 1 bit } m_axi_u_col_0_RREADY { O 1 bit } m_axi_u_col_0_RDATA { I 32 vector } m_axi_u_col_0_RLAST { I 1 bit } m_axi_u_col_0_RID { I 1 vector } m_axi_u_col_0_RFIFONUM { I 9 vector } m_axi_u_col_0_RUSER { I 1 vector } m_axi_u_col_0_RRESP { I 2 vector } m_axi_u_col_0_BVALID { I 1 bit } m_axi_u_col_0_BREADY { O 1 bit } m_axi_u_col_0_BRESP { I 2 vector } m_axi_u_col_0_BID { I 1 vector } m_axi_u_col_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name U_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_U_cid \
    op interface \
    ports { U_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name u_val \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_u_val \
    op interface \
    ports { m_axi_u_val_0_AWVALID { O 1 bit } m_axi_u_val_0_AWREADY { I 1 bit } m_axi_u_val_0_AWADDR { O 64 vector } m_axi_u_val_0_AWID { O 1 vector } m_axi_u_val_0_AWLEN { O 32 vector } m_axi_u_val_0_AWSIZE { O 3 vector } m_axi_u_val_0_AWBURST { O 2 vector } m_axi_u_val_0_AWLOCK { O 2 vector } m_axi_u_val_0_AWCACHE { O 4 vector } m_axi_u_val_0_AWPROT { O 3 vector } m_axi_u_val_0_AWQOS { O 4 vector } m_axi_u_val_0_AWREGION { O 4 vector } m_axi_u_val_0_AWUSER { O 1 vector } m_axi_u_val_0_WVALID { O 1 bit } m_axi_u_val_0_WREADY { I 1 bit } m_axi_u_val_0_WDATA { O 32 vector } m_axi_u_val_0_WSTRB { O 4 vector } m_axi_u_val_0_WLAST { O 1 bit } m_axi_u_val_0_WID { O 1 vector } m_axi_u_val_0_WUSER { O 1 vector } m_axi_u_val_0_ARVALID { O 1 bit } m_axi_u_val_0_ARREADY { I 1 bit } m_axi_u_val_0_ARADDR { O 64 vector } m_axi_u_val_0_ARID { O 1 vector } m_axi_u_val_0_ARLEN { O 32 vector } m_axi_u_val_0_ARSIZE { O 3 vector } m_axi_u_val_0_ARBURST { O 2 vector } m_axi_u_val_0_ARLOCK { O 2 vector } m_axi_u_val_0_ARCACHE { O 4 vector } m_axi_u_val_0_ARPROT { O 3 vector } m_axi_u_val_0_ARQOS { O 4 vector } m_axi_u_val_0_ARREGION { O 4 vector } m_axi_u_val_0_ARUSER { O 1 vector } m_axi_u_val_0_RVALID { I 1 bit } m_axi_u_val_0_RREADY { O 1 bit } m_axi_u_val_0_RDATA { I 32 vector } m_axi_u_val_0_RLAST { I 1 bit } m_axi_u_val_0_RID { I 1 vector } m_axi_u_val_0_RFIFONUM { I 9 vector } m_axi_u_val_0_RUSER { I 1 vector } m_axi_u_val_0_RRESP { I 2 vector } m_axi_u_val_0_BVALID { I 1 bit } m_axi_u_val_0_BREADY { O 1 bit } m_axi_u_val_0_BRESP { I 2 vector } m_axi_u_val_0_BID { I 1 vector } m_axi_u_val_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name U_val_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_U_val_r \
    op interface \
    ports { U_val_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
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
    id 589 \
    name a_nnz \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_nnz \
    op interface \
    ports { a_nnz { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name l_nnz \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_nnz \
    op interface \
    ports { l_nnz { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name u_nnz \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_nnz \
    op interface \
    ports { u_nnz { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name pivot_eps \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pivot_eps \
    op interface \
    ports { pivot_eps { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name failed_row \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_failed_row \
    op interface \
    ports { failed_row { O 32 vector } failed_row_ap_vld { O 1 bit } } \
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
    ports { ap_return { O 3 vector } } \
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


