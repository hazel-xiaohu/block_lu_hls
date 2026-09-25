set moduleName pe_37
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
set C_modelName {pe.37}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cblock3 int 134 regular {fifo 0 volatile }  }
	{ vblock3 int 134 regular {fifo 0 volatile }  }
	{ cblock3d int 134 regular {fifo 0 volatile }  }
	{ vblock3d int 134 regular {fifo 0 volatile }  }
	{ pe3_job int 66 regular {fifo 0 volatile }  }
	{ p_pe3 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe3 int 32 regular {fifo 0 volatile }  }
	{ mc_pe3 int 66 regular {fifo 1 volatile }  }
	{ pe3_idle int 1 regular {fifo 1 volatile }  }
	{ efinish3 int 1 regular {fifo 0 volatile }  }
	{ workload_counter3 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe3_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe3", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe3", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe3_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cblock3_dout sc_in sc_lv 134 signal 0 } 
	{ cblock3_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock3_read sc_out sc_logic 1 signal 0 } 
	{ cblock3_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock3_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ vblock3_dout sc_in sc_lv 134 signal 1 } 
	{ vblock3_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock3_read sc_out sc_logic 1 signal 1 } 
	{ vblock3_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock3_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ cblock3d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock3d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock3d_read sc_out sc_logic 1 signal 2 } 
	{ cblock3d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock3d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock3d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock3d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock3d_read sc_out sc_logic 1 signal 3 } 
	{ vblock3d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock3d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe3_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe3_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe3_job_read sc_out sc_logic 1 signal 4 } 
	{ pe3_job_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ pe3_job_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_pe3_din sc_out sc_lv 263 signal 5 } 
	{ p_pe3_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe3_write sc_out sc_logic 1 signal 5 } 
	{ p_pe3_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ p_pe3_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ B_rlen_pe3_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe3_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe3_read sc_out sc_logic 1 signal 6 } 
	{ B_rlen_pe3_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_rlen_pe3_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ mc_pe3_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe3_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe3_write sc_out sc_logic 1 signal 7 } 
	{ mc_pe3_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ mc_pe3_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ pe3_idle_din sc_out sc_lv 1 signal 8 } 
	{ pe3_idle_full_n sc_in sc_logic 1 signal 8 } 
	{ pe3_idle_write sc_out sc_logic 1 signal 8 } 
	{ pe3_idle_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ pe3_idle_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ efinish3_dout sc_in sc_lv 1 signal 9 } 
	{ efinish3_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish3_read sc_out sc_logic 1 signal 9 } 
	{ efinish3_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ efinish3_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ workload_counter3 sc_out sc_lv 32 signal 10 } 
	{ workload_counter3_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3", "role": "dout" }} , 
 	{ "name": "cblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "empty_n" }} , 
 	{ "name": "cblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "read" }} , 
 	{ "name": "cblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "num_data_valid" }} , 
 	{ "name": "cblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "fifo_cap" }} , 
 	{ "name": "vblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3", "role": "dout" }} , 
 	{ "name": "vblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "empty_n" }} , 
 	{ "name": "vblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "read" }} , 
 	{ "name": "vblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "num_data_valid" }} , 
 	{ "name": "vblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "fifo_cap" }} , 
 	{ "name": "cblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3d", "role": "dout" }} , 
 	{ "name": "cblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "empty_n" }} , 
 	{ "name": "cblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "read" }} , 
 	{ "name": "cblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "num_data_valid" }} , 
 	{ "name": "cblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "fifo_cap" }} , 
 	{ "name": "vblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3d", "role": "dout" }} , 
 	{ "name": "vblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "empty_n" }} , 
 	{ "name": "vblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "read" }} , 
 	{ "name": "vblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "num_data_valid" }} , 
 	{ "name": "vblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "fifo_cap" }} , 
 	{ "name": "pe3_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe3_job", "role": "dout" }} , 
 	{ "name": "pe3_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "empty_n" }} , 
 	{ "name": "pe3_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "read" }} , 
 	{ "name": "pe3_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_job", "role": "num_data_valid" }} , 
 	{ "name": "pe3_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_job", "role": "fifo_cap" }} , 
 	{ "name": "p_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe3", "role": "din" }} , 
 	{ "name": "p_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "full_n" }} , 
 	{ "name": "p_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "write" }} , 
 	{ "name": "p_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe3", "role": "num_data_valid" }} , 
 	{ "name": "p_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe3", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe3", "role": "dout" }} , 
 	{ "name": "B_rlen_pe3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe3", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe3", "role": "read" }} , 
 	{ "name": "B_rlen_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe3", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe3", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe3", "role": "din" }} , 
 	{ "name": "mc_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe3", "role": "full_n" }} , 
 	{ "name": "mc_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe3", "role": "write" }} , 
 	{ "name": "mc_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe3", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe3", "role": "fifo_cap" }} , 
 	{ "name": "pe3_idle_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "din" }} , 
 	{ "name": "pe3_idle_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "full_n" }} , 
 	{ "name": "pe3_idle_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "write" }} , 
 	{ "name": "pe3_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe3_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_idle", "role": "fifo_cap" }} , 
 	{ "name": "efinish3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish3", "role": "dout" }} , 
 	{ "name": "efinish3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish3", "role": "empty_n" }} , 
 	{ "name": "efinish3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish3", "role": "read" }} , 
 	{ "name": "efinish3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish3", "role": "num_data_valid" }} , 
 	{ "name": "efinish3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish3", "role": "fifo_cap" }} , 
 	{ "name": "workload_counter3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter3", "role": "default" }} , 
 	{ "name": "workload_counter3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter3", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe_37 {
		cblock3 {Type I LastRead 5 FirstWrite -1}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 5 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		pe3_job {Type I LastRead 1 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe3 {Type I LastRead 2 FirstWrite -1}
		mc_pe3 {Type O LastRead -1 FirstWrite 1}
		pe3_idle {Type O LastRead -1 FirstWrite 0}
		efinish3 {Type I LastRead 5 FirstWrite -1}
		workload_counter3 {Type O LastRead -1 FirstWrite 1}}
	pe_37_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 6}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type I LastRead 5 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock3 { ap_fifo {  { cblock3_dout fifo_data_out 0 134 }  { cblock3_empty_n fifo_status_empty 0 1 }  { cblock3_read fifo_data_in 1 1 }  { cblock3_num_data_valid fifo_update 0 8 }  { cblock3_fifo_cap fifo_data 0 8 } } }
	vblock3 { ap_fifo {  { vblock3_dout fifo_data_out 0 134 }  { vblock3_empty_n fifo_status_empty 0 1 }  { vblock3_read fifo_data_in 1 1 }  { vblock3_num_data_valid fifo_update 0 8 }  { vblock3_fifo_cap fifo_data 0 8 } } }
	cblock3d { ap_fifo {  { cblock3d_dout fifo_data_out 0 134 }  { cblock3d_empty_n fifo_status_empty 0 1 }  { cblock3d_read fifo_data_in 1 1 }  { cblock3d_num_data_valid fifo_update 0 8 }  { cblock3d_fifo_cap fifo_data 0 8 } } }
	vblock3d { ap_fifo {  { vblock3d_dout fifo_data_out 0 134 }  { vblock3d_empty_n fifo_status_empty 0 1 }  { vblock3d_read fifo_data_in 1 1 }  { vblock3d_num_data_valid fifo_update 0 8 }  { vblock3d_fifo_cap fifo_data 0 8 } } }
	pe3_job { ap_fifo {  { pe3_job_dout fifo_data_out 0 66 }  { pe3_job_empty_n fifo_status_empty 0 1 }  { pe3_job_read fifo_data_in 1 1 }  { pe3_job_num_data_valid fifo_update 0 3 }  { pe3_job_fifo_cap fifo_data 0 3 } } }
	p_pe3 { ap_fifo {  { p_pe3_din fifo_data_out 1 263 }  { p_pe3_full_n fifo_status_empty 0 1 }  { p_pe3_write fifo_data_in 1 1 }  { p_pe3_num_data_valid fifo_update 0 32 }  { p_pe3_fifo_cap fifo_data 0 32 } } }
	B_rlen_pe3 { ap_fifo {  { B_rlen_pe3_dout fifo_data_out 0 32 }  { B_rlen_pe3_empty_n fifo_status_empty 0 1 }  { B_rlen_pe3_read fifo_data_in 1 1 }  { B_rlen_pe3_num_data_valid fifo_update 0 3 }  { B_rlen_pe3_fifo_cap fifo_data 0 3 } } }
	mc_pe3 { ap_fifo {  { mc_pe3_din fifo_data_out 1 66 }  { mc_pe3_full_n fifo_status_empty 0 1 }  { mc_pe3_write fifo_data_in 1 1 }  { mc_pe3_num_data_valid fifo_update 0 3 }  { mc_pe3_fifo_cap fifo_data 0 3 } } }
	pe3_idle { ap_fifo {  { pe3_idle_din fifo_data_out 1 1 }  { pe3_idle_full_n fifo_status_empty 0 1 }  { pe3_idle_write fifo_data_in 1 1 }  { pe3_idle_num_data_valid fifo_update 0 3 }  { pe3_idle_fifo_cap fifo_data 0 3 } } }
	efinish3 { ap_fifo {  { efinish3_dout fifo_data_out 0 1 }  { efinish3_empty_n fifo_status_empty 0 1 }  { efinish3_read fifo_data_in 1 1 }  { efinish3_num_data_valid fifo_update 0 3 }  { efinish3_fifo_cap fifo_data 0 3 } } }
	workload_counter3 { ap_vld {  { workload_counter3 out_data 1 32 }  { workload_counter3_ap_vld out_vld 1 1 } } }
}
