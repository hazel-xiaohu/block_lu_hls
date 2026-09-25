set moduleName rrequest_merger_81
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
set C_modelName {rrequest_merger.81}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ r_first int 398 regular {fifo 0 volatile }  }
	{ r_req int 398 regular {fifo 0 volatile }  }
	{ rrequest3 int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "r_first", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "r_req", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest3", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
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
	{ r_first_dout sc_in sc_lv 398 signal 0 } 
	{ r_first_empty_n sc_in sc_logic 1 signal 0 } 
	{ r_first_read sc_out sc_logic 1 signal 0 } 
	{ r_first_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ r_first_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ r_req_dout sc_in sc_lv 398 signal 1 } 
	{ r_req_empty_n sc_in sc_logic 1 signal 1 } 
	{ r_req_read sc_out sc_logic 1 signal 1 } 
	{ r_req_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ r_req_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rrequest3_din sc_out sc_lv 398 signal 2 } 
	{ rrequest3_full_n sc_in sc_logic 1 signal 2 } 
	{ rrequest3_write sc_out sc_logic 1 signal 2 } 
	{ rrequest3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rrequest3_fifo_cap sc_in sc_lv 3 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_first_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "r_first", "role": "dout" }} , 
 	{ "name": "r_first_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_first", "role": "empty_n" }} , 
 	{ "name": "r_first_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_first", "role": "read" }} , 
 	{ "name": "r_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_first", "role": "num_data_valid" }} , 
 	{ "name": "r_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_first", "role": "fifo_cap" }} , 
 	{ "name": "r_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "r_req", "role": "dout" }} , 
 	{ "name": "r_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "empty_n" }} , 
 	{ "name": "r_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "read" }} , 
 	{ "name": "r_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "num_data_valid" }} , 
 	{ "name": "r_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "fifo_cap" }} , 
 	{ "name": "rrequest3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest3", "role": "din" }} , 
 	{ "name": "rrequest3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "full_n" }} , 
 	{ "name": "rrequest3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "write" }} , 
 	{ "name": "rrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "num_data_valid" }} , 
 	{ "name": "rrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	rrequest_merger_81 {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_81_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type O LastRead -1 FirstWrite 1}
		r_req {Type I LastRead 0 FirstWrite -1}
		temp_5_sroa_100_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_95_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_85_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_80_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_75_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_70_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_65_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_60_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_55_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_50_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_40_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_35_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_30_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_25_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_20_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_15_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_10_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4225_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3224_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_first { ap_fifo {  { r_first_dout fifo_data_out 0 398 }  { r_first_empty_n fifo_status_empty 0 1 }  { r_first_read fifo_data_in 1 1 }  { r_first_num_data_valid fifo_update 0 3 }  { r_first_fifo_cap fifo_data 0 3 } } }
	r_req { ap_fifo {  { r_req_dout fifo_data_out 0 398 }  { r_req_empty_n fifo_status_empty 0 1 }  { r_req_read fifo_data_in 1 1 }  { r_req_num_data_valid fifo_update 0 3 }  { r_req_fifo_cap fifo_data 0 3 } } }
	rrequest3 { ap_fifo {  { rrequest3_din fifo_data_out 1 398 }  { rrequest3_full_n fifo_status_empty 0 1 }  { rrequest3_write fifo_data_in 1 1 }  { rrequest3_num_data_valid fifo_update 0 3 }  { rrequest3_fifo_cap fifo_data 0 3 } } }
}
