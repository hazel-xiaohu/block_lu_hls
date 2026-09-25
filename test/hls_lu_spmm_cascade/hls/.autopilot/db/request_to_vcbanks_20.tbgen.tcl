set moduleName request_to_vcbanks_20
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
set C_modelName {request_to_vcbanks.20}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vrequest2 int 225 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ base_addr_cid int 32 regular {fifo 0}  }
	{ vccache_re_bank1_pe2 int 225 regular {fifo 1 volatile }  }
	{ vccache_re_bank2_pe2 int 225 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vrequest2", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe2", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe2", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} ]}
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
	{ vrequest2_dout sc_in sc_lv 225 signal 0 } 
	{ vrequest2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest2_read sc_out sc_logic 1 signal 0 } 
	{ vrequest2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vrequest2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ base_addr_cid_dout sc_in sc_lv 32 signal 2 } 
	{ base_addr_cid_empty_n sc_in sc_logic 1 signal 2 } 
	{ base_addr_cid_read sc_out sc_logic 1 signal 2 } 
	{ base_addr_cid_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ base_addr_cid_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe2_din sc_out sc_lv 225 signal 3 } 
	{ vccache_re_bank1_pe2_full_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe2_write sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe2_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe2_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank2_pe2_din sc_out sc_lv 225 signal 4 } 
	{ vccache_re_bank2_pe2_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe2_write sc_out sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe2_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe2_fifo_cap sc_in sc_lv 4 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vrequest2", "role": "dout" }} , 
 	{ "name": "vrequest2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "empty_n" }} , 
 	{ "name": "vrequest2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "read" }} , 
 	{ "name": "vrequest2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest2", "role": "num_data_valid" }} , 
 	{ "name": "vrequest2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest2", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_cid_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "dout" }} , 
 	{ "name": "base_addr_cid_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "empty_n" }} , 
 	{ "name": "base_addr_cid_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "read" }} , 
 	{ "name": "base_addr_cid_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_cid_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "write" }} , 
 	{ "name": "vccache_re_bank1_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_20 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_20_Pipeline_VITIS_LOOP_243_1 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_8 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vrequest2 { ap_fifo {  { vrequest2_dout fifo_data_out 0 225 }  { vrequest2_empty_n fifo_status_empty 0 1 }  { vrequest2_read fifo_data_in 1 1 }  { vrequest2_num_data_valid fifo_update 0 3 }  { vrequest2_fifo_cap fifo_data 0 3 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_data_out 0 32 }  { base_addr_val_empty_n fifo_status_empty 0 1 }  { base_addr_val_read fifo_data_in 1 1 }  { base_addr_val_num_data_valid fifo_update 0 4 }  { base_addr_val_fifo_cap fifo_data 0 4 } } }
	base_addr_cid { ap_fifo {  { base_addr_cid_dout fifo_data_out 0 32 }  { base_addr_cid_empty_n fifo_status_empty 0 1 }  { base_addr_cid_read fifo_data_in 1 1 }  { base_addr_cid_num_data_valid fifo_update 0 4 }  { base_addr_cid_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe2 { ap_fifo {  { vccache_re_bank1_pe2_din fifo_data_out 1 225 }  { vccache_re_bank1_pe2_full_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe2_write fifo_data_in 1 1 }  { vccache_re_bank1_pe2_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe2_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank2_pe2 { ap_fifo {  { vccache_re_bank2_pe2_din fifo_data_out 1 225 }  { vccache_re_bank2_pe2_full_n fifo_status_empty 0 1 }  { vccache_re_bank2_pe2_write fifo_data_in 1 1 }  { vccache_re_bank2_pe2_num_data_valid fifo_update 0 4 }  { vccache_re_bank2_pe2_fifo_cap fifo_data 0 4 } } }
}
