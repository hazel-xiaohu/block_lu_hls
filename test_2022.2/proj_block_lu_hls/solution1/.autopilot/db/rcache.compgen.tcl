# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_rcache_p_data_V_RAM_1P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_rcache_p_tag_V_RAM_1P_LUTRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_rcache_p_lru_count_1_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 399 \
    name rcache_re_bank1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank1 \
    op interface \
    ports { rcache_re_bank1_dout { I 230 vector } rcache_re_bank1_num_data_valid { I 4 vector } rcache_re_bank1_fifo_cap { I 4 vector } rcache_re_bank1_empty_n { I 1 bit } rcache_re_bank1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name base_addr_rcsr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_rcsr \
    op interface \
    ports { base_addr_rcsr_dout { I 32 vector } base_addr_rcsr_num_data_valid { I 2 vector } base_addr_rcsr_fifo_cap { I 2 vector } base_addr_rcsr_empty_n { I 1 bit } base_addr_rcsr_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name rcache_bank1_res \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_bank1_res \
    op interface \
    ports { rcache_bank1_res_din { O 168 vector } rcache_bank1_res_num_data_valid { I 4 vector } rcache_bank1_res_fifo_cap { I 4 vector } rcache_bank1_res_full_n { I 1 bit } rcache_bank1_res_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name r1acc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r1acc \
    op interface \
    ports { r1acc { O 32 vector } r1acc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name r1hit \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r1hit \
    op interface \
    ports { r1hit { O 32 vector } r1hit_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name mi1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1 \
    op interface \
    ports { mi1_din { O 5 vector } mi1_num_data_valid { I 2 vector } mi1_fifo_cap { I 2 vector } mi1_full_n { I 1 bit } mi1_write { O 1 bit } } \
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


