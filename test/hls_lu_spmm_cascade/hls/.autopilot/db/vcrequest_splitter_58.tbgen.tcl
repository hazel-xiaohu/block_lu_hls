set moduleName vcrequest_splitter_58
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
set C_modelName {vcrequest_splitter.58}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_result_bank2_b int 68 regular {fifo 0 volatile }  }
	{ vrequest int 68 regular {fifo 1 volatile }  }
	{ crequest int 68 regular {fifo 1 volatile }  }
	{ vcollector int 68 regular {fifo 1 volatile }  }
	{ ccollector int 68 regular {fifo 1 volatile }  }
	{ vscheduler int 68 regular {fifo 1 volatile }  }
	{ cscheduler int 68 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank2_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ccollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_result_bank2_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank2_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank2_b_read sc_out sc_logic 1 signal 0 } 
	{ rcache_result_bank2_b_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rcache_result_bank2_b_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ vrequest_din sc_out sc_lv 68 signal 1 } 
	{ vrequest_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest_write sc_out sc_logic 1 signal 1 } 
	{ vrequest_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ vrequest_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ crequest_din sc_out sc_lv 68 signal 2 } 
	{ crequest_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest_write sc_out sc_logic 1 signal 2 } 
	{ crequest_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ crequest_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ vcollector_din sc_out sc_lv 68 signal 3 } 
	{ vcollector_full_n sc_in sc_logic 1 signal 3 } 
	{ vcollector_write sc_out sc_logic 1 signal 3 } 
	{ vcollector_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ vcollector_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ ccollector_din sc_out sc_lv 68 signal 4 } 
	{ ccollector_full_n sc_in sc_logic 1 signal 4 } 
	{ ccollector_write sc_out sc_logic 1 signal 4 } 
	{ ccollector_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ ccollector_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ vscheduler_din sc_out sc_lv 68 signal 5 } 
	{ vscheduler_full_n sc_in sc_logic 1 signal 5 } 
	{ vscheduler_write sc_out sc_logic 1 signal 5 } 
	{ vscheduler_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ vscheduler_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ cscheduler_din sc_out sc_lv 68 signal 6 } 
	{ cscheduler_full_n sc_in sc_logic 1 signal 6 } 
	{ cscheduler_write sc_out sc_logic 1 signal 6 } 
	{ cscheduler_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ cscheduler_fifo_cap sc_in sc_lv 3 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank2_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank2_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank2_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "read" }} , 
 	{ "name": "rcache_result_bank2_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank2_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "fifo_cap" }} , 
 	{ "name": "vrequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vrequest", "role": "din" }} , 
 	{ "name": "vrequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "full_n" }} , 
 	{ "name": "vrequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "write" }} , 
 	{ "name": "vrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest", "role": "num_data_valid" }} , 
 	{ "name": "vrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest", "role": "fifo_cap" }} , 
 	{ "name": "crequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "din" }} , 
 	{ "name": "crequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "full_n" }} , 
 	{ "name": "crequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "write" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "vcollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vcollector", "role": "din" }} , 
 	{ "name": "vcollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "full_n" }} , 
 	{ "name": "vcollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "write" }} , 
 	{ "name": "vcollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcollector", "role": "num_data_valid" }} , 
 	{ "name": "vcollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcollector", "role": "fifo_cap" }} , 
 	{ "name": "ccollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "ccollector", "role": "din" }} , 
 	{ "name": "ccollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "full_n" }} , 
 	{ "name": "ccollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "write" }} , 
 	{ "name": "ccollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccollector", "role": "num_data_valid" }} , 
 	{ "name": "ccollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccollector", "role": "fifo_cap" }} , 
 	{ "name": "vscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vscheduler", "role": "din" }} , 
 	{ "name": "vscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "full_n" }} , 
 	{ "name": "vscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "write" }} , 
 	{ "name": "vscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vscheduler", "role": "num_data_valid" }} , 
 	{ "name": "vscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "cscheduler", "role": "din" }} , 
 	{ "name": "cscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "full_n" }} , 
 	{ "name": "cscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "write" }} , 
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	vcrequest_splitter_58 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_58_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank2_b { ap_fifo {  { rcache_result_bank2_b_dout fifo_data_out 0 68 }  { rcache_result_bank2_b_empty_n fifo_status_empty 0 1 }  { rcache_result_bank2_b_read fifo_data_in 1 1 }  { rcache_result_bank2_b_num_data_valid fifo_update 0 3 }  { rcache_result_bank2_b_fifo_cap fifo_data 0 3 } } }
	vrequest { ap_fifo {  { vrequest_din fifo_data_out 1 68 }  { vrequest_full_n fifo_status_empty 0 1 }  { vrequest_write fifo_data_in 1 1 }  { vrequest_num_data_valid fifo_update 0 3 }  { vrequest_fifo_cap fifo_data 0 3 } } }
	crequest { ap_fifo {  { crequest_din fifo_data_out 1 68 }  { crequest_full_n fifo_status_empty 0 1 }  { crequest_write fifo_data_in 1 1 }  { crequest_num_data_valid fifo_update 0 3 }  { crequest_fifo_cap fifo_data 0 3 } } }
	vcollector { ap_fifo {  { vcollector_din fifo_data_out 1 68 }  { vcollector_full_n fifo_status_empty 0 1 }  { vcollector_write fifo_data_in 1 1 }  { vcollector_num_data_valid fifo_update 0 3 }  { vcollector_fifo_cap fifo_data 0 3 } } }
	ccollector { ap_fifo {  { ccollector_din fifo_data_out 1 68 }  { ccollector_full_n fifo_status_empty 0 1 }  { ccollector_write fifo_data_in 1 1 }  { ccollector_num_data_valid fifo_update 0 3 }  { ccollector_fifo_cap fifo_data 0 3 } } }
	vscheduler { ap_fifo {  { vscheduler_din fifo_data_out 1 68 }  { vscheduler_full_n fifo_status_empty 0 1 }  { vscheduler_write fifo_data_in 1 1 }  { vscheduler_num_data_valid fifo_update 0 3 }  { vscheduler_fifo_cap fifo_data 0 3 } } }
	cscheduler { ap_fifo {  { cscheduler_din fifo_data_out 1 68 }  { cscheduler_full_n fifo_status_empty 0 1 }  { cscheduler_write fifo_data_in 1 1 }  { cscheduler_num_data_valid fifo_update 0 3 }  { cscheduler_fifo_cap fifo_data 0 3 } } }
}
