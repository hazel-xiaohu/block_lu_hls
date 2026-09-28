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
    id 1453 \
    name crequest1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest1 \
    op interface \
    ports { crequest1_dout { I 209 vector } crequest1_num_data_valid { I 7 vector } crequest1_fifo_cap { I 7 vector } crequest1_empty_n { I 1 bit } crequest1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1454 \
    name base_addr_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_val \
    op interface \
    ports { base_addr_val_dout { I 32 vector } base_addr_val_num_data_valid { I 4 vector } base_addr_val_fifo_cap { I 4 vector } base_addr_val_empty_n { I 1 bit } base_addr_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1455 \
    name base_addr_cid \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_cid \
    op interface \
    ports { base_addr_cid_dout { I 32 vector } base_addr_cid_num_data_valid { I 4 vector } base_addr_cid_fifo_cap { I 4 vector } base_addr_cid_empty_n { I 1 bit } base_addr_cid_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1456 \
    name vccache_re_bank1_pe5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe5 \
    op interface \
    ports { vccache_re_bank1_pe5_din { O 209 vector } vccache_re_bank1_pe5_num_data_valid { I 4 vector } vccache_re_bank1_pe5_fifo_cap { I 4 vector } vccache_re_bank1_pe5_full_n { I 1 bit } vccache_re_bank1_pe5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1457 \
    name vccache_re_bank2_pe5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe5 \
    op interface \
    ports { vccache_re_bank2_pe5_din { O 209 vector } vccache_re_bank2_pe5_num_data_valid { I 4 vector } vccache_re_bank2_pe5_fifo_cap { I 4 vector } vccache_re_bank2_pe5_full_n { I 1 bit } vccache_re_bank2_pe5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1458 \
    name B_cid_base_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c \
    op interface \
    ports { B_cid_base_c_din { O 32 vector } B_cid_base_c_num_data_valid { I 3 vector } B_cid_base_c_fifo_cap { I 3 vector } B_cid_base_c_full_n { I 1 bit } B_cid_base_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1459 \
    name B_cid_base_c180 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c180 \
    op interface \
    ports { B_cid_base_c180_din { O 32 vector } B_cid_base_c180_num_data_valid { I 3 vector } B_cid_base_c180_fifo_cap { I 3 vector } B_cid_base_c180_full_n { I 1 bit } B_cid_base_c180_write { O 1 bit } } \
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


