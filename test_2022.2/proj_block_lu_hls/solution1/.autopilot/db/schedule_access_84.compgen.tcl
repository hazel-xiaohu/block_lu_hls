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
    id 1083 \
    name vscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vscheduler \
    op interface \
    ports { vscheduler_dout { I 68 vector } vscheduler_num_data_valid { I 7 vector } vscheduler_fifo_cap { I 7 vector } vscheduler_empty_n { I 1 bit } vscheduler_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1084 \
    name vresponse3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse3 \
    op interface \
    ports { vresponse3_dout { I 6 vector } vresponse3_num_data_valid { I 7 vector } vresponse3_fifo_cap { I 7 vector } vresponse3_empty_n { I 1 bit } vresponse3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1085 \
    name voff3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_voff3 \
    op interface \
    ports { voff3_din { O 128 vector } voff3_num_data_valid { I 7 vector } voff3_fifo_cap { I 7 vector } voff3_full_n { I 1 bit } voff3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1086 \
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
    id 1087 \
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
    id 1088 \
    name v_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_req \
    op interface \
    ports { v_req_din { O 209 vector } v_req_num_data_valid { I 7 vector } v_req_fifo_cap { I 7 vector } v_req_full_n { I 1 bit } v_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1089 \
    name v_hit1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_hit1 \
    op interface \
    ports { v_hit1_din { O 1 vector } v_hit1_num_data_valid { I 5 vector } v_hit1_fifo_cap { I 5 vector } v_hit1_full_n { I 1 bit } v_hit1_write { O 1 bit } } \
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


