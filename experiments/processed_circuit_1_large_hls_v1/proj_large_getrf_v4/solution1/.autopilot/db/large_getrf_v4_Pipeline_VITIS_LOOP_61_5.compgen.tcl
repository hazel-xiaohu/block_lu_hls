# This script segment is generated automatically by AutoPilot

set name large_getrf_v4_fadd_32ns_32ns_32_6_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fabric} LATENCY 5 ALLOW_PRAGMA 1
}


set id 30
set name large_getrf_v4_mux_42_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name worktag_bank \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename worktag_bank \
    op interface \
    ports { worktag_bank_address0 { O 10 vector } worktag_bank_ce0 { O 1 bit } worktag_bank_q0 { I 32 vector } worktag_bank_address1 { O 10 vector } worktag_bank_ce1 { O 1 bit } worktag_bank_we1 { O 1 bit } worktag_bank_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'worktag_bank'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name worktag_bank_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename worktag_bank_1 \
    op interface \
    ports { worktag_bank_1_address0 { O 10 vector } worktag_bank_1_ce0 { O 1 bit } worktag_bank_1_q0 { I 32 vector } worktag_bank_1_address1 { O 10 vector } worktag_bank_1_ce1 { O 1 bit } worktag_bank_1_we1 { O 1 bit } worktag_bank_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'worktag_bank_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name worktag_bank_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename worktag_bank_2 \
    op interface \
    ports { worktag_bank_2_address0 { O 10 vector } worktag_bank_2_ce0 { O 1 bit } worktag_bank_2_q0 { I 32 vector } worktag_bank_2_address1 { O 10 vector } worktag_bank_2_ce1 { O 1 bit } worktag_bank_2_we1 { O 1 bit } worktag_bank_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'worktag_bank_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name worktag_bank_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename worktag_bank_3 \
    op interface \
    ports { worktag_bank_3_address0 { O 10 vector } worktag_bank_3_ce0 { O 1 bit } worktag_bank_3_q0 { I 32 vector } worktag_bank_3_address1 { O 10 vector } worktag_bank_3_ce1 { O 1 bit } worktag_bank_3_we1 { O 1 bit } worktag_bank_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'worktag_bank_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name work_bank \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_bank \
    op interface \
    ports { work_bank_address0 { O 10 vector } work_bank_ce0 { O 1 bit } work_bank_q0 { I 32 vector } work_bank_address1 { O 10 vector } work_bank_ce1 { O 1 bit } work_bank_we1 { O 1 bit } work_bank_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_bank'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name work_bank_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_bank_1 \
    op interface \
    ports { work_bank_1_address0 { O 10 vector } work_bank_1_ce0 { O 1 bit } work_bank_1_q0 { I 32 vector } work_bank_1_address1 { O 10 vector } work_bank_1_ce1 { O 1 bit } work_bank_1_we1 { O 1 bit } work_bank_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_bank_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name work_bank_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_bank_2 \
    op interface \
    ports { work_bank_2_address0 { O 10 vector } work_bank_2_ce0 { O 1 bit } work_bank_2_q0 { I 32 vector } work_bank_2_address1 { O 10 vector } work_bank_2_ce1 { O 1 bit } work_bank_2_we1 { O 1 bit } work_bank_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_bank_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name work_bank_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename work_bank_3 \
    op interface \
    ports { work_bank_3_address0 { O 10 vector } work_bank_3_ce0 { O 1 bit } work_bank_3_q0 { I 32 vector } work_bank_3_address1 { O 10 vector } work_bank_3_ce1 { O 1 bit } work_bank_3_we1 { O 1 bit } work_bank_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'work_bank_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name pattern_bank \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pattern_bank \
    op interface \
    ports { pattern_bank_address0 { O 10 vector } pattern_bank_ce0 { O 1 bit } pattern_bank_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pattern_bank'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name pattern_bank_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pattern_bank_1 \
    op interface \
    ports { pattern_bank_1_address0 { O 10 vector } pattern_bank_1_ce0 { O 1 bit } pattern_bank_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pattern_bank_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name pattern_bank_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pattern_bank_2 \
    op interface \
    ports { pattern_bank_2_address0 { O 10 vector } pattern_bank_2_ce0 { O 1 bit } pattern_bank_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pattern_bank_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name pattern_bank_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pattern_bank_3 \
    op interface \
    ports { pattern_bank_3_address0 { O 10 vector } pattern_bank_3_ce0 { O 1 bit } pattern_bank_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pattern_bank_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name zext_ln61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln61 \
    op interface \
    ports { zext_ln61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name v4a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v4a2 \
    op interface \
    ports { m_axi_v4a2_AWVALID { O 1 bit } m_axi_v4a2_AWREADY { I 1 bit } m_axi_v4a2_AWADDR { O 64 vector } m_axi_v4a2_AWID { O 1 vector } m_axi_v4a2_AWLEN { O 32 vector } m_axi_v4a2_AWSIZE { O 3 vector } m_axi_v4a2_AWBURST { O 2 vector } m_axi_v4a2_AWLOCK { O 2 vector } m_axi_v4a2_AWCACHE { O 4 vector } m_axi_v4a2_AWPROT { O 3 vector } m_axi_v4a2_AWQOS { O 4 vector } m_axi_v4a2_AWREGION { O 4 vector } m_axi_v4a2_AWUSER { O 1 vector } m_axi_v4a2_WVALID { O 1 bit } m_axi_v4a2_WREADY { I 1 bit } m_axi_v4a2_WDATA { O 32 vector } m_axi_v4a2_WSTRB { O 4 vector } m_axi_v4a2_WLAST { O 1 bit } m_axi_v4a2_WID { O 1 vector } m_axi_v4a2_WUSER { O 1 vector } m_axi_v4a2_ARVALID { O 1 bit } m_axi_v4a2_ARREADY { I 1 bit } m_axi_v4a2_ARADDR { O 64 vector } m_axi_v4a2_ARID { O 1 vector } m_axi_v4a2_ARLEN { O 32 vector } m_axi_v4a2_ARSIZE { O 3 vector } m_axi_v4a2_ARBURST { O 2 vector } m_axi_v4a2_ARLOCK { O 2 vector } m_axi_v4a2_ARCACHE { O 4 vector } m_axi_v4a2_ARPROT { O 3 vector } m_axi_v4a2_ARQOS { O 4 vector } m_axi_v4a2_ARREGION { O 4 vector } m_axi_v4a2_ARUSER { O 1 vector } m_axi_v4a2_RVALID { I 1 bit } m_axi_v4a2_RREADY { O 1 bit } m_axi_v4a2_RDATA { I 32 vector } m_axi_v4a2_RLAST { I 1 bit } m_axi_v4a2_RID { I 1 vector } m_axi_v4a2_RFIFONUM { I 9 vector } m_axi_v4a2_RUSER { I 1 vector } m_axi_v4a2_RRESP { I 2 vector } m_axi_v4a2_BVALID { I 1 bit } m_axi_v4a2_BREADY { O 1 bit } m_axi_v4a2_BRESP { I 2 vector } m_axi_v4a2_BID { I 1 vector } m_axi_v4a2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name v4a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v4a1 \
    op interface \
    ports { m_axi_v4a1_AWVALID { O 1 bit } m_axi_v4a1_AWREADY { I 1 bit } m_axi_v4a1_AWADDR { O 64 vector } m_axi_v4a1_AWID { O 1 vector } m_axi_v4a1_AWLEN { O 32 vector } m_axi_v4a1_AWSIZE { O 3 vector } m_axi_v4a1_AWBURST { O 2 vector } m_axi_v4a1_AWLOCK { O 2 vector } m_axi_v4a1_AWCACHE { O 4 vector } m_axi_v4a1_AWPROT { O 3 vector } m_axi_v4a1_AWQOS { O 4 vector } m_axi_v4a1_AWREGION { O 4 vector } m_axi_v4a1_AWUSER { O 1 vector } m_axi_v4a1_WVALID { O 1 bit } m_axi_v4a1_WREADY { I 1 bit } m_axi_v4a1_WDATA { O 32 vector } m_axi_v4a1_WSTRB { O 4 vector } m_axi_v4a1_WLAST { O 1 bit } m_axi_v4a1_WID { O 1 vector } m_axi_v4a1_WUSER { O 1 vector } m_axi_v4a1_ARVALID { O 1 bit } m_axi_v4a1_ARREADY { I 1 bit } m_axi_v4a1_ARADDR { O 64 vector } m_axi_v4a1_ARID { O 1 vector } m_axi_v4a1_ARLEN { O 32 vector } m_axi_v4a1_ARSIZE { O 3 vector } m_axi_v4a1_ARBURST { O 2 vector } m_axi_v4a1_ARLOCK { O 2 vector } m_axi_v4a1_ARCACHE { O 4 vector } m_axi_v4a1_ARPROT { O 3 vector } m_axi_v4a1_ARQOS { O 4 vector } m_axi_v4a1_ARREGION { O 4 vector } m_axi_v4a1_ARUSER { O 1 vector } m_axi_v4a1_RVALID { I 1 bit } m_axi_v4a1_RREADY { O 1 bit } m_axi_v4a1_RDATA { I 32 vector } m_axi_v4a1_RLAST { I 1 bit } m_axi_v4a1_RID { I 1 vector } m_axi_v4a1_RFIFONUM { I 9 vector } m_axi_v4a1_RUSER { I 1 vector } m_axi_v4a1_RRESP { I 2 vector } m_axi_v4a1_BVALID { I 1 bit } m_axi_v4a1_BREADY { O 1 bit } m_axi_v4a1_BRESP { I 2 vector } m_axi_v4a1_BID { I 1 vector } m_axi_v4a1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name zext_ln61_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln61_1 \
    op interface \
    ports { zext_ln61_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name a_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_val \
    op interface \
    ports { a_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name add_ln52_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln52_3 \
    op interface \
    ports { add_ln52_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name a_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_idx \
    op interface \
    ports { a_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n \
    op interface \
    ports { n { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 2 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


# flow_control definition:
set InstName large_getrf_v4_flow_control_loop_pipe_sequential_init_U
set CompName large_getrf_v4_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_getrf_v4_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


