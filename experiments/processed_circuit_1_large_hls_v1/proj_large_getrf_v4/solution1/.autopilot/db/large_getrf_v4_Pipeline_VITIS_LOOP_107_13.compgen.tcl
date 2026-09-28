# This script segment is generated automatically by AutoPilot

set name large_getrf_v4_fsub_32ns_32ns_32_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
}


set name large_getrf_v4_fmul_32ns_32ns_32_5_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 4 ALLOW_PRAGMA 1
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
    id 102 \
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
    id 103 \
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
    id 104 \
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
    id 105 \
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
    id 107 \
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
    id 108 \
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
    id 109 \
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
    id 110 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name empty_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_51 \
    op interface \
    ports { empty_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name valid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_valid \
    op interface \
    ports { valid { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name valid_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_valid_1 \
    op interface \
    ports { valid_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name valid_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_valid_2 \
    op interface \
    ports { valid_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name muladds \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_muladds \
    op interface \
    ports { muladds { O 64 vector } muladds_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name vs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vs \
    op interface \
    ports { vs { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name vs_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vs_2 \
    op interface \
    ports { vs_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name vs_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vs_4 \
    op interface \
    ports { vs_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name vs_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vs_6 \
    op interface \
    ports { vs_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name lik \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lik \
    op interface \
    ports { lik { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name js \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_js \
    op interface \
    ports { js { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name js_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_js_2 \
    op interface \
    ports { js_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name js_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_js_4 \
    op interface \
    ports { js_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name js_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_js_6 \
    op interface \
    ports { js_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
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
    id 111 \
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
    id 112 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 64 vector } p_out_ap_vld { O 1 bit } } \
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


