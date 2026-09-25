set moduleName collector_71_Pipeline_VITIS_LOOP_185_2
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
set C_modelName {collector.71_Pipeline_VITIS_LOOP_185_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tmp int 30 regular  }
	{ trunc_ln183_2 int 30 regular  }
	{ add_ln185 int 31 regular  }
	{ cblock3 int 134 regular {fifo 1 volatile }  }
	{ cached_2 int 1024 regular  }
	{ trunc_ln189_2 int 2 regular  }
	{ empty int 2 regular  }
	{ hit int 1 regular  }
	{ coff int 128 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln183_2", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln185", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cached_2", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln189_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hit", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "coff", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ coff_dout sc_in sc_lv 128 signal 8 } 
	{ coff_empty_n sc_in sc_logic 1 signal 8 } 
	{ coff_read sc_out sc_logic 1 signal 8 } 
	{ coff_num_data_valid sc_in sc_lv 4 signal 8 } 
	{ coff_fifo_cap sc_in sc_lv 4 signal 8 } 
	{ cblock3_din sc_out sc_lv 134 signal 3 } 
	{ cblock3_full_n sc_in sc_logic 1 signal 3 } 
	{ cblock3_write sc_out sc_logic 1 signal 3 } 
	{ cblock3_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ cblock3_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ tmp sc_in sc_lv 30 signal 0 } 
	{ trunc_ln183_2 sc_in sc_lv 30 signal 1 } 
	{ add_ln185 sc_in sc_lv 31 signal 2 } 
	{ cached_2 sc_in sc_lv 1024 signal 4 } 
	{ trunc_ln189_2 sc_in sc_lv 2 signal 5 } 
	{ empty sc_in sc_lv 2 signal 6 } 
	{ hit sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "coff_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff", "role": "dout" }} , 
 	{ "name": "coff_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "empty_n" }} , 
 	{ "name": "coff_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "read" }} , 
 	{ "name": "coff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "num_data_valid" }} , 
 	{ "name": "coff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "fifo_cap" }} , 
 	{ "name": "cblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3", "role": "din" }} , 
 	{ "name": "cblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "full_n" }} , 
 	{ "name": "cblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "write" }} , 
 	{ "name": "cblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock3", "role": "num_data_valid" }} , 
 	{ "name": "cblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock3", "role": "fifo_cap" }} , 
 	{ "name": "tmp", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "tmp", "role": "default" }} , 
 	{ "name": "trunc_ln183_2", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "trunc_ln183_2", "role": "default" }} , 
 	{ "name": "add_ln185", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln185", "role": "default" }} , 
 	{ "name": "cached_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cached_2", "role": "default" }} , 
 	{ "name": "trunc_ln189_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln189_2", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "hit", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hit", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	collector_71_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_2 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		cached_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp { ap_none {  { tmp in_data 0 30 } } }
	trunc_ln183_2 { ap_none {  { trunc_ln183_2 in_data 0 30 } } }
	add_ln185 { ap_none {  { add_ln185 in_data 0 31 } } }
	cblock3 { ap_fifo {  { cblock3_din fifo_data_out 1 134 }  { cblock3_full_n fifo_status_empty 0 1 }  { cblock3_write fifo_data_in 1 1 }  { cblock3_num_data_valid fifo_update 0 32 }  { cblock3_fifo_cap fifo_data 0 32 } } }
	cached_2 { ap_none {  { cached_2 in_data 0 1024 } } }
	trunc_ln189_2 { ap_none {  { trunc_ln189_2 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	hit { ap_none {  { hit in_data 0 1 } } }
	coff { ap_fifo {  { coff_dout fifo_data_out 0 128 }  { coff_empty_n fifo_status_empty 0 1 }  { coff_read fifo_data_in 1 1 }  { coff_num_data_valid fifo_update 0 4 }  { coff_fifo_cap fifo_data 0 4 } } }
}
