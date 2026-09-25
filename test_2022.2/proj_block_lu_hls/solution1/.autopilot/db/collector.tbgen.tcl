set moduleName collector
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {collector}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcollector int 68 regular {fifo 0 volatile }  }
	{ vresult114 int 1024 regular {fifo 0 volatile }  }
	{ voff3 int 128 regular {fifo 0 volatile }  }
	{ vblock1 int 134 regular {fifo 1 volatile }  }
	{ v_hit1 int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vresult114", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "voff3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_hit1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcollector_dout sc_in sc_lv 68 signal 0 } 
	{ vcollector_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vcollector_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vcollector_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcollector_read sc_out sc_logic 1 signal 0 } 
	{ vresult114_dout sc_in sc_lv 1024 signal 1 } 
	{ vresult114_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ vresult114_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ vresult114_empty_n sc_in sc_logic 1 signal 1 } 
	{ vresult114_read sc_out sc_logic 1 signal 1 } 
	{ voff3_dout sc_in sc_lv 128 signal 2 } 
	{ voff3_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ voff3_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ voff3_empty_n sc_in sc_logic 1 signal 2 } 
	{ voff3_read sc_out sc_logic 1 signal 2 } 
	{ vblock1_din sc_out sc_lv 134 signal 3 } 
	{ vblock1_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock1_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vblock1_full_n sc_in sc_logic 1 signal 3 } 
	{ vblock1_write sc_out sc_logic 1 signal 3 } 
	{ v_hit1_dout sc_in sc_lv 1 signal 4 } 
	{ v_hit1_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ v_hit1_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ v_hit1_empty_n sc_in sc_logic 1 signal 4 } 
	{ v_hit1_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcollector_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vcollector", "role": "dout" }} , 
 	{ "name": "vcollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "num_data_valid" }} , 
 	{ "name": "vcollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "fifo_cap" }} , 
 	{ "name": "vcollector_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "empty_n" }} , 
 	{ "name": "vcollector_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "read" }} , 
 	{ "name": "vresult114_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult114", "role": "dout" }} , 
 	{ "name": "vresult114_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult114", "role": "num_data_valid" }} , 
 	{ "name": "vresult114_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult114", "role": "fifo_cap" }} , 
 	{ "name": "vresult114_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult114", "role": "empty_n" }} , 
 	{ "name": "vresult114_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult114", "role": "read" }} , 
 	{ "name": "voff3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff3", "role": "dout" }} , 
 	{ "name": "voff3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "num_data_valid" }} , 
 	{ "name": "voff3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "fifo_cap" }} , 
 	{ "name": "voff3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "empty_n" }} , 
 	{ "name": "voff3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "read" }} , 
 	{ "name": "vblock1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1", "role": "din" }} , 
 	{ "name": "vblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "num_data_valid" }} , 
 	{ "name": "vblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "fifo_cap" }} , 
 	{ "name": "vblock1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "full_n" }} , 
 	{ "name": "vblock1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "write" }} , 
 	{ "name": "v_hit1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "dout" }} , 
 	{ "name": "v_hit1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit1", "role": "num_data_valid" }} , 
 	{ "name": "v_hit1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit1", "role": "fifo_cap" }} , 
 	{ "name": "v_hit1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "empty_n" }} , 
 	{ "name": "v_hit1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "collector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult114", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult114_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_collector_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "voff3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_collector_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "vblock1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_collector_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "collector_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "zext_ln183", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_collector_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	collector {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult114 {Type I LastRead 2 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}
		vblock1 {Type O LastRead -1 FirstWrite 2}
		v_hit1 {Type I LastRead 1 FirstWrite -1}}
	collector_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock1 {Type O LastRead -1 FirstWrite 2}
		cached_V_16 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vcollector { ap_fifo {  { vcollector_dout fifo_port_we 0 68 }  { vcollector_num_data_valid fifo_status_num_data_valid 0 7 }  { vcollector_fifo_cap fifo_update 0 7 }  { vcollector_empty_n fifo_status 0 1 }  { vcollector_read fifo_data 1 1 } } }
	vresult114 { ap_fifo {  { vresult114_dout fifo_port_we 0 1024 }  { vresult114_num_data_valid fifo_status_num_data_valid 0 6 }  { vresult114_fifo_cap fifo_update 0 6 }  { vresult114_empty_n fifo_status 0 1 }  { vresult114_read fifo_data 1 1 } } }
	voff3 { ap_fifo {  { voff3_dout fifo_port_we 0 128 }  { voff3_num_data_valid fifo_status_num_data_valid 0 7 }  { voff3_fifo_cap fifo_update 0 7 }  { voff3_empty_n fifo_status 0 1 }  { voff3_read fifo_data 1 1 } } }
	vblock1 { ap_fifo {  { vblock1_din fifo_port_we 1 134 }  { vblock1_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock1_fifo_cap fifo_update 0 8 }  { vblock1_full_n fifo_status 0 1 }  { vblock1_write fifo_data 1 1 } } }
	v_hit1 { ap_fifo {  { v_hit1_dout fifo_port_we 0 1 }  { v_hit1_num_data_valid fifo_status_num_data_valid 0 5 }  { v_hit1_fifo_cap fifo_update 0 5 }  { v_hit1_empty_n fifo_status 0 1 }  { v_hit1_read fifo_data 1 1 } } }
}
