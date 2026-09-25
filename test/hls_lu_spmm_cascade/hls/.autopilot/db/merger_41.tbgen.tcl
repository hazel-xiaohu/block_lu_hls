set moduleName merger_41
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
set C_modelName {merger.41}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mc_pe1 int 66 regular {fifo 0 volatile }  }
	{ m_pe1 int 66 regular {fifo 0 volatile }  }
	{ result_pe1 int 66 regular {fifo 1 volatile }  }
	{ efinish1 int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mc_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ mc_pe1_dout sc_in sc_lv 66 signal 0 } 
	{ mc_pe1_empty_n sc_in sc_logic 1 signal 0 } 
	{ mc_pe1_read sc_out sc_logic 1 signal 0 } 
	{ m_pe1_dout sc_in sc_lv 66 signal 1 } 
	{ m_pe1_empty_n sc_in sc_logic 1 signal 1 } 
	{ m_pe1_read sc_out sc_logic 1 signal 1 } 
	{ result_pe1_din sc_out sc_lv 66 signal 2 } 
	{ result_pe1_full_n sc_in sc_logic 1 signal 2 } 
	{ result_pe1_write sc_out sc_logic 1 signal 2 } 
	{ efinish1_din sc_out sc_lv 1 signal 3 } 
	{ efinish1_full_n sc_in sc_logic 1 signal 3 } 
	{ efinish1_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "mc_pe1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe1", "role": "dout" }} , 
 	{ "name": "mc_pe1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "empty_n" }} , 
 	{ "name": "mc_pe1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "read" }} , 
 	{ "name": "m_pe1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe1", "role": "dout" }} , 
 	{ "name": "m_pe1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe1", "role": "empty_n" }} , 
 	{ "name": "m_pe1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe1", "role": "read" }} , 
 	{ "name": "result_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe1", "role": "din" }} , 
 	{ "name": "result_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe1", "role": "full_n" }} , 
 	{ "name": "result_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe1", "role": "write" }} , 
 	{ "name": "efinish1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "din" }} , 
 	{ "name": "efinish1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "full_n" }} , 
 	{ "name": "efinish1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	merger_41 {
		mc_pe1 {Type I LastRead 0 FirstWrite -1}
		m_pe1 {Type I LastRead 1 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 1}
		efinish1 {Type O LastRead -1 FirstWrite 4}}
	merge_controller_45 {
		mc_pe1 {Type I LastRead 0 FirstWrite -1}
		mresult {Type O LastRead -1 FirstWrite 1}}
	merge_two_sub_46 {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 1}
		m_pe1 {Type I LastRead 1 FirstWrite -1}
		efinish1 {Type O LastRead -1 FirstWrite 4}}
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
	mc_pe1 { ap_fifo {  { mc_pe1_dout fifo_data_out 0 66 }  { mc_pe1_empty_n fifo_status_empty 0 1 }  { mc_pe1_read fifo_data_in 1 1 } } }
	m_pe1 { ap_fifo {  { m_pe1_dout fifo_data_out 0 66 }  { m_pe1_empty_n fifo_status_empty 0 1 }  { m_pe1_read fifo_data_in 1 1 } } }
	result_pe1 { ap_fifo {  { result_pe1_din fifo_data_out 1 66 }  { result_pe1_full_n fifo_status_empty 0 1 }  { result_pe1_write fifo_data_in 1 1 } } }
	efinish1 { ap_fifo {  { efinish1_din fifo_data_out 1 1 }  { efinish1_full_n fifo_status_empty 0 1 }  { efinish1_write fifo_data_in 1 1 } } }
}
