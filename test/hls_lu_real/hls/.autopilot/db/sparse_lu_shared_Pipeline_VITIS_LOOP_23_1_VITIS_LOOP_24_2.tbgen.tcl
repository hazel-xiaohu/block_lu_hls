set moduleName sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2
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
set C_modelName {sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lower_pos { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lower_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lower_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lower_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict upper_pos { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict factor { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict factor_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict factor_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict factor_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ select_ln24 int 32 regular  }
	{ mul_ln22 int 62 regular  }
	{ n int 32 regular  }
	{ lower_pos int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ lower_pos_1 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ lower_pos_2 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ lower_pos_3 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ upper_pos int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 0 3 } 0 1 }  }
	{ factor float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ factor_1 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ factor_2 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ factor_3 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "select_ln24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln22", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lower_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lower_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lower_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upper_pos", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "factor", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "factor_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "factor_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "factor_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln24 sc_in sc_lv 32 signal 0 } 
	{ mul_ln22 sc_in sc_lv 62 signal 1 } 
	{ n sc_in sc_lv 32 signal 2 } 
	{ lower_pos_address0 sc_out sc_lv 10 signal 3 } 
	{ lower_pos_ce0 sc_out sc_logic 1 signal 3 } 
	{ lower_pos_we0 sc_out sc_logic 1 signal 3 } 
	{ lower_pos_d0 sc_out sc_lv 12 signal 3 } 
	{ lower_pos_1_address0 sc_out sc_lv 10 signal 4 } 
	{ lower_pos_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ lower_pos_1_we0 sc_out sc_logic 1 signal 4 } 
	{ lower_pos_1_d0 sc_out sc_lv 12 signal 4 } 
	{ lower_pos_2_address0 sc_out sc_lv 10 signal 5 } 
	{ lower_pos_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ lower_pos_2_we0 sc_out sc_logic 1 signal 5 } 
	{ lower_pos_2_d0 sc_out sc_lv 12 signal 5 } 
	{ lower_pos_3_address0 sc_out sc_lv 10 signal 6 } 
	{ lower_pos_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ lower_pos_3_we0 sc_out sc_logic 1 signal 6 } 
	{ lower_pos_3_d0 sc_out sc_lv 12 signal 6 } 
	{ upper_pos_address0 sc_out sc_lv 10 signal 7 } 
	{ upper_pos_ce0 sc_out sc_logic 1 signal 7 } 
	{ upper_pos_we0 sc_out sc_logic 1 signal 7 } 
	{ upper_pos_d0 sc_out sc_lv 12 signal 7 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 8 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ upper_pos_1_we0 sc_out sc_logic 1 signal 8 } 
	{ upper_pos_1_d0 sc_out sc_lv 12 signal 8 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 9 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ upper_pos_2_we0 sc_out sc_logic 1 signal 9 } 
	{ upper_pos_2_d0 sc_out sc_lv 12 signal 9 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 10 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ upper_pos_3_we0 sc_out sc_logic 1 signal 10 } 
	{ upper_pos_3_d0 sc_out sc_lv 12 signal 10 } 
	{ factor_address0 sc_out sc_lv 10 signal 11 } 
	{ factor_ce0 sc_out sc_logic 1 signal 11 } 
	{ factor_we0 sc_out sc_logic 1 signal 11 } 
	{ factor_d0 sc_out sc_lv 32 signal 11 } 
	{ factor_1_address0 sc_out sc_lv 10 signal 12 } 
	{ factor_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ factor_1_we0 sc_out sc_logic 1 signal 12 } 
	{ factor_1_d0 sc_out sc_lv 32 signal 12 } 
	{ factor_2_address0 sc_out sc_lv 10 signal 13 } 
	{ factor_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ factor_2_we0 sc_out sc_logic 1 signal 13 } 
	{ factor_2_d0 sc_out sc_lv 32 signal 13 } 
	{ factor_3_address0 sc_out sc_lv 10 signal 14 } 
	{ factor_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ factor_3_we0 sc_out sc_logic 1 signal 14 } 
	{ factor_3_d0 sc_out sc_lv 32 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln24", "role": "default" }} , 
 	{ "name": "mul_ln22", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln22", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "lower_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos", "role": "address0" }} , 
 	{ "name": "lower_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos", "role": "ce0" }} , 
 	{ "name": "lower_pos_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos", "role": "we0" }} , 
 	{ "name": "lower_pos_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos", "role": "d0" }} , 
 	{ "name": "lower_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "address0" }} , 
 	{ "name": "lower_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "ce0" }} , 
 	{ "name": "lower_pos_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "we0" }} , 
 	{ "name": "lower_pos_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "d0" }} , 
 	{ "name": "lower_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "address0" }} , 
 	{ "name": "lower_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "ce0" }} , 
 	{ "name": "lower_pos_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "we0" }} , 
 	{ "name": "lower_pos_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "d0" }} , 
 	{ "name": "lower_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "address0" }} , 
 	{ "name": "lower_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "ce0" }} , 
 	{ "name": "lower_pos_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "we0" }} , 
 	{ "name": "lower_pos_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "d0" }} , 
 	{ "name": "upper_pos_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos", "role": "address0" }} , 
 	{ "name": "upper_pos_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos", "role": "ce0" }} , 
 	{ "name": "upper_pos_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos", "role": "we0" }} , 
 	{ "name": "upper_pos_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos", "role": "d0" }} , 
 	{ "name": "upper_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "address0" }} , 
 	{ "name": "upper_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "ce0" }} , 
 	{ "name": "upper_pos_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "we0" }} , 
 	{ "name": "upper_pos_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "d0" }} , 
 	{ "name": "upper_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "address0" }} , 
 	{ "name": "upper_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "ce0" }} , 
 	{ "name": "upper_pos_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "we0" }} , 
 	{ "name": "upper_pos_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "d0" }} , 
 	{ "name": "upper_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "address0" }} , 
 	{ "name": "upper_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "ce0" }} , 
 	{ "name": "upper_pos_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "we0" }} , 
 	{ "name": "upper_pos_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "d0" }} , 
 	{ "name": "factor_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor", "role": "address0" }} , 
 	{ "name": "factor_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor", "role": "ce0" }} , 
 	{ "name": "factor_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor", "role": "we0" }} , 
 	{ "name": "factor_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor", "role": "d0" }} , 
 	{ "name": "factor_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_1", "role": "address0" }} , 
 	{ "name": "factor_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "ce0" }} , 
 	{ "name": "factor_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "we0" }} , 
 	{ "name": "factor_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_1", "role": "d0" }} , 
 	{ "name": "factor_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_2", "role": "address0" }} , 
 	{ "name": "factor_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "ce0" }} , 
 	{ "name": "factor_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "we0" }} , 
 	{ "name": "factor_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_2", "role": "d0" }} , 
 	{ "name": "factor_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_3", "role": "address0" }} , 
 	{ "name": "factor_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "ce0" }} , 
 	{ "name": "factor_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "we0" }} , 
 	{ "name": "factor_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_3", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2 {
		select_ln24 {Type I LastRead 0 FirstWrite -1}
		mul_ln22 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		lower_pos {Type O LastRead -1 FirstWrite 2}
		lower_pos_1 {Type O LastRead -1 FirstWrite 2}
		lower_pos_2 {Type O LastRead -1 FirstWrite 2}
		lower_pos_3 {Type O LastRead -1 FirstWrite 2}
		upper_pos {Type O LastRead -1 FirstWrite 2}
		upper_pos_1 {Type O LastRead -1 FirstWrite 2}
		upper_pos_2 {Type O LastRead -1 FirstWrite 2}
		upper_pos_3 {Type O LastRead -1 FirstWrite 2}
		factor {Type O LastRead -1 FirstWrite 2}
		factor_1 {Type O LastRead -1 FirstWrite 2}
		factor_2 {Type O LastRead -1 FirstWrite 2}
		factor_3 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln24 { ap_none {  { select_ln24 in_data 0 32 } } }
	mul_ln22 { ap_none {  { mul_ln22 in_data 0 62 } } }
	n { ap_none {  { n in_data 0 32 } } }
	lower_pos { ap_memory {  { lower_pos_address0 mem_address 1 10 }  { lower_pos_ce0 mem_ce 1 1 }  { lower_pos_we0 mem_we 1 1 }  { lower_pos_d0 mem_din 1 12 } } }
	lower_pos_1 { ap_memory {  { lower_pos_1_address0 mem_address 1 10 }  { lower_pos_1_ce0 mem_ce 1 1 }  { lower_pos_1_we0 mem_we 1 1 }  { lower_pos_1_d0 mem_din 1 12 } } }
	lower_pos_2 { ap_memory {  { lower_pos_2_address0 mem_address 1 10 }  { lower_pos_2_ce0 mem_ce 1 1 }  { lower_pos_2_we0 mem_we 1 1 }  { lower_pos_2_d0 mem_din 1 12 } } }
	lower_pos_3 { ap_memory {  { lower_pos_3_address0 mem_address 1 10 }  { lower_pos_3_ce0 mem_ce 1 1 }  { lower_pos_3_we0 mem_we 1 1 }  { lower_pos_3_d0 mem_din 1 12 } } }
	upper_pos { ap_memory {  { upper_pos_address0 mem_address 1 10 }  { upper_pos_ce0 mem_ce 1 1 }  { upper_pos_we0 mem_we 1 1 }  { upper_pos_d0 mem_din 1 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_we0 mem_we 1 1 }  { upper_pos_1_d0 mem_din 1 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_we0 mem_we 1 1 }  { upper_pos_2_d0 mem_din 1 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_we0 mem_we 1 1 }  { upper_pos_3_d0 mem_din 1 12 } } }
	factor { ap_memory {  { factor_address0 mem_address 1 10 }  { factor_ce0 mem_ce 1 1 }  { factor_we0 mem_we 1 1 }  { factor_d0 mem_din 1 32 } } }
	factor_1 { ap_memory {  { factor_1_address0 mem_address 1 10 }  { factor_1_ce0 mem_ce 1 1 }  { factor_1_we0 mem_we 1 1 }  { factor_1_d0 mem_din 1 32 } } }
	factor_2 { ap_memory {  { factor_2_address0 mem_address 1 10 }  { factor_2_ce0 mem_ce 1 1 }  { factor_2_we0 mem_we 1 1 }  { factor_2_d0 mem_din 1 32 } } }
	factor_3 { ap_memory {  { factor_3_address0 mem_address 1 10 }  { factor_3_ce0 mem_ce 1 1 }  { factor_3_we0 mem_we 1 1 }  { factor_3_d0 mem_din 1 32 } } }
}
