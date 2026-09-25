set moduleName run_cached_tstrf_Pipeline_VITIS_LOOP_171_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 21
set C_modelName {run_cached_tstrf_Pipeline_VITIS_LOOP_171_3}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_0_0 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_0_1 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_0_2 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_0_3 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_1_0 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_1_1 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_1_2 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_1_3 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_2_0 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_2_1 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_2_2 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_2_3 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_3_0 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_3_1 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_3_2 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_pos_3_3 { MEM_WIDTH 13 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ indvars_iv_i int 7 regular  }
	{ n int 7 regular  }
	{ pivot int 6 regular  }
	{ upper_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ empty_71 int 4 regular  }
	{ block_pos_0_0 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_0_1 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_0_2 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_0_3 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_1_0 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_1_1 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_1_2 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_1_3 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_2_0 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_2_1 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_2_2 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_2_3 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_3_0 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_3_1 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_3_2 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ block_pos_3_3 int 13 regular {array 256 { 1 3 } 1 1 }  }
	{ empty int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv_i", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "pivot", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty_71", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_0_0", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_0_1", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_0_2", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_0_3", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_1_0", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_1_1", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_1_2", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_1_3", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_2_0", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_2_1", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_2_2", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_2_3", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_3_0", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_3_1", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_3_2", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "block_pos_3_3", "interface" : "memory", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv_i sc_in sc_lv 7 signal 0 } 
	{ n sc_in sc_lv 7 signal 1 } 
	{ pivot sc_in sc_lv 6 signal 2 } 
	{ upper_pos_0_address0 sc_out sc_lv 10 signal 3 } 
	{ upper_pos_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ upper_pos_0_q0 sc_in sc_lv 12 signal 3 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 4 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ upper_pos_1_q0 sc_in sc_lv 12 signal 4 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 5 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ upper_pos_2_q0 sc_in sc_lv 12 signal 5 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 6 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ upper_pos_3_q0 sc_in sc_lv 12 signal 6 } 
	{ empty_71 sc_in sc_lv 4 signal 7 } 
	{ block_pos_0_0_address0 sc_out sc_lv 8 signal 8 } 
	{ block_pos_0_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ block_pos_0_0_q0 sc_in sc_lv 13 signal 8 } 
	{ block_pos_0_1_address0 sc_out sc_lv 8 signal 9 } 
	{ block_pos_0_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ block_pos_0_1_q0 sc_in sc_lv 13 signal 9 } 
	{ block_pos_0_2_address0 sc_out sc_lv 8 signal 10 } 
	{ block_pos_0_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ block_pos_0_2_q0 sc_in sc_lv 13 signal 10 } 
	{ block_pos_0_3_address0 sc_out sc_lv 8 signal 11 } 
	{ block_pos_0_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ block_pos_0_3_q0 sc_in sc_lv 13 signal 11 } 
	{ block_pos_1_0_address0 sc_out sc_lv 8 signal 12 } 
	{ block_pos_1_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ block_pos_1_0_q0 sc_in sc_lv 13 signal 12 } 
	{ block_pos_1_1_address0 sc_out sc_lv 8 signal 13 } 
	{ block_pos_1_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ block_pos_1_1_q0 sc_in sc_lv 13 signal 13 } 
	{ block_pos_1_2_address0 sc_out sc_lv 8 signal 14 } 
	{ block_pos_1_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ block_pos_1_2_q0 sc_in sc_lv 13 signal 14 } 
	{ block_pos_1_3_address0 sc_out sc_lv 8 signal 15 } 
	{ block_pos_1_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ block_pos_1_3_q0 sc_in sc_lv 13 signal 15 } 
	{ block_pos_2_0_address0 sc_out sc_lv 8 signal 16 } 
	{ block_pos_2_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ block_pos_2_0_q0 sc_in sc_lv 13 signal 16 } 
	{ block_pos_2_1_address0 sc_out sc_lv 8 signal 17 } 
	{ block_pos_2_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ block_pos_2_1_q0 sc_in sc_lv 13 signal 17 } 
	{ block_pos_2_2_address0 sc_out sc_lv 8 signal 18 } 
	{ block_pos_2_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ block_pos_2_2_q0 sc_in sc_lv 13 signal 18 } 
	{ block_pos_2_3_address0 sc_out sc_lv 8 signal 19 } 
	{ block_pos_2_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ block_pos_2_3_q0 sc_in sc_lv 13 signal 19 } 
	{ block_pos_3_0_address0 sc_out sc_lv 8 signal 20 } 
	{ block_pos_3_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ block_pos_3_0_q0 sc_in sc_lv 13 signal 20 } 
	{ block_pos_3_1_address0 sc_out sc_lv 8 signal 21 } 
	{ block_pos_3_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ block_pos_3_1_q0 sc_in sc_lv 13 signal 21 } 
	{ block_pos_3_2_address0 sc_out sc_lv 8 signal 22 } 
	{ block_pos_3_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ block_pos_3_2_q0 sc_in sc_lv 13 signal 22 } 
	{ block_pos_3_3_address0 sc_out sc_lv 8 signal 23 } 
	{ block_pos_3_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ block_pos_3_3_q0 sc_in sc_lv 13 signal 23 } 
	{ empty sc_in sc_lv 2 signal 24 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv_i", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "indvars_iv_i", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "pivot", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pivot", "role": "default" }} , 
 	{ "name": "upper_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "address0" }} , 
 	{ "name": "upper_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "ce0" }} , 
 	{ "name": "upper_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "q0" }} , 
 	{ "name": "upper_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "address0" }} , 
 	{ "name": "upper_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "ce0" }} , 
 	{ "name": "upper_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "q0" }} , 
 	{ "name": "upper_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "address0" }} , 
 	{ "name": "upper_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "ce0" }} , 
 	{ "name": "upper_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "q0" }} , 
 	{ "name": "upper_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "address0" }} , 
 	{ "name": "upper_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "ce0" }} , 
 	{ "name": "upper_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "q0" }} , 
 	{ "name": "empty_71", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_71", "role": "default" }} , 
 	{ "name": "block_pos_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_0_0", "role": "address0" }} , 
 	{ "name": "block_pos_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_0_0", "role": "ce0" }} , 
 	{ "name": "block_pos_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_0_0", "role": "q0" }} , 
 	{ "name": "block_pos_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_0_1", "role": "address0" }} , 
 	{ "name": "block_pos_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_0_1", "role": "ce0" }} , 
 	{ "name": "block_pos_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_0_1", "role": "q0" }} , 
 	{ "name": "block_pos_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_0_2", "role": "address0" }} , 
 	{ "name": "block_pos_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_0_2", "role": "ce0" }} , 
 	{ "name": "block_pos_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_0_2", "role": "q0" }} , 
 	{ "name": "block_pos_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_0_3", "role": "address0" }} , 
 	{ "name": "block_pos_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_0_3", "role": "ce0" }} , 
 	{ "name": "block_pos_0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_0_3", "role": "q0" }} , 
 	{ "name": "block_pos_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_1_0", "role": "address0" }} , 
 	{ "name": "block_pos_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_1_0", "role": "ce0" }} , 
 	{ "name": "block_pos_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_1_0", "role": "q0" }} , 
 	{ "name": "block_pos_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_1_1", "role": "address0" }} , 
 	{ "name": "block_pos_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_1_1", "role": "ce0" }} , 
 	{ "name": "block_pos_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_1_1", "role": "q0" }} , 
 	{ "name": "block_pos_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_1_2", "role": "address0" }} , 
 	{ "name": "block_pos_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_1_2", "role": "ce0" }} , 
 	{ "name": "block_pos_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_1_2", "role": "q0" }} , 
 	{ "name": "block_pos_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_1_3", "role": "address0" }} , 
 	{ "name": "block_pos_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_1_3", "role": "ce0" }} , 
 	{ "name": "block_pos_1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_1_3", "role": "q0" }} , 
 	{ "name": "block_pos_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_2_0", "role": "address0" }} , 
 	{ "name": "block_pos_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_2_0", "role": "ce0" }} , 
 	{ "name": "block_pos_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_2_0", "role": "q0" }} , 
 	{ "name": "block_pos_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_2_1", "role": "address0" }} , 
 	{ "name": "block_pos_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_2_1", "role": "ce0" }} , 
 	{ "name": "block_pos_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_2_1", "role": "q0" }} , 
 	{ "name": "block_pos_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_2_2", "role": "address0" }} , 
 	{ "name": "block_pos_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_2_2", "role": "ce0" }} , 
 	{ "name": "block_pos_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_2_2", "role": "q0" }} , 
 	{ "name": "block_pos_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_2_3", "role": "address0" }} , 
 	{ "name": "block_pos_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_2_3", "role": "ce0" }} , 
 	{ "name": "block_pos_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_2_3", "role": "q0" }} , 
 	{ "name": "block_pos_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_3_0", "role": "address0" }} , 
 	{ "name": "block_pos_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_3_0", "role": "ce0" }} , 
 	{ "name": "block_pos_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_3_0", "role": "q0" }} , 
 	{ "name": "block_pos_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_3_1", "role": "address0" }} , 
 	{ "name": "block_pos_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_3_1", "role": "ce0" }} , 
 	{ "name": "block_pos_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_3_1", "role": "q0" }} , 
 	{ "name": "block_pos_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_3_2", "role": "address0" }} , 
 	{ "name": "block_pos_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_3_2", "role": "ce0" }} , 
 	{ "name": "block_pos_3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_3_2", "role": "q0" }} , 
 	{ "name": "block_pos_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_pos_3_3", "role": "address0" }} , 
 	{ "name": "block_pos_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_pos_3_3", "role": "ce0" }} , 
 	{ "name": "block_pos_3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "block_pos_3_3", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_tstrf_Pipeline_VITIS_LOOP_171_3 {
		indvars_iv_i {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		pivot {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 0 FirstWrite -1}
		upper_pos_1 {Type I LastRead 0 FirstWrite -1}
		upper_pos_2 {Type I LastRead 0 FirstWrite -1}
		upper_pos_3 {Type I LastRead 0 FirstWrite -1}
		empty_71 {Type I LastRead 0 FirstWrite -1}
		block_pos_0_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_0_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_1_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_2_3 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_0 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_1 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_2 {Type I LastRead 1 FirstWrite -1}
		block_pos_3_3 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	indvars_iv_i { ap_none {  { indvars_iv_i in_data 0 7 } } }
	n { ap_none {  { n in_data 0 7 } } }
	pivot { ap_none {  { pivot in_data 0 6 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_q0 mem_dout 0 12 } } }
	empty_71 { ap_none {  { empty_71 in_data 0 4 } } }
	block_pos_0_0 { ap_memory {  { block_pos_0_0_address0 mem_address 1 8 }  { block_pos_0_0_ce0 mem_ce 1 1 }  { block_pos_0_0_q0 mem_dout 0 13 } } }
	block_pos_0_1 { ap_memory {  { block_pos_0_1_address0 mem_address 1 8 }  { block_pos_0_1_ce0 mem_ce 1 1 }  { block_pos_0_1_q0 mem_dout 0 13 } } }
	block_pos_0_2 { ap_memory {  { block_pos_0_2_address0 mem_address 1 8 }  { block_pos_0_2_ce0 mem_ce 1 1 }  { block_pos_0_2_q0 mem_dout 0 13 } } }
	block_pos_0_3 { ap_memory {  { block_pos_0_3_address0 mem_address 1 8 }  { block_pos_0_3_ce0 mem_ce 1 1 }  { block_pos_0_3_q0 mem_dout 0 13 } } }
	block_pos_1_0 { ap_memory {  { block_pos_1_0_address0 mem_address 1 8 }  { block_pos_1_0_ce0 mem_ce 1 1 }  { block_pos_1_0_q0 mem_dout 0 13 } } }
	block_pos_1_1 { ap_memory {  { block_pos_1_1_address0 mem_address 1 8 }  { block_pos_1_1_ce0 mem_ce 1 1 }  { block_pos_1_1_q0 mem_dout 0 13 } } }
	block_pos_1_2 { ap_memory {  { block_pos_1_2_address0 mem_address 1 8 }  { block_pos_1_2_ce0 mem_ce 1 1 }  { block_pos_1_2_q0 mem_dout 0 13 } } }
	block_pos_1_3 { ap_memory {  { block_pos_1_3_address0 mem_address 1 8 }  { block_pos_1_3_ce0 mem_ce 1 1 }  { block_pos_1_3_q0 mem_dout 0 13 } } }
	block_pos_2_0 { ap_memory {  { block_pos_2_0_address0 mem_address 1 8 }  { block_pos_2_0_ce0 mem_ce 1 1 }  { block_pos_2_0_q0 mem_dout 0 13 } } }
	block_pos_2_1 { ap_memory {  { block_pos_2_1_address0 mem_address 1 8 }  { block_pos_2_1_ce0 mem_ce 1 1 }  { block_pos_2_1_q0 mem_dout 0 13 } } }
	block_pos_2_2 { ap_memory {  { block_pos_2_2_address0 mem_address 1 8 }  { block_pos_2_2_ce0 mem_ce 1 1 }  { block_pos_2_2_q0 mem_dout 0 13 } } }
	block_pos_2_3 { ap_memory {  { block_pos_2_3_address0 mem_address 1 8 }  { block_pos_2_3_ce0 mem_ce 1 1 }  { block_pos_2_3_q0 mem_dout 0 13 } } }
	block_pos_3_0 { ap_memory {  { block_pos_3_0_address0 mem_address 1 8 }  { block_pos_3_0_ce0 mem_ce 1 1 }  { block_pos_3_0_q0 mem_dout 0 13 } } }
	block_pos_3_1 { ap_memory {  { block_pos_3_1_address0 mem_address 1 8 }  { block_pos_3_1_ce0 mem_ce 1 1 }  { block_pos_3_1_q0 mem_dout 0 13 } } }
	block_pos_3_2 { ap_memory {  { block_pos_3_2_address0 mem_address 1 8 }  { block_pos_3_2_ce0 mem_ce 1 1 }  { block_pos_3_2_q0 mem_dout 0 13 } } }
	block_pos_3_3 { ap_memory {  { block_pos_3_3_address0 mem_address 1 8 }  { block_pos_3_3_ce0 mem_ce 1 1 }  { block_pos_3_3_q0 mem_dout 0 13 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
}
