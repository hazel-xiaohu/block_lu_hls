set moduleName final_merger
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
set C_modelName {final_merger}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ final_merger_1 int 66 regular {fifo 0 volatile }  }
	{ final_merger_2 int 66 regular {fifo 0 volatile }  }
	{ final_merger_3 int 66 regular {fifo 1 volatile }  }
	{ final_len_1 int 32 regular {fifo 1 volatile }  }
	{ final_len_2 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "final_merger_1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_2", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_3", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ final_merger_1_dout sc_in sc_lv 66 signal 0 } 
	{ final_merger_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ final_merger_1_read sc_out sc_logic 1 signal 0 } 
	{ final_merger_1_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ final_merger_1_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ final_merger_2_dout sc_in sc_lv 66 signal 1 } 
	{ final_merger_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ final_merger_2_read sc_out sc_logic 1 signal 1 } 
	{ final_merger_2_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ final_merger_2_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ final_merger_3_din sc_out sc_lv 66 signal 2 } 
	{ final_merger_3_full_n sc_in sc_logic 1 signal 2 } 
	{ final_merger_3_write sc_out sc_logic 1 signal 2 } 
	{ final_merger_3_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ final_merger_3_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ final_len_1_din sc_out sc_lv 32 signal 3 } 
	{ final_len_1_full_n sc_in sc_logic 1 signal 3 } 
	{ final_len_1_write sc_out sc_logic 1 signal 3 } 
	{ final_len_1_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ final_len_1_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ final_len_2_din sc_out sc_lv 32 signal 4 } 
	{ final_len_2_full_n sc_in sc_logic 1 signal 4 } 
	{ final_len_2_write sc_out sc_logic 1 signal 4 } 
	{ final_len_2_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ final_len_2_fifo_cap sc_in sc_lv 5 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "final_merger_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_1", "role": "dout" }} , 
 	{ "name": "final_merger_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "empty_n" }} , 
 	{ "name": "final_merger_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "read" }} , 
 	{ "name": "final_merger_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_2", "role": "dout" }} , 
 	{ "name": "final_merger_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "empty_n" }} , 
 	{ "name": "final_merger_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "read" }} , 
 	{ "name": "final_merger_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_3", "role": "din" }} , 
 	{ "name": "final_merger_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "full_n" }} , 
 	{ "name": "final_merger_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "write" }} , 
 	{ "name": "final_merger_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "fifo_cap" }} , 
 	{ "name": "final_len_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_1", "role": "din" }} , 
 	{ "name": "final_len_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_1", "role": "full_n" }} , 
 	{ "name": "final_len_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_1", "role": "write" }} , 
 	{ "name": "final_len_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_1", "role": "num_data_valid" }} , 
 	{ "name": "final_len_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_1", "role": "fifo_cap" }} , 
 	{ "name": "final_len_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_2", "role": "din" }} , 
 	{ "name": "final_len_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_2", "role": "full_n" }} , 
 	{ "name": "final_len_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_2", "role": "write" }} , 
 	{ "name": "final_len_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_2", "role": "num_data_valid" }} , 
 	{ "name": "final_len_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_2", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	final_merger {
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 5}
		final_len_1 {Type O LastRead -1 FirstWrite 4}
		final_len_2 {Type O LastRead -1 FirstWrite 4}}
	final_merger_Pipeline_VITIS_LOOP_773_2 {
		empty_228 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		empty_229 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		empty_230 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_6_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_7_out {Type O LastRead -1 FirstWrite 9}
		counter_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	final_merger_1 { ap_fifo {  { final_merger_1_dout fifo_data_out 0 66 }  { final_merger_1_empty_n fifo_status_empty 0 1 }  { final_merger_1_read fifo_data_in 1 1 }  { final_merger_1_num_data_valid fifo_update 0 11 }  { final_merger_1_fifo_cap fifo_data 0 11 } } }
	final_merger_2 { ap_fifo {  { final_merger_2_dout fifo_data_out 0 66 }  { final_merger_2_empty_n fifo_status_empty 0 1 }  { final_merger_2_read fifo_data_in 1 1 }  { final_merger_2_num_data_valid fifo_update 0 11 }  { final_merger_2_fifo_cap fifo_data 0 11 } } }
	final_merger_3 { ap_fifo {  { final_merger_3_din fifo_data_out 1 66 }  { final_merger_3_full_n fifo_status_empty 0 1 }  { final_merger_3_write fifo_data_in 1 1 }  { final_merger_3_num_data_valid fifo_update 0 11 }  { final_merger_3_fifo_cap fifo_data 0 11 } } }
	final_len_1 { ap_fifo {  { final_len_1_din fifo_data_out 1 32 }  { final_len_1_full_n fifo_status_empty 0 1 }  { final_len_1_write fifo_data_in 1 1 }  { final_len_1_num_data_valid fifo_update 0 5 }  { final_len_1_fifo_cap fifo_data 0 5 } } }
	final_len_2 { ap_fifo {  { final_len_2_din fifo_data_out 1 32 }  { final_len_2_full_n fifo_status_empty 0 1 }  { final_len_2_write fifo_data_in 1 1 }  { final_len_2_num_data_valid fifo_update 0 5 }  { final_len_2_fifo_cap fifo_data 0 5 } } }
}
