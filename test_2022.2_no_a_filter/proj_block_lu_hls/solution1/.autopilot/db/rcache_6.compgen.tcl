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
    id 480 \
    name rcache_re_bank4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank4 \
    op interface \
    ports { rcache_re_bank4_dout { I 230 vector } rcache_re_bank4_num_data_valid { I 4 vector } rcache_re_bank4_fifo_cap { I 4 vector } rcache_re_bank4_empty_n { I 1 bit } rcache_re_bank4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
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
    id 482 \
    name rcache_bank4_res \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_bank4_res \
    op interface \
    ports { rcache_bank4_res_din { O 168 vector } rcache_bank4_res_num_data_valid { I 4 vector } rcache_bank4_res_fifo_cap { I 4 vector } rcache_bank4_res_full_n { I 1 bit } rcache_bank4_res_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name r4acc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r4acc \
    op interface \
    ports { r4acc { O 32 vector } r4acc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name r4hit \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r4hit \
    op interface \
    ports { r4hit { O 32 vector } r4hit_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name mi4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi4 \
    op interface \
    ports { mi4_din { O 5 vector } mi4_num_data_valid { I 2 vector } mi4_fifo_cap { I 2 vector } mi4_full_n { I 1 bit } mi4_write { O 1 bit } } \
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


