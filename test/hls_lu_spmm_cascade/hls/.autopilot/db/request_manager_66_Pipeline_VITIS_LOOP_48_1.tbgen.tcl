set moduleName request_manager_66_Pipeline_VITIS_LOOP_48_1
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
set C_modelName {request_manager.66_Pipeline_VITIS_LOOP_48_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vrequest int 68 regular {fifo 0 volatile }  }
	{ v_first int 225 regular {fifo 1 volatile }  }
	{ curr_request_3_0_out int 3 regular {pointer 1}  }
	{ curr_request_6_0_out int 32 regular {pointer 1}  }
	{ curr_request_7_0_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vrequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "v_first", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_3_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_6_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_7_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest_dout sc_in sc_lv 68 signal 0 } 
	{ vrequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest_read sc_out sc_logic 1 signal 0 } 
	{ vrequest_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vrequest_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ v_first_din sc_out sc_lv 225 signal 1 } 
	{ v_first_full_n sc_in sc_logic 1 signal 1 } 
	{ v_first_write sc_out sc_logic 1 signal 1 } 
	{ v_first_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ v_first_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ curr_request_3_0_out sc_out sc_lv 3 signal 2 } 
	{ curr_request_3_0_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ curr_request_6_0_out sc_out sc_lv 32 signal 3 } 
	{ curr_request_6_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ curr_request_7_0_out sc_out sc_lv 32 signal 4 } 
	{ curr_request_7_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vrequest", "role": "dout" }} , 
 	{ "name": "vrequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "empty_n" }} , 
 	{ "name": "vrequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "read" }} , 
 	{ "name": "vrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest", "role": "num_data_valid" }} , 
 	{ "name": "vrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest", "role": "fifo_cap" }} , 
 	{ "name": "v_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "v_first", "role": "din" }} , 
 	{ "name": "v_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "full_n" }} , 
 	{ "name": "v_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "write" }} , 
 	{ "name": "v_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_first", "role": "num_data_valid" }} , 
 	{ "name": "v_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_first", "role": "fifo_cap" }} , 
 	{ "name": "curr_request_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_3_0_out", "role": "default" }} , 
 	{ "name": "curr_request_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_6_0_out", "role": "default" }} , 
 	{ "name": "curr_request_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_7_0_out", "role": "default" }} , 
 	{ "name": "curr_request_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_7_0_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_manager_66_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vrequest { ap_fifo {  { vrequest_dout fifo_data_out 0 68 }  { vrequest_empty_n fifo_status_empty 0 1 }  { vrequest_read fifo_data_in 1 1 }  { vrequest_num_data_valid fifo_update 0 3 }  { vrequest_fifo_cap fifo_data 0 3 } } }
	v_first { ap_fifo {  { v_first_din fifo_data_out 1 225 }  { v_first_full_n fifo_status_empty 0 1 }  { v_first_write fifo_data_in 1 1 }  { v_first_num_data_valid fifo_update 0 3 }  { v_first_fifo_cap fifo_data 0 3 } } }
	curr_request_3_0_out { ap_vld {  { curr_request_3_0_out out_data 1 3 }  { curr_request_3_0_out_ap_vld out_vld 1 1 } } }
	curr_request_6_0_out { ap_vld {  { curr_request_6_0_out out_data 1 32 }  { curr_request_6_0_out_ap_vld out_vld 1 1 } } }
	curr_request_7_0_out { ap_vld {  { curr_request_7_0_out out_data 1 32 }  { curr_request_7_0_out_ap_vld out_vld 1 1 } } }
}
