set moduleName final_merger
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
set C_modelName {final_merger}
set C_modelType { void 0 }
set C_modelArgList {
	{ final_merger_1 int 66 regular {fifo 0 volatile }  }
	{ final_merger_2 int 66 regular {fifo 0 volatile }  }
	{ final_merger_3 int 66 regular {fifo 1 volatile }  }
	{ final_len_126 int 32 regular {fifo 1 volatile }  }
	{ final_len_227 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "final_merger_1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_2", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_3", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_126", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_227", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ final_merger_1_dout sc_in sc_lv 66 signal 0 } 
	{ final_merger_1_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ final_merger_1_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ final_merger_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ final_merger_1_read sc_out sc_logic 1 signal 0 } 
	{ final_merger_2_dout sc_in sc_lv 66 signal 1 } 
	{ final_merger_2_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ final_merger_2_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ final_merger_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ final_merger_2_read sc_out sc_logic 1 signal 1 } 
	{ final_merger_3_din sc_out sc_lv 66 signal 2 } 
	{ final_merger_3_num_data_valid sc_in sc_lv 11 signal 2 } 
	{ final_merger_3_fifo_cap sc_in sc_lv 11 signal 2 } 
	{ final_merger_3_full_n sc_in sc_logic 1 signal 2 } 
	{ final_merger_3_write sc_out sc_logic 1 signal 2 } 
	{ final_len_126_din sc_out sc_lv 32 signal 3 } 
	{ final_len_126_num_data_valid sc_in sc_lv 13 signal 3 } 
	{ final_len_126_fifo_cap sc_in sc_lv 13 signal 3 } 
	{ final_len_126_full_n sc_in sc_logic 1 signal 3 } 
	{ final_len_126_write sc_out sc_logic 1 signal 3 } 
	{ final_len_227_din sc_out sc_lv 32 signal 4 } 
	{ final_len_227_num_data_valid sc_in sc_lv 13 signal 4 } 
	{ final_len_227_fifo_cap sc_in sc_lv 13 signal 4 } 
	{ final_len_227_full_n sc_in sc_logic 1 signal 4 } 
	{ final_len_227_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "final_merger_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_1", "role": "dout" }} , 
 	{ "name": "final_merger_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "empty_n" }} , 
 	{ "name": "final_merger_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "read" }} , 
 	{ "name": "final_merger_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_2", "role": "dout" }} , 
 	{ "name": "final_merger_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "empty_n" }} , 
 	{ "name": "final_merger_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "read" }} , 
 	{ "name": "final_merger_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_3", "role": "din" }} , 
 	{ "name": "final_merger_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "full_n" }} , 
 	{ "name": "final_merger_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "write" }} , 
 	{ "name": "final_len_126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_126", "role": "din" }} , 
 	{ "name": "final_len_126_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_126", "role": "num_data_valid" }} , 
 	{ "name": "final_len_126_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_126", "role": "fifo_cap" }} , 
 	{ "name": "final_len_126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_126", "role": "full_n" }} , 
 	{ "name": "final_len_126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_126", "role": "write" }} , 
 	{ "name": "final_len_227_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_227", "role": "din" }} , 
 	{ "name": "final_len_227_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_227", "role": "num_data_valid" }} , 
 	{ "name": "final_len_227_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_227", "role": "fifo_cap" }} , 
 	{ "name": "final_len_227_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_227", "role": "full_n" }} , 
 	{ "name": "final_len_227_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_227", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "final_merger",
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
			{"Name" : "final_merger_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_merger_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137", "Port" : "final_merger_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "final_merger_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_merger_2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137", "Port" : "final_merger_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "final_merger_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_merger_3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137", "Port" : "final_merger_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "final_len_126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2050", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_len_126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_len_227", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2050", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_len_227_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_760_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "final_merger_Pipeline_VITIS_LOOP_773_2",
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
			{"Name" : "enable_j_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp1_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln62", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "final_merger_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "final_merger_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_merger_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "final_merger_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_merger_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "final_merger_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1_global_end_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_global_end_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "counter_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_773_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137.fadd_32ns_32ns_32_8_full_dsp_1_U2090", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_final_merger_Pipeline_VITIS_LOOP_773_2_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	final_merger {
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 5}
		final_len_126 {Type O LastRead -1 FirstWrite 4}
		final_len_227 {Type O LastRead -1 FirstWrite 4}}
	final_merger_Pipeline_VITIS_LOOP_773_2 {
		enable_j_12 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln62 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		enable_i_10 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_6_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_7_out {Type O LastRead -1 FirstWrite 9}
		counter_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	final_merger_1 { ap_fifo {  { final_merger_1_dout fifo_port_we 0 66 }  { final_merger_1_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_1_fifo_cap fifo_update 0 11 }  { final_merger_1_empty_n fifo_status 0 1 }  { final_merger_1_read fifo_data 1 1 } } }
	final_merger_2 { ap_fifo {  { final_merger_2_dout fifo_port_we 0 66 }  { final_merger_2_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_2_fifo_cap fifo_update 0 11 }  { final_merger_2_empty_n fifo_status 0 1 }  { final_merger_2_read fifo_data 1 1 } } }
	final_merger_3 { ap_fifo {  { final_merger_3_din fifo_port_we 1 66 }  { final_merger_3_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_3_fifo_cap fifo_update 0 11 }  { final_merger_3_full_n fifo_status 0 1 }  { final_merger_3_write fifo_data 1 1 } } }
	final_len_126 { ap_fifo {  { final_len_126_din fifo_port_we 1 32 }  { final_len_126_num_data_valid fifo_status_num_data_valid 0 13 }  { final_len_126_fifo_cap fifo_update 0 13 }  { final_len_126_full_n fifo_status 0 1 }  { final_len_126_write fifo_data 1 1 } } }
	final_len_227 { ap_fifo {  { final_len_227_din fifo_port_we 1 32 }  { final_len_227_num_data_valid fifo_status_num_data_valid 0 13 }  { final_len_227_fifo_cap fifo_update 0 13 }  { final_len_227_full_n fifo_status 0 1 }  { final_len_227_write fifo_data 1 1 } } }
}
