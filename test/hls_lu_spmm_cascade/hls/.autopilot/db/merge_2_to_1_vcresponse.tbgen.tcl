set moduleName merge_2_to_1_vcresponse
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
set C_modelName {merge_2_to_1_vcresponse}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcache_bank3_cres int 6 regular {fifo 0 volatile }  }
	{ vcache_bank4_cres int 6 regular {fifo 0 volatile }  }
	{ vcache_res_cfinal int 6 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank3_cres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank4_cres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_res_cfinal", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
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
	{ vcache_bank3_cres_dout sc_in sc_lv 6 signal 0 } 
	{ vcache_bank3_cres_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank3_cres_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank3_cres_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ vcache_bank3_cres_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ vcache_bank4_cres_dout sc_in sc_lv 6 signal 1 } 
	{ vcache_bank4_cres_empty_n sc_in sc_logic 1 signal 1 } 
	{ vcache_bank4_cres_read sc_out sc_logic 1 signal 1 } 
	{ vcache_bank4_cres_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ vcache_bank4_cres_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ vcache_res_cfinal_din sc_out sc_lv 6 signal 2 } 
	{ vcache_res_cfinal_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_res_cfinal_write sc_out sc_logic 1 signal 2 } 
	{ vcache_res_cfinal_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ vcache_res_cfinal_fifo_cap sc_in sc_lv 3 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank3_cres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "dout" }} , 
 	{ "name": "vcache_bank3_cres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank3_cres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "read" }} , 
 	{ "name": "vcache_bank3_cres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank3_cres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank4_cres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "dout" }} , 
 	{ "name": "vcache_bank4_cres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank4_cres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "read" }} , 
 	{ "name": "vcache_bank4_cres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank4_cres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_res_cfinal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "din" }} , 
 	{ "name": "vcache_res_cfinal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "full_n" }} , 
 	{ "name": "vcache_res_cfinal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "write" }} , 
 	{ "name": "vcache_res_cfinal_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "num_data_valid" }} , 
 	{ "name": "vcache_res_cfinal_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_2_to_1_vcresponse {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_715_1 {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vcache_bank3_cres { ap_fifo {  { vcache_bank3_cres_dout fifo_data_out 0 6 }  { vcache_bank3_cres_empty_n fifo_status_empty 0 1 }  { vcache_bank3_cres_read fifo_data_in 1 1 }  { vcache_bank3_cres_num_data_valid fifo_update 0 5 }  { vcache_bank3_cres_fifo_cap fifo_data 0 5 } } }
	vcache_bank4_cres { ap_fifo {  { vcache_bank4_cres_dout fifo_data_out 0 6 }  { vcache_bank4_cres_empty_n fifo_status_empty 0 1 }  { vcache_bank4_cres_read fifo_data_in 1 1 }  { vcache_bank4_cres_num_data_valid fifo_update 0 5 }  { vcache_bank4_cres_fifo_cap fifo_data 0 5 } } }
	vcache_res_cfinal { ap_fifo {  { vcache_res_cfinal_din fifo_data_out 1 6 }  { vcache_res_cfinal_full_n fifo_status_empty 0 1 }  { vcache_res_cfinal_write fifo_data_in 1 1 }  { vcache_res_cfinal_num_data_valid fifo_update 0 3 }  { vcache_res_cfinal_fifo_cap fifo_data 0 3 } } }
}
