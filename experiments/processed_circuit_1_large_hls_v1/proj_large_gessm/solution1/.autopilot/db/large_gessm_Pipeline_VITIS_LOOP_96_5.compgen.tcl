# This script segment is generated automatically by AutoPilot

set name large_gessm_fmul_32ns_32ns_32_5_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 4 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name zext_ln96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln96 \
    op interface \
    ports { zext_ln96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name gw0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gw0 \
    op interface \
    ports { m_axi_gw0_AWVALID { O 1 bit } m_axi_gw0_AWREADY { I 1 bit } m_axi_gw0_AWADDR { O 64 vector } m_axi_gw0_AWID { O 1 vector } m_axi_gw0_AWLEN { O 32 vector } m_axi_gw0_AWSIZE { O 3 vector } m_axi_gw0_AWBURST { O 2 vector } m_axi_gw0_AWLOCK { O 2 vector } m_axi_gw0_AWCACHE { O 4 vector } m_axi_gw0_AWPROT { O 3 vector } m_axi_gw0_AWQOS { O 4 vector } m_axi_gw0_AWREGION { O 4 vector } m_axi_gw0_AWUSER { O 1 vector } m_axi_gw0_WVALID { O 1 bit } m_axi_gw0_WREADY { I 1 bit } m_axi_gw0_WDATA { O 32 vector } m_axi_gw0_WSTRB { O 4 vector } m_axi_gw0_WLAST { O 1 bit } m_axi_gw0_WID { O 1 vector } m_axi_gw0_WUSER { O 1 vector } m_axi_gw0_ARVALID { O 1 bit } m_axi_gw0_ARREADY { I 1 bit } m_axi_gw0_ARADDR { O 64 vector } m_axi_gw0_ARID { O 1 vector } m_axi_gw0_ARLEN { O 32 vector } m_axi_gw0_ARSIZE { O 3 vector } m_axi_gw0_ARBURST { O 2 vector } m_axi_gw0_ARLOCK { O 2 vector } m_axi_gw0_ARCACHE { O 4 vector } m_axi_gw0_ARPROT { O 3 vector } m_axi_gw0_ARQOS { O 4 vector } m_axi_gw0_ARREGION { O 4 vector } m_axi_gw0_ARUSER { O 1 vector } m_axi_gw0_RVALID { I 1 bit } m_axi_gw0_RREADY { O 1 bit } m_axi_gw0_RDATA { I 32 vector } m_axi_gw0_RLAST { I 1 bit } m_axi_gw0_RID { I 1 vector } m_axi_gw0_RFIFONUM { I 9 vector } m_axi_gw0_RUSER { I 1 vector } m_axi_gw0_RRESP { I 2 vector } m_axi_gw0_BVALID { I 1 bit } m_axi_gw0_BREADY { O 1 bit } m_axi_gw0_BRESP { I 2 vector } m_axi_gw0_BID { I 1 vector } m_axi_gw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name gl2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gl2 \
    op interface \
    ports { m_axi_gl2_AWVALID { O 1 bit } m_axi_gl2_AWREADY { I 1 bit } m_axi_gl2_AWADDR { O 64 vector } m_axi_gl2_AWID { O 1 vector } m_axi_gl2_AWLEN { O 32 vector } m_axi_gl2_AWSIZE { O 3 vector } m_axi_gl2_AWBURST { O 2 vector } m_axi_gl2_AWLOCK { O 2 vector } m_axi_gl2_AWCACHE { O 4 vector } m_axi_gl2_AWPROT { O 3 vector } m_axi_gl2_AWQOS { O 4 vector } m_axi_gl2_AWREGION { O 4 vector } m_axi_gl2_AWUSER { O 1 vector } m_axi_gl2_WVALID { O 1 bit } m_axi_gl2_WREADY { I 1 bit } m_axi_gl2_WDATA { O 32 vector } m_axi_gl2_WSTRB { O 4 vector } m_axi_gl2_WLAST { O 1 bit } m_axi_gl2_WID { O 1 vector } m_axi_gl2_WUSER { O 1 vector } m_axi_gl2_ARVALID { O 1 bit } m_axi_gl2_ARREADY { I 1 bit } m_axi_gl2_ARADDR { O 64 vector } m_axi_gl2_ARID { O 1 vector } m_axi_gl2_ARLEN { O 32 vector } m_axi_gl2_ARSIZE { O 3 vector } m_axi_gl2_ARBURST { O 2 vector } m_axi_gl2_ARLOCK { O 2 vector } m_axi_gl2_ARCACHE { O 4 vector } m_axi_gl2_ARPROT { O 3 vector } m_axi_gl2_ARQOS { O 4 vector } m_axi_gl2_ARREGION { O 4 vector } m_axi_gl2_ARUSER { O 1 vector } m_axi_gl2_RVALID { I 1 bit } m_axi_gl2_RREADY { O 1 bit } m_axi_gl2_RDATA { I 32 vector } m_axi_gl2_RLAST { I 1 bit } m_axi_gl2_RID { I 1 vector } m_axi_gl2_RFIFONUM { I 9 vector } m_axi_gl2_RUSER { I 1 vector } m_axi_gl2_RRESP { I 2 vector } m_axi_gl2_BVALID { I 1 bit } m_axi_gl2_BREADY { O 1 bit } m_axi_gl2_BRESP { I 2 vector } m_axi_gl2_BID { I 1 vector } m_axi_gl2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name gl1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gl1 \
    op interface \
    ports { m_axi_gl1_AWVALID { O 1 bit } m_axi_gl1_AWREADY { I 1 bit } m_axi_gl1_AWADDR { O 64 vector } m_axi_gl1_AWID { O 1 vector } m_axi_gl1_AWLEN { O 32 vector } m_axi_gl1_AWSIZE { O 3 vector } m_axi_gl1_AWBURST { O 2 vector } m_axi_gl1_AWLOCK { O 2 vector } m_axi_gl1_AWCACHE { O 4 vector } m_axi_gl1_AWPROT { O 3 vector } m_axi_gl1_AWQOS { O 4 vector } m_axi_gl1_AWREGION { O 4 vector } m_axi_gl1_AWUSER { O 1 vector } m_axi_gl1_WVALID { O 1 bit } m_axi_gl1_WREADY { I 1 bit } m_axi_gl1_WDATA { O 32 vector } m_axi_gl1_WSTRB { O 4 vector } m_axi_gl1_WLAST { O 1 bit } m_axi_gl1_WID { O 1 vector } m_axi_gl1_WUSER { O 1 vector } m_axi_gl1_ARVALID { O 1 bit } m_axi_gl1_ARREADY { I 1 bit } m_axi_gl1_ARADDR { O 64 vector } m_axi_gl1_ARID { O 1 vector } m_axi_gl1_ARLEN { O 32 vector } m_axi_gl1_ARSIZE { O 3 vector } m_axi_gl1_ARBURST { O 2 vector } m_axi_gl1_ARLOCK { O 2 vector } m_axi_gl1_ARCACHE { O 4 vector } m_axi_gl1_ARPROT { O 3 vector } m_axi_gl1_ARQOS { O 4 vector } m_axi_gl1_ARREGION { O 4 vector } m_axi_gl1_ARUSER { O 1 vector } m_axi_gl1_RVALID { I 1 bit } m_axi_gl1_RREADY { O 1 bit } m_axi_gl1_RDATA { I 32 vector } m_axi_gl1_RLAST { I 1 bit } m_axi_gl1_RID { I 1 vector } m_axi_gl1_RFIFONUM { I 9 vector } m_axi_gl1_RUSER { I 1 vector } m_axi_gl1_RRESP { I 2 vector } m_axi_gl1_BVALID { I 1 bit } m_axi_gl1_BREADY { O 1 bit } m_axi_gl1_BRESP { I 2 vector } m_axi_gl1_BID { I 1 vector } m_axi_gl1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name sext_ln98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln98 \
    op interface \
    ports { sext_ln98 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name zext_ln96_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln96_1 \
    op interface \
    ports { zext_ln96_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name l_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val \
    op interface \
    ports { l_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name work \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_work \
    op interface \
    ports { work { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name muladds \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_muladds \
    op interface \
    ports { muladds { O 64 vector } muladds_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name l_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_idx \
    op interface \
    ports { l_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_1 \
    op interface \
    ports { i_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 64 vector } p_out_ap_vld { O 1 bit } } \
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


