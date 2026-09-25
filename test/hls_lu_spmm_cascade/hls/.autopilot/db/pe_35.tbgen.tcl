set moduleName pe_35
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
set C_modelName {pe.35}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cblock1 int 134 regular {fifo 0 volatile }  }
	{ vblock1 int 134 regular {fifo 0 volatile }  }
	{ cblock1d int 134 regular {fifo 0 volatile }  }
	{ vblock1d int 134 regular {fifo 0 volatile }  }
	{ pe1_job int 66 regular {fifo 0 volatile }  }
	{ p_pe1 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe1 int 32 regular {fifo 0 volatile }  }
	{ mc_pe1 int 66 regular {fifo 1 volatile }  }
	{ pe1_idle int 1 regular {fifo 1 volatile }  }
	{ efinish1 int 1 regular {fifo 0 volatile }  }
	{ workload_counter1 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe1", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe1_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ cblock1_dout sc_in sc_lv 134 signal 0 } 
	{ cblock1_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock1_read sc_out sc_logic 1 signal 0 } 
	{ cblock1_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock1_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ vblock1_dout sc_in sc_lv 134 signal 1 } 
	{ vblock1_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock1_read sc_out sc_logic 1 signal 1 } 
	{ vblock1_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock1_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ cblock1d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock1d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock1d_read sc_out sc_logic 1 signal 2 } 
	{ cblock1d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock1d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock1d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock1d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock1d_read sc_out sc_logic 1 signal 3 } 
	{ vblock1d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock1d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe1_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe1_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe1_job_read sc_out sc_logic 1 signal 4 } 
	{ pe1_job_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ pe1_job_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_pe1_din sc_out sc_lv 263 signal 5 } 
	{ p_pe1_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe1_write sc_out sc_logic 1 signal 5 } 
	{ p_pe1_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ p_pe1_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ B_rlen_pe1_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe1_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe1_read sc_out sc_logic 1 signal 6 } 
	{ B_rlen_pe1_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ B_rlen_pe1_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ mc_pe1_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe1_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe1_write sc_out sc_logic 1 signal 7 } 
	{ mc_pe1_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ mc_pe1_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ pe1_idle_din sc_out sc_lv 1 signal 8 } 
	{ pe1_idle_full_n sc_in sc_logic 1 signal 8 } 
	{ pe1_idle_write sc_out sc_logic 1 signal 8 } 
	{ pe1_idle_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ pe1_idle_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ efinish1_dout sc_in sc_lv 1 signal 9 } 
	{ efinish1_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish1_read sc_out sc_logic 1 signal 9 } 
	{ efinish1_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ efinish1_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ workload_counter1 sc_out sc_lv 32 signal 10 } 
	{ workload_counter1_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1", "role": "dout" }} , 
 	{ "name": "cblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "empty_n" }} , 
 	{ "name": "cblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "read" }} , 
 	{ "name": "cblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "num_data_valid" }} , 
 	{ "name": "cblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "fifo_cap" }} , 
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
 	{ "name": "vblock1d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1d", "role": "dout" }} , 
 	{ "name": "vblock1d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "empty_n" }} , 
 	{ "name": "vblock1d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "read" }} , 
 	{ "name": "vblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "num_data_valid" }} , 
 	{ "name": "vblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "fifo_cap" }} , 
 	{ "name": "pe1_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe1_job", "role": "dout" }} , 
 	{ "name": "pe1_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "empty_n" }} , 
 	{ "name": "pe1_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "read" }} , 
 	{ "name": "pe1_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_job", "role": "num_data_valid" }} , 
 	{ "name": "pe1_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_job", "role": "fifo_cap" }} , 
 	{ "name": "p_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe1", "role": "din" }} , 
 	{ "name": "p_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "full_n" }} , 
 	{ "name": "p_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "write" }} , 
 	{ "name": "p_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe1", "role": "num_data_valid" }} , 
 	{ "name": "p_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_pe1", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "dout" }} , 
 	{ "name": "B_rlen_pe1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "read" }} , 
 	{ "name": "B_rlen_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_rlen_pe1", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe1", "role": "din" }} , 
 	{ "name": "mc_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "full_n" }} , 
 	{ "name": "mc_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "write" }} , 
 	{ "name": "mc_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe1", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc_pe1", "role": "fifo_cap" }} , 
 	{ "name": "pe1_idle_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "din" }} , 
 	{ "name": "pe1_idle_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "full_n" }} , 
 	{ "name": "pe1_idle_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "write" }} , 
 	{ "name": "pe1_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe1_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_idle", "role": "fifo_cap" }} , 
 	{ "name": "efinish1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "dout" }} , 
 	{ "name": "efinish1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "empty_n" }} , 
 	{ "name": "efinish1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish1", "role": "read" }} , 
 	{ "name": "efinish1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish1", "role": "num_data_valid" }} , 
 	{ "name": "efinish1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "efinish1", "role": "fifo_cap" }} , 
 	{ "name": "workload_counter1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter1", "role": "default" }} , 
 	{ "name": "workload_counter1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter1", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	pe_35 {
		cblock1 {Type I LastRead 5 FirstWrite -1}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 5 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type I LastRead 1 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 1}
		B_rlen_pe1 {Type I LastRead 2 FirstWrite -1}
		mc_pe1 {Type O LastRead -1 FirstWrite 1}
		pe1_idle {Type O LastRead -1 FirstWrite 0}
		efinish1 {Type I LastRead 5 FirstWrite -1}
		workload_counter1 {Type O LastRead -1 FirstWrite 1}}
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock1 { ap_fifo {  { cblock1_dout fifo_data_out 0 134 }  { cblock1_empty_n fifo_status_empty 0 1 }  { cblock1_read fifo_data_in 1 1 }  { cblock1_num_data_valid fifo_update 0 8 }  { cblock1_fifo_cap fifo_data 0 8 } } }
	vblock1 { ap_fifo {  { vblock1_dout fifo_data_out 0 134 }  { vblock1_empty_n fifo_status_empty 0 1 }  { vblock1_read fifo_data_in 1 1 }  { vblock1_num_data_valid fifo_update 0 8 }  { vblock1_fifo_cap fifo_data 0 8 } } }
	cblock1d { ap_fifo {  { cblock1d_dout fifo_data_out 0 134 }  { cblock1d_empty_n fifo_status_empty 0 1 }  { cblock1d_read fifo_data_in 1 1 }  { cblock1d_num_data_valid fifo_update 0 8 }  { cblock1d_fifo_cap fifo_data 0 8 } } }
	vblock1d { ap_fifo {  { vblock1d_dout fifo_data_out 0 134 }  { vblock1d_empty_n fifo_status_empty 0 1 }  { vblock1d_read fifo_data_in 1 1 }  { vblock1d_num_data_valid fifo_update 0 8 }  { vblock1d_fifo_cap fifo_data 0 8 } } }
	pe1_job { ap_fifo {  { pe1_job_dout fifo_data_out 0 66 }  { pe1_job_empty_n fifo_status_empty 0 1 }  { pe1_job_read fifo_data_in 1 1 }  { pe1_job_num_data_valid fifo_update 0 3 }  { pe1_job_fifo_cap fifo_data 0 3 } } }
	p_pe1 { ap_fifo {  { p_pe1_din fifo_data_out 1 263 }  { p_pe1_full_n fifo_status_empty 0 1 }  { p_pe1_write fifo_data_in 1 1 }  { p_pe1_num_data_valid fifo_update 0 32 }  { p_pe1_fifo_cap fifo_data 0 32 } } }
	B_rlen_pe1 { ap_fifo {  { B_rlen_pe1_dout fifo_data_out 0 32 }  { B_rlen_pe1_empty_n fifo_status_empty 0 1 }  { B_rlen_pe1_read fifo_data_in 1 1 }  { B_rlen_pe1_num_data_valid fifo_update 0 3 }  { B_rlen_pe1_fifo_cap fifo_data 0 3 } } }
	mc_pe1 { ap_fifo {  { mc_pe1_din fifo_data_out 1 66 }  { mc_pe1_full_n fifo_status_empty 0 1 }  { mc_pe1_write fifo_data_in 1 1 }  { mc_pe1_num_data_valid fifo_update 0 3 }  { mc_pe1_fifo_cap fifo_data 0 3 } } }
	pe1_idle { ap_fifo {  { pe1_idle_din fifo_data_out 1 1 }  { pe1_idle_full_n fifo_status_empty 0 1 }  { pe1_idle_write fifo_data_in 1 1 }  { pe1_idle_num_data_valid fifo_update 0 3 }  { pe1_idle_fifo_cap fifo_data 0 3 } } }
	efinish1 { ap_fifo {  { efinish1_dout fifo_data_out 0 1 }  { efinish1_empty_n fifo_status_empty 0 1 }  { efinish1_read fifo_data_in 1 1 }  { efinish1_num_data_valid fifo_update 0 3 }  { efinish1_fifo_cap fifo_data 0 3 } } }
	workload_counter1 { ap_vld {  { workload_counter1 out_data 1 32 }  { workload_counter1_ap_vld out_vld 1 1 } } }
}
