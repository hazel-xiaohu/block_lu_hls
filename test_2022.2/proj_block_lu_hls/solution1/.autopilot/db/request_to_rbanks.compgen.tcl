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
    id 362 \
    name rrequestf \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequestf \
    op interface \
    ports { rrequestf_dout { I 230 vector } rrequestf_num_data_valid { I 3 vector } rrequestf_fifo_cap { I 3 vector } rrequestf_empty_n { I 1 bit } rrequestf_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name base_addr_rcsr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_rcsr \
    op interface \
    ports { base_addr_rcsr_dout { I 32 vector } base_addr_rcsr_num_data_valid { I 4 vector } base_addr_rcsr_fifo_cap { I 4 vector } base_addr_rcsr_empty_n { I 1 bit } base_addr_rcsr_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name rcache_re_bank1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank1 \
    op interface \
    ports { rcache_re_bank1_din { O 230 vector } rcache_re_bank1_num_data_valid { I 4 vector } rcache_re_bank1_fifo_cap { I 4 vector } rcache_re_bank1_full_n { I 1 bit } rcache_re_bank1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name rcache_re_bank2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank2 \
    op interface \
    ports { rcache_re_bank2_din { O 230 vector } rcache_re_bank2_num_data_valid { I 4 vector } rcache_re_bank2_fifo_cap { I 4 vector } rcache_re_bank2_full_n { I 1 bit } rcache_re_bank2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name rcache_re_bank3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank3 \
    op interface \
    ports { rcache_re_bank3_din { O 230 vector } rcache_re_bank3_num_data_valid { I 4 vector } rcache_re_bank3_fifo_cap { I 4 vector } rcache_re_bank3_full_n { I 1 bit } rcache_re_bank3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name rcache_re_bank4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank4 \
    op interface \
    ports { rcache_re_bank4_din { O 230 vector } rcache_re_bank4_num_data_valid { I 4 vector } rcache_re_bank4_fifo_cap { I 4 vector } rcache_re_bank4_full_n { I 1 bit } rcache_re_bank4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name B_rcsr_base_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c \
    op interface \
    ports { B_rcsr_base_c_din { O 32 vector } B_rcsr_base_c_num_data_valid { I 2 vector } B_rcsr_base_c_fifo_cap { I 2 vector } B_rcsr_base_c_full_n { I 1 bit } B_rcsr_base_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name B_rcsr_base_c167 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c167 \
    op interface \
    ports { B_rcsr_base_c167_din { O 32 vector } B_rcsr_base_c167_num_data_valid { I 2 vector } B_rcsr_base_c167_fifo_cap { I 2 vector } B_rcsr_base_c167_full_n { I 1 bit } B_rcsr_base_c167_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name B_rcsr_base_c168 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c168 \
    op interface \
    ports { B_rcsr_base_c168_din { O 32 vector } B_rcsr_base_c168_num_data_valid { I 2 vector } B_rcsr_base_c168_fifo_cap { I 2 vector } B_rcsr_base_c168_full_n { I 1 bit } B_rcsr_base_c168_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name B_rcsr_base_c169 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c169 \
    op interface \
    ports { B_rcsr_base_c169_din { O 32 vector } B_rcsr_base_c169_num_data_valid { I 2 vector } B_rcsr_base_c169_fifo_cap { I 2 vector } B_rcsr_base_c169_full_n { I 1 bit } B_rcsr_base_c169_write { O 1 bit } } \
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


