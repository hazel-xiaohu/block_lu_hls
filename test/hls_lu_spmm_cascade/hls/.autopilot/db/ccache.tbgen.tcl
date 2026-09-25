set moduleName ccache
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
set C_modelName {ccache}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ vccache_re_bank4 int 225 regular {fifo 0 volatile }  }
	{ base_addr_cid int 32 regular {fifo 0}  }
	{ vcache_bank4_cres int 6 regular {fifo 1 volatile }  }
	{ vcache_bank4_result int 1031 regular {fifo 1 volatile }  }
	{ vc4acc int 32 regular {pointer 1}  }
	{ vc4hit int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank4", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank4_cres", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcache_bank4_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc4acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc4hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ vccache_re_bank4_dout sc_in sc_lv 225 signal 0 } 
	{ vccache_re_bank4_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank4_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank4_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank4_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ base_addr_cid_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_cid_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_cid_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_cid_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ base_addr_cid_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ vcache_bank4_cres_din sc_out sc_lv 6 signal 2 } 
	{ vcache_bank4_cres_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_bank4_cres_write sc_out sc_logic 1 signal 2 } 
	{ vcache_bank4_cres_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ vcache_bank4_cres_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ vcache_bank4_result_din sc_out sc_lv 1031 signal 3 } 
	{ vcache_bank4_result_full_n sc_in sc_logic 1 signal 3 } 
	{ vcache_bank4_result_write sc_out sc_logic 1 signal 3 } 
	{ vcache_bank4_result_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vcache_bank4_result_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vc4acc sc_out sc_lv 32 signal 4 } 
	{ vc4acc_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vc4hit sc_out sc_lv 32 signal 5 } 
	{ vc4hit_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vccache_re_bank4", "role": "dout" }} , 
 	{ "name": "vccache_re_bank4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank4", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank4", "role": "read" }} , 
 	{ "name": "vccache_re_bank4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank4", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank4", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_cid_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "dout" }} , 
 	{ "name": "base_addr_cid_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "empty_n" }} , 
 	{ "name": "base_addr_cid_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "read" }} , 
 	{ "name": "base_addr_cid_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_cid_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank4_cres_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "din" }} , 
 	{ "name": "vcache_bank4_cres_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "full_n" }} , 
 	{ "name": "vcache_bank4_cres_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "write" }} , 
 	{ "name": "vcache_bank4_cres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank4_cres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank4_result_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "din" }} , 
 	{ "name": "vcache_bank4_result_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "full_n" }} , 
 	{ "name": "vcache_bank4_result_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "write" }} , 
 	{ "name": "vcache_bank4_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank4_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "fifo_cap" }} , 
 	{ "name": "vc4acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc4acc", "role": "default" }} , 
 	{ "name": "vc4acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc4acc", "role": "ap_vld" }} , 
 	{ "name": "vc4hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc4hit", "role": "default" }} , 
 	{ "name": "vc4hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc4hit", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	ccache {
		vccache_re_bank4 {Type I LastRead 2 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type O LastRead -1 FirstWrite 2}
		vcache_bank4_result {Type O LastRead -1 FirstWrite 2}
		vc4acc {Type O LastRead -1 FirstWrite 2}
		vc4hit {Type O LastRead -1 FirstWrite 2}}
	ccache_Pipeline_VITIS_LOOP_617_1 {
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
	vccache_re_bank4 { ap_fifo {  { vccache_re_bank4_dout fifo_data_out 0 225 }  { vccache_re_bank4_empty_n fifo_status_empty 0 1 }  { vccache_re_bank4_read fifo_data_in 1 1 }  { vccache_re_bank4_num_data_valid fifo_update 0 7 }  { vccache_re_bank4_fifo_cap fifo_data 0 7 } } }
	base_addr_cid { ap_fifo {  { base_addr_cid_dout fifo_data_out 0 32 }  { base_addr_cid_empty_n fifo_status_empty 0 1 }  { base_addr_cid_read fifo_data_in 1 1 }  { base_addr_cid_num_data_valid fifo_update 0 3 }  { base_addr_cid_fifo_cap fifo_data 0 3 } } }
	vcache_bank4_cres { ap_fifo {  { vcache_bank4_cres_din fifo_data_out 1 6 }  { vcache_bank4_cres_full_n fifo_status_empty 0 1 }  { vcache_bank4_cres_write fifo_data_in 1 1 }  { vcache_bank4_cres_num_data_valid fifo_update 0 5 }  { vcache_bank4_cres_fifo_cap fifo_data 0 5 } } }
	vcache_bank4_result { ap_fifo {  { vcache_bank4_result_din fifo_data_out 1 1031 }  { vcache_bank4_result_full_n fifo_status_empty 0 1 }  { vcache_bank4_result_write fifo_data_in 1 1 }  { vcache_bank4_result_num_data_valid fifo_update 0 4 }  { vcache_bank4_result_fifo_cap fifo_data 0 4 } } }
	vc4acc { ap_vld {  { vc4acc out_data 1 32 }  { vc4acc_ap_vld out_vld 1 1 } } }
	vc4hit { ap_vld {  { vc4hit out_data 1 32 }  { vc4hit_ap_vld out_vld 1 1 } } }
}
