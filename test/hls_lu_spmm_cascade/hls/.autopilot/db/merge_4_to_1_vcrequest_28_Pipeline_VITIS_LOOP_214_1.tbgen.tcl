set moduleName merge_4_to_1_vcrequest_28_Pipeline_VITIS_LOOP_214_1
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
set C_modelName {merge_4_to_1_vcrequest.28_Pipeline_VITIS_LOOP_214_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vccache_re_bank1_pe5 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe6 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe7 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe8 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank3 int 225 regular {fifo 1 volatile }  }
	{ temp_8_sroa_9_0_out int 8 regular {pointer 1}  }
	{ temp_8_sroa_0_0_out int 8 regular {pointer 1}  }
	{ temp_9_0_out int 128 regular {pointer 1}  }
	{ temp_7223_0_out int 32 regular {pointer 1}  }
	{ temp_6222_0_out int 32 regular {pointer 1}  }
	{ temp_5_0_out int 3 regular {pointer 1}  }
	{ temp_4_0_out int 5 regular {pointer 1}  }
	{ temp_3_0_out int 3 regular {pointer 1}  }
	{ temp_2_0_out int 3 regular {pointer 1}  }
	{ temp_1_0_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank1_pe5", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe6", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe7", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe8", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank3", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_8_sroa_9_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_8_sroa_0_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_9_0_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_7223_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_6222_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_4_0_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_3_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_2_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vccache_re_bank1_pe8_dout sc_in sc_lv 225 signal 3 } 
	{ vccache_re_bank1_pe8_empty_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe8_read sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe8_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe8_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe7_dout sc_in sc_lv 225 signal 2 } 
	{ vccache_re_bank1_pe7_empty_n sc_in sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe7_read sc_out sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe7_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe7_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe6_dout sc_in sc_lv 225 signal 1 } 
	{ vccache_re_bank1_pe6_empty_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe6_read sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe6_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe6_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe5_dout sc_in sc_lv 225 signal 0 } 
	{ vccache_re_bank1_pe5_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe5_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe5_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank1_pe5_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank3_din sc_out sc_lv 225 signal 4 } 
	{ vccache_re_bank3_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank3_write sc_out sc_logic 1 signal 4 } 
	{ vccache_re_bank3_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ vccache_re_bank3_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ temp_8_sroa_9_0_out sc_out sc_lv 8 signal 5 } 
	{ temp_8_sroa_9_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_8_sroa_0_0_out sc_out sc_lv 8 signal 6 } 
	{ temp_8_sroa_0_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_9_0_out sc_out sc_lv 128 signal 7 } 
	{ temp_9_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_7223_0_out sc_out sc_lv 32 signal 8 } 
	{ temp_7223_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_6222_0_out sc_out sc_lv 32 signal 9 } 
	{ temp_6222_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_5_0_out sc_out sc_lv 3 signal 10 } 
	{ temp_5_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_4_0_out sc_out sc_lv 5 signal 11 } 
	{ temp_4_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_3_0_out sc_out sc_lv 3 signal 12 } 
	{ temp_3_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ temp_2_0_out sc_out sc_lv 3 signal 13 } 
	{ temp_2_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ temp_1_0_out sc_out sc_lv 2 signal 14 } 
	{ temp_1_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank1_pe8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "din" }} , 
 	{ "name": "vccache_re_bank3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "write" }} , 
 	{ "name": "vccache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "fifo_cap" }} , 
 	{ "name": "temp_8_sroa_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8_sroa_9_0_out", "role": "default" }} , 
 	{ "name": "temp_8_sroa_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_8_sroa_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_8_sroa_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8_sroa_0_0_out", "role": "default" }} , 
 	{ "name": "temp_8_sroa_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_8_sroa_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_9_0_out", "role": "default" }} , 
 	{ "name": "temp_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_7223_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_7223_0_out", "role": "default" }} , 
 	{ "name": "temp_7223_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_7223_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_6222_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_6222_0_out", "role": "default" }} , 
 	{ "name": "temp_6222_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_6222_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_5_0_out", "role": "default" }} , 
 	{ "name": "temp_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_4_0_out", "role": "default" }} , 
 	{ "name": "temp_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_3_0_out", "role": "default" }} , 
 	{ "name": "temp_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_2_0_out", "role": "default" }} , 
 	{ "name": "temp_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_1_0_out", "role": "default" }} , 
 	{ "name": "temp_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_1_0_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vccache_re_bank1_pe5 { ap_fifo {  { vccache_re_bank1_pe5_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe5_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe5_read fifo_data_in 1 1 }  { vccache_re_bank1_pe5_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe5_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe6 { ap_fifo {  { vccache_re_bank1_pe6_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe6_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe6_read fifo_data_in 1 1 }  { vccache_re_bank1_pe6_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe6_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe7 { ap_fifo {  { vccache_re_bank1_pe7_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe7_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe7_read fifo_data_in 1 1 }  { vccache_re_bank1_pe7_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe7_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe8 { ap_fifo {  { vccache_re_bank1_pe8_dout fifo_data_out 0 225 }  { vccache_re_bank1_pe8_empty_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe8_read fifo_data_in 1 1 }  { vccache_re_bank1_pe8_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe8_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank3 { ap_fifo {  { vccache_re_bank3_din fifo_data_out 1 225 }  { vccache_re_bank3_full_n fifo_status_empty 0 1 }  { vccache_re_bank3_write fifo_data_in 1 1 }  { vccache_re_bank3_num_data_valid fifo_update 0 7 }  { vccache_re_bank3_fifo_cap fifo_data 0 7 } } }
	temp_8_sroa_9_0_out { ap_vld {  { temp_8_sroa_9_0_out out_data 1 8 }  { temp_8_sroa_9_0_out_ap_vld out_vld 1 1 } } }
	temp_8_sroa_0_0_out { ap_vld {  { temp_8_sroa_0_0_out out_data 1 8 }  { temp_8_sroa_0_0_out_ap_vld out_vld 1 1 } } }
	temp_9_0_out { ap_vld {  { temp_9_0_out out_data 1 128 }  { temp_9_0_out_ap_vld out_vld 1 1 } } }
	temp_7223_0_out { ap_vld {  { temp_7223_0_out out_data 1 32 }  { temp_7223_0_out_ap_vld out_vld 1 1 } } }
	temp_6222_0_out { ap_vld {  { temp_6222_0_out out_data 1 32 }  { temp_6222_0_out_ap_vld out_vld 1 1 } } }
	temp_5_0_out { ap_vld {  { temp_5_0_out out_data 1 3 }  { temp_5_0_out_ap_vld out_vld 1 1 } } }
	temp_4_0_out { ap_vld {  { temp_4_0_out out_data 1 5 }  { temp_4_0_out_ap_vld out_vld 1 1 } } }
	temp_3_0_out { ap_vld {  { temp_3_0_out out_data 1 3 }  { temp_3_0_out_ap_vld out_vld 1 1 } } }
	temp_2_0_out { ap_vld {  { temp_2_0_out out_data 1 3 }  { temp_2_0_out_ap_vld out_vld 1 1 } } }
	temp_1_0_out { ap_vld {  { temp_1_0_out out_data 1 2 }  { temp_1_0_out_ap_vld out_vld 1 1 } } }
}
