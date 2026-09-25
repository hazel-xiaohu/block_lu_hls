set moduleName flush_three
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
set C_modelName {flush_three}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ping int 66 regular {fifo 0 volatile }  }
	{ ping1 int 66 regular {fifo 0 volatile }  }
	{ pong int 66 regular {fifo 0 volatile }  }
	{ na int 32 regular  }
	{ nb int 32 regular  }
	{ nc int 32 regular  }
	{ result_pe4 int 66 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ping", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "ping1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "pong", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "na", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ping_dout sc_in sc_lv 66 signal 0 } 
	{ ping_empty_n sc_in sc_logic 1 signal 0 } 
	{ ping_read sc_out sc_logic 1 signal 0 } 
	{ ping1_dout sc_in sc_lv 66 signal 1 } 
	{ ping1_empty_n sc_in sc_logic 1 signal 1 } 
	{ ping1_read sc_out sc_logic 1 signal 1 } 
	{ pong_dout sc_in sc_lv 66 signal 2 } 
	{ pong_empty_n sc_in sc_logic 1 signal 2 } 
	{ pong_read sc_out sc_logic 1 signal 2 } 
	{ result_pe4_din sc_out sc_lv 66 signal 6 } 
	{ result_pe4_full_n sc_in sc_logic 1 signal 6 } 
	{ result_pe4_write sc_out sc_logic 1 signal 6 } 
	{ result_pe4_num_data_valid sc_in sc_lv 11 signal 6 } 
	{ result_pe4_fifo_cap sc_in sc_lv 11 signal 6 } 
	{ na sc_in sc_lv 32 signal 3 } 
	{ nb sc_in sc_lv 32 signal 4 } 
	{ nc sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ping_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "ping", "role": "dout" }} , 
 	{ "name": "ping_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "empty_n" }} , 
 	{ "name": "ping_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "read" }} , 
 	{ "name": "ping1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "ping1", "role": "dout" }} , 
 	{ "name": "ping1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "empty_n" }} , 
 	{ "name": "ping1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "read" }} , 
 	{ "name": "pong_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pong", "role": "dout" }} , 
 	{ "name": "pong_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "empty_n" }} , 
 	{ "name": "pong_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "read" }} , 
 	{ "name": "result_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe4", "role": "din" }} , 
 	{ "name": "result_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe4", "role": "full_n" }} , 
 	{ "name": "result_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe4", "role": "write" }} , 
 	{ "name": "result_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe4", "role": "num_data_valid" }} , 
 	{ "name": "result_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe4", "role": "fifo_cap" }} , 
 	{ "name": "na", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "na", "role": "default" }} , 
 	{ "name": "nb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nb", "role": "default" }} , 
 	{ "name": "nc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nc", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ping { ap_fifo {  { ping_dout fifo_data_out 0 66 }  { ping_empty_n fifo_status_empty 0 1 }  { ping_read fifo_data_in 1 1 } } }
	ping1 { ap_fifo {  { ping1_dout fifo_data_out 0 66 }  { ping1_empty_n fifo_status_empty 0 1 }  { ping1_read fifo_data_in 1 1 } } }
	pong { ap_fifo {  { pong_dout fifo_data_out 0 66 }  { pong_empty_n fifo_status_empty 0 1 }  { pong_read fifo_data_in 1 1 } } }
	na { ap_none {  { na in_data 0 32 } } }
	nb { ap_none {  { nb in_data 0 32 } } }
	nc { ap_none {  { nc in_data 0 32 } } }
	result_pe4 { ap_fifo {  { result_pe4_din fifo_data_out 1 66 }  { result_pe4_full_n fifo_status_empty 0 1 }  { result_pe4_write fifo_data_in 1 1 }  { result_pe4_num_data_valid fifo_update 0 11 }  { result_pe4_fifo_cap fifo_data 0 11 } } }
}
