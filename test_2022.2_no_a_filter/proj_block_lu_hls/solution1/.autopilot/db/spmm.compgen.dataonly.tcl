# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
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
A_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
B_rcsr1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
B_rcsr2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
B_rcsr3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
B_rcsr4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
B_val1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
B_cid1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
B_val2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
B_cid2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
B_val3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
B_cid3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
B_val4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
B_cid4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 184
	offset_end 195
}
B_val_port1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 196
	offset_end 207
}
B_cid_port1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 208
	offset_end 219
}
B_val_port2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 220
	offset_end 231
}
B_cid_port2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 232
	offset_end 243
}
B_val_port3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 244
	offset_end 255
}
B_cid_port3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 256
	offset_end 267
}
B_val_port4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 268
	offset_end 279
}
B_cid_port4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 280
	offset_end 291
}
C_rcsr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 292
	offset_end 303
}
C_cid { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 304
	offset_end 315
}
C_val { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 316
	offset_end 327
}
}
dict set axilite_register_dict control $port_control


set port_ctr {
arnum { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
atnum { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
brnum { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
btnum { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
B_rcsr_base { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
B_val_base { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
B_cid_base { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
r1acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
r1hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
r2acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 104
	offset_end 111
}
r2hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 120
	offset_end 127
}
r3acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
r3hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 152
	offset_end 159
}
r4acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 168
	offset_end 175
}
r4hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 184
	offset_end 191
}
r5acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
r5hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
r6acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
r6hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
r7acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
r7hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
r8acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
r8hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
vc1acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 264
	offset_end 271
}
vc1hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 280
	offset_end 287
}
vc2acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 296
	offset_end 303
}
vc2hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 312
	offset_end 319
}
vc3acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 328
	offset_end 335
}
vc3hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 344
	offset_end 351
}
vc4acc { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 360
	offset_end 367
}
vc4hit { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 376
	offset_end 383
}
vc5acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 392
	offset_end 399
}
vc5hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 400
	offset_end 407
}
vc6acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 408
	offset_end 415
}
vc6hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 416
	offset_end 423
}
vc7acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 424
	offset_end 431
}
vc7hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 432
	offset_end 439
}
vc8acc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 440
	offset_end 447
}
vc8hit { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 448
	offset_end 455
}
fnum { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 456
	offset_end 463
}
workload_counter1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 472
	offset_end 479
}
workload_counter2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 488
	offset_end 495
}
workload_counter3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 504
	offset_end 511
}
workload_counter4 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 520
	offset_end 527
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict ctr $port_ctr


