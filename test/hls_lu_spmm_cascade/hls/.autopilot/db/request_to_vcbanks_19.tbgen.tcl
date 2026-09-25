set moduleName request_to_vcbanks_19
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
set C_modelName {request_to_vcbanks.19}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vrequest1 int 225 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ base_addr_cid int 32 regular {fifo 0}  }
	{ vccache_re_bank1_pe1 int 225 regular {fifo 1 volatile }  }
	{ vccache_re_bank2_pe1 int 225 regular {fifo 1 volatile }  }
	{ B_val_base_c int 32 regular {fifo 1}  }
	{ B_val_base_c5 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vrequest1", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe1", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe1", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest1_dout sc_in sc_lv 225 signal 0 } 
	{ vrequest1_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest1_read sc_out sc_logic 1 signal 0 } 
	{ vrequest1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ vrequest1_fifo_cap sc_in sc_lv 3 signal 0 } 
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
	{ vccache_re_bank1_pe1_din sc_out sc_lv 225 signal 3 } 
	{ vccache_re_bank1_pe1_full_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe1_write sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe1_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe1_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank2_pe1_din sc_out sc_lv 225 signal 4 } 
	{ vccache_re_bank2_pe1_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe1_write sc_out sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe1_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe1_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c_din sc_out sc_lv 32 signal 5 } 
	{ B_val_base_c_full_n sc_in sc_logic 1 signal 5 } 
	{ B_val_base_c_write sc_out sc_logic 1 signal 5 } 
	{ B_val_base_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ B_val_base_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ B_val_base_c5_din sc_out sc_lv 32 signal 6 } 
	{ B_val_base_c5_full_n sc_in sc_logic 1 signal 6 } 
	{ B_val_base_c5_write sc_out sc_logic 1 signal 6 } 
	{ B_val_base_c5_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_val_base_c5_fifo_cap sc_in sc_lv 3 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vrequest1", "role": "dout" }} , 
 	{ "name": "vrequest1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest1", "role": "empty_n" }} , 
 	{ "name": "vrequest1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest1", "role": "read" }} , 
 	{ "name": "vrequest1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest1", "role": "num_data_valid" }} , 
 	{ "name": "vrequest1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vrequest1", "role": "fifo_cap" }} , 
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
 	{ "name": "vccache_re_bank1_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe1", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe1", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe1", "role": "write" }} , 
 	{ "name": "vccache_re_bank1_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe1", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe1", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe1", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe1", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe1", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe1", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe1", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c", "role": "din" }} , 
 	{ "name": "B_val_base_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c", "role": "full_n" }} , 
 	{ "name": "B_val_base_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c", "role": "write" }} , 
 	{ "name": "B_val_base_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_val_base_c", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_val_base_c", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c5", "role": "din" }} , 
 	{ "name": "B_val_base_c5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c5", "role": "full_n" }} , 
 	{ "name": "B_val_base_c5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c5", "role": "write" }} , 
 	{ "name": "B_val_base_c5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_val_base_c5", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_val_base_c5", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_19 {
		vrequest1 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe1 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe1 {Type O LastRead -1 FirstWrite 1}
		B_val_base_c {Type O LastRead -1 FirstWrite 0}
		B_val_base_c5 {Type O LastRead -1 FirstWrite 0}}
	request_to_vcbanks_19_Pipeline_VITIS_LOOP_243_1 {
		vrequest1 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe1 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_9 {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe1 {Type O LastRead -1 FirstWrite 1}
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
	vrequest1 { ap_fifo {  { vrequest1_dout fifo_data_out 0 225 }  { vrequest1_empty_n fifo_status_empty 0 1 }  { vrequest1_read fifo_data_in 1 1 }  { vrequest1_num_data_valid fifo_update 0 3 }  { vrequest1_fifo_cap fifo_data 0 3 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_data_out 0 32 }  { base_addr_val_empty_n fifo_status_empty 0 1 }  { base_addr_val_read fifo_data_in 1 1 }  { base_addr_val_num_data_valid fifo_update 0 4 }  { base_addr_val_fifo_cap fifo_data 0 4 } } }
	base_addr_cid { ap_fifo {  { base_addr_cid_dout fifo_data_out 0 32 }  { base_addr_cid_empty_n fifo_status_empty 0 1 }  { base_addr_cid_read fifo_data_in 1 1 }  { base_addr_cid_num_data_valid fifo_update 0 4 }  { base_addr_cid_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank1_pe1 { ap_fifo {  { vccache_re_bank1_pe1_din fifo_data_out 1 225 }  { vccache_re_bank1_pe1_full_n fifo_status_empty 0 1 }  { vccache_re_bank1_pe1_write fifo_data_in 1 1 }  { vccache_re_bank1_pe1_num_data_valid fifo_update 0 4 }  { vccache_re_bank1_pe1_fifo_cap fifo_data 0 4 } } }
	vccache_re_bank2_pe1 { ap_fifo {  { vccache_re_bank2_pe1_din fifo_data_out 1 225 }  { vccache_re_bank2_pe1_full_n fifo_status_empty 0 1 }  { vccache_re_bank2_pe1_write fifo_data_in 1 1 }  { vccache_re_bank2_pe1_num_data_valid fifo_update 0 4 }  { vccache_re_bank2_pe1_fifo_cap fifo_data 0 4 } } }
	B_val_base_c { ap_fifo {  { B_val_base_c_din fifo_data_out 1 32 }  { B_val_base_c_full_n fifo_status_empty 0 1 }  { B_val_base_c_write fifo_data_in 1 1 }  { B_val_base_c_num_data_valid fifo_update 0 3 }  { B_val_base_c_fifo_cap fifo_data 0 3 } } }
	B_val_base_c5 { ap_fifo {  { B_val_base_c5_din fifo_data_out 1 32 }  { B_val_base_c5_full_n fifo_status_empty 0 1 }  { B_val_base_c5_write fifo_data_in 1 1 }  { B_val_base_c5_num_data_valid fifo_update 0 3 }  { B_val_base_c5_fifo_cap fifo_data 0 3 } } }
}
