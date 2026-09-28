# This script segment is generated automatically by AutoPilot

set name large_tstrf_fmul_32ns_32ns_32_5_max_dsp_1
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
    name zext_ln136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln136 \
    op interface \
    ports { zext_ln136 { I 32 vector } } \
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
    name tw0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tw0 \
    op interface \
    ports { m_axi_tw0_AWVALID { O 1 bit } m_axi_tw0_AWREADY { I 1 bit } m_axi_tw0_AWADDR { O 64 vector } m_axi_tw0_AWID { O 1 vector } m_axi_tw0_AWLEN { O 32 vector } m_axi_tw0_AWSIZE { O 3 vector } m_axi_tw0_AWBURST { O 2 vector } m_axi_tw0_AWLOCK { O 2 vector } m_axi_tw0_AWCACHE { O 4 vector } m_axi_tw0_AWPROT { O 3 vector } m_axi_tw0_AWQOS { O 4 vector } m_axi_tw0_AWREGION { O 4 vector } m_axi_tw0_AWUSER { O 1 vector } m_axi_tw0_WVALID { O 1 bit } m_axi_tw0_WREADY { I 1 bit } m_axi_tw0_WDATA { O 32 vector } m_axi_tw0_WSTRB { O 4 vector } m_axi_tw0_WLAST { O 1 bit } m_axi_tw0_WID { O 1 vector } m_axi_tw0_WUSER { O 1 vector } m_axi_tw0_ARVALID { O 1 bit } m_axi_tw0_ARREADY { I 1 bit } m_axi_tw0_ARADDR { O 64 vector } m_axi_tw0_ARID { O 1 vector } m_axi_tw0_ARLEN { O 32 vector } m_axi_tw0_ARSIZE { O 3 vector } m_axi_tw0_ARBURST { O 2 vector } m_axi_tw0_ARLOCK { O 2 vector } m_axi_tw0_ARCACHE { O 4 vector } m_axi_tw0_ARPROT { O 3 vector } m_axi_tw0_ARQOS { O 4 vector } m_axi_tw0_ARREGION { O 4 vector } m_axi_tw0_ARUSER { O 1 vector } m_axi_tw0_RVALID { I 1 bit } m_axi_tw0_RREADY { O 1 bit } m_axi_tw0_RDATA { I 32 vector } m_axi_tw0_RLAST { I 1 bit } m_axi_tw0_RID { I 1 vector } m_axi_tw0_RFIFONUM { I 9 vector } m_axi_tw0_RUSER { I 1 vector } m_axi_tw0_RRESP { I 2 vector } m_axi_tw0_BVALID { I 1 bit } m_axi_tw0_BREADY { O 1 bit } m_axi_tw0_BRESP { I 2 vector } m_axi_tw0_BID { I 1 vector } m_axi_tw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name tu3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tu3 \
    op interface \
    ports { m_axi_tu3_AWVALID { O 1 bit } m_axi_tu3_AWREADY { I 1 bit } m_axi_tu3_AWADDR { O 64 vector } m_axi_tu3_AWID { O 1 vector } m_axi_tu3_AWLEN { O 32 vector } m_axi_tu3_AWSIZE { O 3 vector } m_axi_tu3_AWBURST { O 2 vector } m_axi_tu3_AWLOCK { O 2 vector } m_axi_tu3_AWCACHE { O 4 vector } m_axi_tu3_AWPROT { O 3 vector } m_axi_tu3_AWQOS { O 4 vector } m_axi_tu3_AWREGION { O 4 vector } m_axi_tu3_AWUSER { O 1 vector } m_axi_tu3_WVALID { O 1 bit } m_axi_tu3_WREADY { I 1 bit } m_axi_tu3_WDATA { O 32 vector } m_axi_tu3_WSTRB { O 4 vector } m_axi_tu3_WLAST { O 1 bit } m_axi_tu3_WID { O 1 vector } m_axi_tu3_WUSER { O 1 vector } m_axi_tu3_ARVALID { O 1 bit } m_axi_tu3_ARREADY { I 1 bit } m_axi_tu3_ARADDR { O 64 vector } m_axi_tu3_ARID { O 1 vector } m_axi_tu3_ARLEN { O 32 vector } m_axi_tu3_ARSIZE { O 3 vector } m_axi_tu3_ARBURST { O 2 vector } m_axi_tu3_ARLOCK { O 2 vector } m_axi_tu3_ARCACHE { O 4 vector } m_axi_tu3_ARPROT { O 3 vector } m_axi_tu3_ARQOS { O 4 vector } m_axi_tu3_ARREGION { O 4 vector } m_axi_tu3_ARUSER { O 1 vector } m_axi_tu3_RVALID { I 1 bit } m_axi_tu3_RREADY { O 1 bit } m_axi_tu3_RDATA { I 32 vector } m_axi_tu3_RLAST { I 1 bit } m_axi_tu3_RID { I 1 vector } m_axi_tu3_RFIFONUM { I 9 vector } m_axi_tu3_RUSER { I 1 vector } m_axi_tu3_RRESP { I 2 vector } m_axi_tu3_BVALID { I 1 bit } m_axi_tu3_BREADY { O 1 bit } m_axi_tu3_BRESP { I 2 vector } m_axi_tu3_BID { I 1 vector } m_axi_tu3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name tu2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tu2 \
    op interface \
    ports { m_axi_tu2_AWVALID { O 1 bit } m_axi_tu2_AWREADY { I 1 bit } m_axi_tu2_AWADDR { O 64 vector } m_axi_tu2_AWID { O 1 vector } m_axi_tu2_AWLEN { O 32 vector } m_axi_tu2_AWSIZE { O 3 vector } m_axi_tu2_AWBURST { O 2 vector } m_axi_tu2_AWLOCK { O 2 vector } m_axi_tu2_AWCACHE { O 4 vector } m_axi_tu2_AWPROT { O 3 vector } m_axi_tu2_AWQOS { O 4 vector } m_axi_tu2_AWREGION { O 4 vector } m_axi_tu2_AWUSER { O 1 vector } m_axi_tu2_WVALID { O 1 bit } m_axi_tu2_WREADY { I 1 bit } m_axi_tu2_WDATA { O 32 vector } m_axi_tu2_WSTRB { O 4 vector } m_axi_tu2_WLAST { O 1 bit } m_axi_tu2_WID { O 1 vector } m_axi_tu2_WUSER { O 1 vector } m_axi_tu2_ARVALID { O 1 bit } m_axi_tu2_ARREADY { I 1 bit } m_axi_tu2_ARADDR { O 64 vector } m_axi_tu2_ARID { O 1 vector } m_axi_tu2_ARLEN { O 32 vector } m_axi_tu2_ARSIZE { O 3 vector } m_axi_tu2_ARBURST { O 2 vector } m_axi_tu2_ARLOCK { O 2 vector } m_axi_tu2_ARCACHE { O 4 vector } m_axi_tu2_ARPROT { O 3 vector } m_axi_tu2_ARQOS { O 4 vector } m_axi_tu2_ARREGION { O 4 vector } m_axi_tu2_ARUSER { O 1 vector } m_axi_tu2_RVALID { I 1 bit } m_axi_tu2_RREADY { O 1 bit } m_axi_tu2_RDATA { I 32 vector } m_axi_tu2_RLAST { I 1 bit } m_axi_tu2_RID { I 1 vector } m_axi_tu2_RFIFONUM { I 9 vector } m_axi_tu2_RUSER { I 1 vector } m_axi_tu2_RRESP { I 2 vector } m_axi_tu2_BVALID { I 1 bit } m_axi_tu2_BREADY { O 1 bit } m_axi_tu2_BRESP { I 2 vector } m_axi_tu2_BID { I 1 vector } m_axi_tu2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name tu1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tu1 \
    op interface \
    ports { m_axi_tu1_AWVALID { O 1 bit } m_axi_tu1_AWREADY { I 1 bit } m_axi_tu1_AWADDR { O 64 vector } m_axi_tu1_AWID { O 1 vector } m_axi_tu1_AWLEN { O 32 vector } m_axi_tu1_AWSIZE { O 3 vector } m_axi_tu1_AWBURST { O 2 vector } m_axi_tu1_AWLOCK { O 2 vector } m_axi_tu1_AWCACHE { O 4 vector } m_axi_tu1_AWPROT { O 3 vector } m_axi_tu1_AWQOS { O 4 vector } m_axi_tu1_AWREGION { O 4 vector } m_axi_tu1_AWUSER { O 1 vector } m_axi_tu1_WVALID { O 1 bit } m_axi_tu1_WREADY { I 1 bit } m_axi_tu1_WDATA { O 32 vector } m_axi_tu1_WSTRB { O 4 vector } m_axi_tu1_WLAST { O 1 bit } m_axi_tu1_WID { O 1 vector } m_axi_tu1_WUSER { O 1 vector } m_axi_tu1_ARVALID { O 1 bit } m_axi_tu1_ARREADY { I 1 bit } m_axi_tu1_ARADDR { O 64 vector } m_axi_tu1_ARID { O 1 vector } m_axi_tu1_ARLEN { O 32 vector } m_axi_tu1_ARSIZE { O 3 vector } m_axi_tu1_ARBURST { O 2 vector } m_axi_tu1_ARLOCK { O 2 vector } m_axi_tu1_ARCACHE { O 4 vector } m_axi_tu1_ARPROT { O 3 vector } m_axi_tu1_ARQOS { O 4 vector } m_axi_tu1_ARREGION { O 4 vector } m_axi_tu1_ARUSER { O 1 vector } m_axi_tu1_RVALID { I 1 bit } m_axi_tu1_RREADY { O 1 bit } m_axi_tu1_RDATA { I 32 vector } m_axi_tu1_RLAST { I 1 bit } m_axi_tu1_RID { I 1 vector } m_axi_tu1_RFIFONUM { I 9 vector } m_axi_tu1_RUSER { I 1 vector } m_axi_tu1_RRESP { I 2 vector } m_axi_tu1_BVALID { I 1 bit } m_axi_tu1_BREADY { O 1 bit } m_axi_tu1_BRESP { I 2 vector } m_axi_tu1_BID { I 1 vector } m_axi_tu1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name sext_ln138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln138 \
    op interface \
    ports { sext_ln138 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name zext_ln136_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln136_1 \
    op interface \
    ports { zext_ln136_1 { I 32 vector } } \
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
    name u_csc_to_csr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_csc_to_csr \
    op interface \
    ports { u_csc_to_csr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name u_csr_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_csr_val \
    op interface \
    ports { u_csr_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
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
    id 28 \
    name u_row_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_row_idx \
    op interface \
    ports { u_row_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name j_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_j_1 \
    op interface \
    ports { j_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
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


