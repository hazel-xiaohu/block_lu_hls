set moduleName run_cached_getrf_Pipeline_VITIS_LOOP_238_5
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
set C_modelName {run_cached_getrf_Pipeline_VITIS_LOOP_238_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_0 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ add_ln230 int 32 regular  }
	{ n int 32 regular  }
	{ zext_ln245 int 10 regular  }
	{ upper_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ work_0 float 32 regular {array 1024 { 0 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ zext_ln231 int 10 regular  }
	{ work_1 float 32 regular {array 1024 { 0 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_2 float 32 regular {array 1024 { 0 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_3 float 32 regular {array 1024 { 0 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ multiplier float 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add_ln230", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln245", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "work_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln231", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "work_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "multiplier", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 99
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln230 sc_in sc_lv 32 signal 0 } 
	{ n sc_in sc_lv 32 signal 1 } 
	{ zext_ln245 sc_in sc_lv 10 signal 2 } 
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
	{ work_0_address0 sc_out sc_lv 10 signal 7 } 
	{ work_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ work_0_we0 sc_out sc_logic 1 signal 7 } 
	{ work_0_d0 sc_out sc_lv 32 signal 7 } 
	{ work_0_address1 sc_out sc_lv 10 signal 7 } 
	{ work_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ work_0_q1 sc_in sc_lv 32 signal 7 } 
	{ work_0_address2 sc_out sc_lv 10 signal 7 } 
	{ work_0_ce2 sc_out sc_logic 1 signal 7 } 
	{ work_0_q2 sc_in sc_lv 32 signal 7 } 
	{ zext_ln231 sc_in sc_lv 10 signal 8 } 
	{ work_1_address0 sc_out sc_lv 10 signal 9 } 
	{ work_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ work_1_we0 sc_out sc_logic 1 signal 9 } 
	{ work_1_d0 sc_out sc_lv 32 signal 9 } 
	{ work_1_address1 sc_out sc_lv 10 signal 9 } 
	{ work_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ work_1_q1 sc_in sc_lv 32 signal 9 } 
	{ work_1_address2 sc_out sc_lv 10 signal 9 } 
	{ work_1_ce2 sc_out sc_logic 1 signal 9 } 
	{ work_1_q2 sc_in sc_lv 32 signal 9 } 
	{ work_2_address0 sc_out sc_lv 10 signal 10 } 
	{ work_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ work_2_we0 sc_out sc_logic 1 signal 10 } 
	{ work_2_d0 sc_out sc_lv 32 signal 10 } 
	{ work_2_address1 sc_out sc_lv 10 signal 10 } 
	{ work_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ work_2_q1 sc_in sc_lv 32 signal 10 } 
	{ work_2_address2 sc_out sc_lv 10 signal 10 } 
	{ work_2_ce2 sc_out sc_logic 1 signal 10 } 
	{ work_2_q2 sc_in sc_lv 32 signal 10 } 
	{ work_3_address0 sc_out sc_lv 10 signal 11 } 
	{ work_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ work_3_we0 sc_out sc_logic 1 signal 11 } 
	{ work_3_d0 sc_out sc_lv 32 signal 11 } 
	{ work_3_address1 sc_out sc_lv 10 signal 11 } 
	{ work_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ work_3_q1 sc_in sc_lv 32 signal 11 } 
	{ work_3_address2 sc_out sc_lv 10 signal 11 } 
	{ work_3_ce2 sc_out sc_logic 1 signal 11 } 
	{ work_3_q2 sc_in sc_lv 32 signal 11 } 
	{ multiplier sc_in sc_lv 32 signal 12 } 
	{ grp_fu_2634_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2634_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2634_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2634_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2634_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2638_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2638_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2638_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2638_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2638_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2642_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2642_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2642_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2642_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2642_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2646_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2646_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2646_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2646_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2646_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2650_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2650_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2650_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2650_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2654_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2654_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2654_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2654_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2658_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2658_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2658_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2658_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2662_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2662_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2662_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2662_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln230", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln230", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "zext_ln245", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln245", "role": "default" }} , 
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
 	{ "name": "work_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address0" }} , 
 	{ "name": "work_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce0" }} , 
 	{ "name": "work_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "we0" }} , 
 	{ "name": "work_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "d0" }} , 
 	{ "name": "work_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address1" }} , 
 	{ "name": "work_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce1" }} , 
 	{ "name": "work_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q1" }} , 
 	{ "name": "work_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address2" }} , 
 	{ "name": "work_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce2" }} , 
 	{ "name": "work_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q2" }} , 
 	{ "name": "zext_ln231", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln231", "role": "default" }} , 
 	{ "name": "work_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address0" }} , 
 	{ "name": "work_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce0" }} , 
 	{ "name": "work_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "we0" }} , 
 	{ "name": "work_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "d0" }} , 
 	{ "name": "work_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address1" }} , 
 	{ "name": "work_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce1" }} , 
 	{ "name": "work_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q1" }} , 
 	{ "name": "work_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address2" }} , 
 	{ "name": "work_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce2" }} , 
 	{ "name": "work_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q2" }} , 
 	{ "name": "work_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address0" }} , 
 	{ "name": "work_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce0" }} , 
 	{ "name": "work_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "we0" }} , 
 	{ "name": "work_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "d0" }} , 
 	{ "name": "work_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address1" }} , 
 	{ "name": "work_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce1" }} , 
 	{ "name": "work_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q1" }} , 
 	{ "name": "work_2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address2" }} , 
 	{ "name": "work_2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce2" }} , 
 	{ "name": "work_2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q2" }} , 
 	{ "name": "work_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address0" }} , 
 	{ "name": "work_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce0" }} , 
 	{ "name": "work_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "we0" }} , 
 	{ "name": "work_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "d0" }} , 
 	{ "name": "work_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address1" }} , 
 	{ "name": "work_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce1" }} , 
 	{ "name": "work_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q1" }} , 
 	{ "name": "work_3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address2" }} , 
 	{ "name": "work_3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce2" }} , 
 	{ "name": "work_3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q2" }} , 
 	{ "name": "multiplier", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "multiplier", "role": "default" }} , 
 	{ "name": "grp_fu_2634_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2634_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2634_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2634_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2634_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2634_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2634_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2634_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2634_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2634_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2638_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2638_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2638_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2638_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2638_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2638_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2638_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2638_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2638_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2638_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2642_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2642_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2642_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2642_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2642_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2642_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2642_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2642_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2642_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2642_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2646_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2646_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2646_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2646_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2646_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2646_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2646_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2646_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2646_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2646_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2650_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2650_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2650_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2650_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2650_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2650_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2650_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2650_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2654_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2654_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2654_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2654_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2654_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2654_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2654_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2654_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2658_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2658_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2658_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2658_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2658_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2658_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2658_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2658_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2662_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2662_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2662_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2662_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2662_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2662_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2662_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2662_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_getrf_Pipeline_VITIS_LOOP_238_5 {
		add_ln230 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln245 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}
		work_0 {Type IO LastRead 3 FirstWrite 17}
		zext_ln231 {Type I LastRead 0 FirstWrite -1}
		work_1 {Type IO LastRead 3 FirstWrite 17}
		work_2 {Type IO LastRead 3 FirstWrite 17}
		work_3 {Type IO LastRead 3 FirstWrite 17}
		multiplier {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln230 { ap_none {  { add_ln230 in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	zext_ln245 { ap_none {  { zext_ln245 in_data 0 10 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_q0 mem_dout 0 12 } } }
	work_0 { ap_memory {  { work_0_address0 mem_address 1 10 }  { work_0_ce0 mem_ce 1 1 }  { work_0_we0 mem_we 1 1 }  { work_0_d0 mem_din 1 32 }  { work_0_address1 MemPortADDR2 1 10 }  { work_0_ce1 MemPortCE2 1 1 }  { work_0_q1 MemPortDOUT2 0 32 }  { work_0_address2 MemPortADDR2 1 10 }  { work_0_ce2 MemPortCE2 1 1 }  { work_0_q2 MemPortDOUT2 0 32 } } }
	zext_ln231 { ap_none {  { zext_ln231 in_data 0 10 } } }
	work_1 { ap_memory {  { work_1_address0 mem_address 1 10 }  { work_1_ce0 mem_ce 1 1 }  { work_1_we0 mem_we 1 1 }  { work_1_d0 mem_din 1 32 }  { work_1_address1 MemPortADDR2 1 10 }  { work_1_ce1 MemPortCE2 1 1 }  { work_1_q1 MemPortDOUT2 0 32 }  { work_1_address2 MemPortADDR2 1 10 }  { work_1_ce2 MemPortCE2 1 1 }  { work_1_q2 MemPortDOUT2 0 32 } } }
	work_2 { ap_memory {  { work_2_address0 mem_address 1 10 }  { work_2_ce0 mem_ce 1 1 }  { work_2_we0 mem_we 1 1 }  { work_2_d0 mem_din 1 32 }  { work_2_address1 MemPortADDR2 1 10 }  { work_2_ce1 MemPortCE2 1 1 }  { work_2_q1 MemPortDOUT2 0 32 }  { work_2_address2 MemPortADDR2 1 10 }  { work_2_ce2 MemPortCE2 1 1 }  { work_2_q2 MemPortDOUT2 0 32 } } }
	work_3 { ap_memory {  { work_3_address0 mem_address 1 10 }  { work_3_ce0 mem_ce 1 1 }  { work_3_we0 mem_we 1 1 }  { work_3_d0 mem_din 1 32 }  { work_3_address1 MemPortADDR2 1 10 }  { work_3_ce1 MemPortCE2 1 1 }  { work_3_q1 MemPortDOUT2 0 32 }  { work_3_address2 MemPortADDR2 1 10 }  { work_3_ce2 MemPortCE2 1 1 }  { work_3_q2 MemPortDOUT2 0 32 } } }
	multiplier { ap_none {  { multiplier in_data 0 32 } } }
}
