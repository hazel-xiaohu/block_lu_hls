set moduleName request_to_rbanks
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
set C_modelName {request_to_rbanks}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rrequestf int 398 regular {fifo 0 volatile }  }
	{ base_addr_rcsr int 32 regular {fifo 0}  }
	{ rcache_re_bank1 int 398 regular {fifo 1 volatile }  }
	{ rcache_re_bank2 int 398 regular {fifo 1 volatile }  }
	{ rcache_re_bank3 int 398 regular {fifo 1 volatile }  }
	{ rcache_re_bank4 int 398 regular {fifo 1 volatile }  }
	{ B_rcsr_base_c int 32 regular {fifo 1}  }
	{ B_rcsr_base_c1 int 32 regular {fifo 1}  }
	{ B_rcsr_base_c2 int 32 regular {fifo 1}  }
	{ B_rcsr_base_c3 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rrequestf", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_rcsr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank1", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank2", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank3", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank4", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rrequestf_dout sc_in sc_lv 398 signal 0 } 
	{ rrequestf_empty_n sc_in sc_logic 1 signal 0 } 
	{ rrequestf_read sc_out sc_logic 1 signal 0 } 
	{ rrequestf_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rrequestf_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ base_addr_rcsr_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_rcsr_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_rcsr_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_rcsr_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ base_addr_rcsr_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ rcache_re_bank1_din sc_out sc_lv 398 signal 2 } 
	{ rcache_re_bank1_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_re_bank1_write sc_out sc_logic 1 signal 2 } 
	{ rcache_re_bank1_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ rcache_re_bank1_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ rcache_re_bank2_din sc_out sc_lv 398 signal 3 } 
	{ rcache_re_bank2_full_n sc_in sc_logic 1 signal 3 } 
	{ rcache_re_bank2_write sc_out sc_logic 1 signal 3 } 
	{ rcache_re_bank2_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ rcache_re_bank2_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ rcache_re_bank3_din sc_out sc_lv 398 signal 4 } 
	{ rcache_re_bank3_full_n sc_in sc_logic 1 signal 4 } 
	{ rcache_re_bank3_write sc_out sc_logic 1 signal 4 } 
	{ rcache_re_bank3_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ rcache_re_bank3_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ rcache_re_bank4_din sc_out sc_lv 398 signal 5 } 
	{ rcache_re_bank4_full_n sc_in sc_logic 1 signal 5 } 
	{ rcache_re_bank4_write sc_out sc_logic 1 signal 5 } 
	{ rcache_re_bank4_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ rcache_re_bank4_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ B_rcsr_base_c_din sc_out sc_lv 32 signal 6 } 
	{ B_rcsr_base_c_full_n sc_in sc_logic 1 signal 6 } 
	{ B_rcsr_base_c_write sc_out sc_logic 1 signal 6 } 
	{ B_rcsr_base_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_rcsr_base_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ B_rcsr_base_c1_din sc_out sc_lv 32 signal 7 } 
	{ B_rcsr_base_c1_full_n sc_in sc_logic 1 signal 7 } 
	{ B_rcsr_base_c1_write sc_out sc_logic 1 signal 7 } 
	{ B_rcsr_base_c1_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ B_rcsr_base_c1_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ B_rcsr_base_c2_din sc_out sc_lv 32 signal 8 } 
	{ B_rcsr_base_c2_full_n sc_in sc_logic 1 signal 8 } 
	{ B_rcsr_base_c2_write sc_out sc_logic 1 signal 8 } 
	{ B_rcsr_base_c2_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ B_rcsr_base_c2_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ B_rcsr_base_c3_din sc_out sc_lv 32 signal 9 } 
	{ B_rcsr_base_c3_full_n sc_in sc_logic 1 signal 9 } 
	{ B_rcsr_base_c3_write sc_out sc_logic 1 signal 9 } 
	{ B_rcsr_base_c3_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ B_rcsr_base_c3_fifo_cap sc_in sc_lv 3 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rrequestf_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequestf", "role": "dout" }} , 
 	{ "name": "rrequestf_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "empty_n" }} , 
 	{ "name": "rrequestf_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "read" }} , 
 	{ "name": "rrequestf_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "num_data_valid" }} , 
 	{ "name": "rrequestf_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_rcsr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "dout" }} , 
 	{ "name": "base_addr_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "empty_n" }} , 
 	{ "name": "base_addr_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "read" }} , 
 	{ "name": "base_addr_rcsr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_rcsr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "write" }} , 
 	{ "name": "rcache_re_bank1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "din" }} , 
 	{ "name": "rcache_re_bank3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "write" }} , 
 	{ "name": "rcache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "din" }} , 
 	{ "name": "rcache_re_bank4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "write" }} , 
 	{ "name": "rcache_re_bank4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c1", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c1", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c1", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c1", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c1", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c2", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c2", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c2", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c2", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c2", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c3", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c3", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c3", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c3", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rcsr_base_c3", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_to_rbanks {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		B_rcsr_base_c {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c1 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c2 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c3 {Type O LastRead -1 FirstWrite 0}}
	request_to_rbanks_Pipeline_VITIS_LOOP_251_1 {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		empty {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		temp_req_5_sroa_180_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_171_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_162_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_153_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_144_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_135_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_126_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_117_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_108_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_99_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_81_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_72_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_63_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_54_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_36_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_27_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_18_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_4578_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_3577_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_req_0_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rrequestf { ap_fifo {  { rrequestf_dout fifo_data_out 0 398 }  { rrequestf_empty_n fifo_status_empty 0 1 }  { rrequestf_read fifo_data_in 1 1 }  { rrequestf_num_data_valid fifo_update 0 3 }  { rrequestf_fifo_cap fifo_data 0 3 } } }
	base_addr_rcsr { ap_fifo {  { base_addr_rcsr_dout fifo_data_out 0 32 }  { base_addr_rcsr_empty_n fifo_status_empty 0 1 }  { base_addr_rcsr_read fifo_data_in 1 1 }  { base_addr_rcsr_num_data_valid fifo_update 0 4 }  { base_addr_rcsr_fifo_cap fifo_data 0 4 } } }
	rcache_re_bank1 { ap_fifo {  { rcache_re_bank1_din fifo_data_out 1 398 }  { rcache_re_bank1_full_n fifo_status_empty 0 1 }  { rcache_re_bank1_write fifo_data_in 1 1 }  { rcache_re_bank1_num_data_valid fifo_update 0 4 }  { rcache_re_bank1_fifo_cap fifo_data 0 4 } } }
	rcache_re_bank2 { ap_fifo {  { rcache_re_bank2_din fifo_data_out 1 398 }  { rcache_re_bank2_full_n fifo_status_empty 0 1 }  { rcache_re_bank2_write fifo_data_in 1 1 }  { rcache_re_bank2_num_data_valid fifo_update 0 4 }  { rcache_re_bank2_fifo_cap fifo_data 0 4 } } }
	rcache_re_bank3 { ap_fifo {  { rcache_re_bank3_din fifo_data_out 1 398 }  { rcache_re_bank3_full_n fifo_status_empty 0 1 }  { rcache_re_bank3_write fifo_data_in 1 1 }  { rcache_re_bank3_num_data_valid fifo_update 0 4 }  { rcache_re_bank3_fifo_cap fifo_data 0 4 } } }
	rcache_re_bank4 { ap_fifo {  { rcache_re_bank4_din fifo_data_out 1 398 }  { rcache_re_bank4_full_n fifo_status_empty 0 1 }  { rcache_re_bank4_write fifo_data_in 1 1 }  { rcache_re_bank4_num_data_valid fifo_update 0 4 }  { rcache_re_bank4_fifo_cap fifo_data 0 4 } } }
	B_rcsr_base_c { ap_fifo {  { B_rcsr_base_c_din fifo_data_out 1 32 }  { B_rcsr_base_c_full_n fifo_status_empty 0 1 }  { B_rcsr_base_c_write fifo_data_in 1 1 }  { B_rcsr_base_c_num_data_valid fifo_update 0 3 }  { B_rcsr_base_c_fifo_cap fifo_data 0 3 } } }
	B_rcsr_base_c1 { ap_fifo {  { B_rcsr_base_c1_din fifo_data_out 1 32 }  { B_rcsr_base_c1_full_n fifo_status_empty 0 1 }  { B_rcsr_base_c1_write fifo_data_in 1 1 }  { B_rcsr_base_c1_num_data_valid fifo_update 0 3 }  { B_rcsr_base_c1_fifo_cap fifo_data 0 3 } } }
	B_rcsr_base_c2 { ap_fifo {  { B_rcsr_base_c2_din fifo_data_out 1 32 }  { B_rcsr_base_c2_full_n fifo_status_empty 0 1 }  { B_rcsr_base_c2_write fifo_data_in 1 1 }  { B_rcsr_base_c2_num_data_valid fifo_update 0 3 }  { B_rcsr_base_c2_fifo_cap fifo_data 0 3 } } }
	B_rcsr_base_c3 { ap_fifo {  { B_rcsr_base_c3_din fifo_data_out 1 32 }  { B_rcsr_base_c3_full_n fifo_status_empty 0 1 }  { B_rcsr_base_c3_write fifo_data_in 1 1 }  { B_rcsr_base_c3_num_data_valid fifo_update 0 3 }  { B_rcsr_base_c3_fifo_cap fifo_data 0 3 } } }
}
