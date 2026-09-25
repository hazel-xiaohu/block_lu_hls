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
    id 1 \
    name B_rcsr_base \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base \
    op interface \
    ports { B_rcsr_base { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name B_rcsr_base_c4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c4 \
    op interface \
    ports { B_rcsr_base_c4_din { O 32 vector } B_rcsr_base_c4_full_n { I 1 bit } B_rcsr_base_c4_write { O 1 bit } B_rcsr_base_c4_num_data_valid { I 4 vector } B_rcsr_base_c4_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name B_val_base \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base \
    op interface \
    ports { B_val_base { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name B_val_base_c6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c6 \
    op interface \
    ports { B_val_base_c6_din { O 32 vector } B_val_base_c6_full_n { I 1 bit } B_val_base_c6_write { O 1 bit } B_val_base_c6_num_data_valid { I 4 vector } B_val_base_c6_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name B_val_base_c7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c7 \
    op interface \
    ports { B_val_base_c7_din { O 32 vector } B_val_base_c7_full_n { I 1 bit } B_val_base_c7_write { O 1 bit } B_val_base_c7_num_data_valid { I 4 vector } B_val_base_c7_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name B_val_base_c8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c8 \
    op interface \
    ports { B_val_base_c8_din { O 32 vector } B_val_base_c8_full_n { I 1 bit } B_val_base_c8_write { O 1 bit } B_val_base_c8_num_data_valid { I 4 vector } B_val_base_c8_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name B_val_base_c9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c9 \
    op interface \
    ports { B_val_base_c9_din { O 32 vector } B_val_base_c9_full_n { I 1 bit } B_val_base_c9_write { O 1 bit } B_val_base_c9_num_data_valid { I 4 vector } B_val_base_c9_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name B_val_base_c10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c10 \
    op interface \
    ports { B_val_base_c10_din { O 32 vector } B_val_base_c10_full_n { I 1 bit } B_val_base_c10_write { O 1 bit } B_val_base_c10_num_data_valid { I 4 vector } B_val_base_c10_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name B_val_base_c11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c11 \
    op interface \
    ports { B_val_base_c11_din { O 32 vector } B_val_base_c11_full_n { I 1 bit } B_val_base_c11_write { O 1 bit } B_val_base_c11_num_data_valid { I 4 vector } B_val_base_c11_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name B_val_base_c12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c12 \
    op interface \
    ports { B_val_base_c12_din { O 32 vector } B_val_base_c12_full_n { I 1 bit } B_val_base_c12_write { O 1 bit } B_val_base_c12_num_data_valid { I 4 vector } B_val_base_c12_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name B_val_base_c13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c13 \
    op interface \
    ports { B_val_base_c13_din { O 32 vector } B_val_base_c13_full_n { I 1 bit } B_val_base_c13_write { O 1 bit } B_val_base_c13_num_data_valid { I 4 vector } B_val_base_c13_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name B_cid_base \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base \
    op interface \
    ports { B_cid_base { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name B_cid_base_c15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c15 \
    op interface \
    ports { B_cid_base_c15_din { O 32 vector } B_cid_base_c15_full_n { I 1 bit } B_cid_base_c15_write { O 1 bit } B_cid_base_c15_num_data_valid { I 4 vector } B_cid_base_c15_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name B_cid_base_c16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c16 \
    op interface \
    ports { B_cid_base_c16_din { O 32 vector } B_cid_base_c16_full_n { I 1 bit } B_cid_base_c16_write { O 1 bit } B_cid_base_c16_num_data_valid { I 4 vector } B_cid_base_c16_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name B_cid_base_c17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c17 \
    op interface \
    ports { B_cid_base_c17_din { O 32 vector } B_cid_base_c17_full_n { I 1 bit } B_cid_base_c17_write { O 1 bit } B_cid_base_c17_num_data_valid { I 4 vector } B_cid_base_c17_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name B_cid_base_c18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c18 \
    op interface \
    ports { B_cid_base_c18_din { O 32 vector } B_cid_base_c18_full_n { I 1 bit } B_cid_base_c18_write { O 1 bit } B_cid_base_c18_num_data_valid { I 4 vector } B_cid_base_c18_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name B_cid_base_c19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c19 \
    op interface \
    ports { B_cid_base_c19_din { O 32 vector } B_cid_base_c19_full_n { I 1 bit } B_cid_base_c19_write { O 1 bit } B_cid_base_c19_num_data_valid { I 4 vector } B_cid_base_c19_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name B_cid_base_c20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c20 \
    op interface \
    ports { B_cid_base_c20_din { O 32 vector } B_cid_base_c20_full_n { I 1 bit } B_cid_base_c20_write { O 1 bit } B_cid_base_c20_num_data_valid { I 4 vector } B_cid_base_c20_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name B_cid_base_c21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c21 \
    op interface \
    ports { B_cid_base_c21_din { O 32 vector } B_cid_base_c21_full_n { I 1 bit } B_cid_base_c21_write { O 1 bit } B_cid_base_c21_num_data_valid { I 4 vector } B_cid_base_c21_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name B_cid_base_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c22 \
    op interface \
    ports { B_cid_base_c22_din { O 32 vector } B_cid_base_c22_full_n { I 1 bit } B_cid_base_c22_write { O 1 bit } B_cid_base_c22_num_data_valid { I 4 vector } B_cid_base_c22_fifo_cap { I 4 vector } } \
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


