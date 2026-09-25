set moduleName distributer_mi_4_Pipeline_VITIS_LOOP_120_1
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
set C_modelName {distributer_mi.4_Pipeline_VITIS_LOOP_120_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mi1 int 5 regular {fifo 0 volatile }  }
	{ mi1_1 int 5 regular {fifo 1 volatile }  }
	{ mi1_2 int 5 regular {fifo 1 volatile }  }
	{ mi1_3 int 5 regular {fifo 1 volatile }  }
	{ mi1_4 int 5 regular {fifo 1 volatile }  }
	{ temp_idle_out int 1 regular {pointer 1}  }
	{ temp_dest_out int 3 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mi1", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi1_1", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi1_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi1_3", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi1_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_idle_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_dest_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mi1_dout sc_in sc_lv 5 signal 0 } 
	{ mi1_empty_n sc_in sc_logic 1 signal 0 } 
	{ mi1_read sc_out sc_logic 1 signal 0 } 
	{ mi1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ mi1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ mi1_4_din sc_out sc_lv 5 signal 4 } 
	{ mi1_4_full_n sc_in sc_logic 1 signal 4 } 
	{ mi1_4_write sc_out sc_logic 1 signal 4 } 
	{ mi1_4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ mi1_4_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ mi1_3_din sc_out sc_lv 5 signal 3 } 
	{ mi1_3_full_n sc_in sc_logic 1 signal 3 } 
	{ mi1_3_write sc_out sc_logic 1 signal 3 } 
	{ mi1_3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ mi1_3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ mi1_2_din sc_out sc_lv 5 signal 2 } 
	{ mi1_2_full_n sc_in sc_logic 1 signal 2 } 
	{ mi1_2_write sc_out sc_logic 1 signal 2 } 
	{ mi1_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ mi1_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ mi1_1_din sc_out sc_lv 5 signal 1 } 
	{ mi1_1_full_n sc_in sc_logic 1 signal 1 } 
	{ mi1_1_write sc_out sc_logic 1 signal 1 } 
	{ mi1_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mi1_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ temp_idle_out sc_out sc_lv 1 signal 5 } 
	{ temp_idle_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_dest_out sc_out sc_lv 3 signal 6 } 
	{ temp_dest_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mi1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1", "role": "dout" }} , 
 	{ "name": "mi1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "empty_n" }} , 
 	{ "name": "mi1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "read" }} , 
 	{ "name": "mi1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1", "role": "num_data_valid" }} , 
 	{ "name": "mi1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1", "role": "fifo_cap" }} , 
 	{ "name": "mi1_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_4", "role": "din" }} , 
 	{ "name": "mi1_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "full_n" }} , 
 	{ "name": "mi1_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "write" }} , 
 	{ "name": "mi1_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_4", "role": "num_data_valid" }} , 
 	{ "name": "mi1_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_4", "role": "fifo_cap" }} , 
 	{ "name": "mi1_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_3", "role": "din" }} , 
 	{ "name": "mi1_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_3", "role": "full_n" }} , 
 	{ "name": "mi1_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_3", "role": "write" }} , 
 	{ "name": "mi1_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_3", "role": "num_data_valid" }} , 
 	{ "name": "mi1_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_3", "role": "fifo_cap" }} , 
 	{ "name": "mi1_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_2", "role": "din" }} , 
 	{ "name": "mi1_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_2", "role": "full_n" }} , 
 	{ "name": "mi1_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_2", "role": "write" }} , 
 	{ "name": "mi1_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_2", "role": "num_data_valid" }} , 
 	{ "name": "mi1_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_2", "role": "fifo_cap" }} , 
 	{ "name": "mi1_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_1", "role": "din" }} , 
 	{ "name": "mi1_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_1", "role": "full_n" }} , 
 	{ "name": "mi1_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_1", "role": "write" }} , 
 	{ "name": "mi1_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_1", "role": "num_data_valid" }} , 
 	{ "name": "mi1_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1_1", "role": "fifo_cap" }} , 
 	{ "name": "temp_idle_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_idle_out", "role": "default" }} , 
 	{ "name": "temp_idle_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_idle_out", "role": "ap_vld" }} , 
 	{ "name": "temp_dest_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_dest_out", "role": "default" }} , 
 	{ "name": "temp_dest_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_dest_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_mi_4_Pipeline_VITIS_LOOP_120_1 {
		mi1 {Type I LastRead 0 FirstWrite -1}
		mi1_1 {Type O LastRead -1 FirstWrite 1}
		mi1_2 {Type O LastRead -1 FirstWrite 1}
		mi1_3 {Type O LastRead -1 FirstWrite 1}
		mi1_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mi1 { ap_fifo {  { mi1_dout fifo_data_out 0 5 }  { mi1_empty_n fifo_status_empty 0 1 }  { mi1_read fifo_data_in 1 1 }  { mi1_num_data_valid fifo_update 0 3 }  { mi1_fifo_cap fifo_data 0 3 } } }
	mi1_1 { ap_fifo {  { mi1_1_din fifo_data_out 1 5 }  { mi1_1_full_n fifo_status_empty 0 1 }  { mi1_1_write fifo_data_in 1 1 }  { mi1_1_num_data_valid fifo_update 0 3 }  { mi1_1_fifo_cap fifo_data 0 3 } } }
	mi1_2 { ap_fifo {  { mi1_2_din fifo_data_out 1 5 }  { mi1_2_full_n fifo_status_empty 0 1 }  { mi1_2_write fifo_data_in 1 1 }  { mi1_2_num_data_valid fifo_update 0 3 }  { mi1_2_fifo_cap fifo_data 0 3 } } }
	mi1_3 { ap_fifo {  { mi1_3_din fifo_data_out 1 5 }  { mi1_3_full_n fifo_status_empty 0 1 }  { mi1_3_write fifo_data_in 1 1 }  { mi1_3_num_data_valid fifo_update 0 3 }  { mi1_3_fifo_cap fifo_data 0 3 } } }
	mi1_4 { ap_fifo {  { mi1_4_din fifo_data_out 1 5 }  { mi1_4_full_n fifo_status_empty 0 1 }  { mi1_4_write fifo_data_in 1 1 }  { mi1_4_num_data_valid fifo_update 0 3 }  { mi1_4_fifo_cap fifo_data 0 3 } } }
	temp_idle_out { ap_vld {  { temp_idle_out out_data 1 1 }  { temp_idle_out_ap_vld out_vld 1 1 } } }
	temp_dest_out { ap_vld {  { temp_dest_out out_data 1 3 }  { temp_dest_out_ap_vld out_vld 1 1 } } }
}
