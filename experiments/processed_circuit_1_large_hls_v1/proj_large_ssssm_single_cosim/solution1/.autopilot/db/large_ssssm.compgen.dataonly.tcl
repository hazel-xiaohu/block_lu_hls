# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
a_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
a_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
a_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
l_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
l_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
l_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
u_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
u_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
u_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
s_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
s_idx { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
s_val { 
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
mark { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


