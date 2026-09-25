# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_hit_U}
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
    id 1053 \
    name rcache_result_bank1_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank1_b \
    op interface \
    ports { rcache_result_bank1_b_dout { I 68 vector } rcache_result_bank1_b_empty_n { I 1 bit } rcache_result_bank1_b_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1054 \
    name vrequest1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest1 \
    op interface \
    ports { vrequest1_din { O 225 vector } vrequest1_full_n { I 1 bit } vrequest1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1055 \
    name crequest1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest1 \
    op interface \
    ports { crequest1_din { O 225 vector } crequest1_full_n { I 1 bit } crequest1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1056 \
    name vresponse1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse1 \
    op interface \
    ports { vresponse1_dout { I 6 vector } vresponse1_empty_n { I 1 bit } vresponse1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1057 \
    name cresponse1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse1 \
    op interface \
    ports { cresponse1_dout { I 6 vector } cresponse1_empty_n { I 1 bit } cresponse1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1058 \
    name vresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult1 \
    op interface \
    ports { vresult1_dout { I 1024 vector } vresult1_empty_n { I 1 bit } vresult1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1059 \
    name cresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult1 \
    op interface \
    ports { cresult1_dout { I 1024 vector } cresult1_empty_n { I 1 bit } cresult1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1060 \
    name vblock1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock1 \
    op interface \
    ports { vblock1_din { O 134 vector } vblock1_full_n { I 1 bit } vblock1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1061 \
    name cblock1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock1 \
    op interface \
    ports { cblock1_din { O 134 vector } cblock1_full_n { I 1 bit } cblock1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1062 \
    name bv1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv1 \
    op interface \
    ports { m_axi_bv1_0_AWVALID { O 1 bit } m_axi_bv1_0_AWREADY { I 1 bit } m_axi_bv1_0_AWADDR { O 64 vector } m_axi_bv1_0_AWID { O 1 vector } m_axi_bv1_0_AWLEN { O 32 vector } m_axi_bv1_0_AWSIZE { O 3 vector } m_axi_bv1_0_AWBURST { O 2 vector } m_axi_bv1_0_AWLOCK { O 2 vector } m_axi_bv1_0_AWCACHE { O 4 vector } m_axi_bv1_0_AWPROT { O 3 vector } m_axi_bv1_0_AWQOS { O 4 vector } m_axi_bv1_0_AWREGION { O 4 vector } m_axi_bv1_0_AWUSER { O 1 vector } m_axi_bv1_0_WVALID { O 1 bit } m_axi_bv1_0_WREADY { I 1 bit } m_axi_bv1_0_WDATA { O 128 vector } m_axi_bv1_0_WSTRB { O 16 vector } m_axi_bv1_0_WLAST { O 1 bit } m_axi_bv1_0_WID { O 1 vector } m_axi_bv1_0_WUSER { O 1 vector } m_axi_bv1_0_ARVALID { O 1 bit } m_axi_bv1_0_ARREADY { I 1 bit } m_axi_bv1_0_ARADDR { O 64 vector } m_axi_bv1_0_ARID { O 1 vector } m_axi_bv1_0_ARLEN { O 32 vector } m_axi_bv1_0_ARSIZE { O 3 vector } m_axi_bv1_0_ARBURST { O 2 vector } m_axi_bv1_0_ARLOCK { O 2 vector } m_axi_bv1_0_ARCACHE { O 4 vector } m_axi_bv1_0_ARPROT { O 3 vector } m_axi_bv1_0_ARQOS { O 4 vector } m_axi_bv1_0_ARREGION { O 4 vector } m_axi_bv1_0_ARUSER { O 1 vector } m_axi_bv1_0_RVALID { I 1 bit } m_axi_bv1_0_RREADY { O 1 bit } m_axi_bv1_0_RDATA { I 128 vector } m_axi_bv1_0_RLAST { I 1 bit } m_axi_bv1_0_RID { I 1 vector } m_axi_bv1_0_RFIFONUM { I 9 vector } m_axi_bv1_0_RUSER { I 1 vector } m_axi_bv1_0_RRESP { I 2 vector } m_axi_bv1_0_BVALID { I 1 bit } m_axi_bv1_0_BREADY { O 1 bit } m_axi_bv1_0_BRESP { I 2 vector } m_axi_bv1_0_BID { I 1 vector } m_axi_bv1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1063 \
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
    id 1064 \
    name bc1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc1 \
    op interface \
    ports { m_axi_bc1_0_AWVALID { O 1 bit } m_axi_bc1_0_AWREADY { I 1 bit } m_axi_bc1_0_AWADDR { O 64 vector } m_axi_bc1_0_AWID { O 1 vector } m_axi_bc1_0_AWLEN { O 32 vector } m_axi_bc1_0_AWSIZE { O 3 vector } m_axi_bc1_0_AWBURST { O 2 vector } m_axi_bc1_0_AWLOCK { O 2 vector } m_axi_bc1_0_AWCACHE { O 4 vector } m_axi_bc1_0_AWPROT { O 3 vector } m_axi_bc1_0_AWQOS { O 4 vector } m_axi_bc1_0_AWREGION { O 4 vector } m_axi_bc1_0_AWUSER { O 1 vector } m_axi_bc1_0_WVALID { O 1 bit } m_axi_bc1_0_WREADY { I 1 bit } m_axi_bc1_0_WDATA { O 128 vector } m_axi_bc1_0_WSTRB { O 16 vector } m_axi_bc1_0_WLAST { O 1 bit } m_axi_bc1_0_WID { O 1 vector } m_axi_bc1_0_WUSER { O 1 vector } m_axi_bc1_0_ARVALID { O 1 bit } m_axi_bc1_0_ARREADY { I 1 bit } m_axi_bc1_0_ARADDR { O 64 vector } m_axi_bc1_0_ARID { O 1 vector } m_axi_bc1_0_ARLEN { O 32 vector } m_axi_bc1_0_ARSIZE { O 3 vector } m_axi_bc1_0_ARBURST { O 2 vector } m_axi_bc1_0_ARLOCK { O 2 vector } m_axi_bc1_0_ARCACHE { O 4 vector } m_axi_bc1_0_ARPROT { O 3 vector } m_axi_bc1_0_ARQOS { O 4 vector } m_axi_bc1_0_ARREGION { O 4 vector } m_axi_bc1_0_ARUSER { O 1 vector } m_axi_bc1_0_RVALID { I 1 bit } m_axi_bc1_0_RREADY { O 1 bit } m_axi_bc1_0_RDATA { I 128 vector } m_axi_bc1_0_RLAST { I 1 bit } m_axi_bc1_0_RID { I 1 vector } m_axi_bc1_0_RFIFONUM { I 9 vector } m_axi_bc1_0_RUSER { I 1 vector } m_axi_bc1_0_RRESP { I 2 vector } m_axi_bc1_0_BVALID { I 1 bit } m_axi_bc1_0_BREADY { O 1 bit } m_axi_bc1_0_BRESP { I 2 vector } m_axi_bc1_0_BID { I 1 vector } m_axi_bc1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1065 \
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


