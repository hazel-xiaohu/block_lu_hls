# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d8_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w225_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_hit_U}
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
    id 1229 \
    name rcache_result_bank2_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank2_b \
    op interface \
    ports { rcache_result_bank2_b_dout { I 68 vector } rcache_result_bank2_b_empty_n { I 1 bit } rcache_result_bank2_b_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1230 \
    name vrequest2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest2 \
    op interface \
    ports { vrequest2_din { O 225 vector } vrequest2_full_n { I 1 bit } vrequest2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1231 \
    name crequest2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest2 \
    op interface \
    ports { crequest2_din { O 225 vector } crequest2_full_n { I 1 bit } crequest2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1232 \
    name vresponse2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse2 \
    op interface \
    ports { vresponse2_dout { I 6 vector } vresponse2_empty_n { I 1 bit } vresponse2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1233 \
    name cresponse2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse2 \
    op interface \
    ports { cresponse2_dout { I 6 vector } cresponse2_empty_n { I 1 bit } cresponse2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1234 \
    name vresult2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult2 \
    op interface \
    ports { vresult2_dout { I 1024 vector } vresult2_empty_n { I 1 bit } vresult2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1235 \
    name cresult2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult2 \
    op interface \
    ports { cresult2_dout { I 1024 vector } cresult2_empty_n { I 1 bit } cresult2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1236 \
    name vblock2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock2 \
    op interface \
    ports { vblock2_din { O 134 vector } vblock2_full_n { I 1 bit } vblock2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1237 \
    name cblock2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock2 \
    op interface \
    ports { cblock2_din { O 134 vector } cblock2_full_n { I 1 bit } cblock2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1238 \
    name bv2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv2 \
    op interface \
    ports { m_axi_bv2_0_AWVALID { O 1 bit } m_axi_bv2_0_AWREADY { I 1 bit } m_axi_bv2_0_AWADDR { O 64 vector } m_axi_bv2_0_AWID { O 1 vector } m_axi_bv2_0_AWLEN { O 32 vector } m_axi_bv2_0_AWSIZE { O 3 vector } m_axi_bv2_0_AWBURST { O 2 vector } m_axi_bv2_0_AWLOCK { O 2 vector } m_axi_bv2_0_AWCACHE { O 4 vector } m_axi_bv2_0_AWPROT { O 3 vector } m_axi_bv2_0_AWQOS { O 4 vector } m_axi_bv2_0_AWREGION { O 4 vector } m_axi_bv2_0_AWUSER { O 1 vector } m_axi_bv2_0_WVALID { O 1 bit } m_axi_bv2_0_WREADY { I 1 bit } m_axi_bv2_0_WDATA { O 128 vector } m_axi_bv2_0_WSTRB { O 16 vector } m_axi_bv2_0_WLAST { O 1 bit } m_axi_bv2_0_WID { O 1 vector } m_axi_bv2_0_WUSER { O 1 vector } m_axi_bv2_0_ARVALID { O 1 bit } m_axi_bv2_0_ARREADY { I 1 bit } m_axi_bv2_0_ARADDR { O 64 vector } m_axi_bv2_0_ARID { O 1 vector } m_axi_bv2_0_ARLEN { O 32 vector } m_axi_bv2_0_ARSIZE { O 3 vector } m_axi_bv2_0_ARBURST { O 2 vector } m_axi_bv2_0_ARLOCK { O 2 vector } m_axi_bv2_0_ARCACHE { O 4 vector } m_axi_bv2_0_ARPROT { O 3 vector } m_axi_bv2_0_ARQOS { O 4 vector } m_axi_bv2_0_ARREGION { O 4 vector } m_axi_bv2_0_ARUSER { O 1 vector } m_axi_bv2_0_RVALID { I 1 bit } m_axi_bv2_0_RREADY { O 1 bit } m_axi_bv2_0_RDATA { I 128 vector } m_axi_bv2_0_RLAST { I 1 bit } m_axi_bv2_0_RID { I 1 vector } m_axi_bv2_0_RFIFONUM { I 9 vector } m_axi_bv2_0_RUSER { I 1 vector } m_axi_bv2_0_RRESP { I 2 vector } m_axi_bv2_0_BVALID { I 1 bit } m_axi_bv2_0_BREADY { O 1 bit } m_axi_bv2_0_BRESP { I 2 vector } m_axi_bv2_0_BID { I 1 vector } m_axi_bv2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1239 \
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
    id 1240 \
    name bc2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc2 \
    op interface \
    ports { m_axi_bc2_0_AWVALID { O 1 bit } m_axi_bc2_0_AWREADY { I 1 bit } m_axi_bc2_0_AWADDR { O 64 vector } m_axi_bc2_0_AWID { O 1 vector } m_axi_bc2_0_AWLEN { O 32 vector } m_axi_bc2_0_AWSIZE { O 3 vector } m_axi_bc2_0_AWBURST { O 2 vector } m_axi_bc2_0_AWLOCK { O 2 vector } m_axi_bc2_0_AWCACHE { O 4 vector } m_axi_bc2_0_AWPROT { O 3 vector } m_axi_bc2_0_AWQOS { O 4 vector } m_axi_bc2_0_AWREGION { O 4 vector } m_axi_bc2_0_AWUSER { O 1 vector } m_axi_bc2_0_WVALID { O 1 bit } m_axi_bc2_0_WREADY { I 1 bit } m_axi_bc2_0_WDATA { O 128 vector } m_axi_bc2_0_WSTRB { O 16 vector } m_axi_bc2_0_WLAST { O 1 bit } m_axi_bc2_0_WID { O 1 vector } m_axi_bc2_0_WUSER { O 1 vector } m_axi_bc2_0_ARVALID { O 1 bit } m_axi_bc2_0_ARREADY { I 1 bit } m_axi_bc2_0_ARADDR { O 64 vector } m_axi_bc2_0_ARID { O 1 vector } m_axi_bc2_0_ARLEN { O 32 vector } m_axi_bc2_0_ARSIZE { O 3 vector } m_axi_bc2_0_ARBURST { O 2 vector } m_axi_bc2_0_ARLOCK { O 2 vector } m_axi_bc2_0_ARCACHE { O 4 vector } m_axi_bc2_0_ARPROT { O 3 vector } m_axi_bc2_0_ARQOS { O 4 vector } m_axi_bc2_0_ARREGION { O 4 vector } m_axi_bc2_0_ARUSER { O 1 vector } m_axi_bc2_0_RVALID { I 1 bit } m_axi_bc2_0_RREADY { O 1 bit } m_axi_bc2_0_RDATA { I 128 vector } m_axi_bc2_0_RLAST { I 1 bit } m_axi_bc2_0_RID { I 1 vector } m_axi_bc2_0_RFIFONUM { I 9 vector } m_axi_bc2_0_RUSER { I 1 vector } m_axi_bc2_0_RRESP { I 2 vector } m_axi_bc2_0_BVALID { I 1 bit } m_axi_bc2_0_BREADY { O 1 bit } m_axi_bc2_0_BRESP { I 2 vector } m_axi_bc2_0_BID { I 1 vector } m_axi_bc2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1241 \
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


