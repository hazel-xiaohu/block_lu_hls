set moduleName merge_two_sub_103
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
set C_modelName {merge_two_sub.103}
set C_modelType { void 0 }
set C_modelArgList {
	{ mresult int 36 regular {fifo 0 volatile }  }
	{ result_pe3 int 66 regular {fifo 1 volatile }  }
	{ m_pe3 int 66 regular {fifo 0 volatile }  }
	{ efinish324 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mresult", "interface" : "fifo", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe3", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_pe3", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "efinish324", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ mresult_dout sc_in sc_lv 36 signal 0 } 
	{ mresult_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ mresult_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ mresult_empty_n sc_in sc_logic 1 signal 0 } 
	{ mresult_read sc_out sc_logic 1 signal 0 } 
	{ result_pe3_din sc_out sc_lv 66 signal 1 } 
	{ result_pe3_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ result_pe3_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ result_pe3_full_n sc_in sc_logic 1 signal 1 } 
	{ result_pe3_write sc_out sc_logic 1 signal 1 } 
	{ m_pe3_dout sc_in sc_lv 66 signal 2 } 
	{ m_pe3_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ m_pe3_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ m_pe3_empty_n sc_in sc_logic 1 signal 2 } 
	{ m_pe3_read sc_out sc_logic 1 signal 2 } 
	{ efinish324_din sc_out sc_lv 1 signal 3 } 
	{ efinish324_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ efinish324_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ efinish324_full_n sc_in sc_logic 1 signal 3 } 
	{ efinish324_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mresult_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "mresult", "role": "dout" }} , 
 	{ "name": "mresult_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mresult", "role": "num_data_valid" }} , 
 	{ "name": "mresult_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mresult", "role": "fifo_cap" }} , 
 	{ "name": "mresult_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mresult", "role": "empty_n" }} , 
 	{ "name": "mresult_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mresult", "role": "read" }} , 
 	{ "name": "result_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe3", "role": "din" }} , 
 	{ "name": "result_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe3", "role": "num_data_valid" }} , 
 	{ "name": "result_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe3", "role": "fifo_cap" }} , 
 	{ "name": "result_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe3", "role": "full_n" }} , 
 	{ "name": "result_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe3", "role": "write" }} , 
 	{ "name": "m_pe3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe3", "role": "dout" }} , 
 	{ "name": "m_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe3", "role": "num_data_valid" }} , 
 	{ "name": "m_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe3", "role": "fifo_cap" }} , 
 	{ "name": "m_pe3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe3", "role": "empty_n" }} , 
 	{ "name": "m_pe3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe3", "role": "read" }} , 
 	{ "name": "efinish324_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish324", "role": "din" }} , 
 	{ "name": "efinish324_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish324", "role": "num_data_valid" }} , 
 	{ "name": "efinish324_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish324", "role": "fifo_cap" }} , 
 	{ "name": "efinish324_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish324", "role": "full_n" }} , 
 	{ "name": "efinish324_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish324", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "8", "9", "10", "11"],
		"CDFG" : "merge_two_sub_103",
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
			{"Name" : "mresult", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mresult_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_pe3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "result_pe3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_flush_three_fu_546", "Port" : "result_pe4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_pe3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "m_pe3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_p_merge_temp_fu_594", "Port" : "m_pe4", "Inst_start_state" : "3", "Inst_end_state" : "18"}]},
			{"Name" : "efinish324", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "efinish324_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_228_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state20", "ap_ST_fsm_state19", "ap_ST_fsm_state6", "ap_ST_fsm_state18", "ap_ST_fsm_state17", "ap_ST_fsm_state16", "ap_ST_fsm_state15", "ap_ST_fsm_state14", "ap_ST_fsm_state13", "ap_ST_fsm_state12", "ap_ST_fsm_state11", "ap_ST_fsm_state10", "ap_ST_fsm_state9", "ap_ST_fsm_state8", "ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_228_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_flush_three_fu_546", "Parent" : "0", "Child" : ["2", "3", "4"],
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
			{"Name" : "result_pe4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "result_pe4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flush_three_fu_546.fadd_32ns_32ns_32_8_full_dsp_1_U1978", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flush_three_fu_546.fadd_32ns_32ns_32_8_full_dsp_1_U1979", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_flush_three_fu_546.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_merge_temp_fu_594", "Parent" : "0", "Child" : ["6", "7"],
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
			{"Name" : "m_pe4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "m_pe4_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_merge_temp_fu_594.fadd_32ns_32ns_32_8_full_dsp_1_U1988", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_merge_temp_fu_594.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ping_fifo_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pong_fifo_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ping1_fifo_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pong1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge_two_sub_103 {
		mresult {Type I LastRead 2 FirstWrite -1}
		result_pe3 {Type O LastRead -1 FirstWrite 2}
		m_pe3 {Type I LastRead 2 FirstWrite -1}
		efinish324 {Type O LastRead -1 FirstWrite 4}}
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe4 {Type O LastRead -1 FirstWrite 16}}
	p_merge_temp {
		m_pe4 {Type I LastRead 1 FirstWrite -1}
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
	mresult { ap_fifo {  { mresult_dout fifo_port_we 0 36 }  { mresult_num_data_valid fifo_status_num_data_valid 0 4 }  { mresult_fifo_cap fifo_update 0 4 }  { mresult_empty_n fifo_status 0 1 }  { mresult_read fifo_data 1 1 } } }
	result_pe3 { ap_fifo {  { result_pe3_din fifo_port_we 1 66 }  { result_pe3_num_data_valid fifo_status_num_data_valid 0 11 }  { result_pe3_fifo_cap fifo_update 0 11 }  { result_pe3_full_n fifo_status 0 1 }  { result_pe3_write fifo_data 1 1 } } }
	m_pe3 { ap_fifo {  { m_pe3_dout fifo_port_we 0 66 }  { m_pe3_num_data_valid fifo_status_num_data_valid 0 11 }  { m_pe3_fifo_cap fifo_update 0 11 }  { m_pe3_empty_n fifo_status 0 1 }  { m_pe3_read fifo_data 1 1 } } }
	efinish324 { ap_fifo {  { efinish324_din fifo_port_we 1 1 }  { efinish324_num_data_valid fifo_status_num_data_valid 0 7 }  { efinish324_fifo_cap fifo_update 0 7 }  { efinish324_full_n fifo_status 0 1 }  { efinish324_write fifo_data 1 1 } } }
}
