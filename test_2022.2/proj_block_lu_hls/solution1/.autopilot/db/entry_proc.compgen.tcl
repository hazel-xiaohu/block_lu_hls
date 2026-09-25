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
    name B_rcsr_base_c170 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr_base_c170 \
    op interface \
    ports { B_rcsr_base_c170_din { O 32 vector } B_rcsr_base_c170_num_data_valid { I 4 vector } B_rcsr_base_c170_fifo_cap { I 4 vector } B_rcsr_base_c170_full_n { I 1 bit } B_rcsr_base_c170_write { O 1 bit } } \
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
    name B_val_base_c172 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c172 \
    op interface \
    ports { B_val_base_c172_din { O 32 vector } B_val_base_c172_num_data_valid { I 4 vector } B_val_base_c172_fifo_cap { I 4 vector } B_val_base_c172_full_n { I 1 bit } B_val_base_c172_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name B_val_base_c173 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c173 \
    op interface \
    ports { B_val_base_c173_din { O 32 vector } B_val_base_c173_num_data_valid { I 4 vector } B_val_base_c173_fifo_cap { I 4 vector } B_val_base_c173_full_n { I 1 bit } B_val_base_c173_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name B_val_base_c174 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c174 \
    op interface \
    ports { B_val_base_c174_din { O 32 vector } B_val_base_c174_num_data_valid { I 4 vector } B_val_base_c174_fifo_cap { I 4 vector } B_val_base_c174_full_n { I 1 bit } B_val_base_c174_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name B_val_base_c175 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c175 \
    op interface \
    ports { B_val_base_c175_din { O 32 vector } B_val_base_c175_num_data_valid { I 4 vector } B_val_base_c175_fifo_cap { I 4 vector } B_val_base_c175_full_n { I 1 bit } B_val_base_c175_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name B_val_base_c176 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c176 \
    op interface \
    ports { B_val_base_c176_din { O 32 vector } B_val_base_c176_num_data_valid { I 4 vector } B_val_base_c176_fifo_cap { I 4 vector } B_val_base_c176_full_n { I 1 bit } B_val_base_c176_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name B_val_base_c177 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c177 \
    op interface \
    ports { B_val_base_c177_din { O 32 vector } B_val_base_c177_num_data_valid { I 4 vector } B_val_base_c177_fifo_cap { I 4 vector } B_val_base_c177_full_n { I 1 bit } B_val_base_c177_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name B_val_base_c178 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c178 \
    op interface \
    ports { B_val_base_c178_din { O 32 vector } B_val_base_c178_num_data_valid { I 4 vector } B_val_base_c178_fifo_cap { I 4 vector } B_val_base_c178_full_n { I 1 bit } B_val_base_c178_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name B_val_base_c179 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val_base_c179 \
    op interface \
    ports { B_val_base_c179_din { O 32 vector } B_val_base_c179_num_data_valid { I 4 vector } B_val_base_c179_fifo_cap { I 4 vector } B_val_base_c179_full_n { I 1 bit } B_val_base_c179_write { O 1 bit } } \
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
    name B_cid_base_c181 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c181 \
    op interface \
    ports { B_cid_base_c181_din { O 32 vector } B_cid_base_c181_num_data_valid { I 4 vector } B_cid_base_c181_fifo_cap { I 4 vector } B_cid_base_c181_full_n { I 1 bit } B_cid_base_c181_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name B_cid_base_c182 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c182 \
    op interface \
    ports { B_cid_base_c182_din { O 32 vector } B_cid_base_c182_num_data_valid { I 4 vector } B_cid_base_c182_fifo_cap { I 4 vector } B_cid_base_c182_full_n { I 1 bit } B_cid_base_c182_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name B_cid_base_c183 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c183 \
    op interface \
    ports { B_cid_base_c183_din { O 32 vector } B_cid_base_c183_num_data_valid { I 4 vector } B_cid_base_c183_fifo_cap { I 4 vector } B_cid_base_c183_full_n { I 1 bit } B_cid_base_c183_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name B_cid_base_c184 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c184 \
    op interface \
    ports { B_cid_base_c184_din { O 32 vector } B_cid_base_c184_num_data_valid { I 4 vector } B_cid_base_c184_fifo_cap { I 4 vector } B_cid_base_c184_full_n { I 1 bit } B_cid_base_c184_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name B_cid_base_c185 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c185 \
    op interface \
    ports { B_cid_base_c185_din { O 32 vector } B_cid_base_c185_num_data_valid { I 4 vector } B_cid_base_c185_fifo_cap { I 4 vector } B_cid_base_c185_full_n { I 1 bit } B_cid_base_c185_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name B_cid_base_c186 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c186 \
    op interface \
    ports { B_cid_base_c186_din { O 32 vector } B_cid_base_c186_num_data_valid { I 4 vector } B_cid_base_c186_fifo_cap { I 4 vector } B_cid_base_c186_full_n { I 1 bit } B_cid_base_c186_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name B_cid_base_c187 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c187 \
    op interface \
    ports { B_cid_base_c187_din { O 32 vector } B_cid_base_c187_num_data_valid { I 4 vector } B_cid_base_c187_fifo_cap { I 4 vector } B_cid_base_c187_full_n { I 1 bit } B_cid_base_c187_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name B_cid_base_c188 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid_base_c188 \
    op interface \
    ports { B_cid_base_c188_din { O 32 vector } B_cid_base_c188_num_data_valid { I 4 vector } B_cid_base_c188_fifo_cap { I 4 vector } B_cid_base_c188_full_n { I 1 bit } B_cid_base_c188_write { O 1 bit } } \
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


