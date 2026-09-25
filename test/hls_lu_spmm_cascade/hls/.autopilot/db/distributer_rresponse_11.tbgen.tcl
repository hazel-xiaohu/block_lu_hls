set moduleName distributer_rresponse_11
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
set C_modelName {distributer_rresponse.11}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_bank2_res int 168 regular {fifo 0 volatile }  }
	{ rcache_re_bank2_1 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank2_2 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank2_3 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank2_4 int 168 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_bank2_res", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank2_1", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank2_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank2_3", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank2_4", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} ]}
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
	{ rcache_bank2_res_dout sc_in sc_lv 168 signal 0 } 
	{ rcache_bank2_res_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_bank2_res_read sc_out sc_logic 1 signal 0 } 
	{ rcache_bank2_res_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ rcache_bank2_res_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank2_1_din sc_out sc_lv 168 signal 1 } 
	{ rcache_re_bank2_1_full_n sc_in sc_logic 1 signal 1 } 
	{ rcache_re_bank2_1_write sc_out sc_logic 1 signal 1 } 
	{ rcache_re_bank2_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rcache_re_bank2_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rcache_re_bank2_2_din sc_out sc_lv 168 signal 2 } 
	{ rcache_re_bank2_2_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_re_bank2_2_write sc_out sc_logic 1 signal 2 } 
	{ rcache_re_bank2_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rcache_re_bank2_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ rcache_re_bank2_3_din sc_out sc_lv 168 signal 3 } 
	{ rcache_re_bank2_3_full_n sc_in sc_logic 1 signal 3 } 
	{ rcache_re_bank2_3_write sc_out sc_logic 1 signal 3 } 
	{ rcache_re_bank2_3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ rcache_re_bank2_3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ rcache_re_bank2_4_din sc_out sc_lv 168 signal 4 } 
	{ rcache_re_bank2_4_full_n sc_in sc_logic 1 signal 4 } 
	{ rcache_re_bank2_4_write sc_out sc_logic 1 signal 4 } 
	{ rcache_re_bank2_4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ rcache_re_bank2_4_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_bank2_res_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_bank2_res", "role": "dout" }} , 
 	{ "name": "rcache_bank2_res_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank2_res", "role": "empty_n" }} , 
 	{ "name": "rcache_bank2_res_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank2_res", "role": "read" }} , 
 	{ "name": "rcache_bank2_res_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank2_res", "role": "num_data_valid" }} , 
 	{ "name": "rcache_bank2_res_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank2_res", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank2_1", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_1", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_1", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank2_3", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_3", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_3", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank2_4", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_4", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2_4", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_re_bank2_4", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_rresponse_11 {
		rcache_bank2_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_11_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank2_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}
		temp_no_use_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_bank2_res { ap_fifo {  { rcache_bank2_res_dout fifo_data_out 0 168 }  { rcache_bank2_res_empty_n fifo_status_empty 0 1 }  { rcache_bank2_res_read fifo_data_in 1 1 }  { rcache_bank2_res_num_data_valid fifo_update 0 4 }  { rcache_bank2_res_fifo_cap fifo_data 0 4 } } }
	rcache_re_bank2_1 { ap_fifo {  { rcache_re_bank2_1_din fifo_data_out 1 168 }  { rcache_re_bank2_1_full_n fifo_status_empty 0 1 }  { rcache_re_bank2_1_write fifo_data_in 1 1 }  { rcache_re_bank2_1_num_data_valid fifo_update 0 3 }  { rcache_re_bank2_1_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank2_2 { ap_fifo {  { rcache_re_bank2_2_din fifo_data_out 1 168 }  { rcache_re_bank2_2_full_n fifo_status_empty 0 1 }  { rcache_re_bank2_2_write fifo_data_in 1 1 }  { rcache_re_bank2_2_num_data_valid fifo_update 0 3 }  { rcache_re_bank2_2_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank2_3 { ap_fifo {  { rcache_re_bank2_3_din fifo_data_out 1 168 }  { rcache_re_bank2_3_full_n fifo_status_empty 0 1 }  { rcache_re_bank2_3_write fifo_data_in 1 1 }  { rcache_re_bank2_3_num_data_valid fifo_update 0 3 }  { rcache_re_bank2_3_fifo_cap fifo_data 0 3 } } }
	rcache_re_bank2_4 { ap_fifo {  { rcache_re_bank2_4_din fifo_data_out 1 168 }  { rcache_re_bank2_4_full_n fifo_status_empty 0 1 }  { rcache_re_bank2_4_write fifo_data_in 1 1 }  { rcache_re_bank2_4_num_data_valid fifo_update 0 3 }  { rcache_re_bank2_4_fifo_cap fifo_data 0 3 } } }
}
