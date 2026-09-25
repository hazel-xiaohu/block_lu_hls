set moduleName convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2
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
set C_modelName {convert_pblock_to_mergeitem.39_Pipeline_VITIS_LOOP_910_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ zext_ln910 int 3 regular  }
	{ add_ln910 int 4 regular  }
	{ temp_cid int 128 regular  }
	{ empty int 128 regular  }
	{ m_pe2 int 66 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln910", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln910", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "temp_cid", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_pe2_din sc_out sc_lv 66 signal 4 } 
	{ m_pe2_full_n sc_in sc_logic 1 signal 4 } 
	{ m_pe2_write sc_out sc_logic 1 signal 4 } 
	{ m_pe2_num_data_valid sc_in sc_lv 32 signal 4 } 
	{ m_pe2_fifo_cap sc_in sc_lv 32 signal 4 } 
	{ zext_ln910 sc_in sc_lv 3 signal 0 } 
	{ add_ln910 sc_in sc_lv 4 signal 1 } 
	{ temp_cid sc_in sc_lv 128 signal 2 } 
	{ empty sc_in sc_lv 128 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe2", "role": "din" }} , 
 	{ "name": "m_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "full_n" }} , 
 	{ "name": "m_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "write" }} , 
 	{ "name": "m_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_pe2", "role": "num_data_valid" }} , 
 	{ "name": "m_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_pe2", "role": "fifo_cap" }} , 
 	{ "name": "zext_ln910", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln910", "role": "default" }} , 
 	{ "name": "add_ln910", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln910", "role": "default" }} , 
 	{ "name": "temp_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_cid", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln910 { ap_none {  { zext_ln910 in_data 0 3 } } }
	add_ln910 { ap_none {  { add_ln910 in_data 0 4 } } }
	temp_cid { ap_none {  { temp_cid in_data 0 128 } } }
	empty { ap_none {  { empty in_data 0 128 } } }
	m_pe2 { ap_fifo {  { m_pe2_din fifo_data_out 1 66 }  { m_pe2_full_n fifo_status_empty 0 1 }  { m_pe2_write fifo_data_in 1 1 }  { m_pe2_num_data_valid fifo_update 0 32 }  { m_pe2_fifo_cap fifo_data 0 32 } } }
}
