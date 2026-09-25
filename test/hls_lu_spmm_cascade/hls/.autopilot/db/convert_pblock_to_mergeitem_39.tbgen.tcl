set moduleName convert_pblock_to_mergeitem_39
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
set C_modelName {convert_pblock_to_mergeitem.39}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_pe2 int 263 regular {fifo 0 volatile }  }
	{ m_pe2 int 66 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_pe2", "interface" : "fifo", "bitwidth" : 263, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_pe2_dout sc_in sc_lv 263 signal 0 } 
	{ p_pe2_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_pe2_read sc_out sc_logic 1 signal 0 } 
	{ p_pe2_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ p_pe2_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ m_pe2_din sc_out sc_lv 66 signal 1 } 
	{ m_pe2_full_n sc_in sc_logic 1 signal 1 } 
	{ m_pe2_write sc_out sc_logic 1 signal 1 } 
	{ m_pe2_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ m_pe2_fifo_cap sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_pe2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe2", "role": "dout" }} , 
 	{ "name": "p_pe2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "empty_n" }} , 
 	{ "name": "p_pe2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "read" }} , 
 	{ "name": "p_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe2", "role": "num_data_valid" }} , 
 	{ "name": "p_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe2", "role": "fifo_cap" }} , 
 	{ "name": "m_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe2", "role": "din" }} , 
 	{ "name": "m_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "full_n" }} , 
 	{ "name": "m_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "write" }} , 
 	{ "name": "m_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_pe2", "role": "num_data_valid" }} , 
 	{ "name": "m_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_pe2", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	convert_pblock_to_mergeitem_39 {
		p_pe2 {Type I LastRead 1 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_pe2 { ap_fifo {  { p_pe2_dout fifo_data_out 0 263 }  { p_pe2_empty_n fifo_status_empty 0 1 }  { p_pe2_read fifo_data_in 1 1 }  { p_pe2_num_data_valid fifo_update 0 11 }  { p_pe2_fifo_cap fifo_data 0 11 } } }
	m_pe2 { ap_fifo {  { m_pe2_din fifo_data_out 1 66 }  { m_pe2_full_n fifo_status_empty 0 1 }  { m_pe2_write fifo_data_in 1 1 }  { m_pe2_num_data_valid fifo_update 0 32 }  { m_pe2_fifo_cap fifo_data 0 32 } } }
}
