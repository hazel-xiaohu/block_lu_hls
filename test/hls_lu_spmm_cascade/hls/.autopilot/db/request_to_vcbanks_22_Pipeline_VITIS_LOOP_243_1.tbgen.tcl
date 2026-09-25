set moduleName request_to_vcbanks_22_Pipeline_VITIS_LOOP_243_1
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
set C_modelName {request_to_vcbanks.22_Pipeline_VITIS_LOOP_243_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vrequest4 int 225 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe4 int 225 regular {fifo 1 volatile }  }
	{ base_addr_val_6 int 5 regular  }
	{ base_addr_cid_4 int 5 regular  }
	{ vccache_re_bank2_pe4 int 225 regular {fifo 1 volatile }  }
	{ temp_vcreq_8_sroa_5_0_out int 8 regular {pointer 1}  }
	{ temp_vcreq_8_sroa_0_0_out int 8 regular {pointer 1}  }
	{ temp_vcreq_9_0_out int 128 regular {pointer 1}  }
	{ temp_vcreq_7107_0_out int 32 regular {pointer 1}  }
	{ temp_vcreq_6106_0_out int 32 regular {pointer 1}  }
	{ temp_vcreq_5_0_out int 3 regular {pointer 1}  }
	{ temp_vcreq_4_0_out int 5 regular {pointer 1}  }
	{ temp_vcreq_3_0_out int 3 regular {pointer 1}  }
	{ temp_vcreq_2_0_out int 3 regular {pointer 1}  }
	{ temp_vcreq_1_0_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vrequest4", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe4", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "base_addr_val_6", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid_4", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe4", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_8_sroa_5_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_8_sroa_0_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_9_0_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_7107_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_6106_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_5_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_4_0_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_3_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_2_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest4_dout sc_in sc_lv 225 signal 0 } 
	{ vrequest4_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest4_read sc_out sc_logic 1 signal 0 } 
	{ vrequest4_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vrequest4_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ vccache_re_bank1_pe4_din sc_out sc_lv 225 signal 1 } 
	{ vccache_re_bank1_pe4_full_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe4_write sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe4_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe4_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank2_pe4_din sc_out sc_lv 225 signal 4 } 
	{ vccache_re_bank2_pe4_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe4_write sc_out sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe4_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe4_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ base_addr_val_6 sc_in sc_lv 5 signal 2 } 
	{ base_addr_cid_4 sc_in sc_lv 5 signal 3 } 
	{ temp_vcreq_8_sroa_5_0_out sc_out sc_lv 8 signal 5 } 
	{ temp_vcreq_8_sroa_5_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_vcreq_8_sroa_0_0_out sc_out sc_lv 8 signal 6 } 
	{ temp_vcreq_8_sroa_0_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_vcreq_9_0_out sc_out sc_lv 128 signal 7 } 
	{ temp_vcreq_9_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_vcreq_7107_0_out sc_out sc_lv 32 signal 8 } 
	{ temp_vcreq_7107_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_vcreq_6106_0_out sc_out sc_lv 32 signal 9 } 
	{ temp_vcreq_6106_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_vcreq_5_0_out sc_out sc_lv 3 signal 10 } 
	{ temp_vcreq_5_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_vcreq_4_0_out sc_out sc_lv 5 signal 11 } 
	{ temp_vcreq_4_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_vcreq_3_0_out sc_out sc_lv 3 signal 12 } 
	{ temp_vcreq_3_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ temp_vcreq_2_0_out sc_out sc_lv 3 signal 13 } 
	{ temp_vcreq_2_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ temp_vcreq_1_0_out sc_out sc_lv 2 signal 14 } 
	{ temp_vcreq_1_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vrequest4", "role": "dout" }} , 
 	{ "name": "vrequest4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "empty_n" }} , 
 	{ "name": "vrequest4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "read" }} , 
 	{ "name": "vrequest4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest4", "role": "num_data_valid" }} , 
 	{ "name": "vrequest4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest4", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe4", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe4", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe4", "role": "write" }} , 
 	{ "name": "vccache_re_bank1_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe4", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe4", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe4", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe4", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe4", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe4", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe4", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_6", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_val_6", "role": "default" }} , 
 	{ "name": "base_addr_cid_4", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_cid_4", "role": "default" }} , 
 	{ "name": "temp_vcreq_8_sroa_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_vcreq_8_sroa_5_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_8_sroa_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_8_sroa_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_8_sroa_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_vcreq_8_sroa_0_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_8_sroa_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_8_sroa_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_vcreq_9_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_7107_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_7107_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_7107_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_7107_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_6106_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_6106_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_6106_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_6106_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_5_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_vcreq_4_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_3_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_2_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_vcreq_1_0_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_1_0_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_22_Pipeline_VITIS_LOOP_243_1 {
		vrequest4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe4 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_6 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_4 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe4 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_7107_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_6106_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_vcreq_1_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vrequest4 { ap_fifo {  { vrequest4_dout fifo_data_out 0 225 }  { vrequest4_empty_n fifo_status_empty 0 1 }  { vrequest4_read fifo_data_in 1 1 }  { vrequest4_num_data_valid fifo_update 0 3 }  { vrequest4_fifo_cap fifo_data 0 3 } } }
	vccache_re_bank1_pe4 { ap_fifo {  { vccache_re_bank1_pe4_din fifo_data_out 1 225 }  { vccache_re_bank1_pe4_full_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe4_write fifo_data_in 1 1 }  { vccache_re_bank1_pe4_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe4_fifo_cap fifo_data 0 4 } } }
	base_addr_val_6 { ap_none {  { base_addr_val_6 in_data 0 5 } } }
	base_addr_cid_4 { ap_none {  { base_addr_cid_4 in_data 0 5 } } }
	vccache_re_bank2_pe4 { ap_fifo {  { vccache_re_bank2_pe4_din fifo_data_out 1 225 }  { vccache_re_bank2_pe4_full_n fifo_status_empty 0 1 }  { vccache_re_bank2_pe4_write fifo_data_in 1 1 }  { vccache_re_bank2_pe4_num_data_valid fifo_update 0 4 }  { vccache_re_bank2_pe4_fifo_cap fifo_data 0 4 } } }
	temp_vcreq_8_sroa_5_0_out { ap_vld {  { temp_vcreq_8_sroa_5_0_out out_data 1 8 }  { temp_vcreq_8_sroa_5_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_8_sroa_0_0_out { ap_vld {  { temp_vcreq_8_sroa_0_0_out out_data 1 8 }  { temp_vcreq_8_sroa_0_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_9_0_out { ap_vld {  { temp_vcreq_9_0_out out_data 1 128 }  { temp_vcreq_9_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_7107_0_out { ap_vld {  { temp_vcreq_7107_0_out out_data 1 32 }  { temp_vcreq_7107_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_6106_0_out { ap_vld {  { temp_vcreq_6106_0_out out_data 1 32 }  { temp_vcreq_6106_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_5_0_out { ap_vld {  { temp_vcreq_5_0_out out_data 1 3 }  { temp_vcreq_5_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_4_0_out { ap_vld {  { temp_vcreq_4_0_out out_data 1 5 }  { temp_vcreq_4_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_3_0_out { ap_vld {  { temp_vcreq_3_0_out out_data 1 3 }  { temp_vcreq_3_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_2_0_out { ap_vld {  { temp_vcreq_2_0_out out_data 1 3 }  { temp_vcreq_2_0_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_1_0_out { ap_vld {  { temp_vcreq_1_0_out out_data 1 2 }  { temp_vcreq_1_0_out_ap_vld out_vld 1 1 } } }
}
