set moduleName merger_50
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
set C_modelName {merger.50}
set C_modelType { void 0 }
set C_modelArgList {
	{ mc_pe2 int 66 regular {fifo 0 volatile }  }
	{ m_pe2 int 66 regular {fifo 0 volatile }  }
	{ result_pe2 int 66 regular {fifo 1 volatile }  }
	{ efinish222 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mc_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe2", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish222", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mc_pe2_dout sc_in sc_lv 66 signal 0 } 
	{ mc_pe2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ mc_pe2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ mc_pe2_empty_n sc_in sc_logic 1 signal 0 } 
	{ mc_pe2_read sc_out sc_logic 1 signal 0 } 
	{ m_pe2_dout sc_in sc_lv 66 signal 1 } 
	{ m_pe2_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ m_pe2_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ m_pe2_empty_n sc_in sc_logic 1 signal 1 } 
	{ m_pe2_read sc_out sc_logic 1 signal 1 } 
	{ result_pe2_din sc_out sc_lv 66 signal 2 } 
	{ result_pe2_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ result_pe2_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ result_pe2_full_n sc_in sc_logic 1 signal 2 } 
	{ result_pe2_write sc_out sc_logic 1 signal 2 } 
	{ efinish222_din sc_out sc_lv 1 signal 3 } 
	{ efinish222_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ efinish222_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ efinish222_full_n sc_in sc_logic 1 signal 3 } 
	{ efinish222_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mc_pe2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe2", "role": "dout" }} , 
 	{ "name": "mc_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe2", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe2", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe2", "role": "empty_n" }} , 
 	{ "name": "mc_pe2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe2", "role": "read" }} , 
 	{ "name": "m_pe2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe2", "role": "dout" }} , 
 	{ "name": "m_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe2", "role": "num_data_valid" }} , 
 	{ "name": "m_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe2", "role": "fifo_cap" }} , 
 	{ "name": "m_pe2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "empty_n" }} , 
 	{ "name": "m_pe2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe2", "role": "read" }} , 
 	{ "name": "result_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe2", "role": "din" }} , 
 	{ "name": "result_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe2", "role": "num_data_valid" }} , 
 	{ "name": "result_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe2", "role": "fifo_cap" }} , 
 	{ "name": "result_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe2", "role": "full_n" }} , 
 	{ "name": "result_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe2", "role": "write" }} , 
 	{ "name": "efinish222_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish222", "role": "din" }} , 
 	{ "name": "efinish222_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish222", "role": "num_data_valid" }} , 
 	{ "name": "efinish222_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish222", "role": "fifo_cap" }} , 
 	{ "name": "efinish222_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish222", "role": "full_n" }} , 
 	{ "name": "efinish222_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish222", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merger_50",
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
			{"Name" : "mc_pe2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_two_sub_fu_20", "Port" : "mc_pe4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "m_pe2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_two_sub_fu_20", "Port" : "m_pe4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "result_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_two_sub_fu_20", "Port" : "result_pe4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "efinish222", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_two_sub_fu_20", "Port" : "efinish424", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20", "Parent" : "0", "Child" : ["2", "6", "9", "10", "11", "12"],
		"CDFG" : "merge_two_sub",
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
			{"Name" : "mc_pe4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mc_pe4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_pe4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "result_pe4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_flush_three_fu_525", "Port" : "result_pe1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_pe4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "m_pe4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_p_merge_temp_fu_573", "Port" : "m_pe1", "Inst_start_state" : "3", "Inst_end_state" : "18"}]},
			{"Name" : "efinish424", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "efinish424_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_229_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state19", "ap_ST_fsm_state6", "ap_ST_fsm_state18", "ap_ST_fsm_state17", "ap_ST_fsm_state16", "ap_ST_fsm_state15", "ap_ST_fsm_state14", "ap_ST_fsm_state13", "ap_ST_fsm_state12", "ap_ST_fsm_state11", "ap_ST_fsm_state10", "ap_ST_fsm_state9", "ap_ST_fsm_state8", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_229_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_flush_three_fu_525", "Parent" : "1", "Child" : ["3", "4", "5"],
		"CDFG" : "flush_three",
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
			{"Name" : "ping", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ping_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ping1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ping1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pong", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pong_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "na", "Type" : "None", "Direction" : "I"},
			{"Name" : "nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "nc", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_pe1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "result_pe1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_flush_three_fu_525.fadd_32ns_32ns_32_8_full_dsp_1_U1967", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_flush_three_fu_525.fadd_32ns_32ns_32_8_full_dsp_1_U1968", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_flush_three_fu_525.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_p_merge_temp_fu_573", "Parent" : "1", "Child" : ["7", "8"],
		"CDFG" : "p_merge_temp",
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
			{"Name" : "m_pe1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "m_pe1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ping", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ping_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "len1", "Type" : "None", "Direction" : "I"},
			{"Name" : "len2_t_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ping1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ping1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_p_merge_temp_fu_573.fadd_32ns_32ns_32_8_full_dsp_1_U1977", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.grp_p_merge_temp_fu_573.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.ping_fifo_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.pong_fifo_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.ping1_fifo_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_two_sub_fu_20.pong1_fifo_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	merger_50 {
		mc_pe2 {Type I LastRead 2 FirstWrite -1}
		m_pe2 {Type I LastRead 2 FirstWrite -1}
		result_pe2 {Type O LastRead -1 FirstWrite 2}
		efinish222 {Type O LastRead -1 FirstWrite 4}}
	merge_two_sub {
		mc_pe4 {Type I LastRead 2 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 2}
		m_pe4 {Type I LastRead 2 FirstWrite -1}
		efinish424 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe1 {Type I LastRead 1 FirstWrite -1}
		ping {Type I LastRead 1 FirstWrite -1}
		len1 {Type I LastRead 0 FirstWrite -1}
		len2_t_read {Type I LastRead 0 FirstWrite -1}
		ping1 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mc_pe2 { ap_fifo {  { mc_pe2_dout fifo_port_we 0 66 }  { mc_pe2_num_data_valid fifo_status_num_data_valid 0 7 }  { mc_pe2_fifo_cap fifo_update 0 7 }  { mc_pe2_empty_n fifo_status 0 1 }  { mc_pe2_read fifo_data 1 1 } } }
	m_pe2 { ap_fifo {  { m_pe2_dout fifo_port_we 0 66 }  { m_pe2_num_data_valid fifo_status_num_data_valid 0 11 }  { m_pe2_fifo_cap fifo_update 0 11 }  { m_pe2_empty_n fifo_status 0 1 }  { m_pe2_read fifo_data 1 1 } } }
	result_pe2 { ap_fifo {  { result_pe2_din fifo_port_we 1 66 }  { result_pe2_num_data_valid fifo_status_num_data_valid 0 11 }  { result_pe2_fifo_cap fifo_update 0 11 }  { result_pe2_full_n fifo_status 0 1 }  { result_pe2_write fifo_data 1 1 } } }
	efinish222 { ap_fifo {  { efinish222_din fifo_port_we 1 1 }  { efinish222_num_data_valid fifo_status_num_data_valid 0 7 }  { efinish222_fifo_cap fifo_update 0 7 }  { efinish222_full_n fifo_status 0 1 }  { efinish222_write fifo_data 1 1 } } }
}
