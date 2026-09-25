set moduleName merge_2_to_1_vcresponse_31_Pipeline_VITIS_LOOP_715_1
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
set C_modelName {merge_2_to_1_vcresponse.31_Pipeline_VITIS_LOOP_715_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcache_bank1_vres int 6 regular {fifo 0 volatile }  }
	{ vcache_bank2_vres int 6 regular {fifo 0 volatile }  }
	{ vcache_res_vfinal int 6 regular {fifo 1 volatile }  }
	{ temp_peID_out int 3 regular {pointer 1}  }
	{ temp_result_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank1_vres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank2_vres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_res_vfinal", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_peID_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_result_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcache_bank2_vres_dout sc_in sc_lv 6 signal 1 } 
	{ vcache_bank2_vres_empty_n sc_in sc_logic 1 signal 1 } 
	{ vcache_bank2_vres_read sc_out sc_logic 1 signal 1 } 
	{ vcache_bank2_vres_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ vcache_bank2_vres_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ vcache_bank1_vres_dout sc_in sc_lv 6 signal 0 } 
	{ vcache_bank1_vres_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank1_vres_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank1_vres_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ vcache_bank1_vres_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ vcache_res_vfinal_din sc_out sc_lv 6 signal 2 } 
	{ vcache_res_vfinal_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_res_vfinal_write sc_out sc_logic 1 signal 2 } 
	{ vcache_res_vfinal_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ vcache_res_vfinal_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ temp_peID_out sc_out sc_lv 3 signal 3 } 
	{ temp_peID_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ temp_result_out sc_out sc_lv 2 signal 4 } 
	{ temp_result_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank2_vres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "dout" }} , 
 	{ "name": "vcache_bank2_vres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank2_vres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "read" }} , 
 	{ "name": "vcache_bank2_vres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_vres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank1_vres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank1_vres", "role": "dout" }} , 
 	{ "name": "vcache_bank1_vres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank1_vres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vres", "role": "read" }} , 
 	{ "name": "vcache_bank1_vres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank1_vres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_vres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank1_vres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_res_vfinal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "din" }} , 
 	{ "name": "vcache_res_vfinal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "full_n" }} , 
 	{ "name": "vcache_res_vfinal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "write" }} , 
 	{ "name": "vcache_res_vfinal_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "num_data_valid" }} , 
 	{ "name": "vcache_res_vfinal_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "fifo_cap" }} , 
 	{ "name": "temp_peID_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_peID_out", "role": "default" }} , 
 	{ "name": "temp_peID_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_peID_out", "role": "ap_vld" }} , 
 	{ "name": "temp_result_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_result_out", "role": "default" }} , 
 	{ "name": "temp_result_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_result_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_2_to_1_vcresponse_31_Pipeline_VITIS_LOOP_715_1 {
		vcache_bank1_vres {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_vres {Type I LastRead 0 FirstWrite -1}
		vcache_res_vfinal {Type O LastRead -1 FirstWrite 1}
		temp_peID_out {Type O LastRead -1 FirstWrite 0}
		temp_result_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank1_vres { ap_fifo {  { vcache_bank1_vres_dout fifo_data_out 0 6 }  { vcache_bank1_vres_empty_n fifo_status_empty 0 1 }  { vcache_bank1_vres_read fifo_data_in 1 1 }  { vcache_bank1_vres_num_data_valid fifo_update 0 5 }  { vcache_bank1_vres_fifo_cap fifo_data 0 5 } } }
	vcache_bank2_vres { ap_fifo {  { vcache_bank2_vres_dout fifo_data_out 0 6 }  { vcache_bank2_vres_empty_n fifo_status_empty 0 1 }  { vcache_bank2_vres_read fifo_data_in 1 1 }  { vcache_bank2_vres_num_data_valid fifo_update 0 5 }  { vcache_bank2_vres_fifo_cap fifo_data 0 5 } } }
	vcache_res_vfinal { ap_fifo {  { vcache_res_vfinal_din fifo_data_out 1 6 }  { vcache_res_vfinal_full_n fifo_status_empty 0 1 }  { vcache_res_vfinal_write fifo_data_in 1 1 }  { vcache_res_vfinal_num_data_valid fifo_update 0 3 }  { vcache_res_vfinal_fifo_cap fifo_data 0 3 } } }
	temp_peID_out { ap_vld {  { temp_peID_out out_data 1 3 }  { temp_peID_out_ap_vld out_vld 1 1 } } }
	temp_result_out { ap_vld {  { temp_result_out out_data 1 2 }  { temp_result_out_ap_vld out_vld 1 1 } } }
}
