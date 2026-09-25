set moduleName pe_36
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
set C_modelName {pe.36}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cblock2 int 134 regular {fifo 0 volatile }  }
	{ vblock2 int 134 regular {fifo 0 volatile }  }
	{ cblock2d int 134 regular {fifo 0 volatile }  }
	{ vblock2d int 134 regular {fifo 0 volatile }  }
	{ pe2_job int 66 regular {fifo 0 volatile }  }
	{ p_pe2 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe2 int 32 regular {fifo 0 volatile }  }
	{ mc_pe2 int 66 regular {fifo 1 volatile }  }
	{ pe2_idle int 1 regular {fifo 1 volatile }  }
	{ efinish2 int 1 regular {fifo 0 volatile }  }
	{ workload_counter2 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cblock2", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe2_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe2", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe2_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ cblock2_dout sc_in sc_lv 134 signal 0 } 
	{ cblock2_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock2_read sc_out sc_logic 1 signal 0 } 
	{ cblock2_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock2_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ vblock2_dout sc_in sc_lv 134 signal 1 } 
	{ vblock2_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock2_read sc_out sc_logic 1 signal 1 } 
	{ vblock2_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock2_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ cblock2d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock2d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock2d_read sc_out sc_logic 1 signal 2 } 
	{ cblock2d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock2d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock2d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock2d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock2d_read sc_out sc_logic 1 signal 3 } 
	{ vblock2d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock2d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe2_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe2_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe2_job_read sc_out sc_logic 1 signal 4 } 
	{ pe2_job_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ pe2_job_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_pe2_din sc_out sc_lv 263 signal 5 } 
	{ p_pe2_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe2_write sc_out sc_logic 1 signal 5 } 
	{ p_pe2_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ p_pe2_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ B_rlen_pe2_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe2_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe2_read sc_out sc_logic 1 signal 6 } 
	{ B_rlen_pe2_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_rlen_pe2_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ mc_pe2_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe2_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe2_write sc_out sc_logic 1 signal 7 } 
	{ mc_pe2_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ mc_pe2_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ pe2_idle_din sc_out sc_lv 1 signal 8 } 
	{ pe2_idle_full_n sc_in sc_logic 1 signal 8 } 
	{ pe2_idle_write sc_out sc_logic 1 signal 8 } 
	{ pe2_idle_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ pe2_idle_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ efinish2_dout sc_in sc_lv 1 signal 9 } 
	{ efinish2_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish2_read sc_out sc_logic 1 signal 9 } 
	{ efinish2_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ efinish2_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ workload_counter2 sc_out sc_lv 32 signal 10 } 
	{ workload_counter2_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2", "role": "dout" }} , 
 	{ "name": "cblock2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2", "role": "empty_n" }} , 
 	{ "name": "cblock2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2", "role": "read" }} , 
 	{ "name": "cblock2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2", "role": "num_data_valid" }} , 
 	{ "name": "cblock2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2", "role": "fifo_cap" }} , 
 	{ "name": "vblock2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2", "role": "dout" }} , 
 	{ "name": "vblock2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2", "role": "empty_n" }} , 
 	{ "name": "vblock2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2", "role": "read" }} , 
 	{ "name": "vblock2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2", "role": "num_data_valid" }} , 
 	{ "name": "vblock2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2", "role": "fifo_cap" }} , 
 	{ "name": "cblock2d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2d", "role": "dout" }} , 
 	{ "name": "cblock2d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "empty_n" }} , 
 	{ "name": "cblock2d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "read" }} , 
 	{ "name": "cblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "num_data_valid" }} , 
 	{ "name": "cblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "fifo_cap" }} , 
 	{ "name": "vblock2d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2d", "role": "dout" }} , 
 	{ "name": "vblock2d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "empty_n" }} , 
 	{ "name": "vblock2d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "read" }} , 
 	{ "name": "vblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "num_data_valid" }} , 
 	{ "name": "vblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "fifo_cap" }} , 
 	{ "name": "pe2_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe2_job", "role": "dout" }} , 
 	{ "name": "pe2_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "empty_n" }} , 
 	{ "name": "pe2_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "read" }} , 
 	{ "name": "pe2_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_job", "role": "num_data_valid" }} , 
 	{ "name": "pe2_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_job", "role": "fifo_cap" }} , 
 	{ "name": "p_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe2", "role": "din" }} , 
 	{ "name": "p_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "full_n" }} , 
 	{ "name": "p_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "write" }} , 
 	{ "name": "p_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe2", "role": "num_data_valid" }} , 
 	{ "name": "p_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe2", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe2", "role": "dout" }} , 
 	{ "name": "B_rlen_pe2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe2", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe2", "role": "read" }} , 
 	{ "name": "B_rlen_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe2", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe2", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe2", "role": "din" }} , 
 	{ "name": "mc_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe2", "role": "full_n" }} , 
 	{ "name": "mc_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe2", "role": "write" }} , 
 	{ "name": "mc_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe2", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe2", "role": "fifo_cap" }} , 
 	{ "name": "pe2_idle_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "din" }} , 
 	{ "name": "pe2_idle_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "full_n" }} , 
 	{ "name": "pe2_idle_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "write" }} , 
 	{ "name": "pe2_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe2_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_idle", "role": "fifo_cap" }} , 
 	{ "name": "efinish2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish2", "role": "dout" }} , 
 	{ "name": "efinish2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish2", "role": "empty_n" }} , 
 	{ "name": "efinish2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish2", "role": "read" }} , 
 	{ "name": "efinish2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish2", "role": "num_data_valid" }} , 
 	{ "name": "efinish2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish2", "role": "fifo_cap" }} , 
 	{ "name": "workload_counter2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter2", "role": "default" }} , 
 	{ "name": "workload_counter2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter2", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe_36 {
		cblock2 {Type I LastRead 5 FirstWrite -1}
		vblock2 {Type I LastRead 0 FirstWrite -1}
		cblock2d {Type I LastRead 5 FirstWrite -1}
		vblock2d {Type I LastRead 0 FirstWrite -1}
		pe2_job {Type I LastRead 1 FirstWrite -1}
		p_pe2 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe2 {Type I LastRead 2 FirstWrite -1}
		mc_pe2 {Type O LastRead -1 FirstWrite 1}
		pe2_idle {Type O LastRead -1 FirstWrite 0}
		efinish2 {Type I LastRead 5 FirstWrite -1}
		workload_counter2 {Type O LastRead -1 FirstWrite 1}}
	pe_36_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe2 {Type O LastRead -1 FirstWrite 6}
		vblock2 {Type I LastRead 0 FirstWrite -1}
		cblock2 {Type I LastRead 5 FirstWrite -1}
		vblock2d {Type I LastRead 0 FirstWrite -1}
		cblock2d {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock2 { ap_fifo {  { cblock2_dout fifo_data_out 0 134 }  { cblock2_empty_n fifo_status_empty 0 1 }  { cblock2_read fifo_data_in 1 1 }  { cblock2_num_data_valid fifo_update 0 8 }  { cblock2_fifo_cap fifo_data 0 8 } } }
	vblock2 { ap_fifo {  { vblock2_dout fifo_data_out 0 134 }  { vblock2_empty_n fifo_status_empty 0 1 }  { vblock2_read fifo_data_in 1 1 }  { vblock2_num_data_valid fifo_update 0 8 }  { vblock2_fifo_cap fifo_data 0 8 } } }
	cblock2d { ap_fifo {  { cblock2d_dout fifo_data_out 0 134 }  { cblock2d_empty_n fifo_status_empty 0 1 }  { cblock2d_read fifo_data_in 1 1 }  { cblock2d_num_data_valid fifo_update 0 8 }  { cblock2d_fifo_cap fifo_data 0 8 } } }
	vblock2d { ap_fifo {  { vblock2d_dout fifo_data_out 0 134 }  { vblock2d_empty_n fifo_status_empty 0 1 }  { vblock2d_read fifo_data_in 1 1 }  { vblock2d_num_data_valid fifo_update 0 8 }  { vblock2d_fifo_cap fifo_data 0 8 } } }
	pe2_job { ap_fifo {  { pe2_job_dout fifo_data_out 0 66 }  { pe2_job_empty_n fifo_status_empty 0 1 }  { pe2_job_read fifo_data_in 1 1 }  { pe2_job_num_data_valid fifo_update 0 3 }  { pe2_job_fifo_cap fifo_data 0 3 } } }
	p_pe2 { ap_fifo {  { p_pe2_din fifo_data_out 1 263 }  { p_pe2_full_n fifo_status_empty 0 1 }  { p_pe2_write fifo_data_in 1 1 }  { p_pe2_num_data_valid fifo_update 0 32 }  { p_pe2_fifo_cap fifo_data 0 32 } } }
	B_rlen_pe2 { ap_fifo {  { B_rlen_pe2_dout fifo_data_out 0 32 }  { B_rlen_pe2_empty_n fifo_status_empty 0 1 }  { B_rlen_pe2_read fifo_data_in 1 1 }  { B_rlen_pe2_num_data_valid fifo_update 0 3 }  { B_rlen_pe2_fifo_cap fifo_data 0 3 } } }
	mc_pe2 { ap_fifo {  { mc_pe2_din fifo_data_out 1 66 }  { mc_pe2_full_n fifo_status_empty 0 1 }  { mc_pe2_write fifo_data_in 1 1 }  { mc_pe2_num_data_valid fifo_update 0 3 }  { mc_pe2_fifo_cap fifo_data 0 3 } } }
	pe2_idle { ap_fifo {  { pe2_idle_din fifo_data_out 1 1 }  { pe2_idle_full_n fifo_status_empty 0 1 }  { pe2_idle_write fifo_data_in 1 1 }  { pe2_idle_num_data_valid fifo_update 0 3 }  { pe2_idle_fifo_cap fifo_data 0 3 } } }
	efinish2 { ap_fifo {  { efinish2_dout fifo_data_out 0 1 }  { efinish2_empty_n fifo_status_empty 0 1 }  { efinish2_read fifo_data_in 1 1 }  { efinish2_num_data_valid fifo_update 0 3 }  { efinish2_fifo_cap fifo_data 0 3 } } }
	workload_counter2 { ap_vld {  { workload_counter2 out_data 1 32 }  { workload_counter2_ap_vld out_vld 1 1 } } }
}
