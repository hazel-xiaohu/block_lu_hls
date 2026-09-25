# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
n { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
a_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
l_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
u_nnz { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
pivot_eps { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
status { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
failed_row { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


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
}
dict set axilite_register_dict control_r $port_control_r


