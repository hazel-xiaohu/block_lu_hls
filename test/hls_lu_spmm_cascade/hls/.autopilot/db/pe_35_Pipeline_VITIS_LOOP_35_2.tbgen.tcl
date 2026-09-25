set moduleName pe_35_Pipeline_VITIS_LOOP_35_2
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
set C_modelName {pe.35_Pipeline_VITIS_LOOP_35_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ b_rlen int 32 regular  }
	{ curr_job_val float 32 regular  }
	{ p_pe1 int 263 regular {fifo 1 volatile }  }
	{ vblock1 int 134 regular {fifo 0 volatile }  }
	{ cblock1 int 134 regular {fifo 0 volatile }  }
	{ vblock1d int 134 regular {fifo 0 volatile }  }
	{ cblock1d int 134 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "b_rlen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "curr_job_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe1", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vblock1d_dout sc_in sc_lv 134 signal 5 } 
	{ vblock1d_empty_n sc_in sc_logic 1 signal 5 } 
	{ vblock1d_read sc_out sc_logic 1 signal 5 } 
	{ vblock1d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock1d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock1_dout sc_in sc_lv 134 signal 3 } 
	{ vblock1_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock1_read sc_out sc_logic 1 signal 3 } 
	{ vblock1_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock1_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ cblock1d_dout sc_in sc_lv 134 signal 6 } 
	{ cblock1d_empty_n sc_in sc_logic 1 signal 6 } 
	{ cblock1d_read sc_out sc_logic 1 signal 6 } 
	{ cblock1d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock1d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock1_dout sc_in sc_lv 134 signal 4 } 
	{ cblock1_empty_n sc_in sc_logic 1 signal 4 } 
	{ cblock1_read sc_out sc_logic 1 signal 4 } 
	{ cblock1_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ cblock1_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ p_pe1_din sc_out sc_lv 263 signal 2 } 
	{ p_pe1_full_n sc_in sc_logic 1 signal 2 } 
	{ p_pe1_write sc_out sc_logic 1 signal 2 } 
	{ p_pe1_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ p_pe1_fifo_cap sc_in sc_lv 32 signal 2 } 
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
 	{ "name": "vblock1d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1d", "role": "dout" }} , 
 	{ "name": "vblock1d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "empty_n" }} , 
 	{ "name": "vblock1d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "read" }} , 
 	{ "name": "vblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "num_data_valid" }} , 
 	{ "name": "vblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "fifo_cap" }} , 
 	{ "name": "vblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1", "role": "dout" }} , 
 	{ "name": "vblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "empty_n" }} , 
 	{ "name": "vblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "read" }} , 
 	{ "name": "vblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "num_data_valid" }} , 
 	{ "name": "vblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "fifo_cap" }} , 
 	{ "name": "cblock1d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1d", "role": "dout" }} , 
 	{ "name": "cblock1d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "empty_n" }} , 
 	{ "name": "cblock1d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "read" }} , 
 	{ "name": "cblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "num_data_valid" }} , 
 	{ "name": "cblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "fifo_cap" }} , 
 	{ "name": "cblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1", "role": "dout" }} , 
 	{ "name": "cblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "empty_n" }} , 
 	{ "name": "cblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "read" }} , 
 	{ "name": "cblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "num_data_valid" }} , 
 	{ "name": "cblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "fifo_cap" }} , 
 	{ "name": "p_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe1", "role": "din" }} , 
 	{ "name": "p_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "full_n" }} , 
 	{ "name": "p_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "write" }} , 
 	{ "name": "p_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe1", "role": "num_data_valid" }} , 
 	{ "name": "p_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe1", "role": "fifo_cap" }} , 
 	{ "name": "b_rlen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_rlen", "role": "default" }} , 
 	{ "name": "curr_job_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_job_val", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe_35_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 6}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1 {Type I LastRead 5 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 5 FirstWrite -1}}}

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
	p_pe1 { ap_fifo {  { p_pe1_din fifo_data_out 1 263 }  { p_pe1_full_n fifo_status_empty 0 1 }  { p_pe1_write fifo_data_in 1 1 }  { p_pe1_num_data_valid fifo_update 0 32 }  { p_pe1_fifo_cap fifo_data 0 32 } } }
	vblock1 { ap_fifo {  { vblock1_dout fifo_data_out 0 134 }  { vblock1_empty_n fifo_status_empty 0 1 }  { vblock1_read fifo_data_in 1 1 }  { vblock1_num_data_valid fifo_update 0 8 }  { vblock1_fifo_cap fifo_data 0 8 } } }
	cblock1 { ap_fifo {  { cblock1_dout fifo_data_out 0 134 }  { cblock1_empty_n fifo_status_empty 0 1 }  { cblock1_read fifo_data_in 1 1 }  { cblock1_num_data_valid fifo_update 0 8 }  { cblock1_fifo_cap fifo_data 0 8 } } }
	vblock1d { ap_fifo {  { vblock1d_dout fifo_data_out 0 134 }  { vblock1d_empty_n fifo_status_empty 0 1 }  { vblock1d_read fifo_data_in 1 1 }  { vblock1d_num_data_valid fifo_update 0 8 }  { vblock1d_fifo_cap fifo_data 0 8 } } }
	cblock1d { ap_fifo {  { cblock1d_dout fifo_data_out 0 134 }  { cblock1d_empty_n fifo_status_empty 0 1 }  { cblock1d_read fifo_data_in 1 1 }  { cblock1d_num_data_valid fifo_update 0 8 }  { cblock1d_fifo_cap fifo_data 0 8 } } }
}
