set moduleName rschedule_access
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
set C_modelName {rschedule_access}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict off_pointer { MEM_WIDTH 128 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ rscheduler int 398 regular {fifo 0 volatile }  }
	{ rresponse1 int 168 regular {fifo 0 volatile }  }
	{ roff int 160 regular {fifo 1 volatile }  }
	{ off_pointer int 128 regular {array 16 { 1 3 } 1 1 }  }
	{ r_req int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rscheduler", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rresponse1", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "roff", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY"} , 
 	{ "Name" : "off_pointer", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "r_req", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rscheduler_dout sc_in sc_lv 398 signal 0 } 
	{ rscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ rscheduler_read sc_out sc_logic 1 signal 0 } 
	{ rscheduler_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ rscheduler_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ rresponse1_dout sc_in sc_lv 168 signal 1 } 
	{ rresponse1_empty_n sc_in sc_logic 1 signal 1 } 
	{ rresponse1_read sc_out sc_logic 1 signal 1 } 
	{ rresponse1_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ rresponse1_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ roff_din sc_out sc_lv 160 signal 2 } 
	{ roff_full_n sc_in sc_logic 1 signal 2 } 
	{ roff_write sc_out sc_logic 1 signal 2 } 
	{ roff_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ roff_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ off_pointer_address0 sc_out sc_lv 4 signal 3 } 
	{ off_pointer_ce0 sc_out sc_logic 1 signal 3 } 
	{ off_pointer_q0 sc_in sc_lv 128 signal 3 } 
	{ r_req_din sc_out sc_lv 398 signal 4 } 
	{ r_req_full_n sc_in sc_logic 1 signal 4 } 
	{ r_req_write sc_out sc_logic 1 signal 4 } 
	{ r_req_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ r_req_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rscheduler", "role": "dout" }} , 
 	{ "name": "rscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "empty_n" }} , 
 	{ "name": "rscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "read" }} , 
 	{ "name": "rscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "num_data_valid" }} , 
 	{ "name": "rscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "fifo_cap" }} , 
 	{ "name": "rresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse1", "role": "dout" }} , 
 	{ "name": "rresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "empty_n" }} , 
 	{ "name": "rresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "read" }} , 
 	{ "name": "rresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse1", "role": "num_data_valid" }} , 
 	{ "name": "rresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse1", "role": "fifo_cap" }} , 
 	{ "name": "roff_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff", "role": "din" }} , 
 	{ "name": "roff_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "full_n" }} , 
 	{ "name": "roff_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "write" }} , 
 	{ "name": "roff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "num_data_valid" }} , 
 	{ "name": "roff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "fifo_cap" }} , 
 	{ "name": "off_pointer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "off_pointer", "role": "address0" }} , 
 	{ "name": "off_pointer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "off_pointer", "role": "ce0" }} , 
 	{ "name": "off_pointer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "off_pointer", "role": "q0" }} , 
 	{ "name": "r_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "r_req", "role": "din" }} , 
 	{ "name": "r_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "full_n" }} , 
 	{ "name": "r_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "write" }} , 
 	{ "name": "r_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "num_data_valid" }} , 
 	{ "name": "r_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		Bridx {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rscheduler { ap_fifo {  { rscheduler_dout fifo_data_out 0 398 }  { rscheduler_empty_n fifo_status_empty 0 1 }  { rscheduler_read fifo_data_in 1 1 }  { rscheduler_num_data_valid fifo_update 0 5 }  { rscheduler_fifo_cap fifo_data 0 5 } } }
	rresponse1 { ap_fifo {  { rresponse1_dout fifo_data_out 0 168 }  { rresponse1_empty_n fifo_status_empty 0 1 }  { rresponse1_read fifo_data_in 1 1 }  { rresponse1_num_data_valid fifo_update 0 5 }  { rresponse1_fifo_cap fifo_data 0 5 } } }
	roff { ap_fifo {  { roff_din fifo_data_out 1 160 }  { roff_full_n fifo_status_empty 0 1 }  { roff_write fifo_data_in 1 1 }  { roff_num_data_valid fifo_update 0 4 }  { roff_fifo_cap fifo_data 0 4 } } }
	off_pointer { ap_memory {  { off_pointer_address0 mem_address 1 4 }  { off_pointer_ce0 mem_ce 1 1 }  { off_pointer_q0 mem_dout 0 128 } } }
	r_req { ap_fifo {  { r_req_din fifo_data_out 1 398 }  { r_req_full_n fifo_status_empty 0 1 }  { r_req_write fifo_data_in 1 1 }  { r_req_num_data_valid fifo_update 0 3 }  { r_req_fifo_cap fifo_data 0 3 } } }
}
