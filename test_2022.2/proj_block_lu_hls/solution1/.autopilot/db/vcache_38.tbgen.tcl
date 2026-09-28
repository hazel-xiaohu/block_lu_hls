set moduleName vcache_38
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
set C_modelName {vcache.38}
set C_modelType { void 0 }
set C_modelArgList {
	{ vccache_re_bank2 int 209 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ vcache_bank2_vres int 6 regular {fifo 1 volatile }  }
	{ vcache_bank2_result int 1031 regular {fifo 1 volatile }  }
	{ vc2acc int 32 regular {pointer 1}  }
	{ vc2hit int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank2", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank2_vres", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcache_bank2_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vccache_re_bank2_dout sc_in sc_lv 209 signal 0 } 
	{ vccache_re_bank2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank2_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ vcache_bank2_vres_din sc_out sc_lv 6 signal 2 } 
	{ vcache_bank2_vres_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_vres_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_vres_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_bank2_vres_write sc_out sc_logic 1 signal 2 } 
	{ vcache_bank2_result_din sc_out sc_lv 1031 signal 3 } 
	{ vcache_bank2_result_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vcache_bank2_result_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vcache_bank2_result_full_n sc_in sc_logic 1 signal 3 } 
	{ vcache_bank2_result_write sc_out sc_logic 1 signal 3 } 
	{ vc2acc sc_out sc_lv 32 signal 4 } 
	{ vc2acc_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vc2hit sc_out sc_lv 32 signal 5 } 
	{ vc2hit_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "dout" }} , 
 	{ "name": "vccache_re_bank2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "read" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "vcache_bank2_vres_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "din" }} , 
 	{ "name": "vcache_bank2_vres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_vres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_vres_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_vres_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "write" }} , 
 	{ "name": "vcache_bank2_result_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "din" }} , 
 	{ "name": "vcache_bank2_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_result_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_result_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "write" }} , 
 	{ "name": "vc2acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2acc", "role": "default" }} , 
 	{ "name": "vc2acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2acc", "role": "ap_vld" }} , 
 	{ "name": "vc2hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2hit", "role": "default" }} , 
 	{ "name": "vc2hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2hit", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "44"],
		"CDFG" : "vcache_38",
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
			{"Name" : "vccache_re_bank2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank2_vres", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank2_vres_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank2_result", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank2_result_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vc2acc", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vc2hit", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_363_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_data_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_4_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_7_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_15_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vcache_38_Pipeline_VITIS_LOOP_336_1_fu_1208", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "vcache_38_Pipeline_VITIS_LOOP_336_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lru_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_336_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vcache_38_Pipeline_VITIS_LOOP_336_1_fu_1208.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_8_1_1_U1686", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vcache_38 {
		vccache_re_bank2 {Type I LastRead 2 FirstWrite -1}
		base_addr_val {Type I LastRead 1 FirstWrite -1}
		vcache_bank2_vres {Type O LastRead -1 FirstWrite 2}
		vcache_bank2_result {Type O LastRead -1 FirstWrite 2}
		vc2acc {Type O LastRead -1 FirstWrite 2}
		vc2hit {Type O LastRead -1 FirstWrite 2}}
	vcache_38_Pipeline_VITIS_LOOP_336_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_1 {Type O LastRead -1 FirstWrite 0}
		p_filled_V {Type O LastRead -1 FirstWrite 0}
		p_tag_V_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_1 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vccache_re_bank2 { ap_fifo {  { vccache_re_bank2_dout fifo_port_we 0 209 }  { vccache_re_bank2_num_data_valid fifo_status_num_data_valid 0 7 }  { vccache_re_bank2_fifo_cap fifo_update 0 7 }  { vccache_re_bank2_empty_n fifo_status 0 1 }  { vccache_re_bank2_read fifo_data 1 1 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_port_we 0 32 }  { base_addr_val_num_data_valid fifo_status_num_data_valid 0 3 }  { base_addr_val_fifo_cap fifo_update 0 3 }  { base_addr_val_empty_n fifo_status 0 1 }  { base_addr_val_read fifo_data 1 1 } } }
	vcache_bank2_vres { ap_fifo {  { vcache_bank2_vres_din fifo_port_we 1 6 }  { vcache_bank2_vres_num_data_valid fifo_status_num_data_valid 0 5 }  { vcache_bank2_vres_fifo_cap fifo_update 0 5 }  { vcache_bank2_vres_full_n fifo_status 0 1 }  { vcache_bank2_vres_write fifo_data 1 1 } } }
	vcache_bank2_result { ap_fifo {  { vcache_bank2_result_din fifo_port_we 1 1031 }  { vcache_bank2_result_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank2_result_fifo_cap fifo_update 0 4 }  { vcache_bank2_result_full_n fifo_status 0 1 }  { vcache_bank2_result_write fifo_data 1 1 } } }
	vc2acc { ap_vld {  { vc2acc out_data 1 32 }  { vc2acc_ap_vld out_vld 1 1 } } }
	vc2hit { ap_vld {  { vc2hit out_data 1 32 }  { vc2hit_ap_vld out_vld 1 1 } } }
}
set moduleName vcache_38
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
set C_modelName {vcache.38}
set C_modelType { void 0 }
set C_modelArgList {
	{ vccache_re_bank2 int 209 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ vcache_bank2_vres int 6 regular {fifo 1 volatile }  }
	{ vcache_bank2_result int 1031 regular {fifo 1 volatile }  }
	{ vc2acc int 32 regular {pointer 1}  }
	{ vc2hit int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank2", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank2_vres", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcache_bank2_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vc2hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vccache_re_bank2_dout sc_in sc_lv 209 signal 0 } 
	{ vccache_re_bank2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vccache_re_bank2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank2_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ vcache_bank2_vres_din sc_out sc_lv 6 signal 2 } 
	{ vcache_bank2_vres_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_vres_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ vcache_bank2_vres_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_bank2_vres_write sc_out sc_logic 1 signal 2 } 
	{ vcache_bank2_result_din sc_out sc_lv 1031 signal 3 } 
	{ vcache_bank2_result_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vcache_bank2_result_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vcache_bank2_result_full_n sc_in sc_logic 1 signal 3 } 
	{ vcache_bank2_result_write sc_out sc_logic 1 signal 3 } 
	{ vc2acc sc_out sc_lv 32 signal 4 } 
	{ vc2acc_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vc2hit sc_out sc_lv 32 signal 5 } 
	{ vc2hit_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "dout" }} , 
 	{ "name": "vccache_re_bank2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2", "role": "read" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "vcache_bank2_vres_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "din" }} , 
 	{ "name": "vcache_bank2_vres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_vres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_vres_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_vres_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_vres", "role": "write" }} , 
 	{ "name": "vcache_bank2_result_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "din" }} , 
 	{ "name": "vcache_bank2_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank2_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank2_result_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "full_n" }} , 
 	{ "name": "vcache_bank2_result_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank2_result", "role": "write" }} , 
 	{ "name": "vc2acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2acc", "role": "default" }} , 
 	{ "name": "vc2acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2acc", "role": "ap_vld" }} , 
 	{ "name": "vc2hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vc2hit", "role": "default" }} , 
 	{ "name": "vc2hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vc2hit", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "44"],
		"CDFG" : "vcache_38",
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
			{"Name" : "vccache_re_bank2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank2_vres", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank2_vres_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank2_result", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank2_result_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vc2acc", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vc2hit", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_363_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_filled_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_data_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_4_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_7_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_15_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vcache_38_Pipeline_VITIS_LOOP_336_1_fu_1208", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "vcache_38_Pipeline_VITIS_LOOP_336_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lru_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_336_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vcache_38_Pipeline_VITIS_LOOP_336_1_fu_1208.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_8_1_1_U1686", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vcache_38 {
		vccache_re_bank2 {Type I LastRead 2 FirstWrite -1}
		base_addr_val {Type I LastRead 1 FirstWrite -1}
		vcache_bank2_vres {Type O LastRead -1 FirstWrite 2}
		vcache_bank2_result {Type O LastRead -1 FirstWrite 2}
		vc2acc {Type O LastRead -1 FirstWrite 2}
		vc2hit {Type O LastRead -1 FirstWrite 2}}
	vcache_38_Pipeline_VITIS_LOOP_336_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_1 {Type O LastRead -1 FirstWrite 0}
		p_filled_V {Type O LastRead -1 FirstWrite 0}
		p_tag_V_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_1 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vccache_re_bank2 { ap_fifo {  { vccache_re_bank2_dout fifo_port_we 0 209 }  { vccache_re_bank2_num_data_valid fifo_status_num_data_valid 0 7 }  { vccache_re_bank2_fifo_cap fifo_update 0 7 }  { vccache_re_bank2_empty_n fifo_status 0 1 }  { vccache_re_bank2_read fifo_data 1 1 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_port_we 0 32 }  { base_addr_val_num_data_valid fifo_status_num_data_valid 0 3 }  { base_addr_val_fifo_cap fifo_update 0 3 }  { base_addr_val_empty_n fifo_status 0 1 }  { base_addr_val_read fifo_data 1 1 } } }
	vcache_bank2_vres { ap_fifo {  { vcache_bank2_vres_din fifo_port_we 1 6 }  { vcache_bank2_vres_num_data_valid fifo_status_num_data_valid 0 5 }  { vcache_bank2_vres_fifo_cap fifo_update 0 5 }  { vcache_bank2_vres_full_n fifo_status 0 1 }  { vcache_bank2_vres_write fifo_data 1 1 } } }
	vcache_bank2_result { ap_fifo {  { vcache_bank2_result_din fifo_port_we 1 1031 }  { vcache_bank2_result_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank2_result_fifo_cap fifo_update 0 4 }  { vcache_bank2_result_full_n fifo_status 0 1 }  { vcache_bank2_result_write fifo_data 1 1 } } }
	vc2acc { ap_vld {  { vc2acc out_data 1 32 }  { vc2acc_ap_vld out_vld 1 1 } } }
	vc2hit { ap_vld {  { vc2hit out_data 1 32 }  { vc2hit_ap_vld out_vld 1 1 } } }
}
