set moduleName collector
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
set C_modelName {collector}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ccollector int 68 regular {fifo 0 volatile }  }
	{ cresult4 int 1024 regular {fifo 0 volatile }  }
	{ coff int 128 regular {fifo 0 volatile }  }
	{ cblock4 int 134 regular {fifo 1 volatile }  }
	{ c_hit int 1 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ccollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresult4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "coff", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_hit", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
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
	{ ccollector_dout sc_in sc_lv 68 signal 0 } 
	{ ccollector_empty_n sc_in sc_logic 1 signal 0 } 
	{ ccollector_read sc_out sc_logic 1 signal 0 } 
	{ ccollector_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ ccollector_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cresult4_dout sc_in sc_lv 1024 signal 1 } 
	{ cresult4_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresult4_read sc_out sc_logic 1 signal 1 } 
	{ cresult4_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cresult4_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ coff_dout sc_in sc_lv 128 signal 2 } 
	{ coff_empty_n sc_in sc_logic 1 signal 2 } 
	{ coff_read sc_out sc_logic 1 signal 2 } 
	{ coff_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ coff_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ cblock4_din sc_out sc_lv 134 signal 3 } 
	{ cblock4_full_n sc_in sc_logic 1 signal 3 } 
	{ cblock4_write sc_out sc_logic 1 signal 3 } 
	{ cblock4_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ cblock4_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ c_hit_dout sc_in sc_lv 1 signal 4 } 
	{ c_hit_empty_n sc_in sc_logic 1 signal 4 } 
	{ c_hit_read sc_out sc_logic 1 signal 4 } 
	{ c_hit_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ c_hit_fifo_cap sc_in sc_lv 5 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ccollector_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "ccollector", "role": "dout" }} , 
 	{ "name": "ccollector_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "empty_n" }} , 
 	{ "name": "ccollector_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "read" }} , 
 	{ "name": "ccollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccollector", "role": "num_data_valid" }} , 
 	{ "name": "ccollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccollector", "role": "fifo_cap" }} , 
 	{ "name": "cresult4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult4", "role": "dout" }} , 
 	{ "name": "cresult4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "empty_n" }} , 
 	{ "name": "cresult4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "read" }} , 
 	{ "name": "cresult4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult4", "role": "num_data_valid" }} , 
 	{ "name": "cresult4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult4", "role": "fifo_cap" }} , 
 	{ "name": "coff_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff", "role": "dout" }} , 
 	{ "name": "coff_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "empty_n" }} , 
 	{ "name": "coff_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "read" }} , 
 	{ "name": "coff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "num_data_valid" }} , 
 	{ "name": "coff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "fifo_cap" }} , 
 	{ "name": "cblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "din" }} , 
 	{ "name": "cblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "full_n" }} , 
 	{ "name": "cblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "write" }} , 
 	{ "name": "cblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock4", "role": "num_data_valid" }} , 
 	{ "name": "cblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock4", "role": "fifo_cap" }} , 
 	{ "name": "c_hit_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "dout" }} , 
 	{ "name": "c_hit_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "empty_n" }} , 
 	{ "name": "c_hit_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "read" }} , 
 	{ "name": "c_hit_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit", "role": "num_data_valid" }} , 
 	{ "name": "c_hit_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	collector {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult4 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_8 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		cached_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_8 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ccollector { ap_fifo {  { ccollector_dout fifo_data_out 0 68 }  { ccollector_empty_n fifo_status_empty 0 1 }  { ccollector_read fifo_data_in 1 1 }  { ccollector_num_data_valid fifo_update 0 3 }  { ccollector_fifo_cap fifo_data 0 3 } } }
	cresult4 { ap_fifo {  { cresult4_dout fifo_data_out 0 1024 }  { cresult4_empty_n fifo_status_empty 0 1 }  { cresult4_read fifo_data_in 1 1 }  { cresult4_num_data_valid fifo_update 0 3 }  { cresult4_fifo_cap fifo_data 0 3 } } }
	coff { ap_fifo {  { coff_dout fifo_data_out 0 128 }  { coff_empty_n fifo_status_empty 0 1 }  { coff_read fifo_data_in 1 1 }  { coff_num_data_valid fifo_update 0 4 }  { coff_fifo_cap fifo_data 0 4 } } }
	cblock4 { ap_fifo {  { cblock4_din fifo_data_out 1 134 }  { cblock4_full_n fifo_status_empty 0 1 }  { cblock4_write fifo_data_in 1 1 }  { cblock4_num_data_valid fifo_update 0 32 }  { cblock4_fifo_cap fifo_data 0 32 } } }
	c_hit { ap_fifo {  { c_hit_dout fifo_data_out 0 1 }  { c_hit_empty_n fifo_status_empty 0 1 }  { c_hit_read fifo_data_in 1 1 }  { c_hit_num_data_valid fifo_update 0 5 }  { c_hit_fifo_cap fifo_data 0 5 } } }
}
