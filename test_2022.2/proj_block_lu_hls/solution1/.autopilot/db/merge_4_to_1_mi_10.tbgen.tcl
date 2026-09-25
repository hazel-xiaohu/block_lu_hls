set moduleName merge_4_to_1_mi_10
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
set C_modelName {merge_4_to_1_mi.10}
set C_modelType { void 0 }
set C_modelArgList {
	{ mi1_2 int 5 regular {fifo 0 volatile }  }
	{ mi2_2 int 5 regular {fifo 0 volatile }  }
	{ mi3_2 int 5 regular {fifo 0 volatile }  }
	{ mi4_2 int 5 regular {fifo 0 volatile }  }
	{ rm2_idle7 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mi1_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi2_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi3_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi4_2", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "rm2_idle7", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ mi1_2_dout sc_in sc_lv 5 signal 0 } 
	{ mi1_2_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ mi1_2_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ mi1_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ mi1_2_read sc_out sc_logic 1 signal 0 } 
	{ mi2_2_dout sc_in sc_lv 5 signal 1 } 
	{ mi2_2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ mi2_2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ mi2_2_empty_n sc_in sc_logic 1 signal 1 } 
	{ mi2_2_read sc_out sc_logic 1 signal 1 } 
	{ mi3_2_dout sc_in sc_lv 5 signal 2 } 
	{ mi3_2_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ mi3_2_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ mi3_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ mi3_2_read sc_out sc_logic 1 signal 2 } 
	{ mi4_2_dout sc_in sc_lv 5 signal 3 } 
	{ mi4_2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ mi4_2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ mi4_2_empty_n sc_in sc_logic 1 signal 3 } 
	{ mi4_2_read sc_out sc_logic 1 signal 3 } 
	{ rm2_idle7_din sc_out sc_lv 1 signal 4 } 
	{ rm2_idle7_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ rm2_idle7_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ rm2_idle7_full_n sc_in sc_logic 1 signal 4 } 
	{ rm2_idle7_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mi1_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_2", "role": "dout" }} , 
 	{ "name": "mi1_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_2", "role": "num_data_valid" }} , 
 	{ "name": "mi1_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_2", "role": "fifo_cap" }} , 
 	{ "name": "mi1_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_2", "role": "empty_n" }} , 
 	{ "name": "mi1_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_2", "role": "read" }} , 
 	{ "name": "mi2_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi2_2", "role": "dout" }} , 
 	{ "name": "mi2_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_2", "role": "num_data_valid" }} , 
 	{ "name": "mi2_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_2", "role": "fifo_cap" }} , 
 	{ "name": "mi2_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_2", "role": "empty_n" }} , 
 	{ "name": "mi2_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_2", "role": "read" }} , 
 	{ "name": "mi3_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_2", "role": "dout" }} , 
 	{ "name": "mi3_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_2", "role": "num_data_valid" }} , 
 	{ "name": "mi3_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_2", "role": "fifo_cap" }} , 
 	{ "name": "mi3_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_2", "role": "empty_n" }} , 
 	{ "name": "mi3_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_2", "role": "read" }} , 
 	{ "name": "mi4_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi4_2", "role": "dout" }} , 
 	{ "name": "mi4_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_2", "role": "num_data_valid" }} , 
 	{ "name": "mi4_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_2", "role": "fifo_cap" }} , 
 	{ "name": "mi4_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_2", "role": "empty_n" }} , 
 	{ "name": "mi4_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_2", "role": "read" }} , 
 	{ "name": "rm2_idle7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "din" }} , 
 	{ "name": "rm2_idle7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "num_data_valid" }} , 
 	{ "name": "rm2_idle7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "fifo_cap" }} , 
 	{ "name": "rm2_idle7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "full_n" }} , 
 	{ "name": "rm2_idle7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_4_to_1_mi_10",
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
			{"Name" : "mi1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Port" : "mi1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mi2_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Port" : "mi2_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mi3_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Port" : "mi3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "mi4_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Port" : "mi4_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Port" : "rm2_idle7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mi1_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi2_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi3_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi4_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi4_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_86_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	merge_4_to_1_mi_10 {
		mi1_2 {Type I LastRead 0 FirstWrite -1}
		mi2_2 {Type I LastRead 0 FirstWrite -1}
		mi3_2 {Type I LastRead 0 FirstWrite -1}
		mi4_2 {Type I LastRead 0 FirstWrite -1}
		rm2_idle7 {Type O LastRead -1 FirstWrite 0}}
	merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1 {
		mi1_2 {Type I LastRead 0 FirstWrite -1}
		rm2_idle7 {Type O LastRead -1 FirstWrite 1}
		mi2_2 {Type I LastRead 0 FirstWrite -1}
		mi3_2 {Type I LastRead 0 FirstWrite -1}
		mi4_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mi1_2 { ap_fifo {  { mi1_2_dout fifo_port_we 0 5 }  { mi1_2_num_data_valid fifo_status_num_data_valid 0 2 }  { mi1_2_fifo_cap fifo_update 0 2 }  { mi1_2_empty_n fifo_status 0 1 }  { mi1_2_read fifo_data 1 1 } } }
	mi2_2 { ap_fifo {  { mi2_2_dout fifo_port_we 0 5 }  { mi2_2_num_data_valid fifo_status_num_data_valid 0 2 }  { mi2_2_fifo_cap fifo_update 0 2 }  { mi2_2_empty_n fifo_status 0 1 }  { mi2_2_read fifo_data 1 1 } } }
	mi3_2 { ap_fifo {  { mi3_2_dout fifo_port_we 0 5 }  { mi3_2_num_data_valid fifo_status_num_data_valid 0 2 }  { mi3_2_fifo_cap fifo_update 0 2 }  { mi3_2_empty_n fifo_status 0 1 }  { mi3_2_read fifo_data 1 1 } } }
	mi4_2 { ap_fifo {  { mi4_2_dout fifo_port_we 0 5 }  { mi4_2_num_data_valid fifo_status_num_data_valid 0 2 }  { mi4_2_fifo_cap fifo_update 0 2 }  { mi4_2_empty_n fifo_status 0 1 }  { mi4_2_read fifo_data 1 1 } } }
	rm2_idle7 { ap_fifo {  { rm2_idle7_din fifo_port_we 1 1 }  { rm2_idle7_num_data_valid fifo_status_num_data_valid 0 8 }  { rm2_idle7_fifo_cap fifo_update 0 8 }  { rm2_idle7_full_n fifo_status 0 1 }  { rm2_idle7_write fifo_data 1 1 } } }
}
