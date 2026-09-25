# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vrequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {crequest_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vcollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {ccollector_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {vscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w68_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {cscheduler_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {voff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {v_req_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w1_d16_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {v_hit_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_first_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w128_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {coff_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_fifo_w209_d64_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {c_req_U}
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
    id 1026 \
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
    id 1027 \
    name vrequest2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest2 \
    op interface \
    ports { vrequest2_din { O 209 vector } vrequest2_full_n { I 1 bit } vrequest2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1028 \
    name crequest2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest2 \
    op interface \
    ports { crequest2_din { O 209 vector } crequest2_full_n { I 1 bit } crequest2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1029 \
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
    id 1030 \
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
    id 1031 \
    name vresult215 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult215 \
    op interface \
    ports { vresult215_dout { I 1024 vector } vresult215_empty_n { I 1 bit } vresult215_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1032 \
    name cresult219 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult219 \
    op interface \
    ports { cresult219_dout { I 1024 vector } cresult219_empty_n { I 1 bit } cresult219_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1033 \
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
    id 1034 \
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
    id 1035 \
    name bv2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv2 \
    op interface \
    ports { m_axi_bv2_AWVALID { O 1 bit } m_axi_bv2_AWREADY { I 1 bit } m_axi_bv2_AWADDR { O 64 vector } m_axi_bv2_AWID { O 1 vector } m_axi_bv2_AWLEN { O 32 vector } m_axi_bv2_AWSIZE { O 3 vector } m_axi_bv2_AWBURST { O 2 vector } m_axi_bv2_AWLOCK { O 2 vector } m_axi_bv2_AWCACHE { O 4 vector } m_axi_bv2_AWPROT { O 3 vector } m_axi_bv2_AWQOS { O 4 vector } m_axi_bv2_AWREGION { O 4 vector } m_axi_bv2_AWUSER { O 1 vector } m_axi_bv2_WVALID { O 1 bit } m_axi_bv2_WREADY { I 1 bit } m_axi_bv2_WDATA { O 128 vector } m_axi_bv2_WSTRB { O 16 vector } m_axi_bv2_WLAST { O 1 bit } m_axi_bv2_WID { O 1 vector } m_axi_bv2_WUSER { O 1 vector } m_axi_bv2_ARVALID { O 1 bit } m_axi_bv2_ARREADY { I 1 bit } m_axi_bv2_ARADDR { O 64 vector } m_axi_bv2_ARID { O 1 vector } m_axi_bv2_ARLEN { O 32 vector } m_axi_bv2_ARSIZE { O 3 vector } m_axi_bv2_ARBURST { O 2 vector } m_axi_bv2_ARLOCK { O 2 vector } m_axi_bv2_ARCACHE { O 4 vector } m_axi_bv2_ARPROT { O 3 vector } m_axi_bv2_ARQOS { O 4 vector } m_axi_bv2_ARREGION { O 4 vector } m_axi_bv2_ARUSER { O 1 vector } m_axi_bv2_RVALID { I 1 bit } m_axi_bv2_RREADY { O 1 bit } m_axi_bv2_RDATA { I 128 vector } m_axi_bv2_RLAST { I 1 bit } m_axi_bv2_RID { I 1 vector } m_axi_bv2_RFIFONUM { I 9 vector } m_axi_bv2_RUSER { I 1 vector } m_axi_bv2_RRESP { I 2 vector } m_axi_bv2_BVALID { I 1 bit } m_axi_bv2_BREADY { O 1 bit } m_axi_bv2_BRESP { I 2 vector } m_axi_bv2_BID { I 1 vector } m_axi_bv2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1036 \
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
    id 1037 \
    name bc2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc2 \
    op interface \
    ports { m_axi_bc2_AWVALID { O 1 bit } m_axi_bc2_AWREADY { I 1 bit } m_axi_bc2_AWADDR { O 64 vector } m_axi_bc2_AWID { O 1 vector } m_axi_bc2_AWLEN { O 32 vector } m_axi_bc2_AWSIZE { O 3 vector } m_axi_bc2_AWBURST { O 2 vector } m_axi_bc2_AWLOCK { O 2 vector } m_axi_bc2_AWCACHE { O 4 vector } m_axi_bc2_AWPROT { O 3 vector } m_axi_bc2_AWQOS { O 4 vector } m_axi_bc2_AWREGION { O 4 vector } m_axi_bc2_AWUSER { O 1 vector } m_axi_bc2_WVALID { O 1 bit } m_axi_bc2_WREADY { I 1 bit } m_axi_bc2_WDATA { O 128 vector } m_axi_bc2_WSTRB { O 16 vector } m_axi_bc2_WLAST { O 1 bit } m_axi_bc2_WID { O 1 vector } m_axi_bc2_WUSER { O 1 vector } m_axi_bc2_ARVALID { O 1 bit } m_axi_bc2_ARREADY { I 1 bit } m_axi_bc2_ARADDR { O 64 vector } m_axi_bc2_ARID { O 1 vector } m_axi_bc2_ARLEN { O 32 vector } m_axi_bc2_ARSIZE { O 3 vector } m_axi_bc2_ARBURST { O 2 vector } m_axi_bc2_ARLOCK { O 2 vector } m_axi_bc2_ARCACHE { O 4 vector } m_axi_bc2_ARPROT { O 3 vector } m_axi_bc2_ARQOS { O 4 vector } m_axi_bc2_ARREGION { O 4 vector } m_axi_bc2_ARUSER { O 1 vector } m_axi_bc2_RVALID { I 1 bit } m_axi_bc2_RREADY { O 1 bit } m_axi_bc2_RDATA { I 128 vector } m_axi_bc2_RLAST { I 1 bit } m_axi_bc2_RID { I 1 vector } m_axi_bc2_RFIFONUM { I 9 vector } m_axi_bc2_RUSER { I 1 vector } m_axi_bc2_RRESP { I 2 vector } m_axi_bc2_BVALID { I 1 bit } m_axi_bc2_BREADY { O 1 bit } m_axi_bc2_BRESP { I 2 vector } m_axi_bc2_BID { I 1 vector } m_axi_bc2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1038 \
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


