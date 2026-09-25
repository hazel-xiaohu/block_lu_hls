set moduleName merge_4_to_1_rresponse_14
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
set C_modelName {merge_4_to_1_rresponse.14}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_re_bank1_2 int 168 regular {fifo 0 volatile }  }
	{ rcache_re_bank2_2 int 168 regular {fifo 0 volatile }  }
	{ rcache_re_bank3_2 int 168 regular {fifo 0 volatile }  }
	{ rcache_re_bank4_2 int 168 regular {fifo 0 volatile }  }
	{ rresponse2 int 168 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_re_bank1_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank2_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank3_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank4_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rresponse2", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_re_bank4_2_dout sc_in sc_lv 168 signal 3 } 
	{ rcache_re_bank4_2_empty_n sc_in sc_logic 1 signal 3 } 
	{ rcache_re_bank4_2_read sc_out sc_logic 1 signal 3 } 
	{ rcache_re_bank4_2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ rcache_re_bank4_2_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ rcache_re_bank3_2_dout sc_in sc_lv 168 signal 2 } 
	{ rcache_re_bank3_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ rcache_re_bank3_2_read sc_out sc_logic 1 signal 2 } 
	{ rcache_re_bank3_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rcache_re_bank3_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ rcache_re_bank2_2_dout sc_in sc_lv 168 signal 1 } 
	{ rcache_re_bank2_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ rcache_re_bank2_2_read sc_out sc_logic 1 signal 1 } 
	{ rcache_re_bank2_2_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rcache_re_bank2_2_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rcache_re_bank1_2_dout sc_in sc_lv 168 signal 0 } 
	{ rcache_re_bank1_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_re_bank1_2_read sc_out sc_logic 1 signal 0 } 
	{ rcache_re_bank1_2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rcache_re_bank1_2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rresponse2_din sc_out sc_lv 168 signal 4 } 
	{ rresponse2_full_n sc_in sc_logic 1 signal 4 } 
	{ rresponse2_write sc_out sc_logic 1 signal 4 } 
	{ rresponse2_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ rresponse2_fifo_cap sc_in sc_lv 5 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_re_bank4_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank4_2", "role": "dout" }} , 
 	{ "name": "rcache_re_bank4_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4_2", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank4_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4_2", "role": "read" }} , 
 	{ "name": "rcache_re_bank4_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank4_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank4_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank4_2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank3_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank3_2", "role": "dout" }} , 
 	{ "name": "rcache_re_bank3_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3_2", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank3_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3_2", "role": "read" }} , 
 	{ "name": "rcache_re_bank3_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank3_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank3_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank3_2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "dout" }} , 
 	{ "name": "rcache_re_bank2_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank2_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "read" }} , 
 	{ "name": "rcache_re_bank2_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "dout" }} , 
 	{ "name": "rcache_re_bank1_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank1_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "read" }} , 
 	{ "name": "rcache_re_bank1_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "fifo_cap" }} , 
 	{ "name": "rresponse2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse2", "role": "din" }} , 
 	{ "name": "rresponse2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "full_n" }} , 
 	{ "name": "rresponse2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "write" }} , 
 	{ "name": "rresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "num_data_valid" }} , 
 	{ "name": "rresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_4_to_1_rresponse_14 {
		rcache_re_bank1_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank3_2 {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank4_2 {Type I LastRead 0 FirstWrite -1}
		rresponse2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rcache_re_bank1_2 { ap_fifo {  { rcache_re_bank1_2_dout fifo_data_out 0 168 }  { rcache_re_bank1_2_empty_n fifo_status_empty 0 1 }  { rcache_re_bank1_2_read fifo_data_in 1 1 }  { rcache_re_bank1_2_num_data_valid fifo_update 0 3 }  { rcache_re_bank1_2_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank2_2 { ap_fifo {  { rcache_re_bank2_2_dout fifo_data_out 0 168 }  { rcache_re_bank2_2_empty_n fifo_status_empty 0 1 }  { rcache_re_bank2_2_read fifo_data_in 1 1 }  { rcache_re_bank2_2_num_data_valid fifo_update 0 3 }  { rcache_re_bank2_2_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank3_2 { ap_fifo {  { rcache_re_bank3_2_dout fifo_data_out 0 168 }  { rcache_re_bank3_2_empty_n fifo_status_empty 0 1 }  { rcache_re_bank3_2_read fifo_data_in 1 1 }  { rcache_re_bank3_2_num_data_valid fifo_update 0 3 }  { rcache_re_bank3_2_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank4_2 { ap_fifo {  { rcache_re_bank4_2_dout fifo_data_out 0 168 }  { rcache_re_bank4_2_empty_n fifo_status_empty 0 1 }  { rcache_re_bank4_2_read fifo_data_in 1 1 }  { rcache_re_bank4_2_num_data_valid fifo_update 0 3 }  { rcache_re_bank4_2_fifo_cap fifo_data 0 3 } } }
	rresponse2 { ap_fifo {  { rresponse2_din fifo_data_out 1 168 }  { rresponse2_full_n fifo_status_empty 0 1 }  { rresponse2_write fifo_data_in 1 1 }  { rresponse2_num_data_valid fifo_update 0 5 }  { rresponse2_fifo_cap fifo_data 0 5 } } }
}
