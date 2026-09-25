set moduleName merge_4_to_1_vcrequest_28
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
set C_modelName {merge_4_to_1_vcrequest.28}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vccache_re_bank1_pe5 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe6 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe7 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe8 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank3 int 225 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank1_pe5", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe6", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe7", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe8", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank3", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} ]}
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
	{ vccache_re_bank1_pe5_dout sc_in sc_lv 225 signal 0 } 
	{ vccache_re_bank1_pe5_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe5_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe5_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank1_pe5_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank1_pe6_dout sc_in sc_lv 225 signal 1 } 
	{ vccache_re_bank1_pe6_empty_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe6_read sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe6_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe6_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe7_dout sc_in sc_lv 225 signal 2 } 
	{ vccache_re_bank1_pe7_empty_n sc_in sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe7_read sc_out sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe7_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe7_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe8_dout sc_in sc_lv 225 signal 3 } 
	{ vccache_re_bank1_pe8_empty_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe8_read sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe8_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe8_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank3_din sc_out sc_lv 225 signal 4 } 
	{ vccache_re_bank3_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank3_write sc_out sc_logic 1 signal 4 } 
	{ vccache_re_bank3_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ vccache_re_bank3_fifo_cap sc_in sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank1_pe5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "din" }} , 
 	{ "name": "vccache_re_bank3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "write" }} , 
 	{ "name": "vccache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_4_to_1_vcrequest_28 {
		vccache_re_bank1_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank3 {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_vcrequest_28_Pipeline_VITIS_LOOP_214_1 {
		vccache_re_bank1_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		temp_8_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_7223_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6222_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vccache_re_bank1_pe5 { ap_fifo {  { vccache_re_bank1_pe5_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe5_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe5_read fifo_data_in 1 1 }  { vccache_re_bank1_pe5_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe5_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe6 { ap_fifo {  { vccache_re_bank1_pe6_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe6_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe6_read fifo_data_in 1 1 }  { vccache_re_bank1_pe6_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe6_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe7 { ap_fifo {  { vccache_re_bank1_pe7_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe7_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe7_read fifo_data_in 1 1 }  { vccache_re_bank1_pe7_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe7_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe8 { ap_fifo {  { vccache_re_bank1_pe8_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe8_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe8_read fifo_data_in 1 1 }  { vccache_re_bank1_pe8_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe8_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank3 { ap_fifo {  { vccache_re_bank3_din fifo_data_out 1 225 }  { vccache_re_bank3_full_n fifo_status_empty 0 1 }  { vccache_re_bank3_write fifo_data_in 1 1 }  { vccache_re_bank3_num_data_valid fifo_update 0 7 }  { vccache_re_bank3_fifo_cap fifo_data 0 7 } } }
}
