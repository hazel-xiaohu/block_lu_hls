set moduleName rschedule_access_Pipeline_VITIS_LOOP_87_3
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
set cdfgNum 272
set C_modelName {rschedule_access_Pipeline_VITIS_LOOP_87_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict off_pointer { MEM_WIDTH 128 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Bridx { MEM_WIDTH 128 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ zext_ln87_1 int 30 regular  }
	{ add_ln87 int 31 regular  }
	{ off_pointer int 128 regular {array 16 { 1 3 } 1 1 }  }
	{ empty int 1 regular  }
	{ Bridx int 128 regular {array 2 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln87_1", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln87", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "off_pointer", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Bridx", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln87_1 sc_in sc_lv 30 signal 0 } 
	{ add_ln87 sc_in sc_lv 31 signal 1 } 
	{ off_pointer_address0 sc_out sc_lv 4 signal 2 } 
	{ off_pointer_ce0 sc_out sc_logic 1 signal 2 } 
	{ off_pointer_q0 sc_in sc_lv 128 signal 2 } 
	{ empty sc_in sc_lv 1 signal 3 } 
	{ Bridx_address0 sc_out sc_lv 1 signal 4 } 
	{ Bridx_ce0 sc_out sc_logic 1 signal 4 } 
	{ Bridx_we0 sc_out sc_logic 1 signal 4 } 
	{ Bridx_d0 sc_out sc_lv 128 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln87_1", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln87_1", "role": "default" }} , 
 	{ "name": "add_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln87", "role": "default" }} , 
 	{ "name": "off_pointer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "off_pointer", "role": "address0" }} , 
 	{ "name": "off_pointer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "off_pointer", "role": "ce0" }} , 
 	{ "name": "off_pointer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "off_pointer", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "Bridx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx", "role": "address0" }} , 
 	{ "name": "Bridx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx", "role": "ce0" }} , 
 	{ "name": "Bridx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx", "role": "we0" }} , 
 	{ "name": "Bridx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bridx", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	rschedule_access_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln87_1 { ap_none {  { zext_ln87_1 in_data 0 30 } } }
	add_ln87 { ap_none {  { add_ln87 in_data 0 31 } } }
	off_pointer { ap_memory {  { off_pointer_address0 mem_address 1 4 }  { off_pointer_ce0 mem_ce 1 1 }  { off_pointer_q0 mem_dout 0 128 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	Bridx { ap_memory {  { Bridx_address0 mem_address 1 1 }  { Bridx_ce0 mem_ce 1 1 }  { Bridx_we0 mem_we 1 1 }  { Bridx_d0 mem_din 1 128 } } }
}
