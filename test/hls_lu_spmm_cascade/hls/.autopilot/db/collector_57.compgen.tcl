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
    id 1034 \
    name ccollector \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ccollector \
    op interface \
    ports { ccollector_dout { I 68 vector } ccollector_empty_n { I 1 bit } ccollector_read { O 1 bit } ccollector_num_data_valid { I 3 vector } ccollector_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1035 \
    name cresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult1 \
    op interface \
    ports { cresult1_dout { I 1024 vector } cresult1_empty_n { I 1 bit } cresult1_read { O 1 bit } cresult1_num_data_valid { I 3 vector } cresult1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1036 \
    name coff \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coff \
    op interface \
    ports { coff_dout { I 128 vector } coff_empty_n { I 1 bit } coff_read { O 1 bit } coff_num_data_valid { I 4 vector } coff_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1037 \
    name cblock1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock1 \
    op interface \
    ports { cblock1_din { O 134 vector } cblock1_full_n { I 1 bit } cblock1_write { O 1 bit } cblock1_num_data_valid { I 32 vector } cblock1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1038 \
    name c_hit \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_hit \
    op interface \
    ports { c_hit_dout { I 1 vector } c_hit_empty_n { I 1 bit } c_hit_read { O 1 bit } c_hit_num_data_valid { I 5 vector } c_hit_fifo_cap { I 5 vector } } \
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


