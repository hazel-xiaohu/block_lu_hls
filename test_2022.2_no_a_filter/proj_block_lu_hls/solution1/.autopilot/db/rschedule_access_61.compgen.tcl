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
    id 236 \
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
    id 237 \
    name rresponse3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rresponse3 \
    op interface \
    ports { rresponse3_dout { I 168 vector } rresponse3_num_data_valid { I 5 vector } rresponse3_fifo_cap { I 5 vector } rresponse3_empty_n { I 1 bit } rresponse3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
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
    id 239 \
    name brcsr3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brcsr3 \
    op interface \
    ports { m_axi_brcsr3_AWVALID { O 1 bit } m_axi_brcsr3_AWREADY { I 1 bit } m_axi_brcsr3_AWADDR { O 64 vector } m_axi_brcsr3_AWID { O 1 vector } m_axi_brcsr3_AWLEN { O 32 vector } m_axi_brcsr3_AWSIZE { O 3 vector } m_axi_brcsr3_AWBURST { O 2 vector } m_axi_brcsr3_AWLOCK { O 2 vector } m_axi_brcsr3_AWCACHE { O 4 vector } m_axi_brcsr3_AWPROT { O 3 vector } m_axi_brcsr3_AWQOS { O 4 vector } m_axi_brcsr3_AWREGION { O 4 vector } m_axi_brcsr3_AWUSER { O 1 vector } m_axi_brcsr3_WVALID { O 1 bit } m_axi_brcsr3_WREADY { I 1 bit } m_axi_brcsr3_WDATA { O 128 vector } m_axi_brcsr3_WSTRB { O 16 vector } m_axi_brcsr3_WLAST { O 1 bit } m_axi_brcsr3_WID { O 1 vector } m_axi_brcsr3_WUSER { O 1 vector } m_axi_brcsr3_ARVALID { O 1 bit } m_axi_brcsr3_ARREADY { I 1 bit } m_axi_brcsr3_ARADDR { O 64 vector } m_axi_brcsr3_ARID { O 1 vector } m_axi_brcsr3_ARLEN { O 32 vector } m_axi_brcsr3_ARSIZE { O 3 vector } m_axi_brcsr3_ARBURST { O 2 vector } m_axi_brcsr3_ARLOCK { O 2 vector } m_axi_brcsr3_ARCACHE { O 4 vector } m_axi_brcsr3_ARPROT { O 3 vector } m_axi_brcsr3_ARQOS { O 4 vector } m_axi_brcsr3_ARREGION { O 4 vector } m_axi_brcsr3_ARUSER { O 1 vector } m_axi_brcsr3_RVALID { I 1 bit } m_axi_brcsr3_RREADY { O 1 bit } m_axi_brcsr3_RDATA { I 128 vector } m_axi_brcsr3_RLAST { I 1 bit } m_axi_brcsr3_RID { I 1 vector } m_axi_brcsr3_RFIFONUM { I 9 vector } m_axi_brcsr3_RUSER { I 1 vector } m_axi_brcsr3_RRESP { I 2 vector } m_axi_brcsr3_BVALID { I 1 bit } m_axi_brcsr3_BREADY { O 1 bit } m_axi_brcsr3_BRESP { I 2 vector } m_axi_brcsr3_BID { I 1 vector } m_axi_brcsr3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
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
    id 241 \
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


