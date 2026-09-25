set moduleName distributer_vcresult
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
set C_modelName {distributer_vcresult}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcache_bank1_cresult1 int 1031 regular {fifo 0 volatile }  }
	{ cresult1 int 1024 regular {fifo 1 volatile }  }
	{ cresult2 int 1024 regular {fifo 1 volatile }  }
	{ cresult3 int 1024 regular {fifo 1 volatile }  }
	{ cresult4 int 1024 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank1_cresult1", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "cresult1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult2", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult3", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
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
	{ vcache_bank1_cresult1_dout sc_in sc_lv 1031 signal 0 } 
	{ vcache_bank1_cresult1_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank1_cresult1_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank1_cresult1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_cresult1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ cresult4_din sc_out sc_lv 1024 signal 4 } 
	{ cresult4_full_n sc_in sc_logic 1 signal 4 } 
	{ cresult4_write sc_out sc_logic 1 signal 4 } 
	{ cresult4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cresult4_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cresult3_din sc_out sc_lv 1024 signal 3 } 
	{ cresult3_full_n sc_in sc_logic 1 signal 3 } 
	{ cresult3_write sc_out sc_logic 1 signal 3 } 
	{ cresult3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ cresult3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ cresult2_din sc_out sc_lv 1024 signal 2 } 
	{ cresult2_full_n sc_in sc_logic 1 signal 2 } 
	{ cresult2_write sc_out sc_logic 1 signal 2 } 
	{ cresult2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cresult2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cresult1_din sc_out sc_lv 1024 signal 1 } 
	{ cresult1_full_n sc_in sc_logic 1 signal 1 } 
	{ cresult1_write sc_out sc_logic 1 signal 1 } 
	{ cresult1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cresult1_fifo_cap sc_in sc_lv 3 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank1_cresult1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "dout" }} , 
 	{ "name": "vcache_bank1_cresult1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "empty_n" }} , 
 	{ "name": "vcache_bank1_cresult1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "read" }} , 
 	{ "name": "vcache_bank1_cresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_cresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "fifo_cap" }} , 
 	{ "name": "cresult4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult4", "role": "din" }} , 
 	{ "name": "cresult4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "full_n" }} , 
 	{ "name": "cresult4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "write" }} , 
 	{ "name": "cresult4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult4", "role": "num_data_valid" }} , 
 	{ "name": "cresult4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult4", "role": "fifo_cap" }} , 
 	{ "name": "cresult3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult3", "role": "din" }} , 
 	{ "name": "cresult3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult3", "role": "full_n" }} , 
 	{ "name": "cresult3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult3", "role": "write" }} , 
 	{ "name": "cresult3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult3", "role": "num_data_valid" }} , 
 	{ "name": "cresult3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult3", "role": "fifo_cap" }} , 
 	{ "name": "cresult2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult2", "role": "din" }} , 
 	{ "name": "cresult2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult2", "role": "full_n" }} , 
 	{ "name": "cresult2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult2", "role": "write" }} , 
 	{ "name": "cresult2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult2", "role": "num_data_valid" }} , 
 	{ "name": "cresult2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult2", "role": "fifo_cap" }} , 
 	{ "name": "cresult1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult1", "role": "din" }} , 
 	{ "name": "cresult1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult1", "role": "full_n" }} , 
 	{ "name": "cresult1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult1", "role": "write" }} , 
 	{ "name": "cresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult1", "role": "num_data_valid" }} , 
 	{ "name": "cresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresult1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_vcresult {
		vcache_bank1_cresult1 {Type I LastRead 0 FirstWrite -1}
		cresult1 {Type O LastRead -1 FirstWrite 1}
		cresult2 {Type O LastRead -1 FirstWrite 1}
		cresult3 {Type O LastRead -1 FirstWrite 1}
		cresult4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank1_cresult1 { ap_fifo {  { vcache_bank1_cresult1_dout fifo_data_out 0 1031 }  { vcache_bank1_cresult1_empty_n fifo_status_empty 0 1 }  { vcache_bank1_cresult1_read fifo_data_in 1 1 }  { vcache_bank1_cresult1_num_data_valid fifo_update 0 4 }  { vcache_bank1_cresult1_fifo_cap fifo_data 0 4 } } }
	cresult1 { ap_fifo {  { cresult1_din fifo_data_out 1 1024 }  { cresult1_full_n fifo_status_empty 0 1 }  { cresult1_write fifo_data_in 1 1 }  { cresult1_num_data_valid fifo_update 0 3 }  { cresult1_fifo_cap fifo_data 0 3 } } }
	cresult2 { ap_fifo {  { cresult2_din fifo_data_out 1 1024 }  { cresult2_full_n fifo_status_empty 0 1 }  { cresult2_write fifo_data_in 1 1 }  { cresult2_num_data_valid fifo_update 0 3 }  { cresult2_fifo_cap fifo_data 0 3 } } }
	cresult3 { ap_fifo {  { cresult3_din fifo_data_out 1 1024 }  { cresult3_full_n fifo_status_empty 0 1 }  { cresult3_write fifo_data_in 1 1 }  { cresult3_num_data_valid fifo_update 0 3 }  { cresult3_fifo_cap fifo_data 0 3 } } }
	cresult4 { ap_fifo {  { cresult4_din fifo_data_out 1 1024 }  { cresult4_full_n fifo_status_empty 0 1 }  { cresult4_write fifo_data_in 1 1 }  { cresult4_num_data_valid fifo_update 0 3 }  { cresult4_fifo_cap fifo_data 0 3 } } }
}
