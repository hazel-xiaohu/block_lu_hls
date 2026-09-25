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
    id 1813 \
    name vccache_re_bank1_pe5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe5 \
    op interface \
    ports { vccache_re_bank1_pe5_dout { I 225 vector } vccache_re_bank1_pe5_empty_n { I 1 bit } vccache_re_bank1_pe5_read { O 1 bit } vccache_re_bank1_pe5_num_data_valid { I 4 vector } vccache_re_bank1_pe5_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1814 \
    name vccache_re_bank1_pe6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe6 \
    op interface \
    ports { vccache_re_bank1_pe6_dout { I 225 vector } vccache_re_bank1_pe6_empty_n { I 1 bit } vccache_re_bank1_pe6_read { O 1 bit } vccache_re_bank1_pe6_num_data_valid { I 4 vector } vccache_re_bank1_pe6_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1815 \
    name vccache_re_bank1_pe7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe7 \
    op interface \
    ports { vccache_re_bank1_pe7_dout { I 225 vector } vccache_re_bank1_pe7_empty_n { I 1 bit } vccache_re_bank1_pe7_read { O 1 bit } vccache_re_bank1_pe7_num_data_valid { I 4 vector } vccache_re_bank1_pe7_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1816 \
    name vccache_re_bank1_pe8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe8 \
    op interface \
    ports { vccache_re_bank1_pe8_dout { I 225 vector } vccache_re_bank1_pe8_empty_n { I 1 bit } vccache_re_bank1_pe8_read { O 1 bit } vccache_re_bank1_pe8_num_data_valid { I 4 vector } vccache_re_bank1_pe8_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1817 \
    name vccache_re_bank3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank3 \
    op interface \
    ports { vccache_re_bank3_din { O 225 vector } vccache_re_bank3_full_n { I 1 bit } vccache_re_bank3_write { O 1 bit } vccache_re_bank3_num_data_valid { I 7 vector } vccache_re_bank3_fifo_cap { I 7 vector } } \
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


