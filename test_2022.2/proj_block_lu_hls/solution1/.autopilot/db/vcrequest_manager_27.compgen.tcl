# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x1 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x1 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
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
    id 1362 \
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
    id 1363 \
    name vrequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest4 \
    op interface \
    ports { vrequest4_din { O 209 vector } vrequest4_full_n { I 1 bit } vrequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1364 \
    name crequest4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest4 \
    op interface \
    ports { crequest4_din { O 209 vector } crequest4_full_n { I 1 bit } crequest4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1365 \
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
    id 1366 \
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
    id 1367 \
    name vresult417 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult417 \
    op interface \
    ports { vresult417_dout { I 1024 vector } vresult417_empty_n { I 1 bit } vresult417_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1368 \
    name cresult421 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult421 \
    op interface \
    ports { cresult421_dout { I 1024 vector } cresult421_empty_n { I 1 bit } cresult421_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1369 \
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
    id 1370 \
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
    id 1371 \
    name bv4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv4 \
    op interface \
    ports { m_axi_bv4_AWVALID { O 1 bit } m_axi_bv4_AWREADY { I 1 bit } m_axi_bv4_AWADDR { O 64 vector } m_axi_bv4_AWID { O 1 vector } m_axi_bv4_AWLEN { O 32 vector } m_axi_bv4_AWSIZE { O 3 vector } m_axi_bv4_AWBURST { O 2 vector } m_axi_bv4_AWLOCK { O 2 vector } m_axi_bv4_AWCACHE { O 4 vector } m_axi_bv4_AWPROT { O 3 vector } m_axi_bv4_AWQOS { O 4 vector } m_axi_bv4_AWREGION { O 4 vector } m_axi_bv4_AWUSER { O 1 vector } m_axi_bv4_WVALID { O 1 bit } m_axi_bv4_WREADY { I 1 bit } m_axi_bv4_WDATA { O 128 vector } m_axi_bv4_WSTRB { O 16 vector } m_axi_bv4_WLAST { O 1 bit } m_axi_bv4_WID { O 1 vector } m_axi_bv4_WUSER { O 1 vector } m_axi_bv4_ARVALID { O 1 bit } m_axi_bv4_ARREADY { I 1 bit } m_axi_bv4_ARADDR { O 64 vector } m_axi_bv4_ARID { O 1 vector } m_axi_bv4_ARLEN { O 32 vector } m_axi_bv4_ARSIZE { O 3 vector } m_axi_bv4_ARBURST { O 2 vector } m_axi_bv4_ARLOCK { O 2 vector } m_axi_bv4_ARCACHE { O 4 vector } m_axi_bv4_ARPROT { O 3 vector } m_axi_bv4_ARQOS { O 4 vector } m_axi_bv4_ARREGION { O 4 vector } m_axi_bv4_ARUSER { O 1 vector } m_axi_bv4_RVALID { I 1 bit } m_axi_bv4_RREADY { O 1 bit } m_axi_bv4_RDATA { I 128 vector } m_axi_bv4_RLAST { I 1 bit } m_axi_bv4_RID { I 1 vector } m_axi_bv4_RFIFONUM { I 9 vector } m_axi_bv4_RUSER { I 1 vector } m_axi_bv4_RRESP { I 2 vector } m_axi_bv4_BVALID { I 1 bit } m_axi_bv4_BREADY { O 1 bit } m_axi_bv4_BRESP { I 2 vector } m_axi_bv4_BID { I 1 vector } m_axi_bv4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1372 \
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
    id 1373 \
    name bc4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc4 \
    op interface \
    ports { m_axi_bc4_AWVALID { O 1 bit } m_axi_bc4_AWREADY { I 1 bit } m_axi_bc4_AWADDR { O 64 vector } m_axi_bc4_AWID { O 1 vector } m_axi_bc4_AWLEN { O 32 vector } m_axi_bc4_AWSIZE { O 3 vector } m_axi_bc4_AWBURST { O 2 vector } m_axi_bc4_AWLOCK { O 2 vector } m_axi_bc4_AWCACHE { O 4 vector } m_axi_bc4_AWPROT { O 3 vector } m_axi_bc4_AWQOS { O 4 vector } m_axi_bc4_AWREGION { O 4 vector } m_axi_bc4_AWUSER { O 1 vector } m_axi_bc4_WVALID { O 1 bit } m_axi_bc4_WREADY { I 1 bit } m_axi_bc4_WDATA { O 128 vector } m_axi_bc4_WSTRB { O 16 vector } m_axi_bc4_WLAST { O 1 bit } m_axi_bc4_WID { O 1 vector } m_axi_bc4_WUSER { O 1 vector } m_axi_bc4_ARVALID { O 1 bit } m_axi_bc4_ARREADY { I 1 bit } m_axi_bc4_ARADDR { O 64 vector } m_axi_bc4_ARID { O 1 vector } m_axi_bc4_ARLEN { O 32 vector } m_axi_bc4_ARSIZE { O 3 vector } m_axi_bc4_ARBURST { O 2 vector } m_axi_bc4_ARLOCK { O 2 vector } m_axi_bc4_ARCACHE { O 4 vector } m_axi_bc4_ARPROT { O 3 vector } m_axi_bc4_ARQOS { O 4 vector } m_axi_bc4_ARREGION { O 4 vector } m_axi_bc4_ARUSER { O 1 vector } m_axi_bc4_RVALID { I 1 bit } m_axi_bc4_RREADY { O 1 bit } m_axi_bc4_RDATA { I 128 vector } m_axi_bc4_RLAST { I 1 bit } m_axi_bc4_RID { I 1 vector } m_axi_bc4_RFIFONUM { I 9 vector } m_axi_bc4_RUSER { I 1 vector } m_axi_bc4_RRESP { I 2 vector } m_axi_bc4_BVALID { I 1 bit } m_axi_bc4_BREADY { O 1 bit } m_axi_bc4_BRESP { I 2 vector } m_axi_bc4_BID { I 1 vector } m_axi_bc4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1374 \
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


