set moduleName large_gessm_v2_Pipeline_VITIS_LOOP_266_8
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
set C_modelName {large_gessm_v2_Pipeline_VITIS_LOOP_266_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln266 int 32 regular  }
	{ inc113_lcssa35 int 64 regular  }
	{ w float 32 regular {array 2624 { 1 2 } 1 1 }  }
	{ zext_ln265_1 int 12 regular  }
	{ zext_ln266_1 int 32 regular  }
	{ lv float 32 regular {array 8192 { 1 } 1 1 }  }
	{ li int 32 regular {array 8192 { 1 } 1 1 }  }
	{ zext_ln265 int 12 regular  }
	{ inc11331_out int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln266", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inc113_lcssa35", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln265_1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln266_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "li", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln265", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "inc11331_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln266 sc_in sc_lv 32 signal 0 } 
	{ inc113_lcssa35 sc_in sc_lv 64 signal 1 } 
	{ w_address0 sc_out sc_lv 12 signal 2 } 
	{ w_ce0 sc_out sc_logic 1 signal 2 } 
	{ w_q0 sc_in sc_lv 32 signal 2 } 
	{ w_address1 sc_out sc_lv 12 signal 2 } 
	{ w_ce1 sc_out sc_logic 1 signal 2 } 
	{ w_we1 sc_out sc_logic 1 signal 2 } 
	{ w_d1 sc_out sc_lv 32 signal 2 } 
	{ w_q1 sc_in sc_lv 32 signal 2 } 
	{ zext_ln265_1 sc_in sc_lv 12 signal 3 } 
	{ zext_ln266_1 sc_in sc_lv 32 signal 4 } 
	{ lv_address0 sc_out sc_lv 13 signal 5 } 
	{ lv_ce0 sc_out sc_logic 1 signal 5 } 
	{ lv_q0 sc_in sc_lv 32 signal 5 } 
	{ li_address0 sc_out sc_lv 13 signal 6 } 
	{ li_ce0 sc_out sc_logic 1 signal 6 } 
	{ li_q0 sc_in sc_lv 32 signal 6 } 
	{ zext_ln265 sc_in sc_lv 12 signal 7 } 
	{ inc11331_out sc_out sc_lv 64 signal 8 } 
	{ inc11331_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ grp_fu_3448_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3448_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3448_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3448_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3448_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3452_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3452_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3452_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3452_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln266", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln266", "role": "default" }} , 
 	{ "name": "inc113_lcssa35", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inc113_lcssa35", "role": "default" }} , 
 	{ "name": "w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w", "role": "address0" }} , 
 	{ "name": "w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce0" }} , 
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }} , 
 	{ "name": "w_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w", "role": "address1" }} , 
 	{ "name": "w_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce1" }} , 
 	{ "name": "w_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "we1" }} , 
 	{ "name": "w_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "d1" }} , 
 	{ "name": "w_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q1" }} , 
 	{ "name": "zext_ln265_1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln265_1", "role": "default" }} , 
 	{ "name": "zext_ln266_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln266_1", "role": "default" }} , 
 	{ "name": "lv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "lv", "role": "address0" }} , 
 	{ "name": "lv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lv", "role": "ce0" }} , 
 	{ "name": "lv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lv", "role": "q0" }} , 
 	{ "name": "li_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "li", "role": "address0" }} , 
 	{ "name": "li_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "li", "role": "ce0" }} , 
 	{ "name": "li_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "li", "role": "q0" }} , 
 	{ "name": "zext_ln265", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln265", "role": "default" }} , 
 	{ "name": "inc11331_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inc11331_out", "role": "default" }} , 
 	{ "name": "inc11331_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inc11331_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_3448_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3448_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3448_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3448_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3448_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3448_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3448_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3448_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3448_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3448_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3452_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3452_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3452_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3452_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3452_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3452_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3452_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3452_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_266_8",
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
			{"Name" : "zext_ln266", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_lcssa35", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln265_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln266_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc11331_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_v2_Pipeline_VITIS_LOOP_266_8 {
		zext_ln266 {Type I LastRead 0 FirstWrite -1}
		inc113_lcssa35 {Type I LastRead 0 FirstWrite -1}
		w {Type IO LastRead 3 FirstWrite 17}
		zext_ln265_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln266_1 {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 2 FirstWrite -1}
		li {Type I LastRead 1 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		inc11331_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln266 { ap_none {  { zext_ln266 in_data 0 32 } } }
	inc113_lcssa35 { ap_none {  { inc113_lcssa35 in_data 0 64 } } }
	w { ap_memory {  { w_address0 mem_address 1 12 }  { w_ce0 mem_ce 1 1 }  { w_q0 mem_dout 0 32 }  { w_address1 MemPortADDR2 1 12 }  { w_ce1 MemPortCE2 1 1 }  { w_we1 MemPortWE2 1 1 }  { w_d1 MemPortDIN2 1 32 }  { w_q1 MemPortDOUT2 0 32 } } }
	zext_ln265_1 { ap_none {  { zext_ln265_1 in_data 0 12 } } }
	zext_ln266_1 { ap_none {  { zext_ln266_1 in_data 0 32 } } }
	lv { ap_memory {  { lv_address0 mem_address 1 13 }  { lv_ce0 mem_ce 1 1 }  { lv_q0 mem_dout 0 32 } } }
	li { ap_memory {  { li_address0 mem_address 1 13 }  { li_ce0 mem_ce 1 1 }  { li_q0 in_data 0 32 } } }
	zext_ln265 { ap_none {  { zext_ln265 in_data 0 12 } } }
	inc11331_out { ap_vld {  { inc11331_out out_data 1 64 }  { inc11331_out_ap_vld out_vld 1 1 } } }
}
