set moduleName pe
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
set C_modelName {pe}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cblock4 int 134 regular {fifo 0 volatile }  }
	{ vblock4 int 134 regular {fifo 0 volatile }  }
	{ cblock4d int 134 regular {fifo 0 volatile }  }
	{ vblock4d int 134 regular {fifo 0 volatile }  }
	{ pe4_job int 66 regular {fifo 0 volatile }  }
	{ p_pe4 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe4 int 32 regular {fifo 0 volatile }  }
	{ mc_pe4 int 66 regular {fifo 1 volatile }  }
	{ pe4_idle int 1 regular {fifo 1 volatile }  }
	{ efinish4 int 1 regular {fifo 0 volatile }  }
	{ workload_counter4 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe4_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe4", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe4_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish4", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ cblock4_dout sc_in sc_lv 134 signal 0 } 
	{ cblock4_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock4_read sc_out sc_logic 1 signal 0 } 
	{ cblock4_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock4_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ vblock4_dout sc_in sc_lv 134 signal 1 } 
	{ vblock4_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock4_read sc_out sc_logic 1 signal 1 } 
	{ vblock4_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock4_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ cblock4d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock4d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock4d_read sc_out sc_logic 1 signal 2 } 
	{ cblock4d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock4d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock4d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock4d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock4d_read sc_out sc_logic 1 signal 3 } 
	{ vblock4d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock4d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe4_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe4_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe4_job_read sc_out sc_logic 1 signal 4 } 
	{ pe4_job_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ pe4_job_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_pe4_din sc_out sc_lv 263 signal 5 } 
	{ p_pe4_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe4_write sc_out sc_logic 1 signal 5 } 
	{ p_pe4_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ p_pe4_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ B_rlen_pe4_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe4_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe4_read sc_out sc_logic 1 signal 6 } 
	{ B_rlen_pe4_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_rlen_pe4_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ mc_pe4_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe4_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe4_write sc_out sc_logic 1 signal 7 } 
	{ mc_pe4_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ mc_pe4_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ pe4_idle_din sc_out sc_lv 1 signal 8 } 
	{ pe4_idle_full_n sc_in sc_logic 1 signal 8 } 
	{ pe4_idle_write sc_out sc_logic 1 signal 8 } 
	{ pe4_idle_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ pe4_idle_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ efinish4_dout sc_in sc_lv 1 signal 9 } 
	{ efinish4_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish4_read sc_out sc_logic 1 signal 9 } 
	{ efinish4_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ efinish4_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ workload_counter4 sc_out sc_lv 32 signal 10 } 
	{ workload_counter4_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "dout" }} , 
 	{ "name": "cblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "empty_n" }} , 
 	{ "name": "cblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "read" }} , 
 	{ "name": "cblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "num_data_valid" }} , 
 	{ "name": "cblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "fifo_cap" }} , 
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
 	{ "name": "vblock4d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4d", "role": "dout" }} , 
 	{ "name": "vblock4d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "empty_n" }} , 
 	{ "name": "vblock4d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "read" }} , 
 	{ "name": "vblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "num_data_valid" }} , 
 	{ "name": "vblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "fifo_cap" }} , 
 	{ "name": "pe4_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe4_job", "role": "dout" }} , 
 	{ "name": "pe4_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "empty_n" }} , 
 	{ "name": "pe4_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "read" }} , 
 	{ "name": "pe4_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_job", "role": "num_data_valid" }} , 
 	{ "name": "pe4_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_job", "role": "fifo_cap" }} , 
 	{ "name": "p_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe4", "role": "din" }} , 
 	{ "name": "p_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "full_n" }} , 
 	{ "name": "p_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "write" }} , 
 	{ "name": "p_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe4", "role": "num_data_valid" }} , 
 	{ "name": "p_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe4", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe4", "role": "dout" }} , 
 	{ "name": "B_rlen_pe4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe4", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe4", "role": "read" }} , 
 	{ "name": "B_rlen_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe4", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe4", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe4", "role": "din" }} , 
 	{ "name": "mc_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe4", "role": "full_n" }} , 
 	{ "name": "mc_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe4", "role": "write" }} , 
 	{ "name": "mc_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe4", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe4", "role": "fifo_cap" }} , 
 	{ "name": "pe4_idle_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "din" }} , 
 	{ "name": "pe4_idle_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "full_n" }} , 
 	{ "name": "pe4_idle_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "write" }} , 
 	{ "name": "pe4_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe4_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_idle", "role": "fifo_cap" }} , 
 	{ "name": "efinish4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "dout" }} , 
 	{ "name": "efinish4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "empty_n" }} , 
 	{ "name": "efinish4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish4", "role": "read" }} , 
 	{ "name": "efinish4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish4", "role": "num_data_valid" }} , 
 	{ "name": "efinish4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish4", "role": "fifo_cap" }} , 
 	{ "name": "workload_counter4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter4", "role": "default" }} , 
 	{ "name": "workload_counter4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter4", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe {
		cblock4 {Type I LastRead 5 FirstWrite -1}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 5 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		pe4_job {Type I LastRead 1 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe4 {Type I LastRead 2 FirstWrite -1}
		mc_pe4 {Type O LastRead -1 FirstWrite 1}
		pe4_idle {Type O LastRead -1 FirstWrite 0}
		efinish4 {Type I LastRead 5 FirstWrite -1}
		workload_counter4 {Type O LastRead -1 FirstWrite 1}}
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock4 { ap_fifo {  { cblock4_dout fifo_data_out 0 134 }  { cblock4_empty_n fifo_status_empty 0 1 }  { cblock4_read fifo_data_in 1 1 }  { cblock4_num_data_valid fifo_update 0 8 }  { cblock4_fifo_cap fifo_data 0 8 } } }
	vblock4 { ap_fifo {  { vblock4_dout fifo_data_out 0 134 }  { vblock4_empty_n fifo_status_empty 0 1 }  { vblock4_read fifo_data_in 1 1 }  { vblock4_num_data_valid fifo_update 0 8 }  { vblock4_fifo_cap fifo_data 0 8 } } }
	cblock4d { ap_fifo {  { cblock4d_dout fifo_data_out 0 134 }  { cblock4d_empty_n fifo_status_empty 0 1 }  { cblock4d_read fifo_data_in 1 1 }  { cblock4d_num_data_valid fifo_update 0 8 }  { cblock4d_fifo_cap fifo_data 0 8 } } }
	vblock4d { ap_fifo {  { vblock4d_dout fifo_data_out 0 134 }  { vblock4d_empty_n fifo_status_empty 0 1 }  { vblock4d_read fifo_data_in 1 1 }  { vblock4d_num_data_valid fifo_update 0 8 }  { vblock4d_fifo_cap fifo_data 0 8 } } }
	pe4_job { ap_fifo {  { pe4_job_dout fifo_data_out 0 66 }  { pe4_job_empty_n fifo_status_empty 0 1 }  { pe4_job_read fifo_data_in 1 1 }  { pe4_job_num_data_valid fifo_update 0 3 }  { pe4_job_fifo_cap fifo_data 0 3 } } }
	p_pe4 { ap_fifo {  { p_pe4_din fifo_data_out 1 263 }  { p_pe4_full_n fifo_status_empty 0 1 }  { p_pe4_write fifo_data_in 1 1 }  { p_pe4_num_data_valid fifo_update 0 32 }  { p_pe4_fifo_cap fifo_data 0 32 } } }
	B_rlen_pe4 { ap_fifo {  { B_rlen_pe4_dout fifo_data_out 0 32 }  { B_rlen_pe4_empty_n fifo_status_empty 0 1 }  { B_rlen_pe4_read fifo_data_in 1 1 }  { B_rlen_pe4_num_data_valid fifo_update 0 3 }  { B_rlen_pe4_fifo_cap fifo_data 0 3 } } }
	mc_pe4 { ap_fifo {  { mc_pe4_din fifo_data_out 1 66 }  { mc_pe4_full_n fifo_status_empty 0 1 }  { mc_pe4_write fifo_data_in 1 1 }  { mc_pe4_num_data_valid fifo_update 0 3 }  { mc_pe4_fifo_cap fifo_data 0 3 } } }
	pe4_idle { ap_fifo {  { pe4_idle_din fifo_data_out 1 1 }  { pe4_idle_full_n fifo_status_empty 0 1 }  { pe4_idle_write fifo_data_in 1 1 }  { pe4_idle_num_data_valid fifo_update 0 3 }  { pe4_idle_fifo_cap fifo_data 0 3 } } }
	efinish4 { ap_fifo {  { efinish4_dout fifo_data_out 0 1 }  { efinish4_empty_n fifo_status_empty 0 1 }  { efinish4_read fifo_data_in 1 1 }  { efinish4_num_data_valid fifo_update 0 3 }  { efinish4_fifo_cap fifo_data 0 3 } } }
	workload_counter4 { ap_vld {  { workload_counter4 out_data 1 32 }  { workload_counter4_ap_vld out_vld 1 1 } } }
}
