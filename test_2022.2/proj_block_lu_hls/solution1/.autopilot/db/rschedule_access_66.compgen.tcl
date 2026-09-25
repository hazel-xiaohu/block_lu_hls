# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name rscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rscheduler \
    op interface \
    ports { rscheduler_dout { I 230 vector } rscheduler_num_data_valid { I 7 vector } rscheduler_fifo_cap { I 7 vector } rscheduler_empty_n { I 1 bit } rscheduler_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name rresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rresponse4 \
    op interface \
    ports { rresponse4_dout { I 168 vector } rresponse4_num_data_valid { I 5 vector } rresponse4_fifo_cap { I 5 vector } rresponse4_empty_n { I 1 bit } rresponse4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name roff1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_roff1 \
    op interface \
    ports { roff1_din { O 160 vector } roff1_num_data_valid { I 7 vector } roff1_fifo_cap { I 7 vector } roff1_full_n { I 1 bit } roff1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name brcsr4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brcsr4 \
    op interface \
    ports { m_axi_brcsr4_AWVALID { O 1 bit } m_axi_brcsr4_AWREADY { I 1 bit } m_axi_brcsr4_AWADDR { O 64 vector } m_axi_brcsr4_AWID { O 1 vector } m_axi_brcsr4_AWLEN { O 32 vector } m_axi_brcsr4_AWSIZE { O 3 vector } m_axi_brcsr4_AWBURST { O 2 vector } m_axi_brcsr4_AWLOCK { O 2 vector } m_axi_brcsr4_AWCACHE { O 4 vector } m_axi_brcsr4_AWPROT { O 3 vector } m_axi_brcsr4_AWQOS { O 4 vector } m_axi_brcsr4_AWREGION { O 4 vector } m_axi_brcsr4_AWUSER { O 1 vector } m_axi_brcsr4_WVALID { O 1 bit } m_axi_brcsr4_WREADY { I 1 bit } m_axi_brcsr4_WDATA { O 128 vector } m_axi_brcsr4_WSTRB { O 16 vector } m_axi_brcsr4_WLAST { O 1 bit } m_axi_brcsr4_WID { O 1 vector } m_axi_brcsr4_WUSER { O 1 vector } m_axi_brcsr4_ARVALID { O 1 bit } m_axi_brcsr4_ARREADY { I 1 bit } m_axi_brcsr4_ARADDR { O 64 vector } m_axi_brcsr4_ARID { O 1 vector } m_axi_brcsr4_ARLEN { O 32 vector } m_axi_brcsr4_ARSIZE { O 3 vector } m_axi_brcsr4_ARBURST { O 2 vector } m_axi_brcsr4_ARLOCK { O 2 vector } m_axi_brcsr4_ARCACHE { O 4 vector } m_axi_brcsr4_ARPROT { O 3 vector } m_axi_brcsr4_ARQOS { O 4 vector } m_axi_brcsr4_ARREGION { O 4 vector } m_axi_brcsr4_ARUSER { O 1 vector } m_axi_brcsr4_RVALID { I 1 bit } m_axi_brcsr4_RREADY { O 1 bit } m_axi_brcsr4_RDATA { I 128 vector } m_axi_brcsr4_RLAST { I 1 bit } m_axi_brcsr4_RID { I 1 vector } m_axi_brcsr4_RFIFONUM { I 9 vector } m_axi_brcsr4_RUSER { I 1 vector } m_axi_brcsr4_RRESP { I 2 vector } m_axi_brcsr4_BVALID { I 1 bit } m_axi_brcsr4_BREADY { O 1 bit } m_axi_brcsr4_BRESP { I 2 vector } m_axi_brcsr4_BID { I 1 vector } m_axi_brcsr4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name off_pointer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_off_pointer \
    op interface \
    ports { off_pointer { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name r_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_req \
    op interface \
    ports { r_req_din { O 230 vector } r_req_num_data_valid { I 7 vector } r_req_fifo_cap { I 7 vector } r_req_full_n { I 1 bit } r_req_write { O 1 bit } } \
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


