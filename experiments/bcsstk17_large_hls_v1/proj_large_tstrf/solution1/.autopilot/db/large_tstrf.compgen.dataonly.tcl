# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
u_col_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
u_row_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
u_csr_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
u_csc_to_csr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
u_diag_pos { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
b_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
b_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
b_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
x_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
x_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
x_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
active_rows { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
work { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


