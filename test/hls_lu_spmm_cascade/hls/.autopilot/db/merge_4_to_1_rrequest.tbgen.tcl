set moduleName merge_4_to_1_rrequest
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
set C_modelName {merge_4_to_1_rrequest}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rrequest1 int 398 regular {fifo 0 volatile }  }
	{ rrequest2 int 398 regular {fifo 0 volatile }  }
	{ rrequest3 int 398 regular {fifo 0 volatile }  }
	{ rrequest4 int 398 regular {fifo 0 volatile }  }
	{ rrequestf int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rrequest1", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest2", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest3", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest4", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequestf", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
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
	{ rrequest1_dout sc_in sc_lv 398 signal 0 } 
	{ rrequest1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rrequest1_read sc_out sc_logic 1 signal 0 } 
	{ rrequest1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rrequest1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rrequest2_dout sc_in sc_lv 398 signal 1 } 
	{ rrequest2_empty_n sc_in sc_logic 1 signal 1 } 
	{ rrequest2_read sc_out sc_logic 1 signal 1 } 
	{ rrequest2_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rrequest2_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rrequest3_dout sc_in sc_lv 398 signal 2 } 
	{ rrequest3_empty_n sc_in sc_logic 1 signal 2 } 
	{ rrequest3_read sc_out sc_logic 1 signal 2 } 
	{ rrequest3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rrequest3_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ rrequest4_dout sc_in sc_lv 398 signal 3 } 
	{ rrequest4_empty_n sc_in sc_logic 1 signal 3 } 
	{ rrequest4_read sc_out sc_logic 1 signal 3 } 
	{ rrequest4_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ rrequest4_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ rrequestf_din sc_out sc_lv 398 signal 4 } 
	{ rrequestf_full_n sc_in sc_logic 1 signal 4 } 
	{ rrequestf_write sc_out sc_logic 1 signal 4 } 
	{ rrequestf_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ rrequestf_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rrequest1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest1", "role": "dout" }} , 
 	{ "name": "rrequest1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "empty_n" }} , 
 	{ "name": "rrequest1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "read" }} , 
 	{ "name": "rrequest1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest1", "role": "num_data_valid" }} , 
 	{ "name": "rrequest1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest1", "role": "fifo_cap" }} , 
 	{ "name": "rrequest2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest2", "role": "dout" }} , 
 	{ "name": "rrequest2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest2", "role": "empty_n" }} , 
 	{ "name": "rrequest2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest2", "role": "read" }} , 
 	{ "name": "rrequest2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest2", "role": "num_data_valid" }} , 
 	{ "name": "rrequest2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest2", "role": "fifo_cap" }} , 
 	{ "name": "rrequest3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest3", "role": "dout" }} , 
 	{ "name": "rrequest3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "empty_n" }} , 
 	{ "name": "rrequest3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "read" }} , 
 	{ "name": "rrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "num_data_valid" }} , 
 	{ "name": "rrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "fifo_cap" }} , 
 	{ "name": "rrequest4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest4", "role": "dout" }} , 
 	{ "name": "rrequest4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "empty_n" }} , 
 	{ "name": "rrequest4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "read" }} , 
 	{ "name": "rrequest4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest4", "role": "num_data_valid" }} , 
 	{ "name": "rrequest4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest4", "role": "fifo_cap" }} , 
 	{ "name": "rrequestf_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequestf", "role": "din" }} , 
 	{ "name": "rrequestf_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "full_n" }} , 
 	{ "name": "rrequestf_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "write" }} , 
 	{ "name": "rrequestf_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "num_data_valid" }} , 
 	{ "name": "rrequestf_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_4_to_1_rrequest {
		rrequest1 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type I LastRead 0 FirstWrite -1}
		rrequestf {Type O LastRead -1 FirstWrite 1}}
	merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 {
		rrequest1 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type I LastRead 0 FirstWrite -1}
		rrequestf {Type O LastRead -1 FirstWrite 1}
		temp_5_sroa_180_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_171_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_162_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_153_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_144_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_135_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_126_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_117_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_108_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_99_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_81_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_72_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_63_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_54_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_36_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_27_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_18_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4511_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3510_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rrequest1 { ap_fifo {  { rrequest1_dout fifo_data_out 0 398 }  { rrequest1_empty_n fifo_status_empty 0 1 }  { rrequest1_read fifo_data_in 1 1 }  { rrequest1_num_data_valid fifo_update 0 3 }  { rrequest1_fifo_cap fifo_data 0 3 } } }
	rrequest2 { ap_fifo {  { rrequest2_dout fifo_data_out 0 398 }  { rrequest2_empty_n fifo_status_empty 0 1 }  { rrequest2_read fifo_data_in 1 1 }  { rrequest2_num_data_valid fifo_update 0 3 }  { rrequest2_fifo_cap fifo_data 0 3 } } }
	rrequest3 { ap_fifo {  { rrequest3_dout fifo_data_out 0 398 }  { rrequest3_empty_n fifo_status_empty 0 1 }  { rrequest3_read fifo_data_in 1 1 }  { rrequest3_num_data_valid fifo_update 0 3 }  { rrequest3_fifo_cap fifo_data 0 3 } } }
	rrequest4 { ap_fifo {  { rrequest4_dout fifo_data_out 0 398 }  { rrequest4_empty_n fifo_status_empty 0 1 }  { rrequest4_read fifo_data_in 1 1 }  { rrequest4_num_data_valid fifo_update 0 3 }  { rrequest4_fifo_cap fifo_data 0 3 } } }
	rrequestf { ap_fifo {  { rrequestf_din fifo_data_out 1 398 }  { rrequestf_full_n fifo_status_empty 0 1 }  { rrequestf_write fifo_data_in 1 1 }  { rrequestf_num_data_valid fifo_update 0 3 }  { rrequestf_fifo_cap fifo_data 0 3 } } }
}
