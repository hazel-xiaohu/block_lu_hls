set moduleName vcrequest_splitter_91
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
set C_modelName {vcrequest_splitter.91}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank4_b int 68 regular {fifo 0 volatile }  }
	{ vrequest int 68 regular {fifo 1 volatile }  }
	{ crequest int 68 regular {fifo 1 volatile }  }
	{ vcollector int 68 regular {fifo 1 volatile }  }
	{ ccollector int 68 regular {fifo 1 volatile }  }
	{ vscheduler int 68 regular {fifo 1 volatile }  }
	{ cscheduler int 68 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank4_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ccollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_result_bank4_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank4_b_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_b_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank4_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest_din sc_out sc_lv 68 signal 1 } 
	{ vrequest_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ vrequest_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ vrequest_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest_write sc_out sc_logic 1 signal 1 } 
	{ crequest_din sc_out sc_lv 68 signal 2 } 
	{ crequest_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ crequest_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ crequest_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest_write sc_out sc_logic 1 signal 2 } 
	{ vcollector_din sc_out sc_lv 68 signal 3 } 
	{ vcollector_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ vcollector_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ vcollector_full_n sc_in sc_logic 1 signal 3 } 
	{ vcollector_write sc_out sc_logic 1 signal 3 } 
	{ ccollector_din sc_out sc_lv 68 signal 4 } 
	{ ccollector_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ ccollector_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ ccollector_full_n sc_in sc_logic 1 signal 4 } 
	{ ccollector_write sc_out sc_logic 1 signal 4 } 
	{ vscheduler_din sc_out sc_lv 68 signal 5 } 
	{ vscheduler_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ vscheduler_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ vscheduler_full_n sc_in sc_logic 1 signal 5 } 
	{ vscheduler_write sc_out sc_logic 1 signal 5 } 
	{ cscheduler_din sc_out sc_lv 68 signal 6 } 
	{ cscheduler_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ cscheduler_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ cscheduler_full_n sc_in sc_logic 1 signal 6 } 
	{ cscheduler_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank4_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank4_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank4_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank4_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank4_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "read" }} , 
 	{ "name": "vrequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vrequest", "role": "din" }} , 
 	{ "name": "vrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "num_data_valid" }} , 
 	{ "name": "vrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "fifo_cap" }} , 
 	{ "name": "vrequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "full_n" }} , 
 	{ "name": "vrequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "write" }} , 
 	{ "name": "crequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "din" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "crequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "full_n" }} , 
 	{ "name": "crequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "write" }} , 
 	{ "name": "vcollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vcollector", "role": "din" }} , 
 	{ "name": "vcollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "num_data_valid" }} , 
 	{ "name": "vcollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "fifo_cap" }} , 
 	{ "name": "vcollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "full_n" }} , 
 	{ "name": "vcollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "write" }} , 
 	{ "name": "ccollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "ccollector", "role": "din" }} , 
 	{ "name": "ccollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "num_data_valid" }} , 
 	{ "name": "ccollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "fifo_cap" }} , 
 	{ "name": "ccollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "full_n" }} , 
 	{ "name": "ccollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "write" }} , 
 	{ "name": "vscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vscheduler", "role": "din" }} , 
 	{ "name": "vscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "num_data_valid" }} , 
 	{ "name": "vscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "fifo_cap" }} , 
 	{ "name": "vscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "full_n" }} , 
 	{ "name": "vscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "write" }} , 
 	{ "name": "cscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "cscheduler", "role": "din" }} , 
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "full_n" }} , 
 	{ "name": "cscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "vcrequest_splitter_91",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "rcache_result_bank4_b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vcollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "ccollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "cscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank4_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcontrol_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_bridx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	vcrequest_splitter_91 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_V_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank4_b { ap_fifo {  { rcache_result_bank4_b_dout fifo_port_we 0 68 }  { rcache_result_bank4_b_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank4_b_fifo_cap fifo_update 0 7 }  { rcache_result_bank4_b_empty_n fifo_status 0 1 }  { rcache_result_bank4_b_read fifo_data 1 1 } } }
	vrequest { ap_fifo {  { vrequest_din fifo_port_we 1 68 }  { vrequest_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest_fifo_cap fifo_update 0 7 }  { vrequest_full_n fifo_status 0 1 }  { vrequest_write fifo_data 1 1 } } }
	crequest { ap_fifo {  { crequest_din fifo_port_we 1 68 }  { crequest_num_data_valid fifo_status_num_data_valid 0 7 }  { crequest_fifo_cap fifo_update 0 7 }  { crequest_full_n fifo_status 0 1 }  { crequest_write fifo_data 1 1 } } }
	vcollector { ap_fifo {  { vcollector_din fifo_port_we 1 68 }  { vcollector_num_data_valid fifo_status_num_data_valid 0 7 }  { vcollector_fifo_cap fifo_update 0 7 }  { vcollector_full_n fifo_status 0 1 }  { vcollector_write fifo_data 1 1 } } }
	ccollector { ap_fifo {  { ccollector_din fifo_port_we 1 68 }  { ccollector_num_data_valid fifo_status_num_data_valid 0 7 }  { ccollector_fifo_cap fifo_update 0 7 }  { ccollector_full_n fifo_status 0 1 }  { ccollector_write fifo_data 1 1 } } }
	vscheduler { ap_fifo {  { vscheduler_din fifo_port_we 1 68 }  { vscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { vscheduler_fifo_cap fifo_update 0 7 }  { vscheduler_full_n fifo_status 0 1 }  { vscheduler_write fifo_data 1 1 } } }
	cscheduler { ap_fifo {  { cscheduler_din fifo_port_we 1 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_full_n fifo_status 0 1 }  { cscheduler_write fifo_data 1 1 } } }
}
set moduleName vcrequest_splitter_91
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
set C_modelName {vcrequest_splitter.91}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank4_b int 68 regular {fifo 0 volatile }  }
	{ vrequest int 68 regular {fifo 1 volatile }  }
	{ crequest int 68 regular {fifo 1 volatile }  }
	{ vcollector int 68 regular {fifo 1 volatile }  }
	{ ccollector int 68 regular {fifo 1 volatile }  }
	{ vscheduler int 68 regular {fifo 1 volatile }  }
	{ cscheduler int 68 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank4_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vcollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ccollector", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_result_bank4_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank4_b_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_b_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank4_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest_din sc_out sc_lv 68 signal 1 } 
	{ vrequest_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ vrequest_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ vrequest_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest_write sc_out sc_logic 1 signal 1 } 
	{ crequest_din sc_out sc_lv 68 signal 2 } 
	{ crequest_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ crequest_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ crequest_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest_write sc_out sc_logic 1 signal 2 } 
	{ vcollector_din sc_out sc_lv 68 signal 3 } 
	{ vcollector_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ vcollector_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ vcollector_full_n sc_in sc_logic 1 signal 3 } 
	{ vcollector_write sc_out sc_logic 1 signal 3 } 
	{ ccollector_din sc_out sc_lv 68 signal 4 } 
	{ ccollector_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ ccollector_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ ccollector_full_n sc_in sc_logic 1 signal 4 } 
	{ ccollector_write sc_out sc_logic 1 signal 4 } 
	{ vscheduler_din sc_out sc_lv 68 signal 5 } 
	{ vscheduler_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ vscheduler_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ vscheduler_full_n sc_in sc_logic 1 signal 5 } 
	{ vscheduler_write sc_out sc_logic 1 signal 5 } 
	{ cscheduler_din sc_out sc_lv 68 signal 6 } 
	{ cscheduler_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ cscheduler_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ cscheduler_full_n sc_in sc_logic 1 signal 6 } 
	{ cscheduler_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank4_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank4_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank4_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank4_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank4_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "read" }} , 
 	{ "name": "vrequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vrequest", "role": "din" }} , 
 	{ "name": "vrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "num_data_valid" }} , 
 	{ "name": "vrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "fifo_cap" }} , 
 	{ "name": "vrequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "full_n" }} , 
 	{ "name": "vrequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "write" }} , 
 	{ "name": "crequest_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "din" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "crequest_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "full_n" }} , 
 	{ "name": "crequest_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "write" }} , 
 	{ "name": "vcollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vcollector", "role": "din" }} , 
 	{ "name": "vcollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "num_data_valid" }} , 
 	{ "name": "vcollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vcollector", "role": "fifo_cap" }} , 
 	{ "name": "vcollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "full_n" }} , 
 	{ "name": "vcollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcollector", "role": "write" }} , 
 	{ "name": "ccollector_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "ccollector", "role": "din" }} , 
 	{ "name": "ccollector_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "num_data_valid" }} , 
 	{ "name": "ccollector_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ccollector", "role": "fifo_cap" }} , 
 	{ "name": "ccollector_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "full_n" }} , 
 	{ "name": "ccollector_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccollector", "role": "write" }} , 
 	{ "name": "vscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vscheduler", "role": "din" }} , 
 	{ "name": "vscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "num_data_valid" }} , 
 	{ "name": "vscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "fifo_cap" }} , 
 	{ "name": "vscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "full_n" }} , 
 	{ "name": "vscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "write" }} , 
 	{ "name": "cscheduler_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "cscheduler", "role": "din" }} , 
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cscheduler_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "full_n" }} , 
 	{ "name": "cscheduler_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "vcrequest_splitter_91",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "rcache_result_bank4_b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vcollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "ccollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "cscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank4_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcontrol_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_bridx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	vcrequest_splitter_91 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_V_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank4_b { ap_fifo {  { rcache_result_bank4_b_dout fifo_port_we 0 68 }  { rcache_result_bank4_b_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank4_b_fifo_cap fifo_update 0 7 }  { rcache_result_bank4_b_empty_n fifo_status 0 1 }  { rcache_result_bank4_b_read fifo_data 1 1 } } }
	vrequest { ap_fifo {  { vrequest_din fifo_port_we 1 68 }  { vrequest_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest_fifo_cap fifo_update 0 7 }  { vrequest_full_n fifo_status 0 1 }  { vrequest_write fifo_data 1 1 } } }
	crequest { ap_fifo {  { crequest_din fifo_port_we 1 68 }  { crequest_num_data_valid fifo_status_num_data_valid 0 7 }  { crequest_fifo_cap fifo_update 0 7 }  { crequest_full_n fifo_status 0 1 }  { crequest_write fifo_data 1 1 } } }
	vcollector { ap_fifo {  { vcollector_din fifo_port_we 1 68 }  { vcollector_num_data_valid fifo_status_num_data_valid 0 7 }  { vcollector_fifo_cap fifo_update 0 7 }  { vcollector_full_n fifo_status 0 1 }  { vcollector_write fifo_data 1 1 } } }
	ccollector { ap_fifo {  { ccollector_din fifo_port_we 1 68 }  { ccollector_num_data_valid fifo_status_num_data_valid 0 7 }  { ccollector_fifo_cap fifo_update 0 7 }  { ccollector_full_n fifo_status 0 1 }  { ccollector_write fifo_data 1 1 } } }
	vscheduler { ap_fifo {  { vscheduler_din fifo_port_we 1 68 }  { vscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { vscheduler_fifo_cap fifo_update 0 7 }  { vscheduler_full_n fifo_status 0 1 }  { vscheduler_write fifo_data 1 1 } } }
	cscheduler { ap_fifo {  { cscheduler_din fifo_port_we 1 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_full_n fifo_status 0 1 }  { cscheduler_write fifo_data 1 1 } } }
}
