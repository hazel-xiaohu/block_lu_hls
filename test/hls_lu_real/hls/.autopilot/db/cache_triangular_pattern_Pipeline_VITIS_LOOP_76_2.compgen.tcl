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
    id 96 \
    name factor_val_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename factor_val_3 \
    op interface \
    ports { factor_val_3_address0 { O 10 vector } factor_val_3_ce0 { O 1 bit } factor_val_3_we0 { O 1 bit } factor_val_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_val_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name factor_val_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename factor_val_2 \
    op interface \
    ports { factor_val_2_address0 { O 10 vector } factor_val_2_ce0 { O 1 bit } factor_val_2_we0 { O 1 bit } factor_val_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_val_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name factor_val_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename factor_val_1 \
    op interface \
    ports { factor_val_1_address0 { O 10 vector } factor_val_1_ce0 { O 1 bit } factor_val_1_we0 { O 1 bit } factor_val_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_val_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name factor_val_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename factor_val_0 \
    op interface \
    ports { factor_val_0_address0 { O 10 vector } factor_val_0_ce0 { O 1 bit } factor_val_0_we0 { O 1 bit } factor_val_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_val_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name position_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename position_3 \
    op interface \
    ports { position_3_address0 { O 10 vector } position_3_ce0 { O 1 bit } position_3_we0 { O 1 bit } position_3_d0 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'position_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name position_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename position_2 \
    op interface \
    ports { position_2_address0 { O 10 vector } position_2_ce0 { O 1 bit } position_2_we0 { O 1 bit } position_2_d0 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'position_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name position_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename position_1 \
    op interface \
    ports { position_1_address0 { O 10 vector } position_1_ce0 { O 1 bit } position_1_we0 { O 1 bit } position_1_d0 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'position_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name position_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename position_0 \
    op interface \
    ports { position_0_address0 { O 10 vector } position_0_ce0 { O 1 bit } position_0_we0 { O 1 bit } position_0_d0 { O 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'position_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name zext_ln76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln76 \
    op interface \
    ports { zext_ln76 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name load_values \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_load_values \
    op interface \
    ports { load_values { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
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
    id 95 \
    name lower \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lower \
    op interface \
    ports { lower { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name col_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_col_idx \
    op interface \
    ports { col_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
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
    id 106 \
    name zext_ln83_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln83_1 \
    op interface \
    ports { zext_ln83_1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
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
    id 108 \
    name values \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_values \
    op interface \
    ports { values { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name u_val \
    type other \
    dir I \
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
    ports { ap_return { O 1 vector } } \
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


