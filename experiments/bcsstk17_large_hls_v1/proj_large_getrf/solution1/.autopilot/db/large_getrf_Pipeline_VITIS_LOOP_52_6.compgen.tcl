# This script segment is generated automatically by AutoPilot

set name large_getrf_fmul_32ns_32ns_32_5_max_dsp_1
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
    id 34 \
    name zext_ln52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln52 \
    op interface \
    ports { zext_ln52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
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
    id 36 \
    name w1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1 \
    op interface \
    ports { m_axi_w1_AWVALID { O 1 bit } m_axi_w1_AWREADY { I 1 bit } m_axi_w1_AWADDR { O 64 vector } m_axi_w1_AWID { O 1 vector } m_axi_w1_AWLEN { O 32 vector } m_axi_w1_AWSIZE { O 3 vector } m_axi_w1_AWBURST { O 2 vector } m_axi_w1_AWLOCK { O 2 vector } m_axi_w1_AWCACHE { O 4 vector } m_axi_w1_AWPROT { O 3 vector } m_axi_w1_AWQOS { O 4 vector } m_axi_w1_AWREGION { O 4 vector } m_axi_w1_AWUSER { O 1 vector } m_axi_w1_WVALID { O 1 bit } m_axi_w1_WREADY { I 1 bit } m_axi_w1_WDATA { O 32 vector } m_axi_w1_WSTRB { O 4 vector } m_axi_w1_WLAST { O 1 bit } m_axi_w1_WID { O 1 vector } m_axi_w1_WUSER { O 1 vector } m_axi_w1_ARVALID { O 1 bit } m_axi_w1_ARREADY { I 1 bit } m_axi_w1_ARADDR { O 64 vector } m_axi_w1_ARID { O 1 vector } m_axi_w1_ARLEN { O 32 vector } m_axi_w1_ARSIZE { O 3 vector } m_axi_w1_ARBURST { O 2 vector } m_axi_w1_ARLOCK { O 2 vector } m_axi_w1_ARCACHE { O 4 vector } m_axi_w1_ARPROT { O 3 vector } m_axi_w1_ARQOS { O 4 vector } m_axi_w1_ARREGION { O 4 vector } m_axi_w1_ARUSER { O 1 vector } m_axi_w1_RVALID { I 1 bit } m_axi_w1_RREADY { O 1 bit } m_axi_w1_RDATA { I 32 vector } m_axi_w1_RLAST { I 1 bit } m_axi_w1_RID { I 1 vector } m_axi_w1_RFIFONUM { I 9 vector } m_axi_w1_RUSER { I 1 vector } m_axi_w1_RRESP { I 2 vector } m_axi_w1_BVALID { I 1 bit } m_axi_w1_BREADY { O 1 bit } m_axi_w1_BRESP { I 2 vector } m_axi_w1_BID { I 1 vector } m_axi_w1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name w0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_w0 \
    op interface \
    ports { m_axi_w0_AWVALID { O 1 bit } m_axi_w0_AWREADY { I 1 bit } m_axi_w0_AWADDR { O 64 vector } m_axi_w0_AWID { O 1 vector } m_axi_w0_AWLEN { O 32 vector } m_axi_w0_AWSIZE { O 3 vector } m_axi_w0_AWBURST { O 2 vector } m_axi_w0_AWLOCK { O 2 vector } m_axi_w0_AWCACHE { O 4 vector } m_axi_w0_AWPROT { O 3 vector } m_axi_w0_AWQOS { O 4 vector } m_axi_w0_AWREGION { O 4 vector } m_axi_w0_AWUSER { O 1 vector } m_axi_w0_WVALID { O 1 bit } m_axi_w0_WREADY { I 1 bit } m_axi_w0_WDATA { O 32 vector } m_axi_w0_WSTRB { O 4 vector } m_axi_w0_WLAST { O 1 bit } m_axi_w0_WID { O 1 vector } m_axi_w0_WUSER { O 1 vector } m_axi_w0_ARVALID { O 1 bit } m_axi_w0_ARREADY { I 1 bit } m_axi_w0_ARADDR { O 64 vector } m_axi_w0_ARID { O 1 vector } m_axi_w0_ARLEN { O 32 vector } m_axi_w0_ARSIZE { O 3 vector } m_axi_w0_ARBURST { O 2 vector } m_axi_w0_ARLOCK { O 2 vector } m_axi_w0_ARCACHE { O 4 vector } m_axi_w0_ARPROT { O 3 vector } m_axi_w0_ARQOS { O 4 vector } m_axi_w0_ARREGION { O 4 vector } m_axi_w0_ARUSER { O 1 vector } m_axi_w0_RVALID { I 1 bit } m_axi_w0_RREADY { O 1 bit } m_axi_w0_RDATA { I 32 vector } m_axi_w0_RLAST { I 1 bit } m_axi_w0_RID { I 1 vector } m_axi_w0_RFIFONUM { I 9 vector } m_axi_w0_RUSER { I 1 vector } m_axi_w0_RRESP { I 2 vector } m_axi_w0_BVALID { I 1 bit } m_axi_w0_BREADY { O 1 bit } m_axi_w0_BRESP { I 2 vector } m_axi_w0_BID { I 1 vector } m_axi_w0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name u2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u2 \
    op interface \
    ports { m_axi_u2_AWVALID { O 1 bit } m_axi_u2_AWREADY { I 1 bit } m_axi_u2_AWADDR { O 64 vector } m_axi_u2_AWID { O 1 vector } m_axi_u2_AWLEN { O 32 vector } m_axi_u2_AWSIZE { O 3 vector } m_axi_u2_AWBURST { O 2 vector } m_axi_u2_AWLOCK { O 2 vector } m_axi_u2_AWCACHE { O 4 vector } m_axi_u2_AWPROT { O 3 vector } m_axi_u2_AWQOS { O 4 vector } m_axi_u2_AWREGION { O 4 vector } m_axi_u2_AWUSER { O 1 vector } m_axi_u2_WVALID { O 1 bit } m_axi_u2_WREADY { I 1 bit } m_axi_u2_WDATA { O 32 vector } m_axi_u2_WSTRB { O 4 vector } m_axi_u2_WLAST { O 1 bit } m_axi_u2_WID { O 1 vector } m_axi_u2_WUSER { O 1 vector } m_axi_u2_ARVALID { O 1 bit } m_axi_u2_ARREADY { I 1 bit } m_axi_u2_ARADDR { O 64 vector } m_axi_u2_ARID { O 1 vector } m_axi_u2_ARLEN { O 32 vector } m_axi_u2_ARSIZE { O 3 vector } m_axi_u2_ARBURST { O 2 vector } m_axi_u2_ARLOCK { O 2 vector } m_axi_u2_ARCACHE { O 4 vector } m_axi_u2_ARPROT { O 3 vector } m_axi_u2_ARQOS { O 4 vector } m_axi_u2_ARREGION { O 4 vector } m_axi_u2_ARUSER { O 1 vector } m_axi_u2_RVALID { I 1 bit } m_axi_u2_RREADY { O 1 bit } m_axi_u2_RDATA { I 32 vector } m_axi_u2_RLAST { I 1 bit } m_axi_u2_RID { I 1 vector } m_axi_u2_RFIFONUM { I 9 vector } m_axi_u2_RUSER { I 1 vector } m_axi_u2_RRESP { I 2 vector } m_axi_u2_BVALID { I 1 bit } m_axi_u2_BREADY { O 1 bit } m_axi_u2_BRESP { I 2 vector } m_axi_u2_BID { I 1 vector } m_axi_u2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name u1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u1 \
    op interface \
    ports { m_axi_u1_AWVALID { O 1 bit } m_axi_u1_AWREADY { I 1 bit } m_axi_u1_AWADDR { O 64 vector } m_axi_u1_AWID { O 1 vector } m_axi_u1_AWLEN { O 32 vector } m_axi_u1_AWSIZE { O 3 vector } m_axi_u1_AWBURST { O 2 vector } m_axi_u1_AWLOCK { O 2 vector } m_axi_u1_AWCACHE { O 4 vector } m_axi_u1_AWPROT { O 3 vector } m_axi_u1_AWQOS { O 4 vector } m_axi_u1_AWREGION { O 4 vector } m_axi_u1_AWUSER { O 1 vector } m_axi_u1_WVALID { O 1 bit } m_axi_u1_WREADY { I 1 bit } m_axi_u1_WDATA { O 32 vector } m_axi_u1_WSTRB { O 4 vector } m_axi_u1_WLAST { O 1 bit } m_axi_u1_WID { O 1 vector } m_axi_u1_WUSER { O 1 vector } m_axi_u1_ARVALID { O 1 bit } m_axi_u1_ARREADY { I 1 bit } m_axi_u1_ARADDR { O 64 vector } m_axi_u1_ARID { O 1 vector } m_axi_u1_ARLEN { O 32 vector } m_axi_u1_ARSIZE { O 3 vector } m_axi_u1_ARBURST { O 2 vector } m_axi_u1_ARLOCK { O 2 vector } m_axi_u1_ARCACHE { O 4 vector } m_axi_u1_ARPROT { O 3 vector } m_axi_u1_ARQOS { O 4 vector } m_axi_u1_ARREGION { O 4 vector } m_axi_u1_ARUSER { O 1 vector } m_axi_u1_RVALID { I 1 bit } m_axi_u1_RREADY { O 1 bit } m_axi_u1_RDATA { I 32 vector } m_axi_u1_RLAST { I 1 bit } m_axi_u1_RID { I 1 vector } m_axi_u1_RFIFONUM { I 9 vector } m_axi_u1_RUSER { I 1 vector } m_axi_u1_RRESP { I 2 vector } m_axi_u1_BVALID { I 1 bit } m_axi_u1_BREADY { O 1 bit } m_axi_u1_BRESP { I 2 vector } m_axi_u1_BID { I 1 vector } m_axi_u1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name zext_ln52_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln52_1 \
    op interface \
    ports { zext_ln52_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
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
    id 42 \
    name lik \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lik \
    op interface \
    ports { lik { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
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
    id 44 \
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
    id 45 \
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
    id 46 \
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
    id 47 \
    name add_ln30_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln30_3 \
    op interface \
    ports { add_ln30_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
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


