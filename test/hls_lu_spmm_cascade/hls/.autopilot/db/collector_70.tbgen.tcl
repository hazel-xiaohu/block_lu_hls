set moduleName collector_70
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
set C_modelName {collector.70}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcollector int 68 regular {fifo 0 volatile }  }
	{ vresult3 int 1024 regular {fifo 0 volatile }  }
	{ voff int 128 regular {fifo 0 volatile }  }
	{ vblock3 int 134 regular {fifo 1 volatile }  }
	{ v_hit int 1 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vresult3", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "voff", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_hit", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
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
	{ vcollector_dout sc_in sc_lv 68 signal 0 } 
	{ vcollector_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcollector_read sc_out sc_logic 1 signal 0 } 
	{ vcollector_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vcollector_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ vresult3_dout sc_in sc_lv 1024 signal 1 } 
	{ vresult3_empty_n sc_in sc_logic 1 signal 1 } 
	{ vresult3_read sc_out sc_logic 1 signal 1 } 
	{ vresult3_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ vresult3_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ voff_dout sc_in sc_lv 128 signal 2 } 
	{ voff_empty_n sc_in sc_logic 1 signal 2 } 
	{ voff_read sc_out sc_logic 1 signal 2 } 
	{ voff_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ voff_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vblock3_din sc_out sc_lv 134 signal 3 } 
	{ vblock3_full_n sc_in sc_logic 1 signal 3 } 
	{ vblock3_write sc_out sc_logic 1 signal 3 } 
	{ vblock3_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ vblock3_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ v_hit_dout sc_in sc_lv 1 signal 4 } 
	{ v_hit_empty_n sc_in sc_logic 1 signal 4 } 
	{ v_hit_read sc_out sc_logic 1 signal 4 } 
	{ v_hit_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ v_hit_fifo_cap sc_in sc_lv 5 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcollector_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vcollector", "role": "dout" }} , 
 	{ "name": "vcollector_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "empty_n" }} , 
 	{ "name": "vcollector_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "read" }} , 
 	{ "name": "vcollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcollector", "role": "num_data_valid" }} , 
 	{ "name": "vcollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcollector", "role": "fifo_cap" }} , 
 	{ "name": "vresult3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult3", "role": "dout" }} , 
 	{ "name": "vresult3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult3", "role": "empty_n" }} , 
 	{ "name": "vresult3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult3", "role": "read" }} , 
 	{ "name": "vresult3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult3", "role": "num_data_valid" }} , 
 	{ "name": "vresult3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult3", "role": "fifo_cap" }} , 
 	{ "name": "voff_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff", "role": "dout" }} , 
 	{ "name": "voff_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff", "role": "empty_n" }} , 
 	{ "name": "voff_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff", "role": "read" }} , 
 	{ "name": "voff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "voff", "role": "num_data_valid" }} , 
 	{ "name": "voff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "voff", "role": "fifo_cap" }} , 
 	{ "name": "vblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3", "role": "din" }} , 
 	{ "name": "vblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "full_n" }} , 
 	{ "name": "vblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "write" }} , 
 	{ "name": "vblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vblock3", "role": "num_data_valid" }} , 
 	{ "name": "vblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vblock3", "role": "fifo_cap" }} , 
 	{ "name": "v_hit_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit", "role": "dout" }} , 
 	{ "name": "v_hit_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit", "role": "empty_n" }} , 
 	{ "name": "v_hit_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit", "role": "read" }} , 
 	{ "name": "v_hit_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit", "role": "num_data_valid" }} , 
 	{ "name": "v_hit_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	collector_70 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult3 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_70_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_3 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		cached_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vcollector { ap_fifo {  { vcollector_dout fifo_data_out 0 68 }  { vcollector_empty_n fifo_status_empty 0 1 }  { vcollector_read fifo_data_in 1 1 }  { vcollector_num_data_valid fifo_update 0 3 }  { vcollector_fifo_cap fifo_data 0 3 } } }
	vresult3 { ap_fifo {  { vresult3_dout fifo_data_out 0 1024 }  { vresult3_empty_n fifo_status_empty 0 1 }  { vresult3_read fifo_data_in 1 1 }  { vresult3_num_data_valid fifo_update 0 3 }  { vresult3_fifo_cap fifo_data 0 3 } } }
	voff { ap_fifo {  { voff_dout fifo_data_out 0 128 }  { voff_empty_n fifo_status_empty 0 1 }  { voff_read fifo_data_in 1 1 }  { voff_num_data_valid fifo_update 0 4 }  { voff_fifo_cap fifo_data 0 4 } } }
	vblock3 { ap_fifo {  { vblock3_din fifo_data_out 1 134 }  { vblock3_full_n fifo_status_empty 0 1 }  { vblock3_write fifo_data_in 1 1 }  { vblock3_num_data_valid fifo_update 0 32 }  { vblock3_fifo_cap fifo_data 0 32 } } }
	v_hit { ap_fifo {  { v_hit_dout fifo_data_out 0 1 }  { v_hit_empty_n fifo_status_empty 0 1 }  { v_hit_read fifo_data_in 1 1 }  { v_hit_num_data_valid fifo_update 0 5 }  { v_hit_fifo_cap fifo_data 0 5 } } }
}
