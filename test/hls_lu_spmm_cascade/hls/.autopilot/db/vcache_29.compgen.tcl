# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_sparsemux_33_4_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_partset_1024ns_1024ns_128ns_10ns_1024_1_1 BINDTYPE {op} TYPE {partset} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_bitset_8ns_8ns_3ns_1s_8_1_1 BINDTYPE {op} TYPE {bitset} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_vcache_29_p_filled_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_vcache_29_p_data_RAM_1P_URAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {uram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler spmm_vcache_29_p_tag_RAM_1P_LUTRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 1889 \
    name vccache_re_bank1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1 \
    op interface \
    ports { vccache_re_bank1_dout { I 225 vector } vccache_re_bank1_empty_n { I 1 bit } vccache_re_bank1_read { O 1 bit } vccache_re_bank1_num_data_valid { I 7 vector } vccache_re_bank1_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1890 \
    name base_addr_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_val \
    op interface \
    ports { base_addr_val_dout { I 32 vector } base_addr_val_empty_n { I 1 bit } base_addr_val_read { O 1 bit } base_addr_val_num_data_valid { I 3 vector } base_addr_val_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1891 \
    name vcache_bank1_vres \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank1_vres \
    op interface \
    ports { vcache_bank1_vres_din { O 6 vector } vcache_bank1_vres_full_n { I 1 bit } vcache_bank1_vres_write { O 1 bit } vcache_bank1_vres_num_data_valid { I 5 vector } vcache_bank1_vres_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1892 \
    name vcache_bank1_result \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank1_result \
    op interface \
    ports { vcache_bank1_result_din { O 1031 vector } vcache_bank1_result_full_n { I 1 bit } vcache_bank1_result_write { O 1 bit } vcache_bank1_result_num_data_valid { I 4 vector } vcache_bank1_result_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1893 \
    name vc1acc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vc1acc \
    op interface \
    ports { vc1acc { O 32 vector } vc1acc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1894 \
    name vc1hit \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vc1hit \
    op interface \
    ports { vc1hit { O 32 vector } vc1hit_ap_vld { O 1 bit } } \
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


