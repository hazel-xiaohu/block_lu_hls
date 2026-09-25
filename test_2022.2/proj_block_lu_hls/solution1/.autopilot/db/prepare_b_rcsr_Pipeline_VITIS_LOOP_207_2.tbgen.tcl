set moduleName prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ limit int 12 regular  }
	{ local_rcsr int 128 regular {array 513 { 1 1 } 1 1 }  }
	{ keep_mask_V_1_out int 2831 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "limit", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_rcsr", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "keep_mask_V_1_out", "interface" : "wire", "bitwidth" : 2831, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ limit sc_in sc_lv 12 signal 0 } 
	{ local_rcsr_address0 sc_out sc_lv 10 signal 1 } 
	{ local_rcsr_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_rcsr_q0 sc_in sc_lv 128 signal 1 } 
	{ local_rcsr_address1 sc_out sc_lv 10 signal 1 } 
	{ local_rcsr_ce1 sc_out sc_logic 1 signal 1 } 
	{ local_rcsr_q1 sc_in sc_lv 128 signal 1 } 
	{ keep_mask_V_1_out sc_out sc_lv 2831 signal 2 } 
	{ keep_mask_V_1_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "limit", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "limit", "role": "default" }} , 
 	{ "name": "local_rcsr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_rcsr", "role": "address0" }} , 
 	{ "name": "local_rcsr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "ce0" }} , 
 	{ "name": "local_rcsr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "local_rcsr", "role": "q0" }} , 
 	{ "name": "local_rcsr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_rcsr", "role": "address1" }} , 
 	{ "name": "local_rcsr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "ce1" }} , 
 	{ "name": "local_rcsr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "local_rcsr", "role": "q1" }} , 
 	{ "name": "keep_mask_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2831, "type": "signal", "bundle":{"name": "keep_mask_V_1_out", "role": "default" }} , 
 	{ "name": "keep_mask_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "keep_mask_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2833", "EstimateLatencyMax" : "2833",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "limit", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_rcsr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "keep_mask_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_207_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2 {
		limit {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type I LastRead 1 FirstWrite -1}
		keep_mask_V_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2833", "Max" : "2833"}
	, {"Name" : "Interval", "Min" : "2833", "Max" : "2833"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	limit { ap_none {  { limit in_data 0 12 } } }
	local_rcsr { ap_memory {  { local_rcsr_address0 mem_address 1 10 }  { local_rcsr_ce0 mem_ce 1 1 }  { local_rcsr_q0 in_data 0 128 }  { local_rcsr_address1 MemPortADDR2 1 10 }  { local_rcsr_ce1 MemPortCE2 1 1 }  { local_rcsr_q1 in_data 0 128 } } }
	keep_mask_V_1_out { ap_vld {  { keep_mask_V_1_out out_data 1 2831 }  { keep_mask_V_1_out_ap_vld out_vld 1 1 } } }
}
