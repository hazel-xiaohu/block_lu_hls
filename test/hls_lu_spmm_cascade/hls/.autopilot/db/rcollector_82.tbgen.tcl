set moduleName rcollector_82
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
set C_modelName {rcollector.82}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcollec int 398 regular {fifo 0 volatile }  }
	{ roff int 160 regular {fifo 0 volatile }  }
	{ rblock3 int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcollec", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "roff", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY"} , 
 	{ "Name" : "rblock3", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
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
	{ rcollec_dout sc_in sc_lv 398 signal 0 } 
	{ rcollec_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcollec_read sc_out sc_logic 1 signal 0 } 
	{ rcollec_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ rcollec_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ roff_dout sc_in sc_lv 160 signal 1 } 
	{ roff_empty_n sc_in sc_logic 1 signal 1 } 
	{ roff_read sc_out sc_logic 1 signal 1 } 
	{ roff_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ roff_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ rblock3_din sc_out sc_lv 398 signal 2 } 
	{ rblock3_full_n sc_in sc_logic 1 signal 2 } 
	{ rblock3_write sc_out sc_logic 1 signal 2 } 
	{ rblock3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rblock3_fifo_cap sc_in sc_lv 3 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcollec_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcollec", "role": "dout" }} , 
 	{ "name": "rcollec_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "empty_n" }} , 
 	{ "name": "rcollec_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "read" }} , 
 	{ "name": "rcollec_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rcollec", "role": "num_data_valid" }} , 
 	{ "name": "rcollec_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rcollec", "role": "fifo_cap" }} , 
 	{ "name": "roff_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff", "role": "dout" }} , 
 	{ "name": "roff_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "empty_n" }} , 
 	{ "name": "roff_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "read" }} , 
 	{ "name": "roff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "num_data_valid" }} , 
 	{ "name": "roff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "fifo_cap" }} , 
 	{ "name": "rblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rblock3", "role": "din" }} , 
 	{ "name": "rblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "full_n" }} , 
 	{ "name": "rblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "write" }} , 
 	{ "name": "rblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rblock3", "role": "num_data_valid" }} , 
 	{ "name": "rblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rblock3", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	rcollector_82 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcollec { ap_fifo {  { rcollec_dout fifo_data_out 0 398 }  { rcollec_empty_n fifo_status_empty 0 1 }  { rcollec_read fifo_data_in 1 1 }  { rcollec_num_data_valid fifo_update 0 5 }  { rcollec_fifo_cap fifo_data 0 5 } } }
	roff { ap_fifo {  { roff_dout fifo_data_out 0 160 }  { roff_empty_n fifo_status_empty 0 1 }  { roff_read fifo_data_in 1 1 }  { roff_num_data_valid fifo_update 0 4 }  { roff_fifo_cap fifo_data 0 4 } } }
	rblock3 { ap_fifo {  { rblock3_din fifo_data_out 1 398 }  { rblock3_full_n fifo_status_empty 0 1 }  { rblock3_write fifo_data_in 1 1 }  { rblock3_num_data_valid fifo_update 0 3 }  { rblock3_fifo_cap fifo_data 0 3 } } }
}
