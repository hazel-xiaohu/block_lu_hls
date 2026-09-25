set moduleName pe_Pipeline_VITIS_LOOP_35_2
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
set C_modelName {pe_Pipeline_VITIS_LOOP_35_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ b_rlen int 32 regular  }
	{ curr_job_val float 32 regular  }
	{ p_pe4 int 263 regular {fifo 1 volatile }  }
	{ vblock4 int 134 regular {fifo 0 volatile }  }
	{ cblock4 int 134 regular {fifo 0 volatile }  }
	{ vblock4d int 134 regular {fifo 0 volatile }  }
	{ cblock4d int 134 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "b_rlen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "curr_job_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe4", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vblock4d_dout sc_in sc_lv 134 signal 5 } 
	{ vblock4d_empty_n sc_in sc_logic 1 signal 5 } 
	{ vblock4d_read sc_out sc_logic 1 signal 5 } 
	{ vblock4d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock4d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock4_dout sc_in sc_lv 134 signal 3 } 
	{ vblock4_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock4_read sc_out sc_logic 1 signal 3 } 
	{ vblock4_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock4_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ cblock4d_dout sc_in sc_lv 134 signal 6 } 
	{ cblock4d_empty_n sc_in sc_logic 1 signal 6 } 
	{ cblock4d_read sc_out sc_logic 1 signal 6 } 
	{ cblock4d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock4d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock4_dout sc_in sc_lv 134 signal 4 } 
	{ cblock4_empty_n sc_in sc_logic 1 signal 4 } 
	{ cblock4_read sc_out sc_logic 1 signal 4 } 
	{ cblock4_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ cblock4_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ p_pe4_din sc_out sc_lv 263 signal 2 } 
	{ p_pe4_full_n sc_in sc_logic 1 signal 2 } 
	{ p_pe4_write sc_out sc_logic 1 signal 2 } 
	{ p_pe4_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ p_pe4_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ b_rlen sc_in sc_lv 32 signal 0 } 
	{ curr_job_val sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vblock4d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4d", "role": "dout" }} , 
 	{ "name": "vblock4d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "empty_n" }} , 
 	{ "name": "vblock4d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "read" }} , 
 	{ "name": "vblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "num_data_valid" }} , 
 	{ "name": "vblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "fifo_cap" }} , 
 	{ "name": "vblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "dout" }} , 
 	{ "name": "vblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "empty_n" }} , 
 	{ "name": "vblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "read" }} , 
 	{ "name": "vblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "num_data_valid" }} , 
 	{ "name": "vblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "fifo_cap" }} , 
 	{ "name": "cblock4d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4d", "role": "dout" }} , 
 	{ "name": "cblock4d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "empty_n" }} , 
 	{ "name": "cblock4d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "read" }} , 
 	{ "name": "cblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "num_data_valid" }} , 
 	{ "name": "cblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "fifo_cap" }} , 
 	{ "name": "cblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "dout" }} , 
 	{ "name": "cblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "empty_n" }} , 
 	{ "name": "cblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "read" }} , 
 	{ "name": "cblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "num_data_valid" }} , 
 	{ "name": "cblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "fifo_cap" }} , 
 	{ "name": "p_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe4", "role": "din" }} , 
 	{ "name": "p_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "full_n" }} , 
 	{ "name": "p_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "write" }} , 
 	{ "name": "p_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe4", "role": "num_data_valid" }} , 
 	{ "name": "p_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe4", "role": "fifo_cap" }} , 
 	{ "name": "b_rlen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_rlen", "role": "default" }} , 
 	{ "name": "curr_job_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_job_val", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 6}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type I LastRead 5 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b_rlen { ap_none {  { b_rlen in_data 0 32 } } }
	curr_job_val { ap_none {  { curr_job_val in_data 0 32 } } }
	p_pe4 { ap_fifo {  { p_pe4_din fifo_data_out 1 263 }  { p_pe4_full_n fifo_status_empty 0 1 }  { p_pe4_write fifo_data_in 1 1 }  { p_pe4_num_data_valid fifo_update 0 32 }  { p_pe4_fifo_cap fifo_data 0 32 } } }
	vblock4 { ap_fifo {  { vblock4_dout fifo_data_out 0 134 }  { vblock4_empty_n fifo_status_empty 0 1 }  { vblock4_read fifo_data_in 1 1 }  { vblock4_num_data_valid fifo_update 0 8 }  { vblock4_fifo_cap fifo_data 0 8 } } }
	cblock4 { ap_fifo {  { cblock4_dout fifo_data_out 0 134 }  { cblock4_empty_n fifo_status_empty 0 1 }  { cblock4_read fifo_data_in 1 1 }  { cblock4_num_data_valid fifo_update 0 8 }  { cblock4_fifo_cap fifo_data 0 8 } } }
	vblock4d { ap_fifo {  { vblock4d_dout fifo_data_out 0 134 }  { vblock4d_empty_n fifo_status_empty 0 1 }  { vblock4d_read fifo_data_in 1 1 }  { vblock4d_num_data_valid fifo_update 0 8 }  { vblock4d_fifo_cap fifo_data 0 8 } } }
	cblock4d { ap_fifo {  { cblock4d_dout fifo_data_out 0 134 }  { cblock4d_empty_n fifo_status_empty 0 1 }  { cblock4d_read fifo_data_in 1 1 }  { cblock4d_num_data_valid fifo_update 0 8 }  { cblock4d_fifo_cap fifo_data 0 8 } } }
}
