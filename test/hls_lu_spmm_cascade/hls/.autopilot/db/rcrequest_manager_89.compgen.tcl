# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w398_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {rrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w398_d16_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {rcollec_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w398_d16_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {rscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w398_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {r_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w160_d8_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {roff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w398_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {r_req_U}
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
    id 430 \
    name rcache_stream4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream4 \
    op interface \
    ports { rcache_stream4_dout { I 398 vector } rcache_stream4_empty_n { I 1 bit } rcache_stream4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name rrequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest4 \
    op interface \
    ports { rrequest4_din { O 398 vector } rrequest4_full_n { I 1 bit } rrequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name rresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rresponse4 \
    op interface \
    ports { rresponse4_dout { I 168 vector } rresponse4_empty_n { I 1 bit } rresponse4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name rblock4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rblock4 \
    op interface \
    ports { rblock4_din { O 398 vector } rblock4_full_n { I 1 bit } rblock4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name brcsr4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brcsr4 \
    op interface \
    ports { m_axi_brcsr4_0_AWVALID { O 1 bit } m_axi_brcsr4_0_AWREADY { I 1 bit } m_axi_brcsr4_0_AWADDR { O 64 vector } m_axi_brcsr4_0_AWID { O 1 vector } m_axi_brcsr4_0_AWLEN { O 32 vector } m_axi_brcsr4_0_AWSIZE { O 3 vector } m_axi_brcsr4_0_AWBURST { O 2 vector } m_axi_brcsr4_0_AWLOCK { O 2 vector } m_axi_brcsr4_0_AWCACHE { O 4 vector } m_axi_brcsr4_0_AWPROT { O 3 vector } m_axi_brcsr4_0_AWQOS { O 4 vector } m_axi_brcsr4_0_AWREGION { O 4 vector } m_axi_brcsr4_0_AWUSER { O 1 vector } m_axi_brcsr4_0_WVALID { O 1 bit } m_axi_brcsr4_0_WREADY { I 1 bit } m_axi_brcsr4_0_WDATA { O 128 vector } m_axi_brcsr4_0_WSTRB { O 16 vector } m_axi_brcsr4_0_WLAST { O 1 bit } m_axi_brcsr4_0_WID { O 1 vector } m_axi_brcsr4_0_WUSER { O 1 vector } m_axi_brcsr4_0_ARVALID { O 1 bit } m_axi_brcsr4_0_ARREADY { I 1 bit } m_axi_brcsr4_0_ARADDR { O 64 vector } m_axi_brcsr4_0_ARID { O 1 vector } m_axi_brcsr4_0_ARLEN { O 32 vector } m_axi_brcsr4_0_ARSIZE { O 3 vector } m_axi_brcsr4_0_ARBURST { O 2 vector } m_axi_brcsr4_0_ARLOCK { O 2 vector } m_axi_brcsr4_0_ARCACHE { O 4 vector } m_axi_brcsr4_0_ARPROT { O 3 vector } m_axi_brcsr4_0_ARQOS { O 4 vector } m_axi_brcsr4_0_ARREGION { O 4 vector } m_axi_brcsr4_0_ARUSER { O 1 vector } m_axi_brcsr4_0_RVALID { I 1 bit } m_axi_brcsr4_0_RREADY { O 1 bit } m_axi_brcsr4_0_RDATA { I 128 vector } m_axi_brcsr4_0_RLAST { I 1 bit } m_axi_brcsr4_0_RID { I 1 vector } m_axi_brcsr4_0_RFIFONUM { I 9 vector } m_axi_brcsr4_0_RUSER { I 1 vector } m_axi_brcsr4_0_RRESP { I 2 vector } m_axi_brcsr4_0_BVALID { I 1 bit } m_axi_brcsr4_0_BREADY { O 1 bit } m_axi_brcsr4_0_BRESP { I 2 vector } m_axi_brcsr4_0_BID { I 1 vector } m_axi_brcsr4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name B_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr \
    op interface \
    ports { B_rcsr { I 64 vector } B_rcsr_ap_vld { I 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


