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
    id 949 \
    name cscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cscheduler \
    op interface \
    ports { cscheduler_dout { I 68 vector } cscheduler_num_data_valid { I 7 vector } cscheduler_fifo_cap { I 7 vector } cscheduler_empty_n { I 1 bit } cscheduler_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 950 \
    name cresponse2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse2 \
    op interface \
    ports { cresponse2_dout { I 6 vector } cresponse2_num_data_valid { I 7 vector } cresponse2_fifo_cap { I 7 vector } cresponse2_empty_n { I 1 bit } cresponse2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 951 \
    name coff4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coff4 \
    op interface \
    ports { coff4_din { O 128 vector } coff4_num_data_valid { I 7 vector } coff4_fifo_cap { I 7 vector } coff4_full_n { I 1 bit } coff4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 952 \
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
    id 953 \
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
    id 954 \
    name c_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_din { O 209 vector } c_req_num_data_valid { I 7 vector } c_req_fifo_cap { I 7 vector } c_req_full_n { I 1 bit } c_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 955 \
    name c_hit2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_hit2 \
    op interface \
    ports { c_hit2_din { O 1 vector } c_hit2_num_data_valid { I 5 vector } c_hit2_fifo_cap { I 5 vector } c_hit2_full_n { I 1 bit } c_hit2_write { O 1 bit } } \
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


