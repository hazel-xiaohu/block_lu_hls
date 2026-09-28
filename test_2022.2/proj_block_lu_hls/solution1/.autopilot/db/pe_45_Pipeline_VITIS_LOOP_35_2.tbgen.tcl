set moduleName pe_45_Pipeline_VITIS_LOOP_35_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pe.45_Pipeline_VITIS_LOOP_35_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ b_rlen int 32 regular  }
	{ curr_job_val float 32 regular  }
	{ p_pe3 int 263 regular {fifo 1 volatile }  }
	{ vblock3 int 134 regular {fifo 0 volatile }  }
	{ cblock3 int 134 regular {fifo 0 volatile }  }
	{ cmp12 int 1 regular  }
	{ vblock3d int 134 regular {fifo 0 volatile }  }
	{ cblock3d int 134 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_rlen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "curr_job_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe3", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cmp12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vblock3d_dout sc_in sc_lv 134 signal 6 } 
	{ vblock3d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ vblock3d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ vblock3d_empty_n sc_in sc_logic 1 signal 6 } 
	{ vblock3d_read sc_out sc_logic 1 signal 6 } 
	{ cblock3d_dout sc_in sc_lv 134 signal 7 } 
	{ cblock3d_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ cblock3d_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ cblock3d_empty_n sc_in sc_logic 1 signal 7 } 
	{ cblock3d_read sc_out sc_logic 1 signal 7 } 
	{ vblock3_dout sc_in sc_lv 134 signal 3 } 
	{ vblock3_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock3_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vblock3_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock3_read sc_out sc_logic 1 signal 3 } 
	{ cblock3_dout sc_in sc_lv 134 signal 4 } 
	{ cblock3_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ cblock3_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ cblock3_empty_n sc_in sc_logic 1 signal 4 } 
	{ cblock3_read sc_out sc_logic 1 signal 4 } 
	{ p_pe3_din sc_out sc_lv 263 signal 2 } 
	{ p_pe3_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ p_pe3_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ p_pe3_full_n sc_in sc_logic 1 signal 2 } 
	{ p_pe3_write sc_out sc_logic 1 signal 2 } 
	{ b_rlen sc_in sc_lv 32 signal 0 } 
	{ curr_job_val sc_in sc_lv 32 signal 1 } 
	{ cmp12 sc_in sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3d", "role": "dout" }} , 
 	{ "name": "vblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "num_data_valid" }} , 
 	{ "name": "vblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "fifo_cap" }} , 
 	{ "name": "vblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "empty_n" }} , 
 	{ "name": "vblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "read" }} , 
 	{ "name": "cblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3d", "role": "dout" }} , 
 	{ "name": "cblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "num_data_valid" }} , 
 	{ "name": "cblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "fifo_cap" }} , 
 	{ "name": "cblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "empty_n" }} , 
 	{ "name": "cblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "read" }} , 
 	{ "name": "vblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3", "role": "dout" }} , 
 	{ "name": "vblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "num_data_valid" }} , 
 	{ "name": "vblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "fifo_cap" }} , 
 	{ "name": "vblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "empty_n" }} , 
 	{ "name": "vblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "read" }} , 
 	{ "name": "cblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3", "role": "dout" }} , 
 	{ "name": "cblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "num_data_valid" }} , 
 	{ "name": "cblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "fifo_cap" }} , 
 	{ "name": "cblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "empty_n" }} , 
 	{ "name": "cblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "read" }} , 
 	{ "name": "p_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe3", "role": "din" }} , 
 	{ "name": "p_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe3", "role": "num_data_valid" }} , 
 	{ "name": "p_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe3", "role": "fifo_cap" }} , 
 	{ "name": "p_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "full_n" }} , 
 	{ "name": "p_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "write" }} , 
 	{ "name": "b_rlen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_rlen", "role": "default" }} , 
 	{ "name": "curr_job_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_job_val", "role": "default" }} , 
 	{ "name": "cmp12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp12", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "pe_45_Pipeline_VITIS_LOOP_35_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_rlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_job_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vblock3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock3d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock3d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock3d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock3d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1902", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1903", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1904", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1905", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pe_45_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 5}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b_rlen { ap_none {  { b_rlen in_data 0 32 } } }
	curr_job_val { ap_none {  { curr_job_val in_data 0 32 } } }
	p_pe3 { ap_fifo {  { p_pe3_din fifo_port_we 1 263 }  { p_pe3_num_data_valid fifo_status_num_data_valid 0 11 }  { p_pe3_fifo_cap fifo_update 0 11 }  { p_pe3_full_n fifo_status 0 1 }  { p_pe3_write fifo_data 1 1 } } }
	vblock3 { ap_fifo {  { vblock3_dout fifo_port_we 0 134 }  { vblock3_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock3_fifo_cap fifo_update 0 8 }  { vblock3_empty_n fifo_status 0 1 }  { vblock3_read fifo_data 1 1 } } }
	cblock3 { ap_fifo {  { cblock3_dout fifo_port_we 0 134 }  { cblock3_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock3_fifo_cap fifo_update 0 8 }  { cblock3_empty_n fifo_status 0 1 }  { cblock3_read fifo_data 1 1 } } }
	cmp12 { ap_none {  { cmp12 in_data 0 1 } } }
	vblock3d { ap_fifo {  { vblock3d_dout fifo_port_we 0 134 }  { vblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock3d_fifo_cap fifo_update 0 8 }  { vblock3d_empty_n fifo_status 0 1 }  { vblock3d_read fifo_data 1 1 } } }
	cblock3d { ap_fifo {  { cblock3d_dout fifo_port_we 0 134 }  { cblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock3d_fifo_cap fifo_update 0 8 }  { cblock3d_empty_n fifo_status 0 1 }  { cblock3d_read fifo_data 1 1 } } }
}
set moduleName pe_45_Pipeline_VITIS_LOOP_35_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pe.45_Pipeline_VITIS_LOOP_35_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ b_rlen int 32 regular  }
	{ curr_job_val float 32 regular  }
	{ p_pe3 int 263 regular {fifo 1 volatile }  }
	{ vblock3 int 134 regular {fifo 0 volatile }  }
	{ cblock3 int 134 regular {fifo 0 volatile }  }
	{ cmp12 int 1 regular  }
	{ vblock3d int 134 regular {fifo 0 volatile }  }
	{ cblock3d int 134 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_rlen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "curr_job_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe3", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cmp12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vblock3d_dout sc_in sc_lv 134 signal 6 } 
	{ vblock3d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ vblock3d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ vblock3d_empty_n sc_in sc_logic 1 signal 6 } 
	{ vblock3d_read sc_out sc_logic 1 signal 6 } 
	{ cblock3d_dout sc_in sc_lv 134 signal 7 } 
	{ cblock3d_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ cblock3d_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ cblock3d_empty_n sc_in sc_logic 1 signal 7 } 
	{ cblock3d_read sc_out sc_logic 1 signal 7 } 
	{ vblock3_dout sc_in sc_lv 134 signal 3 } 
	{ vblock3_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock3_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vblock3_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock3_read sc_out sc_logic 1 signal 3 } 
	{ cblock3_dout sc_in sc_lv 134 signal 4 } 
	{ cblock3_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ cblock3_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ cblock3_empty_n sc_in sc_logic 1 signal 4 } 
	{ cblock3_read sc_out sc_logic 1 signal 4 } 
	{ p_pe3_din sc_out sc_lv 263 signal 2 } 
	{ p_pe3_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ p_pe3_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ p_pe3_full_n sc_in sc_logic 1 signal 2 } 
	{ p_pe3_write sc_out sc_logic 1 signal 2 } 
	{ b_rlen sc_in sc_lv 32 signal 0 } 
	{ curr_job_val sc_in sc_lv 32 signal 1 } 
	{ cmp12 sc_in sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3d", "role": "dout" }} , 
 	{ "name": "vblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "num_data_valid" }} , 
 	{ "name": "vblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "fifo_cap" }} , 
 	{ "name": "vblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "empty_n" }} , 
 	{ "name": "vblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "read" }} , 
 	{ "name": "cblock3d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3d", "role": "dout" }} , 
 	{ "name": "cblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "num_data_valid" }} , 
 	{ "name": "cblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "fifo_cap" }} , 
 	{ "name": "cblock3d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "empty_n" }} , 
 	{ "name": "cblock3d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "read" }} , 
 	{ "name": "vblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3", "role": "dout" }} , 
 	{ "name": "vblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "num_data_valid" }} , 
 	{ "name": "vblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3", "role": "fifo_cap" }} , 
 	{ "name": "vblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "empty_n" }} , 
 	{ "name": "vblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "read" }} , 
 	{ "name": "cblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3", "role": "dout" }} , 
 	{ "name": "cblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "num_data_valid" }} , 
 	{ "name": "cblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3", "role": "fifo_cap" }} , 
 	{ "name": "cblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "empty_n" }} , 
 	{ "name": "cblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "read" }} , 
 	{ "name": "p_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe3", "role": "din" }} , 
 	{ "name": "p_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe3", "role": "num_data_valid" }} , 
 	{ "name": "p_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe3", "role": "fifo_cap" }} , 
 	{ "name": "p_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "full_n" }} , 
 	{ "name": "p_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe3", "role": "write" }} , 
 	{ "name": "b_rlen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_rlen", "role": "default" }} , 
 	{ "name": "curr_job_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_job_val", "role": "default" }} , 
 	{ "name": "cmp12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp12", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "pe_45_Pipeline_VITIS_LOOP_35_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_rlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_job_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vblock3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock3d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock3d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock3d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock3d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1902", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1903", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1904", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_full_dsp_1_U1905", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pe_45_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe3 {Type O LastRead -1 FirstWrite 5}
		vblock3 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		vblock3d {Type I LastRead 0 FirstWrite -1}
		cblock3d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b_rlen { ap_none {  { b_rlen in_data 0 32 } } }
	curr_job_val { ap_none {  { curr_job_val in_data 0 32 } } }
	p_pe3 { ap_fifo {  { p_pe3_din fifo_port_we 1 263 }  { p_pe3_num_data_valid fifo_status_num_data_valid 0 11 }  { p_pe3_fifo_cap fifo_update 0 11 }  { p_pe3_full_n fifo_status 0 1 }  { p_pe3_write fifo_data 1 1 } } }
	vblock3 { ap_fifo {  { vblock3_dout fifo_port_we 0 134 }  { vblock3_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock3_fifo_cap fifo_update 0 8 }  { vblock3_empty_n fifo_status 0 1 }  { vblock3_read fifo_data 1 1 } } }
	cblock3 { ap_fifo {  { cblock3_dout fifo_port_we 0 134 }  { cblock3_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock3_fifo_cap fifo_update 0 8 }  { cblock3_empty_n fifo_status 0 1 }  { cblock3_read fifo_data 1 1 } } }
	cmp12 { ap_none {  { cmp12 in_data 0 1 } } }
	vblock3d { ap_fifo {  { vblock3d_dout fifo_port_we 0 134 }  { vblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock3d_fifo_cap fifo_update 0 8 }  { vblock3d_empty_n fifo_status 0 1 }  { vblock3d_read fifo_data 1 1 } } }
	cblock3d { ap_fifo {  { cblock3d_dout fifo_port_we 0 134 }  { cblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock3d_fifo_cap fifo_update 0 8 }  { cblock3d_empty_n fifo_status 0 1 }  { cblock3d_read fifo_data 1 1 } } }
}
