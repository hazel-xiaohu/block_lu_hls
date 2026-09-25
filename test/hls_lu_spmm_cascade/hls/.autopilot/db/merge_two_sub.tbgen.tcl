set moduleName merge_two_sub
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
set C_modelName {merge_two_sub}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mresult int 36 regular {fifo 0 volatile }  }
	{ result_pe4 int 66 regular {fifo 1 volatile }  }
	{ m_pe4 int 66 regular {fifo 0 volatile }  }
	{ efinish4 int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mresult", "interface" : "fifo", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "efinish4", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mresult_dout sc_in sc_lv 36 signal 0 } 
	{ mresult_empty_n sc_in sc_logic 1 signal 0 } 
	{ mresult_read sc_out sc_logic 1 signal 0 } 
	{ mresult_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ mresult_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ result_pe4_din sc_out sc_lv 66 signal 1 } 
	{ result_pe4_full_n sc_in sc_logic 1 signal 1 } 
	{ result_pe4_write sc_out sc_logic 1 signal 1 } 
	{ result_pe4_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ result_pe4_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ m_pe4_dout sc_in sc_lv 66 signal 2 } 
	{ m_pe4_empty_n sc_in sc_logic 1 signal 2 } 
	{ m_pe4_read sc_out sc_logic 1 signal 2 } 
	{ m_pe4_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ m_pe4_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ efinish4_din sc_out sc_lv 1 signal 3 } 
	{ efinish4_full_n sc_in sc_logic 1 signal 3 } 
	{ efinish4_write sc_out sc_logic 1 signal 3 } 
	{ efinish4_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ efinish4_fifo_cap sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mresult_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "mresult", "role": "dout" }} , 
 	{ "name": "mresult_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mresult", "role": "empty_n" }} , 
 	{ "name": "mresult_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mresult", "role": "read" }} , 
 	{ "name": "mresult_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mresult", "role": "num_data_valid" }} , 
 	{ "name": "mresult_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mresult", "role": "fifo_cap" }} , 
 	{ "name": "result_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe4", "role": "din" }} , 
 	{ "name": "result_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe4", "role": "full_n" }} , 
 	{ "name": "result_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe4", "role": "write" }} , 
 	{ "name": "result_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe4", "role": "num_data_valid" }} , 
 	{ "name": "result_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe4", "role": "fifo_cap" }} , 
 	{ "name": "m_pe4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe4", "role": "dout" }} , 
 	{ "name": "m_pe4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe4", "role": "empty_n" }} , 
 	{ "name": "m_pe4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe4", "role": "read" }} , 
 	{ "name": "m_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe4", "role": "num_data_valid" }} , 
 	{ "name": "m_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe4", "role": "fifo_cap" }} , 
 	{ "name": "efinish4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "din" }} , 
 	{ "name": "efinish4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "full_n" }} , 
 	{ "name": "efinish4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "write" }} , 
 	{ "name": "efinish4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish4", "role": "num_data_valid" }} , 
 	{ "name": "efinish4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish4", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_two_sub {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 1}
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		efinish4 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mresult { ap_fifo {  { mresult_dout fifo_data_out 0 36 }  { mresult_empty_n fifo_status_empty 0 1 }  { mresult_read fifo_data_in 1 1 }  { mresult_num_data_valid fifo_update 0 4 }  { mresult_fifo_cap fifo_data 0 4 } } }
	result_pe4 { ap_fifo {  { result_pe4_din fifo_data_out 1 66 }  { result_pe4_full_n fifo_status_empty 0 1 }  { result_pe4_write fifo_data_in 1 1 }  { result_pe4_num_data_valid fifo_update 0 11 }  { result_pe4_fifo_cap fifo_data 0 11 } } }
	m_pe4 { ap_fifo {  { m_pe4_dout fifo_data_out 0 66 }  { m_pe4_empty_n fifo_status_empty 0 1 }  { m_pe4_read fifo_data_in 1 1 }  { m_pe4_num_data_valid fifo_update 0 11 }  { m_pe4_fifo_cap fifo_data 0 11 } } }
	efinish4 { ap_fifo {  { efinish4_din fifo_data_out 1 1 }  { efinish4_full_n fifo_status_empty 0 1 }  { efinish4_write fifo_data_in 1 1 }  { efinish4_num_data_valid fifo_update 0 3 }  { efinish4_fifo_cap fifo_data 0 3 } } }
}
