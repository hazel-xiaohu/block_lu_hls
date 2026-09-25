set moduleName prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2
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
set C_modelName {prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict local_rcsr { MEM_WIDTH 128 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ zext_ln205 int 6 regular  }
	{ local_rcsr int 128 regular {array 16 { 1 1 } 1 1 }  }
	{ keep_mask_out int 1024 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln205", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "local_rcsr", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "keep_mask_out", "interface" : "wire", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln205 sc_in sc_lv 6 signal 0 } 
	{ local_rcsr_address0 sc_out sc_lv 4 signal 1 } 
	{ local_rcsr_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_rcsr_q0 sc_in sc_lv 128 signal 1 } 
	{ local_rcsr_address1 sc_out sc_lv 4 signal 1 } 
	{ local_rcsr_ce1 sc_out sc_logic 1 signal 1 } 
	{ local_rcsr_q1 sc_in sc_lv 128 signal 1 } 
	{ keep_mask_out sc_out sc_lv 1024 signal 2 } 
	{ keep_mask_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln205", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln205", "role": "default" }} , 
 	{ "name": "local_rcsr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_rcsr", "role": "address0" }} , 
 	{ "name": "local_rcsr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "ce0" }} , 
 	{ "name": "local_rcsr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "local_rcsr", "role": "q0" }} , 
 	{ "name": "local_rcsr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_rcsr", "role": "address1" }} , 
 	{ "name": "local_rcsr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "ce1" }} , 
 	{ "name": "local_rcsr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "local_rcsr", "role": "q1" }} , 
 	{ "name": "keep_mask_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "keep_mask_out", "role": "default" }} , 
 	{ "name": "keep_mask_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keep_mask_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2 {
		zext_ln205 {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type I LastRead 1 FirstWrite -1}
		keep_mask_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1025", "Max" : "1025"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln205 { ap_none {  { zext_ln205 in_data 0 6 } } }
	local_rcsr { ap_memory {  { local_rcsr_address0 mem_address 1 4 }  { local_rcsr_ce0 mem_ce 1 1 }  { local_rcsr_q0 mem_dout 0 128 }  { local_rcsr_address1 MemPortADDR2 1 4 }  { local_rcsr_ce1 MemPortCE2 1 1 }  { local_rcsr_q1 MemPortDOUT2 0 128 } } }
	keep_mask_out { ap_vld {  { keep_mask_out out_data 1 1024 }  { keep_mask_out_ap_vld out_vld 1 1 } } }
}
