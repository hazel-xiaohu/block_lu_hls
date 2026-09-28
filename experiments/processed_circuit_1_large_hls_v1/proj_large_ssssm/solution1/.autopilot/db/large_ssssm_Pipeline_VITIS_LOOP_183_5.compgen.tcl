# This script segment is generated automatically by AutoPilot

set name large_ssssm_fmul_32ns_32ns_32_5_max_dsp_1
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
    id 25 \
    name zext_ln183_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln183_1 \
    op interface \
    ports { zext_ln183_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
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
    id 27 \
    name sw1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sw1 \
    op interface \
    ports { m_axi_sw1_AWVALID { O 1 bit } m_axi_sw1_AWREADY { I 1 bit } m_axi_sw1_AWADDR { O 64 vector } m_axi_sw1_AWID { O 1 vector } m_axi_sw1_AWLEN { O 32 vector } m_axi_sw1_AWSIZE { O 3 vector } m_axi_sw1_AWBURST { O 2 vector } m_axi_sw1_AWLOCK { O 2 vector } m_axi_sw1_AWCACHE { O 4 vector } m_axi_sw1_AWPROT { O 3 vector } m_axi_sw1_AWQOS { O 4 vector } m_axi_sw1_AWREGION { O 4 vector } m_axi_sw1_AWUSER { O 1 vector } m_axi_sw1_WVALID { O 1 bit } m_axi_sw1_WREADY { I 1 bit } m_axi_sw1_WDATA { O 32 vector } m_axi_sw1_WSTRB { O 4 vector } m_axi_sw1_WLAST { O 1 bit } m_axi_sw1_WID { O 1 vector } m_axi_sw1_WUSER { O 1 vector } m_axi_sw1_ARVALID { O 1 bit } m_axi_sw1_ARREADY { I 1 bit } m_axi_sw1_ARADDR { O 64 vector } m_axi_sw1_ARID { O 1 vector } m_axi_sw1_ARLEN { O 32 vector } m_axi_sw1_ARSIZE { O 3 vector } m_axi_sw1_ARBURST { O 2 vector } m_axi_sw1_ARLOCK { O 2 vector } m_axi_sw1_ARCACHE { O 4 vector } m_axi_sw1_ARPROT { O 3 vector } m_axi_sw1_ARQOS { O 4 vector } m_axi_sw1_ARREGION { O 4 vector } m_axi_sw1_ARUSER { O 1 vector } m_axi_sw1_RVALID { I 1 bit } m_axi_sw1_RREADY { O 1 bit } m_axi_sw1_RDATA { I 32 vector } m_axi_sw1_RLAST { I 1 bit } m_axi_sw1_RID { I 1 vector } m_axi_sw1_RFIFONUM { I 9 vector } m_axi_sw1_RUSER { I 1 vector } m_axi_sw1_RRESP { I 2 vector } m_axi_sw1_BVALID { I 1 bit } m_axi_sw1_BREADY { O 1 bit } m_axi_sw1_BRESP { I 2 vector } m_axi_sw1_BID { I 1 vector } m_axi_sw1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name sw0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_sw0 \
    op interface \
    ports { m_axi_sw0_AWVALID { O 1 bit } m_axi_sw0_AWREADY { I 1 bit } m_axi_sw0_AWADDR { O 64 vector } m_axi_sw0_AWID { O 1 vector } m_axi_sw0_AWLEN { O 32 vector } m_axi_sw0_AWSIZE { O 3 vector } m_axi_sw0_AWBURST { O 2 vector } m_axi_sw0_AWLOCK { O 2 vector } m_axi_sw0_AWCACHE { O 4 vector } m_axi_sw0_AWPROT { O 3 vector } m_axi_sw0_AWQOS { O 4 vector } m_axi_sw0_AWREGION { O 4 vector } m_axi_sw0_AWUSER { O 1 vector } m_axi_sw0_WVALID { O 1 bit } m_axi_sw0_WREADY { I 1 bit } m_axi_sw0_WDATA { O 32 vector } m_axi_sw0_WSTRB { O 4 vector } m_axi_sw0_WLAST { O 1 bit } m_axi_sw0_WID { O 1 vector } m_axi_sw0_WUSER { O 1 vector } m_axi_sw0_ARVALID { O 1 bit } m_axi_sw0_ARREADY { I 1 bit } m_axi_sw0_ARADDR { O 64 vector } m_axi_sw0_ARID { O 1 vector } m_axi_sw0_ARLEN { O 32 vector } m_axi_sw0_ARSIZE { O 3 vector } m_axi_sw0_ARBURST { O 2 vector } m_axi_sw0_ARLOCK { O 2 vector } m_axi_sw0_ARCACHE { O 4 vector } m_axi_sw0_ARPROT { O 3 vector } m_axi_sw0_ARQOS { O 4 vector } m_axi_sw0_ARREGION { O 4 vector } m_axi_sw0_ARUSER { O 1 vector } m_axi_sw0_RVALID { I 1 bit } m_axi_sw0_RREADY { O 1 bit } m_axi_sw0_RDATA { I 32 vector } m_axi_sw0_RLAST { I 1 bit } m_axi_sw0_RID { I 1 vector } m_axi_sw0_RFIFONUM { I 9 vector } m_axi_sw0_RUSER { I 1 vector } m_axi_sw0_RRESP { I 2 vector } m_axi_sw0_BVALID { I 1 bit } m_axi_sw0_BREADY { O 1 bit } m_axi_sw0_BRESP { I 2 vector } m_axi_sw0_BID { I 1 vector } m_axi_sw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name su2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_su2 \
    op interface \
    ports { m_axi_su2_AWVALID { O 1 bit } m_axi_su2_AWREADY { I 1 bit } m_axi_su2_AWADDR { O 64 vector } m_axi_su2_AWID { O 1 vector } m_axi_su2_AWLEN { O 32 vector } m_axi_su2_AWSIZE { O 3 vector } m_axi_su2_AWBURST { O 2 vector } m_axi_su2_AWLOCK { O 2 vector } m_axi_su2_AWCACHE { O 4 vector } m_axi_su2_AWPROT { O 3 vector } m_axi_su2_AWQOS { O 4 vector } m_axi_su2_AWREGION { O 4 vector } m_axi_su2_AWUSER { O 1 vector } m_axi_su2_WVALID { O 1 bit } m_axi_su2_WREADY { I 1 bit } m_axi_su2_WDATA { O 32 vector } m_axi_su2_WSTRB { O 4 vector } m_axi_su2_WLAST { O 1 bit } m_axi_su2_WID { O 1 vector } m_axi_su2_WUSER { O 1 vector } m_axi_su2_ARVALID { O 1 bit } m_axi_su2_ARREADY { I 1 bit } m_axi_su2_ARADDR { O 64 vector } m_axi_su2_ARID { O 1 vector } m_axi_su2_ARLEN { O 32 vector } m_axi_su2_ARSIZE { O 3 vector } m_axi_su2_ARBURST { O 2 vector } m_axi_su2_ARLOCK { O 2 vector } m_axi_su2_ARCACHE { O 4 vector } m_axi_su2_ARPROT { O 3 vector } m_axi_su2_ARQOS { O 4 vector } m_axi_su2_ARREGION { O 4 vector } m_axi_su2_ARUSER { O 1 vector } m_axi_su2_RVALID { I 1 bit } m_axi_su2_RREADY { O 1 bit } m_axi_su2_RDATA { I 32 vector } m_axi_su2_RLAST { I 1 bit } m_axi_su2_RID { I 1 vector } m_axi_su2_RFIFONUM { I 9 vector } m_axi_su2_RUSER { I 1 vector } m_axi_su2_RRESP { I 2 vector } m_axi_su2_BVALID { I 1 bit } m_axi_su2_BREADY { O 1 bit } m_axi_su2_BRESP { I 2 vector } m_axi_su2_BID { I 1 vector } m_axi_su2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name su1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_su1 \
    op interface \
    ports { m_axi_su1_AWVALID { O 1 bit } m_axi_su1_AWREADY { I 1 bit } m_axi_su1_AWADDR { O 64 vector } m_axi_su1_AWID { O 1 vector } m_axi_su1_AWLEN { O 32 vector } m_axi_su1_AWSIZE { O 3 vector } m_axi_su1_AWBURST { O 2 vector } m_axi_su1_AWLOCK { O 2 vector } m_axi_su1_AWCACHE { O 4 vector } m_axi_su1_AWPROT { O 3 vector } m_axi_su1_AWQOS { O 4 vector } m_axi_su1_AWREGION { O 4 vector } m_axi_su1_AWUSER { O 1 vector } m_axi_su1_WVALID { O 1 bit } m_axi_su1_WREADY { I 1 bit } m_axi_su1_WDATA { O 32 vector } m_axi_su1_WSTRB { O 4 vector } m_axi_su1_WLAST { O 1 bit } m_axi_su1_WID { O 1 vector } m_axi_su1_WUSER { O 1 vector } m_axi_su1_ARVALID { O 1 bit } m_axi_su1_ARREADY { I 1 bit } m_axi_su1_ARADDR { O 64 vector } m_axi_su1_ARID { O 1 vector } m_axi_su1_ARLEN { O 32 vector } m_axi_su1_ARSIZE { O 3 vector } m_axi_su1_ARBURST { O 2 vector } m_axi_su1_ARLOCK { O 2 vector } m_axi_su1_ARCACHE { O 4 vector } m_axi_su1_ARPROT { O 3 vector } m_axi_su1_ARQOS { O 4 vector } m_axi_su1_ARREGION { O 4 vector } m_axi_su1_ARUSER { O 1 vector } m_axi_su1_RVALID { I 1 bit } m_axi_su1_RREADY { O 1 bit } m_axi_su1_RDATA { I 32 vector } m_axi_su1_RLAST { I 1 bit } m_axi_su1_RID { I 1 vector } m_axi_su1_RFIFONUM { I 9 vector } m_axi_su1_RUSER { I 1 vector } m_axi_su1_RRESP { I 2 vector } m_axi_su1_BVALID { I 1 bit } m_axi_su1_BREADY { O 1 bit } m_axi_su1_BRESP { I 2 vector } m_axi_su1_BID { I 1 vector } m_axi_su1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name zext_ln183_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln183_2 \
    op interface \
    ports { zext_ln183_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name u_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_val \
    op interface \
    ports { u_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name lv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lv \
    op interface \
    ports { lv { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
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
    id 35 \
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
    id 36 \
    name u_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_idx \
    op interface \
    ports { u_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name mark \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mark \
    op interface \
    ports { mark { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name add_ln172_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln172_3 \
    op interface \
    ports { add_ln172_3 { I 33 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
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


