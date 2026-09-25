# This script segment is generated automatically by AutoPilot

set name spmm_fsub_32ns_32ns_32_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
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
    id 2385 \
    name final_merger_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_3 \
    op interface \
    ports { final_merger_3_dout { I 66 vector } final_merger_3_empty_n { I 1 bit } final_merger_3_read { O 1 bit } final_merger_3_num_data_valid { I 11 vector } final_merger_3_fifo_cap { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2386 \
    name crcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crcsr \
    op interface \
    ports { m_axi_crcsr_0_AWVALID { O 1 bit } m_axi_crcsr_0_AWREADY { I 1 bit } m_axi_crcsr_0_AWADDR { O 64 vector } m_axi_crcsr_0_AWID { O 1 vector } m_axi_crcsr_0_AWLEN { O 32 vector } m_axi_crcsr_0_AWSIZE { O 3 vector } m_axi_crcsr_0_AWBURST { O 2 vector } m_axi_crcsr_0_AWLOCK { O 2 vector } m_axi_crcsr_0_AWCACHE { O 4 vector } m_axi_crcsr_0_AWPROT { O 3 vector } m_axi_crcsr_0_AWQOS { O 4 vector } m_axi_crcsr_0_AWREGION { O 4 vector } m_axi_crcsr_0_AWUSER { O 1 vector } m_axi_crcsr_0_WVALID { O 1 bit } m_axi_crcsr_0_WREADY { I 1 bit } m_axi_crcsr_0_WDATA { O 32 vector } m_axi_crcsr_0_WSTRB { O 4 vector } m_axi_crcsr_0_WLAST { O 1 bit } m_axi_crcsr_0_WID { O 1 vector } m_axi_crcsr_0_WUSER { O 1 vector } m_axi_crcsr_0_ARVALID { O 1 bit } m_axi_crcsr_0_ARREADY { I 1 bit } m_axi_crcsr_0_ARADDR { O 64 vector } m_axi_crcsr_0_ARID { O 1 vector } m_axi_crcsr_0_ARLEN { O 32 vector } m_axi_crcsr_0_ARSIZE { O 3 vector } m_axi_crcsr_0_ARBURST { O 2 vector } m_axi_crcsr_0_ARLOCK { O 2 vector } m_axi_crcsr_0_ARCACHE { O 4 vector } m_axi_crcsr_0_ARPROT { O 3 vector } m_axi_crcsr_0_ARQOS { O 4 vector } m_axi_crcsr_0_ARREGION { O 4 vector } m_axi_crcsr_0_ARUSER { O 1 vector } m_axi_crcsr_0_RVALID { I 1 bit } m_axi_crcsr_0_RREADY { O 1 bit } m_axi_crcsr_0_RDATA { I 32 vector } m_axi_crcsr_0_RLAST { I 1 bit } m_axi_crcsr_0_RID { I 1 vector } m_axi_crcsr_0_RFIFONUM { I 9 vector } m_axi_crcsr_0_RUSER { I 1 vector } m_axi_crcsr_0_RRESP { I 2 vector } m_axi_crcsr_0_BVALID { I 1 bit } m_axi_crcsr_0_BREADY { O 1 bit } m_axi_crcsr_0_BRESP { I 2 vector } m_axi_crcsr_0_BID { I 1 vector } m_axi_crcsr_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2387 \
    name C_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_rcsr \
    op interface \
    ports { C_rcsr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2388 \
    name ccid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ccid \
    op interface \
    ports { m_axi_ccid_0_AWVALID { O 1 bit } m_axi_ccid_0_AWREADY { I 1 bit } m_axi_ccid_0_AWADDR { O 64 vector } m_axi_ccid_0_AWID { O 1 vector } m_axi_ccid_0_AWLEN { O 32 vector } m_axi_ccid_0_AWSIZE { O 3 vector } m_axi_ccid_0_AWBURST { O 2 vector } m_axi_ccid_0_AWLOCK { O 2 vector } m_axi_ccid_0_AWCACHE { O 4 vector } m_axi_ccid_0_AWPROT { O 3 vector } m_axi_ccid_0_AWQOS { O 4 vector } m_axi_ccid_0_AWREGION { O 4 vector } m_axi_ccid_0_AWUSER { O 1 vector } m_axi_ccid_0_WVALID { O 1 bit } m_axi_ccid_0_WREADY { I 1 bit } m_axi_ccid_0_WDATA { O 32 vector } m_axi_ccid_0_WSTRB { O 4 vector } m_axi_ccid_0_WLAST { O 1 bit } m_axi_ccid_0_WID { O 1 vector } m_axi_ccid_0_WUSER { O 1 vector } m_axi_ccid_0_ARVALID { O 1 bit } m_axi_ccid_0_ARREADY { I 1 bit } m_axi_ccid_0_ARADDR { O 64 vector } m_axi_ccid_0_ARID { O 1 vector } m_axi_ccid_0_ARLEN { O 32 vector } m_axi_ccid_0_ARSIZE { O 3 vector } m_axi_ccid_0_ARBURST { O 2 vector } m_axi_ccid_0_ARLOCK { O 2 vector } m_axi_ccid_0_ARCACHE { O 4 vector } m_axi_ccid_0_ARPROT { O 3 vector } m_axi_ccid_0_ARQOS { O 4 vector } m_axi_ccid_0_ARREGION { O 4 vector } m_axi_ccid_0_ARUSER { O 1 vector } m_axi_ccid_0_RVALID { I 1 bit } m_axi_ccid_0_RREADY { O 1 bit } m_axi_ccid_0_RDATA { I 32 vector } m_axi_ccid_0_RLAST { I 1 bit } m_axi_ccid_0_RID { I 1 vector } m_axi_ccid_0_RFIFONUM { I 9 vector } m_axi_ccid_0_RUSER { I 1 vector } m_axi_ccid_0_RRESP { I 2 vector } m_axi_ccid_0_BVALID { I 1 bit } m_axi_ccid_0_BREADY { O 1 bit } m_axi_ccid_0_BRESP { I 2 vector } m_axi_ccid_0_BID { I 1 vector } m_axi_ccid_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2389 \
    name C_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_cid \
    op interface \
    ports { C_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2390 \
    name cval \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cval \
    op interface \
    ports { m_axi_cval_0_AWVALID { O 1 bit } m_axi_cval_0_AWREADY { I 1 bit } m_axi_cval_0_AWADDR { O 64 vector } m_axi_cval_0_AWID { O 1 vector } m_axi_cval_0_AWLEN { O 32 vector } m_axi_cval_0_AWSIZE { O 3 vector } m_axi_cval_0_AWBURST { O 2 vector } m_axi_cval_0_AWLOCK { O 2 vector } m_axi_cval_0_AWCACHE { O 4 vector } m_axi_cval_0_AWPROT { O 3 vector } m_axi_cval_0_AWQOS { O 4 vector } m_axi_cval_0_AWREGION { O 4 vector } m_axi_cval_0_AWUSER { O 1 vector } m_axi_cval_0_WVALID { O 1 bit } m_axi_cval_0_WREADY { I 1 bit } m_axi_cval_0_WDATA { O 32 vector } m_axi_cval_0_WSTRB { O 4 vector } m_axi_cval_0_WLAST { O 1 bit } m_axi_cval_0_WID { O 1 vector } m_axi_cval_0_WUSER { O 1 vector } m_axi_cval_0_ARVALID { O 1 bit } m_axi_cval_0_ARREADY { I 1 bit } m_axi_cval_0_ARADDR { O 64 vector } m_axi_cval_0_ARID { O 1 vector } m_axi_cval_0_ARLEN { O 32 vector } m_axi_cval_0_ARSIZE { O 3 vector } m_axi_cval_0_ARBURST { O 2 vector } m_axi_cval_0_ARLOCK { O 2 vector } m_axi_cval_0_ARCACHE { O 4 vector } m_axi_cval_0_ARPROT { O 3 vector } m_axi_cval_0_ARQOS { O 4 vector } m_axi_cval_0_ARREGION { O 4 vector } m_axi_cval_0_ARUSER { O 1 vector } m_axi_cval_0_RVALID { I 1 bit } m_axi_cval_0_RREADY { O 1 bit } m_axi_cval_0_RDATA { I 32 vector } m_axi_cval_0_RLAST { I 1 bit } m_axi_cval_0_RID { I 1 vector } m_axi_cval_0_RFIFONUM { I 9 vector } m_axi_cval_0_RUSER { I 1 vector } m_axi_cval_0_RRESP { I 2 vector } m_axi_cval_0_BVALID { I 1 bit } m_axi_cval_0_BREADY { O 1 bit } m_axi_cval_0_BRESP { I 2 vector } m_axi_cval_0_BID { I 1 vector } m_axi_cval_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2391 \
    name C_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_C_val \
    op interface \
    ports { C_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2392 \
    name fnum \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fnum \
    op interface \
    ports { fnum { O 32 vector } fnum_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2393 \
    name final_len_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_1 \
    op interface \
    ports { final_len_1_dout { I 32 vector } final_len_1_empty_n { I 1 bit } final_len_1_read { O 1 bit } final_len_1_num_data_valid { I 5 vector } final_len_1_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2394 \
    name final_len_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_2 \
    op interface \
    ports { final_len_2_dout { I 32 vector } final_len_2_empty_n { I 1 bit } final_len_2_read { O 1 bit } final_len_2_num_data_valid { I 5 vector } final_len_2_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2395 \
    name crum \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crum \
    op interface \
    ports { crum { I 32 vector } } \
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


