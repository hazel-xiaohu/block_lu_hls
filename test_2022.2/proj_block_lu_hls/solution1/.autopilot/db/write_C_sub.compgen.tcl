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
    id 2072 \
    name final_merger_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_3 \
    op interface \
    ports { final_merger_3_dout { I 66 vector } final_merger_3_num_data_valid { I 11 vector } final_merger_3_fifo_cap { I 11 vector } final_merger_3_empty_n { I 1 bit } final_merger_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2073 \
    name crcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crcsr \
    op interface \
    ports { m_axi_crcsr_AWVALID { O 1 bit } m_axi_crcsr_AWREADY { I 1 bit } m_axi_crcsr_AWADDR { O 64 vector } m_axi_crcsr_AWID { O 1 vector } m_axi_crcsr_AWLEN { O 32 vector } m_axi_crcsr_AWSIZE { O 3 vector } m_axi_crcsr_AWBURST { O 2 vector } m_axi_crcsr_AWLOCK { O 2 vector } m_axi_crcsr_AWCACHE { O 4 vector } m_axi_crcsr_AWPROT { O 3 vector } m_axi_crcsr_AWQOS { O 4 vector } m_axi_crcsr_AWREGION { O 4 vector } m_axi_crcsr_AWUSER { O 1 vector } m_axi_crcsr_WVALID { O 1 bit } m_axi_crcsr_WREADY { I 1 bit } m_axi_crcsr_WDATA { O 32 vector } m_axi_crcsr_WSTRB { O 4 vector } m_axi_crcsr_WLAST { O 1 bit } m_axi_crcsr_WID { O 1 vector } m_axi_crcsr_WUSER { O 1 vector } m_axi_crcsr_ARVALID { O 1 bit } m_axi_crcsr_ARREADY { I 1 bit } m_axi_crcsr_ARADDR { O 64 vector } m_axi_crcsr_ARID { O 1 vector } m_axi_crcsr_ARLEN { O 32 vector } m_axi_crcsr_ARSIZE { O 3 vector } m_axi_crcsr_ARBURST { O 2 vector } m_axi_crcsr_ARLOCK { O 2 vector } m_axi_crcsr_ARCACHE { O 4 vector } m_axi_crcsr_ARPROT { O 3 vector } m_axi_crcsr_ARQOS { O 4 vector } m_axi_crcsr_ARREGION { O 4 vector } m_axi_crcsr_ARUSER { O 1 vector } m_axi_crcsr_RVALID { I 1 bit } m_axi_crcsr_RREADY { O 1 bit } m_axi_crcsr_RDATA { I 32 vector } m_axi_crcsr_RLAST { I 1 bit } m_axi_crcsr_RID { I 1 vector } m_axi_crcsr_RFIFONUM { I 9 vector } m_axi_crcsr_RUSER { I 1 vector } m_axi_crcsr_RRESP { I 2 vector } m_axi_crcsr_BVALID { I 1 bit } m_axi_crcsr_BREADY { O 1 bit } m_axi_crcsr_BRESP { I 2 vector } m_axi_crcsr_BID { I 1 vector } m_axi_crcsr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2074 \
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
    id 2075 \
    name ccid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ccid \
    op interface \
    ports { m_axi_ccid_AWVALID { O 1 bit } m_axi_ccid_AWREADY { I 1 bit } m_axi_ccid_AWADDR { O 64 vector } m_axi_ccid_AWID { O 1 vector } m_axi_ccid_AWLEN { O 32 vector } m_axi_ccid_AWSIZE { O 3 vector } m_axi_ccid_AWBURST { O 2 vector } m_axi_ccid_AWLOCK { O 2 vector } m_axi_ccid_AWCACHE { O 4 vector } m_axi_ccid_AWPROT { O 3 vector } m_axi_ccid_AWQOS { O 4 vector } m_axi_ccid_AWREGION { O 4 vector } m_axi_ccid_AWUSER { O 1 vector } m_axi_ccid_WVALID { O 1 bit } m_axi_ccid_WREADY { I 1 bit } m_axi_ccid_WDATA { O 32 vector } m_axi_ccid_WSTRB { O 4 vector } m_axi_ccid_WLAST { O 1 bit } m_axi_ccid_WID { O 1 vector } m_axi_ccid_WUSER { O 1 vector } m_axi_ccid_ARVALID { O 1 bit } m_axi_ccid_ARREADY { I 1 bit } m_axi_ccid_ARADDR { O 64 vector } m_axi_ccid_ARID { O 1 vector } m_axi_ccid_ARLEN { O 32 vector } m_axi_ccid_ARSIZE { O 3 vector } m_axi_ccid_ARBURST { O 2 vector } m_axi_ccid_ARLOCK { O 2 vector } m_axi_ccid_ARCACHE { O 4 vector } m_axi_ccid_ARPROT { O 3 vector } m_axi_ccid_ARQOS { O 4 vector } m_axi_ccid_ARREGION { O 4 vector } m_axi_ccid_ARUSER { O 1 vector } m_axi_ccid_RVALID { I 1 bit } m_axi_ccid_RREADY { O 1 bit } m_axi_ccid_RDATA { I 32 vector } m_axi_ccid_RLAST { I 1 bit } m_axi_ccid_RID { I 1 vector } m_axi_ccid_RFIFONUM { I 9 vector } m_axi_ccid_RUSER { I 1 vector } m_axi_ccid_RRESP { I 2 vector } m_axi_ccid_BVALID { I 1 bit } m_axi_ccid_BREADY { O 1 bit } m_axi_ccid_BRESP { I 2 vector } m_axi_ccid_BID { I 1 vector } m_axi_ccid_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2076 \
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
    id 2077 \
    name cval \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cval \
    op interface \
    ports { m_axi_cval_AWVALID { O 1 bit } m_axi_cval_AWREADY { I 1 bit } m_axi_cval_AWADDR { O 64 vector } m_axi_cval_AWID { O 1 vector } m_axi_cval_AWLEN { O 32 vector } m_axi_cval_AWSIZE { O 3 vector } m_axi_cval_AWBURST { O 2 vector } m_axi_cval_AWLOCK { O 2 vector } m_axi_cval_AWCACHE { O 4 vector } m_axi_cval_AWPROT { O 3 vector } m_axi_cval_AWQOS { O 4 vector } m_axi_cval_AWREGION { O 4 vector } m_axi_cval_AWUSER { O 1 vector } m_axi_cval_WVALID { O 1 bit } m_axi_cval_WREADY { I 1 bit } m_axi_cval_WDATA { O 32 vector } m_axi_cval_WSTRB { O 4 vector } m_axi_cval_WLAST { O 1 bit } m_axi_cval_WID { O 1 vector } m_axi_cval_WUSER { O 1 vector } m_axi_cval_ARVALID { O 1 bit } m_axi_cval_ARREADY { I 1 bit } m_axi_cval_ARADDR { O 64 vector } m_axi_cval_ARID { O 1 vector } m_axi_cval_ARLEN { O 32 vector } m_axi_cval_ARSIZE { O 3 vector } m_axi_cval_ARBURST { O 2 vector } m_axi_cval_ARLOCK { O 2 vector } m_axi_cval_ARCACHE { O 4 vector } m_axi_cval_ARPROT { O 3 vector } m_axi_cval_ARQOS { O 4 vector } m_axi_cval_ARREGION { O 4 vector } m_axi_cval_ARUSER { O 1 vector } m_axi_cval_RVALID { I 1 bit } m_axi_cval_RREADY { O 1 bit } m_axi_cval_RDATA { I 32 vector } m_axi_cval_RLAST { I 1 bit } m_axi_cval_RID { I 1 vector } m_axi_cval_RFIFONUM { I 9 vector } m_axi_cval_RUSER { I 1 vector } m_axi_cval_RRESP { I 2 vector } m_axi_cval_BVALID { I 1 bit } m_axi_cval_BREADY { O 1 bit } m_axi_cval_BRESP { I 2 vector } m_axi_cval_BID { I 1 vector } m_axi_cval_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2078 \
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
    id 2079 \
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
    id 2080 \
    name final_len_126 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_126 \
    op interface \
    ports { final_len_126_dout { I 32 vector } final_len_126_num_data_valid { I 13 vector } final_len_126_fifo_cap { I 13 vector } final_len_126_empty_n { I 1 bit } final_len_126_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2081 \
    name final_len_227 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_227 \
    op interface \
    ports { final_len_227_dout { I 32 vector } final_len_227_num_data_valid { I 13 vector } final_len_227_fifo_cap { I 13 vector } final_len_227_empty_n { I 1 bit } final_len_227_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2082 \
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


