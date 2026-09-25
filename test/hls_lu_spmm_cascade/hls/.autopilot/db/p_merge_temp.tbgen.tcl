set moduleName p_merge_temp
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {_merge_temp}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ m_pe4 int 66 regular {fifo 0 volatile }  }
	{ ping int 66 regular {fifo 0 volatile }  }
	{ len1 int 32 regular  }
	{ len2_t_read int 32 regular  }
	{ ping1 int 66 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "m_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "ping", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "len1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "len2_t_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ping1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_pe4_dout sc_in sc_lv 66 signal 0 } 
	{ m_pe4_empty_n sc_in sc_logic 1 signal 0 } 
	{ m_pe4_read sc_out sc_logic 1 signal 0 } 
	{ m_pe4_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ m_pe4_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ ping_dout sc_in sc_lv 66 signal 1 } 
	{ ping_empty_n sc_in sc_logic 1 signal 1 } 
	{ ping_read sc_out sc_logic 1 signal 1 } 
	{ ping1_din sc_out sc_lv 66 signal 4 } 
	{ ping1_full_n sc_in sc_logic 1 signal 4 } 
	{ ping1_write sc_out sc_logic 1 signal 4 } 
	{ len1 sc_in sc_lv 32 signal 2 } 
	{ len2_t_read sc_in sc_lv 32 signal 3 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_pe4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe4", "role": "dout" }} , 
 	{ "name": "m_pe4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe4", "role": "empty_n" }} , 
 	{ "name": "m_pe4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe4", "role": "read" }} , 
 	{ "name": "m_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe4", "role": "num_data_valid" }} , 
 	{ "name": "m_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe4", "role": "fifo_cap" }} , 
 	{ "name": "ping_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "ping", "role": "dout" }} , 
 	{ "name": "ping_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "empty_n" }} , 
 	{ "name": "ping_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "read" }} , 
 	{ "name": "ping1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "ping1", "role": "din" }} , 
 	{ "name": "ping1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "full_n" }} , 
 	{ "name": "ping1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "write" }} , 
 	{ "name": "len1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "len1", "role": "default" }} , 
 	{ "name": "len2_t_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "len2_t_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_pe4 { ap_fifo {  { m_pe4_dout fifo_data_out 0 66 }  { m_pe4_empty_n fifo_status_empty 0 1 }  { m_pe4_read fifo_data_in 1 1 }  { m_pe4_num_data_valid fifo_update 0 11 }  { m_pe4_fifo_cap fifo_data 0 11 } } }
	ping { ap_fifo {  { ping_dout fifo_data_out 0 66 }  { ping_empty_n fifo_status_empty 0 1 }  { ping_read fifo_data_in 1 1 } } }
	len1 { ap_none {  { len1 in_data 0 32 } } }
	len2_t_read { ap_none {  { len2_t_read in_data 0 32 } } }
	ping1 { ap_fifo {  { ping1_din fifo_data_out 1 66 }  { ping1_full_n fifo_status_empty 0 1 }  { ping1_write fifo_data_in 1 1 } } }
}
