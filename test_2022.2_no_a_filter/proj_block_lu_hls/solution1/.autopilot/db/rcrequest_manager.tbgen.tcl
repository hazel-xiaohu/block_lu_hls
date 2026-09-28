set moduleName rcrequest_manager
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rcrequest_manager}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_stream1 int 230 regular {fifo 0 volatile }  }
	{ rrequest1 int 230 regular {fifo 1 volatile }  }
	{ rresponse1 int 168 regular {fifo 0 volatile }  }
	{ rblock1 int 230 regular {fifo 1 volatile }  }
	{ B_rcsr int 128 regular {array 513 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_stream1", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest1", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rresponse1", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rblock1", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ rcache_stream1_dout sc_in sc_lv 230 signal 0 } 
	{ rcache_stream1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_stream1_read sc_out sc_logic 1 signal 0 } 
	{ rrequest1_din sc_out sc_lv 230 signal 1 } 
	{ rrequest1_full_n sc_in sc_logic 1 signal 1 } 
	{ rrequest1_write sc_out sc_logic 1 signal 1 } 
	{ rresponse1_dout sc_in sc_lv 168 signal 2 } 
	{ rresponse1_empty_n sc_in sc_logic 1 signal 2 } 
	{ rresponse1_read sc_out sc_logic 1 signal 2 } 
	{ rblock1_din sc_out sc_lv 230 signal 3 } 
	{ rblock1_full_n sc_in sc_logic 1 signal 3 } 
	{ rblock1_write sc_out sc_logic 1 signal 3 } 
	{ B_rcsr_address0 sc_out sc_lv 10 signal 4 } 
	{ B_rcsr_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_d0 sc_out sc_lv 128 signal 4 } 
	{ B_rcsr_q0 sc_in sc_lv 128 signal 4 } 
	{ B_rcsr_we0 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_address1 sc_out sc_lv 10 signal 4 } 
	{ B_rcsr_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_rcsr_d1 sc_out sc_lv 128 signal 4 } 
	{ B_rcsr_q1 sc_in sc_lv 128 signal 4 } 
	{ B_rcsr_we1 sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_rcsr_empty_n sc_in sc_logic 1 signal -1 } 
	{ B_rcsr_read sc_out sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_stream1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "dout" }} , 
 	{ "name": "rcache_stream1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "empty_n" }} , 
 	{ "name": "rcache_stream1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "read" }} , 
 	{ "name": "rrequest1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rrequest1", "role": "din" }} , 
 	{ "name": "rrequest1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "full_n" }} , 
 	{ "name": "rrequest1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "write" }} , 
 	{ "name": "rresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse1", "role": "dout" }} , 
 	{ "name": "rresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "empty_n" }} , 
 	{ "name": "rresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "read" }} , 
 	{ "name": "rblock1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rblock1", "role": "din" }} , 
 	{ "name": "rblock1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "full_n" }} , 
 	{ "name": "rblock1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock1", "role": "write" }} , 
 	{ "name": "B_rcsr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B_rcsr", "role": "address0" }} , 
 	{ "name": "B_rcsr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "ce0" }} , 
 	{ "name": "B_rcsr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "d0" }} , 
 	{ "name": "B_rcsr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "q0" }} , 
 	{ "name": "B_rcsr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "we0" }} , 
 	{ "name": "B_rcsr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "B_rcsr", "role": "address1" }} , 
 	{ "name": "B_rcsr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "ce1" }} , 
 	{ "name": "B_rcsr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "d1" }} , 
 	{ "name": "B_rcsr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "B_rcsr", "role": "q1" }} , 
 	{ "name": "B_rcsr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_empty_n", "role": "default" }} , 
 	{ "name": "B_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_read", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "11", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "rcrequest_manager",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "rrequest_splitter_U0"},
			{"ID" : "7", "Name" : "rschedule_access_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "rrequest_merger_U0"},
			{"ID" : "14", "Name" : "rcollector_U0"}],
		"Port" : [
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rrequest_splitter_U0", "Port" : "rcache_stream1"}]},
			{"Name" : "rrequest1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rrequest_merger_U0", "Port" : "rrequest1"}]},
			{"Name" : "rresponse1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "rschedule_access_U0", "Port" : "rresponse1"}]},
			{"Name" : "rblock1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "rcollector_U0", "Port" : "rblock1"}]},
			{"Name" : "B_rcsr", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "rschedule_access_U0", "Port" : "off_pointer"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rrequest_splitter",
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
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rcache_stream1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "15", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "16", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rcollec", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "17", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_U0.grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "rrequest_splitter_Pipeline_VITIS_LOOP_9_1",
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
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_r_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_U0.grp_rrequest_splitter_Pipeline_VITIS_LOOP_9_1_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "rrequest_manager",
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
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "15", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rrequest_manager_Pipeline_VITIS_LOOP_40_1_fu_69", "Port" : "rrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rrequest_manager_Pipeline_VITIS_LOOP_40_1_fu_69", "Port" : "r_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_U0.grp_rrequest_manager_Pipeline_VITIS_LOOP_40_1_fu_69", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "rrequest_manager_Pipeline_VITIS_LOOP_40_1",
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
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_U0.grp_rrequest_manager_Pipeline_VITIS_LOOP_40_1_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rschedule_access_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "rschedule_access",
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
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "17", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rresponse1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rresponse1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "off_pointer", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rschedule_access_Pipeline_VITIS_LOOP_91_3_fu_233", "Port" : "off_pointer", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "20", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6", "ap_ST_fsm_state9", "ap_ST_fsm_state2"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rschedule_access_U0.Bridx_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rschedule_access_U0.grp_rschedule_access_Pipeline_VITIS_LOOP_91_3_fu_233", "Parent" : "7", "Child" : ["10"],
		"CDFG" : "rschedule_access_Pipeline_VITIS_LOOP_91_3",
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
			{"Name" : "zext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "off_pointer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rschedule_access_U0.grp_rschedule_access_Pipeline_VITIS_LOOP_91_3_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "rrequest_merger",
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
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "r_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "20", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "r_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rrequest1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rrequest1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "rrequest1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_U0.grp_rrequest_merger_Pipeline_VITIS_LOOP_129_1_fu_77", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "rrequest_merger_Pipeline_VITIS_LOOP_129_1",
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
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rrequest1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rrequest1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_129_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_U0.grp_rrequest_merger_Pipeline_VITIS_LOOP_129_1_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rcollector_U0", "Parent" : "0",
		"CDFG" : "rcollector",
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
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "16", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rblock1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rblock1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_164_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_158_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rcollec_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rscheduler_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_first_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.roff_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_req_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcrequest_manager {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
		rresponse1 {Type I LastRead 3 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}
		B_rcsr {Type I LastRead 0 FirstWrite -1}}
	rrequest_splitter {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream1 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_dest_V_out {Type O LastRead -1 FirstWrite 0}
		temp_r_type_V_out {Type O LastRead -1 FirstWrite 0}
		temp_r_Acid_out {Type O LastRead -1 FirstWrite 0}
		temp_r_Acid1_out {Type O LastRead -1 FirstWrite 0}
		temp_r_data_V_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid1_out {Type O LastRead -1 FirstWrite 0}
		curr_request_data_V_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse1 {Type I LastRead 3 FirstWrite -1}
		roff1 {Type O LastRead -1 FirstWrite 4}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_Pipeline_VITIS_LOOP_91_3 {
		zext_ln91 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		Bridx_V {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_Pipeline_VITIS_LOOP_129_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest1 {Type O LastRead -1 FirstWrite 1}
		r_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_Acid1_out {Type O LastRead -1 FirstWrite 1}
		temp_Acid_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}}
	rcollector {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff1 {Type I LastRead 2 FirstWrite -1}
		rblock1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_stream1 { ap_fifo {  { rcache_stream1_dout fifo_port_we 0 230 }  { rcache_stream1_empty_n fifo_status 0 1 }  { rcache_stream1_read fifo_data 1 1 } } }
	rrequest1 { ap_fifo {  { rrequest1_din fifo_port_we 1 230 }  { rrequest1_full_n fifo_status 0 1 }  { rrequest1_write fifo_data 1 1 } } }
	rresponse1 { ap_fifo {  { rresponse1_dout fifo_port_we 0 168 }  { rresponse1_empty_n fifo_status 0 1 }  { rresponse1_read fifo_data 1 1 } } }
	rblock1 { ap_fifo {  { rblock1_din fifo_port_we 1 230 }  { rblock1_full_n fifo_status 0 1 }  { rblock1_write fifo_data 1 1 } } }
	B_rcsr { ap_memory {  { B_rcsr_address0 mem_address 1 10 }  { B_rcsr_ce0 mem_ce 1 1 }  { B_rcsr_d0 mem_din 1 128 }  { B_rcsr_q0 mem_dout 0 128 }  { B_rcsr_we0 mem_we 1 1 }  { B_rcsr_address1 mem_address 1 10 }  { B_rcsr_ce1 mem_ce 1 1 }  { B_rcsr_d1 mem_din 1 128 }  { B_rcsr_q1 mem_dout 0 128 }  { B_rcsr_we1 mem_we 1 1 } } }
}
