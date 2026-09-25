set moduleName distributer_mi_6
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
set C_modelName {distributer_mi.6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mi3 int 5 regular {fifo 0 volatile }  }
	{ mi3_1 int 5 regular {fifo 1 volatile }  }
	{ mi3_2 int 5 regular {fifo 1 volatile }  }
	{ mi3_3 int 5 regular {fifo 1 volatile }  }
	{ mi3_4 int 5 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mi3", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi3_1", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi3_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi3_3", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi3_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
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
	{ mi3_dout sc_in sc_lv 5 signal 0 } 
	{ mi3_empty_n sc_in sc_logic 1 signal 0 } 
	{ mi3_read sc_out sc_logic 1 signal 0 } 
	{ mi3_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ mi3_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ mi3_1_din sc_out sc_lv 5 signal 1 } 
	{ mi3_1_full_n sc_in sc_logic 1 signal 1 } 
	{ mi3_1_write sc_out sc_logic 1 signal 1 } 
	{ mi3_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mi3_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ mi3_2_din sc_out sc_lv 5 signal 2 } 
	{ mi3_2_full_n sc_in sc_logic 1 signal 2 } 
	{ mi3_2_write sc_out sc_logic 1 signal 2 } 
	{ mi3_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ mi3_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ mi3_3_din sc_out sc_lv 5 signal 3 } 
	{ mi3_3_full_n sc_in sc_logic 1 signal 3 } 
	{ mi3_3_write sc_out sc_logic 1 signal 3 } 
	{ mi3_3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ mi3_3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ mi3_4_din sc_out sc_lv 5 signal 4 } 
	{ mi3_4_full_n sc_in sc_logic 1 signal 4 } 
	{ mi3_4_write sc_out sc_logic 1 signal 4 } 
	{ mi3_4_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ mi3_4_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mi3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3", "role": "dout" }} , 
 	{ "name": "mi3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3", "role": "empty_n" }} , 
 	{ "name": "mi3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3", "role": "read" }} , 
 	{ "name": "mi3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3", "role": "num_data_valid" }} , 
 	{ "name": "mi3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3", "role": "fifo_cap" }} , 
 	{ "name": "mi3_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_1", "role": "din" }} , 
 	{ "name": "mi3_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_1", "role": "full_n" }} , 
 	{ "name": "mi3_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_1", "role": "write" }} , 
 	{ "name": "mi3_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_1", "role": "num_data_valid" }} , 
 	{ "name": "mi3_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_1", "role": "fifo_cap" }} , 
 	{ "name": "mi3_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_2", "role": "din" }} , 
 	{ "name": "mi3_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_2", "role": "full_n" }} , 
 	{ "name": "mi3_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_2", "role": "write" }} , 
 	{ "name": "mi3_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_2", "role": "num_data_valid" }} , 
 	{ "name": "mi3_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_2", "role": "fifo_cap" }} , 
 	{ "name": "mi3_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_3", "role": "din" }} , 
 	{ "name": "mi3_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_3", "role": "full_n" }} , 
 	{ "name": "mi3_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_3", "role": "write" }} , 
 	{ "name": "mi3_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_3", "role": "num_data_valid" }} , 
 	{ "name": "mi3_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_3", "role": "fifo_cap" }} , 
 	{ "name": "mi3_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_4", "role": "din" }} , 
 	{ "name": "mi3_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "full_n" }} , 
 	{ "name": "mi3_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "write" }} , 
 	{ "name": "mi3_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_4", "role": "num_data_valid" }} , 
 	{ "name": "mi3_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi3_4", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	distributer_mi_6 {
		mi3 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type O LastRead -1 FirstWrite 1}
		mi3_2 {Type O LastRead -1 FirstWrite 1}
		mi3_3 {Type O LastRead -1 FirstWrite 1}
		mi3_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_mi_6_Pipeline_VITIS_LOOP_120_1 {
		mi3 {Type I LastRead 0 FirstWrite -1}
		mi3_1 {Type O LastRead -1 FirstWrite 1}
		mi3_2 {Type O LastRead -1 FirstWrite 1}
		mi3_3 {Type O LastRead -1 FirstWrite 1}
		mi3_4 {Type O LastRead -1 FirstWrite 1}
		temp_idle_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mi3 { ap_fifo {  { mi3_dout fifo_data_out 0 5 }  { mi3_empty_n fifo_status_empty 0 1 }  { mi3_read fifo_data_in 1 1 }  { mi3_num_data_valid fifo_update 0 3 }  { mi3_fifo_cap fifo_data 0 3 } } }
	mi3_1 { ap_fifo {  { mi3_1_din fifo_data_out 1 5 }  { mi3_1_full_n fifo_status_empty 0 1 }  { mi3_1_write fifo_data_in 1 1 }  { mi3_1_num_data_valid fifo_update 0 3 }  { mi3_1_fifo_cap fifo_data 0 3 } } }
	mi3_2 { ap_fifo {  { mi3_2_din fifo_data_out 1 5 }  { mi3_2_full_n fifo_status_empty 0 1 }  { mi3_2_write fifo_data_in 1 1 }  { mi3_2_num_data_valid fifo_update 0 3 }  { mi3_2_fifo_cap fifo_data 0 3 } } }
	mi3_3 { ap_fifo {  { mi3_3_din fifo_data_out 1 5 }  { mi3_3_full_n fifo_status_empty 0 1 }  { mi3_3_write fifo_data_in 1 1 }  { mi3_3_num_data_valid fifo_update 0 3 }  { mi3_3_fifo_cap fifo_data 0 3 } } }
	mi3_4 { ap_fifo {  { mi3_4_din fifo_data_out 1 5 }  { mi3_4_full_n fifo_status_empty 0 1 }  { mi3_4_write fifo_data_in 1 1 }  { mi3_4_num_data_valid fifo_update 0 3 }  { mi3_4_fifo_cap fifo_data 0 3 } } }
}
