# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_hit_U}
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
    id 1581 \
    name rcache_result_bank4_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank4_b \
    op interface \
    ports { rcache_result_bank4_b_dout { I 68 vector } rcache_result_bank4_b_empty_n { I 1 bit } rcache_result_bank4_b_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1582 \
    name vrequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest4 \
    op interface \
    ports { vrequest4_din { O 225 vector } vrequest4_full_n { I 1 bit } vrequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1583 \
    name crequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest4 \
    op interface \
    ports { crequest4_din { O 225 vector } crequest4_full_n { I 1 bit } crequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1584 \
    name vresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse4 \
    op interface \
    ports { vresponse4_dout { I 6 vector } vresponse4_empty_n { I 1 bit } vresponse4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1585 \
    name cresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse4 \
    op interface \
    ports { cresponse4_dout { I 6 vector } cresponse4_empty_n { I 1 bit } cresponse4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1586 \
    name vresult4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult4 \
    op interface \
    ports { vresult4_dout { I 1024 vector } vresult4_empty_n { I 1 bit } vresult4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1587 \
    name cresult4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult4 \
    op interface \
    ports { cresult4_dout { I 1024 vector } cresult4_empty_n { I 1 bit } cresult4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1588 \
    name vblock4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock4 \
    op interface \
    ports { vblock4_din { O 134 vector } vblock4_full_n { I 1 bit } vblock4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1589 \
    name cblock4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock4 \
    op interface \
    ports { cblock4_din { O 134 vector } cblock4_full_n { I 1 bit } cblock4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1590 \
    name bv4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv4 \
    op interface \
    ports { m_axi_bv4_0_AWVALID { O 1 bit } m_axi_bv4_0_AWREADY { I 1 bit } m_axi_bv4_0_AWADDR { O 64 vector } m_axi_bv4_0_AWID { O 1 vector } m_axi_bv4_0_AWLEN { O 32 vector } m_axi_bv4_0_AWSIZE { O 3 vector } m_axi_bv4_0_AWBURST { O 2 vector } m_axi_bv4_0_AWLOCK { O 2 vector } m_axi_bv4_0_AWCACHE { O 4 vector } m_axi_bv4_0_AWPROT { O 3 vector } m_axi_bv4_0_AWQOS { O 4 vector } m_axi_bv4_0_AWREGION { O 4 vector } m_axi_bv4_0_AWUSER { O 1 vector } m_axi_bv4_0_WVALID { O 1 bit } m_axi_bv4_0_WREADY { I 1 bit } m_axi_bv4_0_WDATA { O 128 vector } m_axi_bv4_0_WSTRB { O 16 vector } m_axi_bv4_0_WLAST { O 1 bit } m_axi_bv4_0_WID { O 1 vector } m_axi_bv4_0_WUSER { O 1 vector } m_axi_bv4_0_ARVALID { O 1 bit } m_axi_bv4_0_ARREADY { I 1 bit } m_axi_bv4_0_ARADDR { O 64 vector } m_axi_bv4_0_ARID { O 1 vector } m_axi_bv4_0_ARLEN { O 32 vector } m_axi_bv4_0_ARSIZE { O 3 vector } m_axi_bv4_0_ARBURST { O 2 vector } m_axi_bv4_0_ARLOCK { O 2 vector } m_axi_bv4_0_ARCACHE { O 4 vector } m_axi_bv4_0_ARPROT { O 3 vector } m_axi_bv4_0_ARQOS { O 4 vector } m_axi_bv4_0_ARREGION { O 4 vector } m_axi_bv4_0_ARUSER { O 1 vector } m_axi_bv4_0_RVALID { I 1 bit } m_axi_bv4_0_RREADY { O 1 bit } m_axi_bv4_0_RDATA { I 128 vector } m_axi_bv4_0_RLAST { I 1 bit } m_axi_bv4_0_RID { I 1 vector } m_axi_bv4_0_RFIFONUM { I 9 vector } m_axi_bv4_0_RUSER { I 1 vector } m_axi_bv4_0_RRESP { I 2 vector } m_axi_bv4_0_BVALID { I 1 bit } m_axi_bv4_0_BREADY { O 1 bit } m_axi_bv4_0_BRESP { I 2 vector } m_axi_bv4_0_BID { I 1 vector } m_axi_bv4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1591 \
    name B_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val \
    op interface \
    ports { B_val { I 64 vector } B_val_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1592 \
    name bc4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc4 \
    op interface \
    ports { m_axi_bc4_0_AWVALID { O 1 bit } m_axi_bc4_0_AWREADY { I 1 bit } m_axi_bc4_0_AWADDR { O 64 vector } m_axi_bc4_0_AWID { O 1 vector } m_axi_bc4_0_AWLEN { O 32 vector } m_axi_bc4_0_AWSIZE { O 3 vector } m_axi_bc4_0_AWBURST { O 2 vector } m_axi_bc4_0_AWLOCK { O 2 vector } m_axi_bc4_0_AWCACHE { O 4 vector } m_axi_bc4_0_AWPROT { O 3 vector } m_axi_bc4_0_AWQOS { O 4 vector } m_axi_bc4_0_AWREGION { O 4 vector } m_axi_bc4_0_AWUSER { O 1 vector } m_axi_bc4_0_WVALID { O 1 bit } m_axi_bc4_0_WREADY { I 1 bit } m_axi_bc4_0_WDATA { O 128 vector } m_axi_bc4_0_WSTRB { O 16 vector } m_axi_bc4_0_WLAST { O 1 bit } m_axi_bc4_0_WID { O 1 vector } m_axi_bc4_0_WUSER { O 1 vector } m_axi_bc4_0_ARVALID { O 1 bit } m_axi_bc4_0_ARREADY { I 1 bit } m_axi_bc4_0_ARADDR { O 64 vector } m_axi_bc4_0_ARID { O 1 vector } m_axi_bc4_0_ARLEN { O 32 vector } m_axi_bc4_0_ARSIZE { O 3 vector } m_axi_bc4_0_ARBURST { O 2 vector } m_axi_bc4_0_ARLOCK { O 2 vector } m_axi_bc4_0_ARCACHE { O 4 vector } m_axi_bc4_0_ARPROT { O 3 vector } m_axi_bc4_0_ARQOS { O 4 vector } m_axi_bc4_0_ARREGION { O 4 vector } m_axi_bc4_0_ARUSER { O 1 vector } m_axi_bc4_0_RVALID { I 1 bit } m_axi_bc4_0_RREADY { O 1 bit } m_axi_bc4_0_RDATA { I 128 vector } m_axi_bc4_0_RLAST { I 1 bit } m_axi_bc4_0_RID { I 1 vector } m_axi_bc4_0_RFIFONUM { I 9 vector } m_axi_bc4_0_RUSER { I 1 vector } m_axi_bc4_0_RRESP { I 2 vector } m_axi_bc4_0_BVALID { I 1 bit } m_axi_bc4_0_BREADY { O 1 bit } m_axi_bc4_0_BRESP { I 2 vector } m_axi_bc4_0_BID { I 1 vector } m_axi_bc4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1593 \
    name B_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid \
    op interface \
    ports { B_cid { I 64 vector } B_cid_ap_vld { I 1 bit } } \
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


