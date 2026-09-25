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
    id 801 \
    name rblock1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rblock1 \
    op interface \
    ports { rblock1_dout { I 398 vector } rblock1_empty_n { I 1 bit } rblock1_read { O 1 bit } rblock1_num_data_valid { I 3 vector } rblock1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name rcache_result_bank1_b \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank1_b \
    op interface \
    ports { rcache_result_bank1_b_din { O 68 vector } rcache_result_bank1_b_full_n { I 1 bit } rcache_result_bank1_b_write { O 1 bit } rcache_result_bank1_b_num_data_valid { I 3 vector } rcache_result_bank1_b_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name rcache_result_bank1_d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank1_d \
    op interface \
    ports { rcache_result_bank1_d_din { O 68 vector } rcache_result_bank1_d_full_n { I 1 bit } rcache_result_bank1_d_write { O 1 bit } rcache_result_bank1_d_num_data_valid { I 3 vector } rcache_result_bank1_d_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name B_rlen_pe1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rlen_pe1 \
    op interface \
    ports { B_rlen_pe1_din { O 32 vector } B_rlen_pe1_full_n { I 1 bit } B_rlen_pe1_write { O 1 bit } B_rlen_pe1_num_data_valid { I 3 vector } B_rlen_pe1_fifo_cap { I 3 vector } } \
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


