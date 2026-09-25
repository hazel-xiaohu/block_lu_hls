set moduleName run_cached_getrf_Pipeline_VITIS_LOOP_131_3
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
set C_modelName {run_cached_getrf_Pipeline_VITIS_LOOP_131_3}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lower_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ indvars_iv_i int 33 regular  }
	{ row_5 int 32 regular  }
	{ n int 32 regular  }
	{ zext_ln130 int 10 regular  }
	{ lower_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ zext_ln132 int 10 regular  }
	{ upper_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv_i", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "row_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln130", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln132", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv_i sc_in sc_lv 33 signal 0 } 
	{ row_5 sc_in sc_lv 32 signal 1 } 
	{ n sc_in sc_lv 32 signal 2 } 
	{ zext_ln130 sc_in sc_lv 10 signal 3 } 
	{ lower_pos_0_address0 sc_out sc_lv 10 signal 4 } 
	{ lower_pos_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ lower_pos_0_q0 sc_in sc_lv 12 signal 4 } 
	{ lower_pos_1_address0 sc_out sc_lv 10 signal 5 } 
	{ lower_pos_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ lower_pos_1_q0 sc_in sc_lv 12 signal 5 } 
	{ lower_pos_2_address0 sc_out sc_lv 10 signal 6 } 
	{ lower_pos_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ lower_pos_2_q0 sc_in sc_lv 12 signal 6 } 
	{ lower_pos_3_address0 sc_out sc_lv 10 signal 7 } 
	{ lower_pos_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ lower_pos_3_q0 sc_in sc_lv 12 signal 7 } 
	{ zext_ln132 sc_in sc_lv 10 signal 8 } 
	{ upper_pos_0_address0 sc_out sc_lv 10 signal 9 } 
	{ upper_pos_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ upper_pos_0_q0 sc_in sc_lv 12 signal 9 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 10 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ upper_pos_1_q0 sc_in sc_lv 12 signal 10 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 11 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ upper_pos_2_q0 sc_in sc_lv 12 signal 11 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 12 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ upper_pos_3_q0 sc_in sc_lv 12 signal 12 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv_i", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "indvars_iv_i", "role": "default" }} , 
 	{ "name": "row_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_5", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "zext_ln130", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln130", "role": "default" }} , 
 	{ "name": "lower_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "address0" }} , 
 	{ "name": "lower_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "ce0" }} , 
 	{ "name": "lower_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "q0" }} , 
 	{ "name": "lower_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "address0" }} , 
 	{ "name": "lower_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "ce0" }} , 
 	{ "name": "lower_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "q0" }} , 
 	{ "name": "lower_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "address0" }} , 
 	{ "name": "lower_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "ce0" }} , 
 	{ "name": "lower_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "q0" }} , 
 	{ "name": "lower_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "address0" }} , 
 	{ "name": "lower_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "ce0" }} , 
 	{ "name": "lower_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "q0" }} , 
 	{ "name": "zext_ln132", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln132", "role": "default" }} , 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_getrf_Pipeline_VITIS_LOOP_131_3 {
		indvars_iv_i {Type I LastRead 0 FirstWrite -1}
		row_5 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln130 {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 2 FirstWrite -1}
		lower_pos_1 {Type I LastRead 2 FirstWrite -1}
		lower_pos_2 {Type I LastRead 2 FirstWrite -1}
		lower_pos_3 {Type I LastRead 2 FirstWrite -1}
		zext_ln132 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	indvars_iv_i { ap_none {  { indvars_iv_i in_data 0 33 } } }
	row_5 { ap_none {  { row_5 in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	zext_ln130 { ap_none {  { zext_ln130 in_data 0 10 } } }
	lower_pos_0 { ap_memory {  { lower_pos_0_address0 mem_address 1 10 }  { lower_pos_0_ce0 mem_ce 1 1 }  { lower_pos_0_q0 mem_dout 0 12 } } }
	lower_pos_1 { ap_memory {  { lower_pos_1_address0 mem_address 1 10 }  { lower_pos_1_ce0 mem_ce 1 1 }  { lower_pos_1_q0 mem_dout 0 12 } } }
	lower_pos_2 { ap_memory {  { lower_pos_2_address0 mem_address 1 10 }  { lower_pos_2_ce0 mem_ce 1 1 }  { lower_pos_2_q0 mem_dout 0 12 } } }
	lower_pos_3 { ap_memory {  { lower_pos_3_address0 mem_address 1 10 }  { lower_pos_3_ce0 mem_ce 1 1 }  { lower_pos_3_q0 mem_dout 0 12 } } }
	zext_ln132 { ap_none {  { zext_ln132 in_data 0 10 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_q0 mem_dout 0 12 } } }
}
