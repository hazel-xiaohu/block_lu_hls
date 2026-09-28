set moduleName collector_72
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
set C_modelName {collector.72}
set C_modelType { void 0 }
set C_modelArgList {
	{ ccollector int 68 regular {fifo 0 volatile }  }
	{ cresult117 int 1024 regular {fifo 0 volatile }  }
	{ coff4 int 128 regular {fifo 0 volatile }  }
	{ cblock1 int 134 regular {fifo 1 volatile }  }
	{ c_hit2 int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ccollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresult117", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_hit2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
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
	{ ccollector_dout sc_in sc_lv 68 signal 0 } 
	{ ccollector_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ ccollector_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ ccollector_empty_n sc_in sc_logic 1 signal 0 } 
	{ ccollector_read sc_out sc_logic 1 signal 0 } 
	{ cresult117_dout sc_in sc_lv 1024 signal 1 } 
	{ cresult117_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ cresult117_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ cresult117_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresult117_read sc_out sc_logic 1 signal 1 } 
	{ coff4_dout sc_in sc_lv 128 signal 2 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ coff4_empty_n sc_in sc_logic 1 signal 2 } 
	{ coff4_read sc_out sc_logic 1 signal 2 } 
	{ cblock1_din sc_out sc_lv 134 signal 3 } 
	{ cblock1_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ cblock1_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ cblock1_full_n sc_in sc_logic 1 signal 3 } 
	{ cblock1_write sc_out sc_logic 1 signal 3 } 
	{ c_hit2_dout sc_in sc_lv 1 signal 4 } 
	{ c_hit2_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ c_hit2_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ c_hit2_empty_n sc_in sc_logic 1 signal 4 } 
	{ c_hit2_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ccollector_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "ccollector", "role": "dout" }} , 
 	{ "name": "ccollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "num_data_valid" }} , 
 	{ "name": "ccollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "fifo_cap" }} , 
 	{ "name": "ccollector_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "empty_n" }} , 
 	{ "name": "ccollector_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "read" }} , 
 	{ "name": "cresult117_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult117", "role": "dout" }} , 
 	{ "name": "cresult117_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult117", "role": "num_data_valid" }} , 
 	{ "name": "cresult117_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult117", "role": "fifo_cap" }} , 
 	{ "name": "cresult117_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult117", "role": "empty_n" }} , 
 	{ "name": "cresult117_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult117", "role": "read" }} , 
 	{ "name": "coff4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "dout" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "empty_n" }} , 
 	{ "name": "coff4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "read" }} , 
 	{ "name": "cblock1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1", "role": "din" }} , 
 	{ "name": "cblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "num_data_valid" }} , 
 	{ "name": "cblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "fifo_cap" }} , 
 	{ "name": "cblock1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "full_n" }} , 
 	{ "name": "cblock1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "write" }} , 
 	{ "name": "c_hit2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "dout" }} , 
 	{ "name": "c_hit2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "num_data_valid" }} , 
 	{ "name": "c_hit2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "fifo_cap" }} , 
 	{ "name": "c_hit2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "empty_n" }} , 
 	{ "name": "c_hit2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "collector_72",
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
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult117", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_collector_72_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "coff4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_collector_72_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "cblock1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_collector_72_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "collector_72_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "cblock1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cblock1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_collector_72_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	collector_72 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult117 {Type I LastRead 2 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}
		cblock1 {Type O LastRead -1 FirstWrite 2}
		c_hit2 {Type I LastRead 1 FirstWrite -1}}
	collector_72_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock1 {Type O LastRead -1 FirstWrite 2}
		cached_V_14 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ccollector { ap_fifo {  { ccollector_dout fifo_port_we 0 68 }  { ccollector_num_data_valid fifo_status_num_data_valid 0 7 }  { ccollector_fifo_cap fifo_update 0 7 }  { ccollector_empty_n fifo_status 0 1 }  { ccollector_read fifo_data 1 1 } } }
	cresult117 { ap_fifo {  { cresult117_dout fifo_port_we 0 1024 }  { cresult117_num_data_valid fifo_status_num_data_valid 0 6 }  { cresult117_fifo_cap fifo_update 0 6 }  { cresult117_empty_n fifo_status 0 1 }  { cresult117_read fifo_data 1 1 } } }
	coff4 { ap_fifo {  { coff4_dout fifo_port_we 0 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_empty_n fifo_status 0 1 }  { coff4_read fifo_data 1 1 } } }
	cblock1 { ap_fifo {  { cblock1_din fifo_port_we 1 134 }  { cblock1_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock1_fifo_cap fifo_update 0 8 }  { cblock1_full_n fifo_status 0 1 }  { cblock1_write fifo_data 1 1 } } }
	c_hit2 { ap_fifo {  { c_hit2_dout fifo_port_we 0 1 }  { c_hit2_num_data_valid fifo_status_num_data_valid 0 5 }  { c_hit2_fifo_cap fifo_update 0 5 }  { c_hit2_empty_n fifo_status 0 1 }  { c_hit2_read fifo_data 1 1 } } }
}
