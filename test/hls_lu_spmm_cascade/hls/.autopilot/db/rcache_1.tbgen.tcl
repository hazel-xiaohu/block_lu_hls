set moduleName rcache_1
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
set C_modelName {rcache.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_re_bank1 int 398 regular {fifo 0 volatile }  }
	{ base_addr_rcsr int 32 regular {fifo 0}  }
	{ rcache_bank1_res int 168 regular {fifo 1 volatile }  }
	{ r1acc int 32 regular {pointer 1}  }
	{ r1hit int 32 regular {pointer 1}  }
	{ mi1 int 5 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_re_bank1", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_rcsr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_bank1_res", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r1acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r1hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi1", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
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
	{ rcache_re_bank1_dout sc_in sc_lv 398 signal 0 } 
	{ rcache_re_bank1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_re_bank1_read sc_out sc_logic 1 signal 0 } 
	{ rcache_re_bank1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ base_addr_rcsr_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_rcsr_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_rcsr_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_rcsr_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ base_addr_rcsr_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rcache_bank1_res_din sc_out sc_lv 168 signal 2 } 
	{ rcache_bank1_res_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_bank1_res_write sc_out sc_logic 1 signal 2 } 
	{ rcache_bank1_res_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ rcache_bank1_res_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ r1acc sc_out sc_lv 32 signal 3 } 
	{ r1acc_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ r1hit sc_out sc_lv 32 signal 4 } 
	{ r1hit_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ mi1_din sc_out sc_lv 5 signal 5 } 
	{ mi1_full_n sc_in sc_logic 1 signal 5 } 
	{ mi1_write sc_out sc_logic 1 signal 5 } 
	{ mi1_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ mi1_fifo_cap sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_re_bank1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "dout" }} , 
 	{ "name": "rcache_re_bank1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "read" }} , 
 	{ "name": "rcache_re_bank1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_rcsr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "dout" }} , 
 	{ "name": "base_addr_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "empty_n" }} , 
 	{ "name": "base_addr_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "read" }} , 
 	{ "name": "base_addr_rcsr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_rcsr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "fifo_cap" }} , 
 	{ "name": "rcache_bank1_res_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "din" }} , 
 	{ "name": "rcache_bank1_res_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "full_n" }} , 
 	{ "name": "rcache_bank1_res_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "write" }} , 
 	{ "name": "rcache_bank1_res_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "num_data_valid" }} , 
 	{ "name": "rcache_bank1_res_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "fifo_cap" }} , 
 	{ "name": "r1acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r1acc", "role": "default" }} , 
 	{ "name": "r1acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r1acc", "role": "ap_vld" }} , 
 	{ "name": "r1hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r1hit", "role": "default" }} , 
 	{ "name": "r1hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r1hit", "role": "ap_vld" }} , 
 	{ "name": "mi1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1", "role": "din" }} , 
 	{ "name": "mi1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "full_n" }} , 
 	{ "name": "mi1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "write" }} , 
 	{ "name": "mi1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1", "role": "num_data_valid" }} , 
 	{ "name": "mi1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mi1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	rcache_1 {
		rcache_re_bank1 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_bank1_res {Type O LastRead -1 FirstWrite 2}
		r1acc {Type O LastRead -1 FirstWrite 2}
		r1hit {Type O LastRead -1 FirstWrite 2}
		mi1 {Type O LastRead -1 FirstWrite 2}}
	rcache_1_Pipeline_VITIS_LOOP_330_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
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
	rcache_re_bank1 { ap_fifo {  { rcache_re_bank1_dout fifo_data_out 0 398 }  { rcache_re_bank1_empty_n fifo_status_empty 0 1 }  { rcache_re_bank1_read fifo_data_in 1 1 }  { rcache_re_bank1_num_data_valid fifo_update 0 4 }  { rcache_re_bank1_fifo_cap fifo_data 0 4 } } }
	base_addr_rcsr { ap_fifo {  { base_addr_rcsr_dout fifo_data_out 0 32 }  { base_addr_rcsr_empty_n fifo_status_empty 0 1 }  { base_addr_rcsr_read fifo_data_in 1 1 }  { base_addr_rcsr_num_data_valid fifo_update 0 3 }  { base_addr_rcsr_fifo_cap fifo_data 0 3 } } }
	rcache_bank1_res { ap_fifo {  { rcache_bank1_res_din fifo_data_out 1 168 }  { rcache_bank1_res_full_n fifo_status_empty 0 1 }  { rcache_bank1_res_write fifo_data_in 1 1 }  { rcache_bank1_res_num_data_valid fifo_update 0 4 }  { rcache_bank1_res_fifo_cap fifo_data 0 4 } } }
	r1acc { ap_vld {  { r1acc out_data 1 32 }  { r1acc_ap_vld out_vld 1 1 } } }
	r1hit { ap_vld {  { r1hit out_data 1 32 }  { r1hit_ap_vld out_vld 1 1 } } }
	mi1 { ap_fifo {  { mi1_din fifo_data_out 1 5 }  { mi1_full_n fifo_status_empty 0 1 }  { mi1_write fifo_data_in 1 1 }  { mi1_num_data_valid fifo_update 0 3 }  { mi1_fifo_cap fifo_data 0 3 } } }
}
