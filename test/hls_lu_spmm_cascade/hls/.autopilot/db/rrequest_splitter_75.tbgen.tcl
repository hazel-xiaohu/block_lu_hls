set moduleName rrequest_splitter_75
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
set C_modelName {rrequest_splitter.75}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_stream2 int 398 regular {fifo 0 volatile }  }
	{ rrequest int 398 regular {fifo 1 volatile }  }
	{ rcollec int 398 regular {fifo 1 volatile }  }
	{ rscheduler int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_stream2", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcollec", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rscheduler", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_stream2_dout sc_in sc_lv 398 signal 0 } 
	{ rcache_stream2_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_stream2_read sc_out sc_logic 1 signal 0 } 
	{ rcache_stream2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rcache_stream2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rrequest_din sc_out sc_lv 398 signal 1 } 
	{ rrequest_full_n sc_in sc_logic 1 signal 1 } 
	{ rrequest_write sc_out sc_logic 1 signal 1 } 
	{ rrequest_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rrequest_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rcollec_din sc_out sc_lv 398 signal 2 } 
	{ rcollec_full_n sc_in sc_logic 1 signal 2 } 
	{ rcollec_write sc_out sc_logic 1 signal 2 } 
	{ rcollec_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ rcollec_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ rscheduler_din sc_out sc_lv 398 signal 3 } 
	{ rscheduler_full_n sc_in sc_logic 1 signal 3 } 
	{ rscheduler_write sc_out sc_logic 1 signal 3 } 
	{ rscheduler_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ rscheduler_fifo_cap sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_stream2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "dout" }} , 
 	{ "name": "rcache_stream2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "empty_n" }} , 
 	{ "name": "rcache_stream2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "read" }} , 
 	{ "name": "rcache_stream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "fifo_cap" }} , 
 	{ "name": "rrequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest", "role": "din" }} , 
 	{ "name": "rrequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest", "role": "full_n" }} , 
 	{ "name": "rrequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest", "role": "write" }} , 
 	{ "name": "rrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest", "role": "num_data_valid" }} , 
 	{ "name": "rrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest", "role": "fifo_cap" }} , 
 	{ "name": "rcollec_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcollec", "role": "din" }} , 
 	{ "name": "rcollec_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "full_n" }} , 
 	{ "name": "rcollec_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "write" }} , 
 	{ "name": "rcollec_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rcollec", "role": "num_data_valid" }} , 
 	{ "name": "rcollec_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rcollec", "role": "fifo_cap" }} , 
 	{ "name": "rscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rscheduler", "role": "din" }} , 
 	{ "name": "rscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "full_n" }} , 
 	{ "name": "rscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "write" }} , 
 	{ "name": "rscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "num_data_valid" }} , 
 	{ "name": "rscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	rrequest_splitter_75 {
		rcache_stream2 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_75_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream2 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_stream2 { ap_fifo {  { rcache_stream2_dout fifo_data_out 0 398 }  { rcache_stream2_empty_n fifo_status_empty 0 1 }  { rcache_stream2_read fifo_data_in 1 1 }  { rcache_stream2_num_data_valid fifo_update 0 3 }  { rcache_stream2_fifo_cap fifo_data 0 3 } } }
	rrequest { ap_fifo {  { rrequest_din fifo_data_out 1 398 }  { rrequest_full_n fifo_status_empty 0 1 }  { rrequest_write fifo_data_in 1 1 }  { rrequest_num_data_valid fifo_update 0 3 }  { rrequest_fifo_cap fifo_data 0 3 } } }
	rcollec { ap_fifo {  { rcollec_din fifo_data_out 1 398 }  { rcollec_full_n fifo_status_empty 0 1 }  { rcollec_write fifo_data_in 1 1 }  { rcollec_num_data_valid fifo_update 0 5 }  { rcollec_fifo_cap fifo_data 0 5 } } }
	rscheduler { ap_fifo {  { rscheduler_din fifo_data_out 1 398 }  { rscheduler_full_n fifo_status_empty 0 1 }  { rscheduler_write fifo_data_in 1 1 }  { rscheduler_num_data_valid fifo_update 0 5 }  { rscheduler_fifo_cap fifo_data 0 5 } } }
}
