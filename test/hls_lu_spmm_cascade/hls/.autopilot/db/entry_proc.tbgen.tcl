set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 272
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ B_rcsr_base int 32 regular  }
	{ B_rcsr_base_c4 int 32 regular {fifo 1}  }
	{ B_val_base int 32 regular  }
	{ B_val_base_c6 int 32 regular {fifo 1}  }
	{ B_val_base_c7 int 32 regular {fifo 1}  }
	{ B_val_base_c8 int 32 regular {fifo 1}  }
	{ B_val_base_c9 int 32 regular {fifo 1}  }
	{ B_val_base_c10 int 32 regular {fifo 1}  }
	{ B_val_base_c11 int 32 regular {fifo 1}  }
	{ B_val_base_c12 int 32 regular {fifo 1}  }
	{ B_val_base_c13 int 32 regular {fifo 1}  }
	{ B_cid_base int 32 regular  }
	{ B_cid_base_c15 int 32 regular {fifo 1}  }
	{ B_cid_base_c16 int 32 regular {fifo 1}  }
	{ B_cid_base_c17 int 32 regular {fifo 1}  }
	{ B_cid_base_c18 int 32 regular {fifo 1}  }
	{ B_cid_base_c19 int 32 regular {fifo 1}  }
	{ B_cid_base_c20 int 32 regular {fifo 1}  }
	{ B_cid_base_c21 int 32 regular {fifo 1}  }
	{ B_cid_base_c22 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "B_rcsr_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_rcsr_base_c4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_val_base_c6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c11", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c13", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_cid_base_c15", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c16", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c17", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c18", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c19", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c20", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c21", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c22", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 95
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ B_rcsr_base sc_in sc_lv 32 signal 0 } 
	{ B_rcsr_base_c4_din sc_out sc_lv 32 signal 1 } 
	{ B_rcsr_base_c4_full_n sc_in sc_logic 1 signal 1 } 
	{ B_rcsr_base_c4_write sc_out sc_logic 1 signal 1 } 
	{ B_rcsr_base_c4_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ B_rcsr_base_c4_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ B_val_base sc_in sc_lv 32 signal 2 } 
	{ B_val_base_c6_din sc_out sc_lv 32 signal 3 } 
	{ B_val_base_c6_full_n sc_in sc_logic 1 signal 3 } 
	{ B_val_base_c6_write sc_out sc_logic 1 signal 3 } 
	{ B_val_base_c6_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c6_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c7_din sc_out sc_lv 32 signal 4 } 
	{ B_val_base_c7_full_n sc_in sc_logic 1 signal 4 } 
	{ B_val_base_c7_write sc_out sc_logic 1 signal 4 } 
	{ B_val_base_c7_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c7_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c8_din sc_out sc_lv 32 signal 5 } 
	{ B_val_base_c8_full_n sc_in sc_logic 1 signal 5 } 
	{ B_val_base_c8_write sc_out sc_logic 1 signal 5 } 
	{ B_val_base_c8_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c8_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c9_din sc_out sc_lv 32 signal 6 } 
	{ B_val_base_c9_full_n sc_in sc_logic 1 signal 6 } 
	{ B_val_base_c9_write sc_out sc_logic 1 signal 6 } 
	{ B_val_base_c9_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c9_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c10_din sc_out sc_lv 32 signal 7 } 
	{ B_val_base_c10_full_n sc_in sc_logic 1 signal 7 } 
	{ B_val_base_c10_write sc_out sc_logic 1 signal 7 } 
	{ B_val_base_c10_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c10_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c11_din sc_out sc_lv 32 signal 8 } 
	{ B_val_base_c11_full_n sc_in sc_logic 1 signal 8 } 
	{ B_val_base_c11_write sc_out sc_logic 1 signal 8 } 
	{ B_val_base_c11_num_data_valid sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c11_fifo_cap sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c12_din sc_out sc_lv 32 signal 9 } 
	{ B_val_base_c12_full_n sc_in sc_logic 1 signal 9 } 
	{ B_val_base_c12_write sc_out sc_logic 1 signal 9 } 
	{ B_val_base_c12_num_data_valid sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c12_fifo_cap sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c13_din sc_out sc_lv 32 signal 10 } 
	{ B_val_base_c13_full_n sc_in sc_logic 1 signal 10 } 
	{ B_val_base_c13_write sc_out sc_logic 1 signal 10 } 
	{ B_val_base_c13_num_data_valid sc_in sc_lv 4 signal 10 } 
	{ B_val_base_c13_fifo_cap sc_in sc_lv 4 signal 10 } 
	{ B_cid_base sc_in sc_lv 32 signal 11 } 
	{ B_cid_base_c15_din sc_out sc_lv 32 signal 12 } 
	{ B_cid_base_c15_full_n sc_in sc_logic 1 signal 12 } 
	{ B_cid_base_c15_write sc_out sc_logic 1 signal 12 } 
	{ B_cid_base_c15_num_data_valid sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c15_fifo_cap sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c16_din sc_out sc_lv 32 signal 13 } 
	{ B_cid_base_c16_full_n sc_in sc_logic 1 signal 13 } 
	{ B_cid_base_c16_write sc_out sc_logic 1 signal 13 } 
	{ B_cid_base_c16_num_data_valid sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c16_fifo_cap sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c17_din sc_out sc_lv 32 signal 14 } 
	{ B_cid_base_c17_full_n sc_in sc_logic 1 signal 14 } 
	{ B_cid_base_c17_write sc_out sc_logic 1 signal 14 } 
	{ B_cid_base_c17_num_data_valid sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c17_fifo_cap sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c18_din sc_out sc_lv 32 signal 15 } 
	{ B_cid_base_c18_full_n sc_in sc_logic 1 signal 15 } 
	{ B_cid_base_c18_write sc_out sc_logic 1 signal 15 } 
	{ B_cid_base_c18_num_data_valid sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c18_fifo_cap sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c19_din sc_out sc_lv 32 signal 16 } 
	{ B_cid_base_c19_full_n sc_in sc_logic 1 signal 16 } 
	{ B_cid_base_c19_write sc_out sc_logic 1 signal 16 } 
	{ B_cid_base_c19_num_data_valid sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c19_fifo_cap sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c20_din sc_out sc_lv 32 signal 17 } 
	{ B_cid_base_c20_full_n sc_in sc_logic 1 signal 17 } 
	{ B_cid_base_c20_write sc_out sc_logic 1 signal 17 } 
	{ B_cid_base_c20_num_data_valid sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c20_fifo_cap sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c21_din sc_out sc_lv 32 signal 18 } 
	{ B_cid_base_c21_full_n sc_in sc_logic 1 signal 18 } 
	{ B_cid_base_c21_write sc_out sc_logic 1 signal 18 } 
	{ B_cid_base_c21_num_data_valid sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c21_fifo_cap sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c22_din sc_out sc_lv 32 signal 19 } 
	{ B_cid_base_c22_full_n sc_in sc_logic 1 signal 19 } 
	{ B_cid_base_c22_write sc_out sc_logic 1 signal 19 } 
	{ B_cid_base_c22_num_data_valid sc_in sc_lv 4 signal 19 } 
	{ B_cid_base_c22_fifo_cap sc_in sc_lv 4 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "B_rcsr_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base", "role": "default" }} , 
 	{ "name": "B_rcsr_base_c4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c4", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c4", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c4", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c4", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c4", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base", "role": "default" }} , 
 	{ "name": "B_val_base_c6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c6", "role": "din" }} , 
 	{ "name": "B_val_base_c6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c6", "role": "full_n" }} , 
 	{ "name": "B_val_base_c6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c6", "role": "write" }} , 
 	{ "name": "B_val_base_c6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c6", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c6", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c7", "role": "din" }} , 
 	{ "name": "B_val_base_c7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c7", "role": "full_n" }} , 
 	{ "name": "B_val_base_c7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c7", "role": "write" }} , 
 	{ "name": "B_val_base_c7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c7", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c7", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c8", "role": "din" }} , 
 	{ "name": "B_val_base_c8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c8", "role": "full_n" }} , 
 	{ "name": "B_val_base_c8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c8", "role": "write" }} , 
 	{ "name": "B_val_base_c8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c8", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c8", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c9", "role": "din" }} , 
 	{ "name": "B_val_base_c9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c9", "role": "full_n" }} , 
 	{ "name": "B_val_base_c9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c9", "role": "write" }} , 
 	{ "name": "B_val_base_c9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c9", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c9", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c10", "role": "din" }} , 
 	{ "name": "B_val_base_c10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c10", "role": "full_n" }} , 
 	{ "name": "B_val_base_c10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c10", "role": "write" }} , 
 	{ "name": "B_val_base_c10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c10", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c10", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c11", "role": "din" }} , 
 	{ "name": "B_val_base_c11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c11", "role": "full_n" }} , 
 	{ "name": "B_val_base_c11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c11", "role": "write" }} , 
 	{ "name": "B_val_base_c11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c11", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c11", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c12", "role": "din" }} , 
 	{ "name": "B_val_base_c12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c12", "role": "full_n" }} , 
 	{ "name": "B_val_base_c12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c12", "role": "write" }} , 
 	{ "name": "B_val_base_c12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c12", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c12", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c13", "role": "din" }} , 
 	{ "name": "B_val_base_c13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c13", "role": "full_n" }} , 
 	{ "name": "B_val_base_c13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c13", "role": "write" }} , 
 	{ "name": "B_val_base_c13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c13", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c13", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base", "role": "default" }} , 
 	{ "name": "B_cid_base_c15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c15", "role": "din" }} , 
 	{ "name": "B_cid_base_c15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c15", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c15", "role": "write" }} , 
 	{ "name": "B_cid_base_c15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c15", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c15", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c16", "role": "din" }} , 
 	{ "name": "B_cid_base_c16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c16", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c16", "role": "write" }} , 
 	{ "name": "B_cid_base_c16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c16", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c16", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c17", "role": "din" }} , 
 	{ "name": "B_cid_base_c17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c17", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c17", "role": "write" }} , 
 	{ "name": "B_cid_base_c17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c17", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c17", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c18", "role": "din" }} , 
 	{ "name": "B_cid_base_c18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c18", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c18", "role": "write" }} , 
 	{ "name": "B_cid_base_c18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c18", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c18", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c19", "role": "din" }} , 
 	{ "name": "B_cid_base_c19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c19", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c19", "role": "write" }} , 
 	{ "name": "B_cid_base_c19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c19", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c19", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c20", "role": "din" }} , 
 	{ "name": "B_cid_base_c20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c20", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c20", "role": "write" }} , 
 	{ "name": "B_cid_base_c20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c20", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c20", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c21", "role": "din" }} , 
 	{ "name": "B_cid_base_c21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c21", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c21", "role": "write" }} , 
 	{ "name": "B_cid_base_c21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c21", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c21", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c22", "role": "din" }} , 
 	{ "name": "B_cid_base_c22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c22", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c22", "role": "write" }} , 
 	{ "name": "B_cid_base_c22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c22", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c22", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	entry_proc {
		B_rcsr_base {Type I LastRead 0 FirstWrite -1}
		B_rcsr_base_c4 {Type O LastRead -1 FirstWrite 0}
		B_val_base {Type I LastRead 0 FirstWrite -1}
		B_val_base_c6 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c7 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c8 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c9 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c10 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c11 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c12 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c13 {Type O LastRead -1 FirstWrite 0}
		B_cid_base {Type I LastRead 0 FirstWrite -1}
		B_cid_base_c15 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c16 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c17 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c18 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c19 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c20 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c21 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c22 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	B_rcsr_base { ap_none {  { B_rcsr_base in_data 0 32 } } }
	B_rcsr_base_c4 { ap_fifo {  { B_rcsr_base_c4_din fifo_data_out 1 32 }  { B_rcsr_base_c4_full_n fifo_status_empty 0 1 }  { B_rcsr_base_c4_write fifo_data_in 1 1 }  { B_rcsr_base_c4_num_data_valid fifo_update 0 4 }  { B_rcsr_base_c4_fifo_cap fifo_data 0 4 } } }
	B_val_base { ap_none {  { B_val_base in_data 0 32 } } }
	B_val_base_c6 { ap_fifo {  { B_val_base_c6_din fifo_data_out 1 32 }  { B_val_base_c6_full_n fifo_status_empty 0 1 }  { B_val_base_c6_write fifo_data_in 1 1 }  { B_val_base_c6_num_data_valid fifo_update 0 4 }  { B_val_base_c6_fifo_cap fifo_data 0 4 } } }
	B_val_base_c7 { ap_fifo {  { B_val_base_c7_din fifo_data_out 1 32 }  { B_val_base_c7_full_n fifo_status_empty 0 1 }  { B_val_base_c7_write fifo_data_in 1 1 }  { B_val_base_c7_num_data_valid fifo_update 0 4 }  { B_val_base_c7_fifo_cap fifo_data 0 4 } } }
	B_val_base_c8 { ap_fifo {  { B_val_base_c8_din fifo_data_out 1 32 }  { B_val_base_c8_full_n fifo_status_empty 0 1 }  { B_val_base_c8_write fifo_data_in 1 1 }  { B_val_base_c8_num_data_valid fifo_update 0 4 }  { B_val_base_c8_fifo_cap fifo_data 0 4 } } }
	B_val_base_c9 { ap_fifo {  { B_val_base_c9_din fifo_data_out 1 32 }  { B_val_base_c9_full_n fifo_status_empty 0 1 }  { B_val_base_c9_write fifo_data_in 1 1 }  { B_val_base_c9_num_data_valid fifo_update 0 4 }  { B_val_base_c9_fifo_cap fifo_data 0 4 } } }
	B_val_base_c10 { ap_fifo {  { B_val_base_c10_din fifo_data_out 1 32 }  { B_val_base_c10_full_n fifo_status_empty 0 1 }  { B_val_base_c10_write fifo_data_in 1 1 }  { B_val_base_c10_num_data_valid fifo_update 0 4 }  { B_val_base_c10_fifo_cap fifo_data 0 4 } } }
	B_val_base_c11 { ap_fifo {  { B_val_base_c11_din fifo_data_out 1 32 }  { B_val_base_c11_full_n fifo_status_empty 0 1 }  { B_val_base_c11_write fifo_data_in 1 1 }  { B_val_base_c11_num_data_valid fifo_update 0 4 }  { B_val_base_c11_fifo_cap fifo_data 0 4 } } }
	B_val_base_c12 { ap_fifo {  { B_val_base_c12_din fifo_data_out 1 32 }  { B_val_base_c12_full_n fifo_status_empty 0 1 }  { B_val_base_c12_write fifo_data_in 1 1 }  { B_val_base_c12_num_data_valid fifo_update 0 4 }  { B_val_base_c12_fifo_cap fifo_data 0 4 } } }
	B_val_base_c13 { ap_fifo {  { B_val_base_c13_din fifo_data_out 1 32 }  { B_val_base_c13_full_n fifo_status_empty 0 1 }  { B_val_base_c13_write fifo_data_in 1 1 }  { B_val_base_c13_num_data_valid fifo_update 0 4 }  { B_val_base_c13_fifo_cap fifo_data 0 4 } } }
	B_cid_base { ap_none {  { B_cid_base in_data 0 32 } } }
	B_cid_base_c15 { ap_fifo {  { B_cid_base_c15_din fifo_data_out 1 32 }  { B_cid_base_c15_full_n fifo_status_empty 0 1 }  { B_cid_base_c15_write fifo_data_in 1 1 }  { B_cid_base_c15_num_data_valid fifo_update 0 4 }  { B_cid_base_c15_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c16 { ap_fifo {  { B_cid_base_c16_din fifo_data_out 1 32 }  { B_cid_base_c16_full_n fifo_status_empty 0 1 }  { B_cid_base_c16_write fifo_data_in 1 1 }  { B_cid_base_c16_num_data_valid fifo_update 0 4 }  { B_cid_base_c16_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c17 { ap_fifo {  { B_cid_base_c17_din fifo_data_out 1 32 }  { B_cid_base_c17_full_n fifo_status_empty 0 1 }  { B_cid_base_c17_write fifo_data_in 1 1 }  { B_cid_base_c17_num_data_valid fifo_update 0 4 }  { B_cid_base_c17_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c18 { ap_fifo {  { B_cid_base_c18_din fifo_data_out 1 32 }  { B_cid_base_c18_full_n fifo_status_empty 0 1 }  { B_cid_base_c18_write fifo_data_in 1 1 }  { B_cid_base_c18_num_data_valid fifo_update 0 4 }  { B_cid_base_c18_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c19 { ap_fifo {  { B_cid_base_c19_din fifo_data_out 1 32 }  { B_cid_base_c19_full_n fifo_status_empty 0 1 }  { B_cid_base_c19_write fifo_data_in 1 1 }  { B_cid_base_c19_num_data_valid fifo_update 0 4 }  { B_cid_base_c19_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c20 { ap_fifo {  { B_cid_base_c20_din fifo_data_out 1 32 }  { B_cid_base_c20_full_n fifo_status_empty 0 1 }  { B_cid_base_c20_write fifo_data_in 1 1 }  { B_cid_base_c20_num_data_valid fifo_update 0 4 }  { B_cid_base_c20_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c21 { ap_fifo {  { B_cid_base_c21_din fifo_data_out 1 32 }  { B_cid_base_c21_full_n fifo_status_empty 0 1 }  { B_cid_base_c21_write fifo_data_in 1 1 }  { B_cid_base_c21_num_data_valid fifo_update 0 4 }  { B_cid_base_c21_fifo_cap fifo_data 0 4 } } }
	B_cid_base_c22 { ap_fifo {  { B_cid_base_c22_din fifo_data_out 1 32 }  { B_cid_base_c22_full_n fifo_status_empty 0 1 }  { B_cid_base_c22_write fifo_data_in 1 1 }  { B_cid_base_c22_num_data_valid fifo_update 0 4 }  { B_cid_base_c22_fifo_cap fifo_data 0 4 } } }
}
