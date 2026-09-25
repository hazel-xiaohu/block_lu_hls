set moduleName distributer_vcresult_34
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
set C_modelName {distributer_vcresult.34}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcache_bank1_vresult1 int 1031 regular {fifo 0 volatile }  }
	{ vresult1 int 1024 regular {fifo 1 volatile }  }
	{ vresult2 int 1024 regular {fifo 1 volatile }  }
	{ vresult3 int 1024 regular {fifo 1 volatile }  }
	{ vresult4 int 1024 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank1_vresult1", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "vresult1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult2", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult3", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
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
	{ vcache_bank1_vresult1_dout sc_in sc_lv 1031 signal 0 } 
	{ vcache_bank1_vresult1_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank1_vresult1_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank1_vresult1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_vresult1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vresult4_din sc_out sc_lv 1024 signal 4 } 
	{ vresult4_full_n sc_in sc_logic 1 signal 4 } 
	{ vresult4_write sc_out sc_logic 1 signal 4 } 
	{ vresult4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ vresult4_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ vresult3_din sc_out sc_lv 1024 signal 3 } 
	{ vresult3_full_n sc_in sc_logic 1 signal 3 } 
	{ vresult3_write sc_out sc_logic 1 signal 3 } 
	{ vresult3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ vresult3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ vresult2_din sc_out sc_lv 1024 signal 2 } 
	{ vresult2_full_n sc_in sc_logic 1 signal 2 } 
	{ vresult2_write sc_out sc_logic 1 signal 2 } 
	{ vresult2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ vresult2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ vresult1_din sc_out sc_lv 1024 signal 1 } 
	{ vresult1_full_n sc_in sc_logic 1 signal 1 } 
	{ vresult1_write sc_out sc_logic 1 signal 1 } 
	{ vresult1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ vresult1_fifo_cap sc_in sc_lv 3 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank1_vresult1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "dout" }} , 
 	{ "name": "vcache_bank1_vresult1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "empty_n" }} , 
 	{ "name": "vcache_bank1_vresult1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "read" }} , 
 	{ "name": "vcache_bank1_vresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_vresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "fifo_cap" }} , 
 	{ "name": "vresult4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult4", "role": "din" }} , 
 	{ "name": "vresult4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult4", "role": "full_n" }} , 
 	{ "name": "vresult4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult4", "role": "write" }} , 
 	{ "name": "vresult4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult4", "role": "num_data_valid" }} , 
 	{ "name": "vresult4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult4", "role": "fifo_cap" }} , 
 	{ "name": "vresult3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult3", "role": "din" }} , 
 	{ "name": "vresult3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult3", "role": "full_n" }} , 
 	{ "name": "vresult3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult3", "role": "write" }} , 
 	{ "name": "vresult3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult3", "role": "num_data_valid" }} , 
 	{ "name": "vresult3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult3", "role": "fifo_cap" }} , 
 	{ "name": "vresult2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult2", "role": "din" }} , 
 	{ "name": "vresult2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult2", "role": "full_n" }} , 
 	{ "name": "vresult2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult2", "role": "write" }} , 
 	{ "name": "vresult2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult2", "role": "num_data_valid" }} , 
 	{ "name": "vresult2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult2", "role": "fifo_cap" }} , 
 	{ "name": "vresult1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult1", "role": "din" }} , 
 	{ "name": "vresult1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult1", "role": "full_n" }} , 
 	{ "name": "vresult1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult1", "role": "write" }} , 
 	{ "name": "vresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult1", "role": "num_data_valid" }} , 
 	{ "name": "vresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vresult1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_vcresult_34 {
		vcache_bank1_vresult1 {Type I LastRead 0 FirstWrite -1}
		vresult1 {Type O LastRead -1 FirstWrite 1}
		vresult2 {Type O LastRead -1 FirstWrite 1}
		vresult3 {Type O LastRead -1 FirstWrite 1}
		vresult4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank1_vresult1 { ap_fifo {  { vcache_bank1_vresult1_dout fifo_data_out 0 1031 }  { vcache_bank1_vresult1_empty_n fifo_status_empty 0 1 }  { vcache_bank1_vresult1_read fifo_data_in 1 1 }  { vcache_bank1_vresult1_num_data_valid fifo_update 0 4 }  { vcache_bank1_vresult1_fifo_cap fifo_data 0 4 } } }
	vresult1 { ap_fifo {  { vresult1_din fifo_data_out 1 1024 }  { vresult1_full_n fifo_status_empty 0 1 }  { vresult1_write fifo_data_in 1 1 }  { vresult1_num_data_valid fifo_update 0 3 }  { vresult1_fifo_cap fifo_data 0 3 } } }
	vresult2 { ap_fifo {  { vresult2_din fifo_data_out 1 1024 }  { vresult2_full_n fifo_status_empty 0 1 }  { vresult2_write fifo_data_in 1 1 }  { vresult2_num_data_valid fifo_update 0 3 }  { vresult2_fifo_cap fifo_data 0 3 } } }
	vresult3 { ap_fifo {  { vresult3_din fifo_data_out 1 1024 }  { vresult3_full_n fifo_status_empty 0 1 }  { vresult3_write fifo_data_in 1 1 }  { vresult3_num_data_valid fifo_update 0 3 }  { vresult3_fifo_cap fifo_data 0 3 } } }
	vresult4 { ap_fifo {  { vresult4_din fifo_data_out 1 1024 }  { vresult4_full_n fifo_status_empty 0 1 }  { vresult4_write fifo_data_in 1 1 }  { vresult4_num_data_valid fifo_update 0 3 }  { vresult4_fifo_cap fifo_data 0 3 } } }
}
