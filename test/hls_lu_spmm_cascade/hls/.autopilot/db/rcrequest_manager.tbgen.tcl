set moduleName rcrequest_manager
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set C_modelName {rcrequest_manager}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict B_rcsr { MEM_WIDTH 128 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ rcache_stream1 int 398 regular {fifo 0 volatile }  }
	{ rrequest1 int 398 regular {fifo 1 volatile }  }
	{ rresponse1 int 168 regular {fifo 0 volatile }  }
	{ rblock1 int 398 regular {fifo 1 volatile }  }
	{ B_rcsr int 128 regular {array 16 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_stream1", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest1", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rresponse1", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rblock1", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ rcache_stream1_dout sc_in sc_lv 398 signal 0 } 
	{ rcache_stream1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_stream1_read sc_out sc_logic 1 signal 0 } 
	{ rrequest1_din sc_out sc_lv 398 signal 1 } 
	{ rrequest1_full_n sc_in sc_logic 1 signal 1 } 
	{ rrequest1_write sc_out sc_logic 1 signal 1 } 
	{ rresponse1_dout sc_in sc_lv 168 signal 2 } 
	{ rresponse1_empty_n sc_in sc_logic 1 signal 2 } 
	{ rresponse1_read sc_out sc_logic 1 signal 2 } 
	{ rblock1_din sc_out sc_lv 398 signal 3 } 
	{ rblock1_full_n sc_in sc_logic 1 signal 3 } 
	{ rblock1_write sc_out sc_logic 1 signal 3 } 
	{ B_rcsr_address0 sc_out sc_lv 4 signal 4 } 
	{ B_rcsr_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_d0 sc_out sc_lv 128 signal 4 } 
	{ B_rcsr_q0 sc_in sc_lv 128 signal 4 } 
	{ B_rcsr_we0 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_address1 sc_out sc_lv 4 signal 4 } 
	{ B_rcsr_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_d1 sc_out sc_lv 128 signal 4 } 
	{ B_rcsr_q1 sc_in sc_lv 128 signal 4 } 
	{ B_rcsr_we1 sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_rcsr_empty_n sc_in sc_logic 1 signal -1 } 
	{ B_rcsr_read sc_out sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_stream1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "dout" }} , 
 	{ "name": "rcache_stream1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "empty_n" }} , 
 	{ "name": "rcache_stream1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "read" }} , 
 	{ "name": "rrequest1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest1", "role": "din" }} , 
 	{ "name": "rrequest1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "full_n" }} , 
 	{ "name": "rrequest1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "write" }} , 
 	{ "name": "rresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse1", "role": "dout" }} , 
 	{ "name": "rresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "empty_n" }} , 
 	{ "name": "rresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "read" }} , 
 	{ "name": "rblock1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rblock1", "role": "din" }} , 
 	{ "name": "rblock1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "full_n" }} , 
 	{ "name": "rblock1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "write" }} , 
 	{ "name": "B_rcsr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr", "role": "address0" }} , 
 	{ "name": "B_rcsr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "ce0" }} , 
 	{ "name": "B_rcsr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "d0" }} , 
 	{ "name": "B_rcsr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "q0" }} , 
 	{ "name": "B_rcsr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "we0" }} , 
 	{ "name": "B_rcsr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr", "role": "address1" }} , 
 	{ "name": "B_rcsr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "ce1" }} , 
 	{ "name": "B_rcsr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "d1" }} , 
 	{ "name": "B_rcsr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "q1" }} , 
 	{ "name": "B_rcsr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_empty_n", "role": "default" }} , 
 	{ "name": "B_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_read", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	rcrequest_manager {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
		rresponse1 {Type I LastRead 2 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}
		B_rcsr {Type I LastRead 0 FirstWrite -1}}
	rrequest_splitter {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_0_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_4_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse1 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
		r_req {Type I LastRead 0 FirstWrite -1}
		temp_5_sroa_100_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_95_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_85_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_80_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_75_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_70_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_65_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_60_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_55_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_50_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_40_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_35_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_30_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_25_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_20_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_15_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_10_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4225_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3224_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}
	rcollector {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_stream1 { ap_fifo {  { rcache_stream1_dout fifo_data_out 0 398 }  { rcache_stream1_empty_n fifo_status_empty 0 1 }  { rcache_stream1_read fifo_data_in 1 1 } } }
	rrequest1 { ap_fifo {  { rrequest1_din fifo_data_out 1 398 }  { rrequest1_full_n fifo_status_empty 0 1 }  { rrequest1_write fifo_data_in 1 1 } } }
	rresponse1 { ap_fifo {  { rresponse1_dout fifo_data_out 0 168 }  { rresponse1_empty_n fifo_status_empty 0 1 }  { rresponse1_read fifo_data_in 1 1 } } }
	rblock1 { ap_fifo {  { rblock1_din fifo_data_out 1 398 }  { rblock1_full_n fifo_status_empty 0 1 }  { rblock1_write fifo_data_in 1 1 } } }
	B_rcsr { ap_memory {  { B_rcsr_address0 mem_address 1 4 }  { B_rcsr_ce0 mem_ce 1 1 }  { B_rcsr_d0 mem_din 1 128 }  { B_rcsr_q0 mem_dout 0 128 }  { B_rcsr_we0 mem_we 1 1 }  { B_rcsr_address1 mem_address 1 4 }  { B_rcsr_ce1 mem_ce 1 1 }  { B_rcsr_d1 mem_din 1 128 }  { B_rcsr_q1 mem_dout 0 128 }  { B_rcsr_we1 mem_we 1 1 } } }
}
