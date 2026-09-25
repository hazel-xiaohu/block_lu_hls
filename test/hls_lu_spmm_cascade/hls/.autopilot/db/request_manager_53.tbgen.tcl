set moduleName request_manager_53
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {request_manager.53}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ crequest int 68 regular {fifo 0 volatile }  }
	{ c_first int 225 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "c_first", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ crequest_dout sc_in sc_lv 68 signal 0 } 
	{ crequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ crequest_read sc_out sc_logic 1 signal 0 } 
	{ crequest_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ crequest_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ c_first_din sc_out sc_lv 225 signal 1 } 
	{ c_first_full_n sc_in sc_logic 1 signal 1 } 
	{ c_first_write sc_out sc_logic 1 signal 1 } 
	{ c_first_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ c_first_fifo_cap sc_in sc_lv 3 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "crequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "dout" }} , 
 	{ "name": "crequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "empty_n" }} , 
 	{ "name": "crequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "read" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "c_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "c_first", "role": "din" }} , 
 	{ "name": "c_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "full_n" }} , 
 	{ "name": "c_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "write" }} , 
 	{ "name": "c_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_first", "role": "num_data_valid" }} , 
 	{ "name": "c_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_first", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_manager_53 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_53_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	crequest { ap_fifo {  { crequest_dout fifo_data_out 0 68 }  { crequest_empty_n fifo_status_empty 0 1 }  { crequest_read fifo_data_in 1 1 }  { crequest_num_data_valid fifo_update 0 3 }  { crequest_fifo_cap fifo_data 0 3 } } }
	c_first { ap_fifo {  { c_first_din fifo_data_out 1 225 }  { c_first_full_n fifo_status_empty 0 1 }  { c_first_write fifo_data_in 1 1 }  { c_first_num_data_valid fifo_update 0 3 }  { c_first_fifo_cap fifo_data 0 3 } } }
}
