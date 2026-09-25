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
    id 223 \
    name r_first \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_first \
    op interface \
    ports { r_first_dout { I 398 vector } r_first_empty_n { I 1 bit } r_first_read { O 1 bit } r_first_num_data_valid { I 3 vector } r_first_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name rrequest2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest2 \
    op interface \
    ports { rrequest2_din { O 398 vector } rrequest2_full_n { I 1 bit } rrequest2_write { O 1 bit } rrequest2_num_data_valid { I 3 vector } rrequest2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name r_req \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_req \
    op interface \
    ports { r_req_dout { I 398 vector } r_req_empty_n { I 1 bit } r_req_read { O 1 bit } r_req_num_data_valid { I 3 vector } r_req_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name temp_5_sroa_100_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_100_0_out \
    op interface \
    ports { temp_5_sroa_100_0_out { O 8 vector } temp_5_sroa_100_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name temp_5_sroa_95_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_95_0_out \
    op interface \
    ports { temp_5_sroa_95_0_out { O 8 vector } temp_5_sroa_95_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name temp_5_sroa_90_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_90_0_out \
    op interface \
    ports { temp_5_sroa_90_0_out { O 8 vector } temp_5_sroa_90_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name temp_5_sroa_85_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_85_0_out \
    op interface \
    ports { temp_5_sroa_85_0_out { O 8 vector } temp_5_sroa_85_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name temp_5_sroa_80_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_80_0_out \
    op interface \
    ports { temp_5_sroa_80_0_out { O 8 vector } temp_5_sroa_80_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name temp_5_sroa_75_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_75_0_out \
    op interface \
    ports { temp_5_sroa_75_0_out { O 8 vector } temp_5_sroa_75_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name temp_5_sroa_70_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_70_0_out \
    op interface \
    ports { temp_5_sroa_70_0_out { O 8 vector } temp_5_sroa_70_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name temp_5_sroa_65_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_65_0_out \
    op interface \
    ports { temp_5_sroa_65_0_out { O 8 vector } temp_5_sroa_65_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name temp_5_sroa_60_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_60_0_out \
    op interface \
    ports { temp_5_sroa_60_0_out { O 8 vector } temp_5_sroa_60_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name temp_5_sroa_55_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_55_0_out \
    op interface \
    ports { temp_5_sroa_55_0_out { O 8 vector } temp_5_sroa_55_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name temp_5_sroa_50_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_50_0_out \
    op interface \
    ports { temp_5_sroa_50_0_out { O 8 vector } temp_5_sroa_50_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name temp_5_sroa_45_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_45_0_out \
    op interface \
    ports { temp_5_sroa_45_0_out { O 8 vector } temp_5_sroa_45_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name temp_5_sroa_40_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_40_0_out \
    op interface \
    ports { temp_5_sroa_40_0_out { O 8 vector } temp_5_sroa_40_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name temp_5_sroa_35_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_35_0_out \
    op interface \
    ports { temp_5_sroa_35_0_out { O 8 vector } temp_5_sroa_35_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name temp_5_sroa_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_30_0_out \
    op interface \
    ports { temp_5_sroa_30_0_out { O 8 vector } temp_5_sroa_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name temp_5_sroa_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_25_0_out \
    op interface \
    ports { temp_5_sroa_25_0_out { O 8 vector } temp_5_sroa_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name temp_5_sroa_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_20_0_out \
    op interface \
    ports { temp_5_sroa_20_0_out { O 8 vector } temp_5_sroa_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name temp_5_sroa_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_15_0_out \
    op interface \
    ports { temp_5_sroa_15_0_out { O 8 vector } temp_5_sroa_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name temp_5_sroa_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_10_0_out \
    op interface \
    ports { temp_5_sroa_10_0_out { O 8 vector } temp_5_sroa_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name temp_5_sroa_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_5_0_out \
    op interface \
    ports { temp_5_sroa_5_0_out { O 8 vector } temp_5_sroa_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name temp_5_sroa_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_5_sroa_0_0_out \
    op interface \
    ports { temp_5_sroa_0_0_out { O 8 vector } temp_5_sroa_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name temp_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_6_0_out \
    op interface \
    ports { temp_6_0_out { O 160 vector } temp_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name temp_4225_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_4225_0_out \
    op interface \
    ports { temp_4225_0_out { O 32 vector } temp_4225_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name temp_3224_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_3224_0_out \
    op interface \
    ports { temp_3224_0_out { O 32 vector } temp_3224_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name temp_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_2_0_out \
    op interface \
    ports { temp_2_0_out { O 2 vector } temp_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name temp_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_0_0_out \
    op interface \
    ports { temp_0_0_out { O 3 vector } temp_0_0_out_ap_vld { O 1 bit } } \
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
set InstName spmm_flow_control_loop_pipe_sequential_init_U
set CompName spmm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix spmm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


