set moduleName request_merger_68
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
set C_modelName {request_merger.68}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ v_first int 225 regular {fifo 0 volatile }  }
	{ v_req int 225 regular {fifo 0 volatile }  }
	{ vrequest3 int 225 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "v_first", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest3", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v_first_dout sc_in sc_lv 225 signal 0 } 
	{ v_first_empty_n sc_in sc_logic 1 signal 0 } 
	{ v_first_read sc_out sc_logic 1 signal 0 } 
	{ v_first_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ v_first_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ v_req_dout sc_in sc_lv 225 signal 1 } 
	{ v_req_empty_n sc_in sc_logic 1 signal 1 } 
	{ v_req_read sc_out sc_logic 1 signal 1 } 
	{ v_req_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ v_req_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ vrequest3_din sc_out sc_lv 225 signal 2 } 
	{ vrequest3_full_n sc_in sc_logic 1 signal 2 } 
	{ vrequest3_write sc_out sc_logic 1 signal 2 } 
	{ vrequest3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ vrequest3_fifo_cap sc_in sc_lv 3 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_first_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "v_first", "role": "dout" }} , 
 	{ "name": "v_first_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "empty_n" }} , 
 	{ "name": "v_first_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "read" }} , 
 	{ "name": "v_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_first", "role": "num_data_valid" }} , 
 	{ "name": "v_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_first", "role": "fifo_cap" }} , 
 	{ "name": "v_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "v_req", "role": "dout" }} , 
 	{ "name": "v_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "empty_n" }} , 
 	{ "name": "v_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "read" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "vrequest3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vrequest3", "role": "din" }} , 
 	{ "name": "vrequest3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "full_n" }} , 
 	{ "name": "vrequest3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "write" }} , 
 	{ "name": "vrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest3", "role": "num_data_valid" }} , 
 	{ "name": "vrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest3", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_merger_68 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}}
	request_merger_68_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v_first { ap_fifo {  { v_first_dout fifo_data_out 0 225 }  { v_first_empty_n fifo_status_empty 0 1 }  { v_first_read fifo_data_in 1 1 }  { v_first_num_data_valid fifo_update 0 3 }  { v_first_fifo_cap fifo_data 0 3 } } }
	v_req { ap_fifo {  { v_req_dout fifo_data_out 0 225 }  { v_req_empty_n fifo_status_empty 0 1 }  { v_req_read fifo_data_in 1 1 }  { v_req_num_data_valid fifo_update 0 3 }  { v_req_fifo_cap fifo_data 0 3 } } }
	vrequest3 { ap_fifo {  { vrequest3_din fifo_data_out 1 225 }  { vrequest3_full_n fifo_status_empty 0 1 }  { vrequest3_write fifo_data_in 1 1 }  { vrequest3_num_data_valid fifo_update 0 3 }  { vrequest3_fifo_cap fifo_data 0 3 } } }
}
