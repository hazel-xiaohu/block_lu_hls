set moduleName distributer_vcresponse_Pipeline_VITIS_LOOP_282_1
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
set C_modelName {distributer_vcresponse_Pipeline_VITIS_LOOP_282_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vcache_res_cfinal int 6 regular {fifo 0 volatile }  }
	{ cresponse1 int 6 regular {fifo 1 volatile }  }
	{ cresponse2 int 6 regular {fifo 1 volatile }  }
	{ cresponse3 int 6 regular {fifo 1 volatile }  }
	{ cresponse4 int 6 regular {fifo 1 volatile }  }
	{ temp_peID_out int 3 regular {pointer 1}  }
	{ temp_result_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vcache_res_cfinal", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse1", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_peID_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_result_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcache_res_cfinal_dout sc_in sc_lv 6 signal 0 } 
	{ vcache_res_cfinal_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_res_cfinal_read sc_out sc_logic 1 signal 0 } 
	{ vcache_res_cfinal_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vcache_res_cfinal_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cresponse4_din sc_out sc_lv 6 signal 4 } 
	{ cresponse4_full_n sc_in sc_logic 1 signal 4 } 
	{ cresponse4_write sc_out sc_logic 1 signal 4 } 
	{ cresponse4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cresponse4_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cresponse3_din sc_out sc_lv 6 signal 3 } 
	{ cresponse3_full_n sc_in sc_logic 1 signal 3 } 
	{ cresponse3_write sc_out sc_logic 1 signal 3 } 
	{ cresponse3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ cresponse3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ cresponse2_din sc_out sc_lv 6 signal 2 } 
	{ cresponse2_full_n sc_in sc_logic 1 signal 2 } 
	{ cresponse2_write sc_out sc_logic 1 signal 2 } 
	{ cresponse2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cresponse2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cresponse1_din sc_out sc_lv 6 signal 1 } 
	{ cresponse1_full_n sc_in sc_logic 1 signal 1 } 
	{ cresponse1_write sc_out sc_logic 1 signal 1 } 
	{ cresponse1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cresponse1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ temp_peID_out sc_out sc_lv 3 signal 5 } 
	{ temp_peID_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_result_out sc_out sc_lv 2 signal 6 } 
	{ temp_result_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_res_cfinal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "dout" }} , 
 	{ "name": "vcache_res_cfinal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "empty_n" }} , 
 	{ "name": "vcache_res_cfinal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "read" }} , 
 	{ "name": "vcache_res_cfinal_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "num_data_valid" }} , 
 	{ "name": "vcache_res_cfinal_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "fifo_cap" }} , 
 	{ "name": "cresponse4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse4", "role": "din" }} , 
 	{ "name": "cresponse4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "full_n" }} , 
 	{ "name": "cresponse4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "write" }} , 
 	{ "name": "cresponse4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse4", "role": "num_data_valid" }} , 
 	{ "name": "cresponse4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse4", "role": "fifo_cap" }} , 
 	{ "name": "cresponse3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse3", "role": "din" }} , 
 	{ "name": "cresponse3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "full_n" }} , 
 	{ "name": "cresponse3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "write" }} , 
 	{ "name": "cresponse3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse3", "role": "num_data_valid" }} , 
 	{ "name": "cresponse3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse3", "role": "fifo_cap" }} , 
 	{ "name": "cresponse2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse2", "role": "din" }} , 
 	{ "name": "cresponse2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "full_n" }} , 
 	{ "name": "cresponse2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "write" }} , 
 	{ "name": "cresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse2", "role": "num_data_valid" }} , 
 	{ "name": "cresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse2", "role": "fifo_cap" }} , 
 	{ "name": "cresponse1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse1", "role": "din" }} , 
 	{ "name": "cresponse1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "full_n" }} , 
 	{ "name": "cresponse1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "write" }} , 
 	{ "name": "cresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse1", "role": "num_data_valid" }} , 
 	{ "name": "cresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse1", "role": "fifo_cap" }} , 
 	{ "name": "temp_peID_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_peID_out", "role": "default" }} , 
 	{ "name": "temp_peID_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_peID_out", "role": "ap_vld" }} , 
 	{ "name": "temp_result_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_result_out", "role": "default" }} , 
 	{ "name": "temp_result_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_result_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_vcresponse_Pipeline_VITIS_LOOP_282_1 {
		vcache_res_cfinal {Type I LastRead 0 FirstWrite -1}
		cresponse1 {Type O LastRead -1 FirstWrite 1}
		cresponse2 {Type O LastRead -1 FirstWrite 1}
		cresponse3 {Type O LastRead -1 FirstWrite 1}
		cresponse4 {Type O LastRead -1 FirstWrite 1}
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
	vcache_res_cfinal { ap_fifo {  { vcache_res_cfinal_dout fifo_data_out 0 6 }  { vcache_res_cfinal_empty_n fifo_status_empty 0 1 }  { vcache_res_cfinal_read fifo_data_in 1 1 }  { vcache_res_cfinal_num_data_valid fifo_update 0 3 }  { vcache_res_cfinal_fifo_cap fifo_data 0 3 } } }
	cresponse1 { ap_fifo {  { cresponse1_din fifo_data_out 1 6 }  { cresponse1_full_n fifo_status_empty 0 1 }  { cresponse1_write fifo_data_in 1 1 }  { cresponse1_num_data_valid fifo_update 0 3 }  { cresponse1_fifo_cap fifo_data 0 3 } } }
	cresponse2 { ap_fifo {  { cresponse2_din fifo_data_out 1 6 }  { cresponse2_full_n fifo_status_empty 0 1 }  { cresponse2_write fifo_data_in 1 1 }  { cresponse2_num_data_valid fifo_update 0 3 }  { cresponse2_fifo_cap fifo_data 0 3 } } }
	cresponse3 { ap_fifo {  { cresponse3_din fifo_data_out 1 6 }  { cresponse3_full_n fifo_status_empty 0 1 }  { cresponse3_write fifo_data_in 1 1 }  { cresponse3_num_data_valid fifo_update 0 3 }  { cresponse3_fifo_cap fifo_data 0 3 } } }
	cresponse4 { ap_fifo {  { cresponse4_din fifo_data_out 1 6 }  { cresponse4_full_n fifo_status_empty 0 1 }  { cresponse4_write fifo_data_in 1 1 }  { cresponse4_num_data_valid fifo_update 0 3 }  { cresponse4_fifo_cap fifo_data 0 3 } } }
	temp_peID_out { ap_vld {  { temp_peID_out out_data 1 3 }  { temp_peID_out_ap_vld out_vld 1 1 } } }
	temp_result_out { ap_vld {  { temp_result_out out_data 1 2 }  { temp_result_out_ap_vld out_vld 1 1 } } }
}
