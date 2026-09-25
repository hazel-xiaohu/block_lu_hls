set moduleName from_rcache_result_to_B_vcrequest_16
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
set C_modelName {from_rcache_result_to_B_vcrequest.16}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rblock1 int 398 regular {fifo 0 volatile }  }
	{ rcache_result_bank1_b int 68 regular {fifo 1 volatile }  }
	{ rcache_result_bank1_d int 68 regular {fifo 1 volatile }  }
	{ B_rlen_pe1 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rblock1", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_result_bank1_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_result_bank1_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ rblock1_dout sc_in sc_lv 398 signal 0 } 
	{ rblock1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rblock1_read sc_out sc_logic 1 signal 0 } 
	{ rblock1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rblock1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rcache_result_bank1_b_din sc_out sc_lv 68 signal 1 } 
	{ rcache_result_bank1_b_full_n sc_in sc_logic 1 signal 1 } 
	{ rcache_result_bank1_b_write sc_out sc_logic 1 signal 1 } 
	{ rcache_result_bank1_b_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rcache_result_bank1_b_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rcache_result_bank1_d_din sc_out sc_lv 68 signal 2 } 
	{ rcache_result_bank1_d_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_result_bank1_d_write sc_out sc_logic 1 signal 2 } 
	{ rcache_result_bank1_d_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rcache_result_bank1_d_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ B_rlen_pe1_din sc_out sc_lv 32 signal 3 } 
	{ B_rlen_pe1_full_n sc_in sc_logic 1 signal 3 } 
	{ B_rlen_pe1_write sc_out sc_logic 1 signal 3 } 
	{ B_rlen_pe1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ B_rlen_pe1_fifo_cap sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rblock1", "role": "dout" }} , 
 	{ "name": "rblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "empty_n" }} , 
 	{ "name": "rblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "read" }} , 
 	{ "name": "rblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rblock1", "role": "num_data_valid" }} , 
 	{ "name": "rblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rblock1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank1_b_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank1_b", "role": "din" }} , 
 	{ "name": "rcache_result_bank1_b_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_b", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank1_b_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_b", "role": "write" }} , 
 	{ "name": "rcache_result_bank1_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank1_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank1_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank1_b", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank1_d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "din" }} , 
 	{ "name": "rcache_result_bank1_d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank1_d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "write" }} , 
 	{ "name": "rcache_result_bank1_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank1_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "din" }} , 
 	{ "name": "B_rlen_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "full_n" }} , 
 	{ "name": "B_rlen_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "write" }} , 
 	{ "name": "B_rlen_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	from_rcache_result_to_B_vcrequest_16 {
		rblock1 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank1_b {Type O LastRead -1 FirstWrite 1}
		rcache_result_bank1_d {Type O LastRead 1 FirstWrite 1}
		B_rlen_pe1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rblock1 { ap_fifo {  { rblock1_dout fifo_data_out 0 398 }  { rblock1_empty_n fifo_status_empty 0 1 }  { rblock1_read fifo_data_in 1 1 }  { rblock1_num_data_valid fifo_update 0 3 }  { rblock1_fifo_cap fifo_data 0 3 } } }
	rcache_result_bank1_b { ap_fifo {  { rcache_result_bank1_b_din fifo_data_out 1 68 }  { rcache_result_bank1_b_full_n fifo_status_empty 0 1 }  { rcache_result_bank1_b_write fifo_data_in 1 1 }  { rcache_result_bank1_b_num_data_valid fifo_update 0 3 }  { rcache_result_bank1_b_fifo_cap fifo_data 0 3 } } }
	rcache_result_bank1_d { ap_fifo {  { rcache_result_bank1_d_din fifo_data_out 1 68 }  { rcache_result_bank1_d_full_n fifo_status_empty 0 1 }  { rcache_result_bank1_d_write fifo_data_in 1 1 }  { rcache_result_bank1_d_num_data_valid fifo_update 0 3 }  { rcache_result_bank1_d_fifo_cap fifo_data 0 3 } } }
	B_rlen_pe1 { ap_fifo {  { B_rlen_pe1_din fifo_data_out 1 32 }  { B_rlen_pe1_full_n fifo_status_empty 0 1 }  { B_rlen_pe1_write fifo_data_in 1 1 }  { B_rlen_pe1_num_data_valid fifo_update 0 3 }  { B_rlen_pe1_fifo_cap fifo_data 0 3 } } }
}
