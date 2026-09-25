set moduleName vcache
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
set C_modelName {vcache}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vccache_re_bank2 int 225 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ vcache_bank2_vres int 6 regular {fifo 1 volatile }  }
	{ vcache_bank2_result int 1031 regular {fifo 1 volatile }  }
	{ vc2acc int 32 regular {pointer 1}  }
	{ vc2hit int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank2", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank2_vres", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcache_bank2_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vccache_re_bank2_dout sc_in sc_lv 225 signal 0 } 
	{ vccache_re_bank2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank2_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ vcache_bank2_vres_din sc_out sc_lv 6 signal 2 } 
	{ vcache_bank2_vres_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_bank2_vres_write sc_out sc_logic 1 signal 2 } 
	{ vcache_bank2_vres_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_vres_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_result_din sc_out sc_lv 1031 signal 3 } 
	{ vcache_bank2_result_full_n sc_in sc_logic 1 signal 3 } 
	{ vcache_bank2_result_write sc_out sc_logic 1 signal 3 } 
	{ vcache_bank2_result_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vcache_bank2_result_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vc2acc sc_out sc_lv 32 signal 4 } 
	{ vc2acc_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vc2hit sc_out sc_lv 32 signal 5 } 
	{ vc2hit_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "dout" }} , 
 	{ "name": "vccache_re_bank2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "read" }} , 
 	{ "name": "vccache_re_bank2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_vres_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "din" }} , 
 	{ "name": "vcache_bank2_vres_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_vres_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "write" }} , 
 	{ "name": "vcache_bank2_vres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_vres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_result_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "din" }} , 
 	{ "name": "vcache_bank2_result_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_result_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "write" }} , 
 	{ "name": "vcache_bank2_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "fifo_cap" }} , 
 	{ "name": "vc2acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2acc", "role": "default" }} , 
 	{ "name": "vc2acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2acc", "role": "ap_vld" }} , 
 	{ "name": "vc2hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2hit", "role": "default" }} , 
 	{ "name": "vc2hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2hit", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	vcache {
		vccache_re_bank2 {Type I LastRead 2 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		vcache_bank2_vres {Type O LastRead -1 FirstWrite 2}
		vcache_bank2_result {Type O LastRead -1 FirstWrite 2}
		vc2acc {Type O LastRead -1 FirstWrite 2}
		vc2hit {Type O LastRead -1 FirstWrite 2}}
	vcache_Pipeline_VITIS_LOOP_326_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_1 {Type O LastRead -1 FirstWrite 0}
		p_filled {Type O LastRead -1 FirstWrite 0}
		p_tag_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_1 {Type O LastRead -1 FirstWrite 0}
		p_tag {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vccache_re_bank2 { ap_fifo {  { vccache_re_bank2_dout fifo_data_out 0 225 }  { vccache_re_bank2_empty_n fifo_status_empty 0 1 }  { vccache_re_bank2_read fifo_data_in 1 1 }  { vccache_re_bank2_num_data_valid fifo_update 0 7 }  { vccache_re_bank2_fifo_cap fifo_data 0 7 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_data_out 0 32 }  { base_addr_val_empty_n fifo_status_empty 0 1 }  { base_addr_val_read fifo_data_in 1 1 }  { base_addr_val_num_data_valid fifo_update 0 3 }  { base_addr_val_fifo_cap fifo_data 0 3 } } }
	vcache_bank2_vres { ap_fifo {  { vcache_bank2_vres_din fifo_data_out 1 6 }  { vcache_bank2_vres_full_n fifo_status_empty 0 1 }  { vcache_bank2_vres_write fifo_data_in 1 1 }  { vcache_bank2_vres_num_data_valid fifo_update 0 5 }  { vcache_bank2_vres_fifo_cap fifo_data 0 5 } } }
	vcache_bank2_result { ap_fifo {  { vcache_bank2_result_din fifo_data_out 1 1031 }  { vcache_bank2_result_full_n fifo_status_empty 0 1 }  { vcache_bank2_result_write fifo_data_in 1 1 }  { vcache_bank2_result_num_data_valid fifo_update 0 4 }  { vcache_bank2_result_fifo_cap fifo_data 0 4 } } }
	vc2acc { ap_vld {  { vc2acc out_data 1 32 }  { vc2acc_ap_vld out_vld 1 1 } } }
	vc2hit { ap_vld {  { vc2hit out_data 1 32 }  { vc2hit_ap_vld out_vld 1 1 } } }
}
