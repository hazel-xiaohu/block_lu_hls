# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x0 BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {c_hit_U}
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
    id 1185 \
    name rcache_result_bank3_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank3_b \
    op interface \
    ports { rcache_result_bank3_b_dout { I 68 vector } rcache_result_bank3_b_empty_n { I 1 bit } rcache_result_bank3_b_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1186 \
    name vrequest3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest3 \
    op interface \
    ports { vrequest3_din { O 209 vector } vrequest3_full_n { I 1 bit } vrequest3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1187 \
    name crequest3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest3 \
    op interface \
    ports { crequest3_din { O 209 vector } crequest3_full_n { I 1 bit } crequest3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1188 \
    name vresponse3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse3 \
    op interface \
    ports { vresponse3_dout { I 6 vector } vresponse3_empty_n { I 1 bit } vresponse3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1189 \
    name cresponse3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse3 \
    op interface \
    ports { cresponse3_dout { I 6 vector } cresponse3_empty_n { I 1 bit } cresponse3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1190 \
    name vresult315 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult315 \
    op interface \
    ports { vresult315_dout { I 1024 vector } vresult315_empty_n { I 1 bit } vresult315_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1191 \
    name cresult319 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult319 \
    op interface \
    ports { cresult319_dout { I 1024 vector } cresult319_empty_n { I 1 bit } cresult319_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1192 \
    name vblock3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock3 \
    op interface \
    ports { vblock3_din { O 134 vector } vblock3_full_n { I 1 bit } vblock3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1193 \
    name cblock3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3 \
    op interface \
    ports { cblock3_din { O 134 vector } cblock3_full_n { I 1 bit } cblock3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1194 \
    name bv3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv3 \
    op interface \
    ports { m_axi_bv3_AWVALID { O 1 bit } m_axi_bv3_AWREADY { I 1 bit } m_axi_bv3_AWADDR { O 64 vector } m_axi_bv3_AWID { O 1 vector } m_axi_bv3_AWLEN { O 32 vector } m_axi_bv3_AWSIZE { O 3 vector } m_axi_bv3_AWBURST { O 2 vector } m_axi_bv3_AWLOCK { O 2 vector } m_axi_bv3_AWCACHE { O 4 vector } m_axi_bv3_AWPROT { O 3 vector } m_axi_bv3_AWQOS { O 4 vector } m_axi_bv3_AWREGION { O 4 vector } m_axi_bv3_AWUSER { O 1 vector } m_axi_bv3_WVALID { O 1 bit } m_axi_bv3_WREADY { I 1 bit } m_axi_bv3_WDATA { O 128 vector } m_axi_bv3_WSTRB { O 16 vector } m_axi_bv3_WLAST { O 1 bit } m_axi_bv3_WID { O 1 vector } m_axi_bv3_WUSER { O 1 vector } m_axi_bv3_ARVALID { O 1 bit } m_axi_bv3_ARREADY { I 1 bit } m_axi_bv3_ARADDR { O 64 vector } m_axi_bv3_ARID { O 1 vector } m_axi_bv3_ARLEN { O 32 vector } m_axi_bv3_ARSIZE { O 3 vector } m_axi_bv3_ARBURST { O 2 vector } m_axi_bv3_ARLOCK { O 2 vector } m_axi_bv3_ARCACHE { O 4 vector } m_axi_bv3_ARPROT { O 3 vector } m_axi_bv3_ARQOS { O 4 vector } m_axi_bv3_ARREGION { O 4 vector } m_axi_bv3_ARUSER { O 1 vector } m_axi_bv3_RVALID { I 1 bit } m_axi_bv3_RREADY { O 1 bit } m_axi_bv3_RDATA { I 128 vector } m_axi_bv3_RLAST { I 1 bit } m_axi_bv3_RID { I 1 vector } m_axi_bv3_RFIFONUM { I 9 vector } m_axi_bv3_RUSER { I 1 vector } m_axi_bv3_RRESP { I 2 vector } m_axi_bv3_BVALID { I 1 bit } m_axi_bv3_BREADY { O 1 bit } m_axi_bv3_BRESP { I 2 vector } m_axi_bv3_BID { I 1 vector } m_axi_bv3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1195 \
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
    id 1196 \
    name bc3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc3 \
    op interface \
    ports { m_axi_bc3_AWVALID { O 1 bit } m_axi_bc3_AWREADY { I 1 bit } m_axi_bc3_AWADDR { O 64 vector } m_axi_bc3_AWID { O 1 vector } m_axi_bc3_AWLEN { O 32 vector } m_axi_bc3_AWSIZE { O 3 vector } m_axi_bc3_AWBURST { O 2 vector } m_axi_bc3_AWLOCK { O 2 vector } m_axi_bc3_AWCACHE { O 4 vector } m_axi_bc3_AWPROT { O 3 vector } m_axi_bc3_AWQOS { O 4 vector } m_axi_bc3_AWREGION { O 4 vector } m_axi_bc3_AWUSER { O 1 vector } m_axi_bc3_WVALID { O 1 bit } m_axi_bc3_WREADY { I 1 bit } m_axi_bc3_WDATA { O 128 vector } m_axi_bc3_WSTRB { O 16 vector } m_axi_bc3_WLAST { O 1 bit } m_axi_bc3_WID { O 1 vector } m_axi_bc3_WUSER { O 1 vector } m_axi_bc3_ARVALID { O 1 bit } m_axi_bc3_ARREADY { I 1 bit } m_axi_bc3_ARADDR { O 64 vector } m_axi_bc3_ARID { O 1 vector } m_axi_bc3_ARLEN { O 32 vector } m_axi_bc3_ARSIZE { O 3 vector } m_axi_bc3_ARBURST { O 2 vector } m_axi_bc3_ARLOCK { O 2 vector } m_axi_bc3_ARCACHE { O 4 vector } m_axi_bc3_ARPROT { O 3 vector } m_axi_bc3_ARQOS { O 4 vector } m_axi_bc3_ARREGION { O 4 vector } m_axi_bc3_ARUSER { O 1 vector } m_axi_bc3_RVALID { I 1 bit } m_axi_bc3_RREADY { O 1 bit } m_axi_bc3_RDATA { I 128 vector } m_axi_bc3_RLAST { I 1 bit } m_axi_bc3_RID { I 1 vector } m_axi_bc3_RFIFONUM { I 9 vector } m_axi_bc3_RUSER { I 1 vector } m_axi_bc3_RRESP { I 2 vector } m_axi_bc3_BVALID { I 1 bit } m_axi_bc3_BREADY { O 1 bit } m_axi_bc3_BRESP { I 2 vector } m_axi_bc3_BID { I 1 vector } m_axi_bc3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1197 \
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


