set moduleName convert_pblock_to_mergeitem_47
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
set C_modelName {convert_pblock_to_mergeitem.47}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_pe2 int 263 regular {fifo 0 volatile }  }
	{ m_pe2 int 66 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_pe2", "interface" : "fifo", "bitwidth" : 263, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_pe2_dout sc_in sc_lv 263 signal 0 } 
	{ p_pe2_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ p_pe2_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ p_pe2_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_pe2_read sc_out sc_logic 1 signal 0 } 
	{ m_pe2_din sc_out sc_lv 66 signal 1 } 
	{ m_pe2_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ m_pe2_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ m_pe2_full_n sc_in sc_logic 1 signal 1 } 
	{ m_pe2_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_pe2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe2", "role": "dout" }} , 
 	{ "name": "p_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe2", "role": "num_data_valid" }} , 
 	{ "name": "p_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe2", "role": "fifo_cap" }} , 
 	{ "name": "p_pe2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "empty_n" }} , 
 	{ "name": "p_pe2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe2", "role": "read" }} , 
 	{ "name": "m_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe2", "role": "din" }} , 
 	{ "name": "m_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe2", "role": "num_data_valid" }} , 
 	{ "name": "m_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe2", "role": "fifo_cap" }} , 
 	{ "name": "m_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "full_n" }} , 
 	{ "name": "m_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convert_pblock_to_mergeitem_47",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_pe2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_pe2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_pe2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_910_2_fu_76", "Port" : "m_pe2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_904_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_910_2_fu_76", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_910_2",
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
			{"Name" : "zext_ln910", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln910", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_cid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_pe2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_pe2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_910_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_910_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	convert_pblock_to_mergeitem_47 {
		p_pe2 {Type I LastRead 1 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}
	convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_910_2 {
		zext_ln910 {Type I LastRead 0 FirstWrite -1}
		add_ln910 {Type I LastRead 0 FirstWrite -1}
		temp_cid_V {Type I LastRead 0 FirstWrite -1}
		temp_data_V {Type I LastRead 0 FirstWrite -1}
		m_pe2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_pe2 { ap_fifo {  { p_pe2_dout fifo_port_we 0 263 }  { p_pe2_num_data_valid fifo_status_num_data_valid 0 11 }  { p_pe2_fifo_cap fifo_update 0 11 }  { p_pe2_empty_n fifo_status 0 1 }  { p_pe2_read fifo_data 1 1 } } }
	m_pe2 { ap_fifo {  { m_pe2_din fifo_port_we 1 66 }  { m_pe2_num_data_valid fifo_status_num_data_valid 0 11 }  { m_pe2_fifo_cap fifo_update 0 11 }  { m_pe2_full_n fifo_status 0 1 }  { m_pe2_write fifo_data 1 1 } } }
}
