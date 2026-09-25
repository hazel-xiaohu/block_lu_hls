# This script segment is generated automatically by AutoPilot

set name sparse_lu_shared_fsub_32ns_32ns_32_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
}


set name sparse_lu_shared_fmul_32ns_32ns_32_5_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name sparse_lu_shared_fdiv_32ns_32ns_32_16_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 15 ALLOW_PRAGMA 1
}


set name sparse_lu_shared_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_a_row_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_a_col_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_a_val_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_l_row_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_l_col_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_l_val_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_u_row_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_u_col_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_u_val_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_x_row_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_x_col_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_x_val_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
operation { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
n { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
a_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
l_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
u_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
x_rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
x_cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
x_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
pivot_eps { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
status { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
failed_row { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 104
	offset_end 111
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 122 \
			corename sparse_lu_shared_control_axilite \
			name sparse_lu_shared_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
			enable_mem_auto_widen 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

set port_control_r {
A_rcsr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
A_cid { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
A_val_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
L_rcsr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
L_cid { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
L_val_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
U_rcsr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
U_cid { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
U_val_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
X_rcsr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
X_cid { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
X_val_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
}
dict set axilite_register_dict control_r $port_control_r


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 123 \
			corename sparse_lu_shared_control_r_axilite \
			name sparse_lu_shared_control_r_s_axi \
			ports {$port_control_r} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
			enable_mem_auto_widen 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control_r'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


