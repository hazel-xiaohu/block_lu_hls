set moduleName large_tstrf_v2_Pipeline_VITIS_LOOP_348_97
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
set C_modelName {large_tstrf_v2_Pipeline_VITIS_LOOP_348_97}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln348_4 int 32 regular  }
	{ inc133_2_lcssa52 int 64 regular  }
	{ w_2 float 32 regular {array 2624 { 1 2 } 1 1 }  }
	{ zext_ln347_5 int 12 regular  }
	{ zext_ln348_5 int 32 regular  }
	{ uv float 32 regular {array 8192 { 1 } 1 1 }  }
	{ ur int 32 regular {array 8192 { 1 } 1 1 }  }
	{ zext_ln347_4 int 12 regular  }
	{ inc133_248_out int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln348_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inc133_2_lcssa52", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln347_5", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln348_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "uv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ur", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln347_4", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "inc133_248_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln348_4 sc_in sc_lv 32 signal 0 } 
	{ inc133_2_lcssa52 sc_in sc_lv 64 signal 1 } 
	{ w_2_address0 sc_out sc_lv 12 signal 2 } 
	{ w_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ w_2_q0 sc_in sc_lv 32 signal 2 } 
	{ w_2_address1 sc_out sc_lv 12 signal 2 } 
	{ w_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ w_2_we1 sc_out sc_logic 1 signal 2 } 
	{ w_2_d1 sc_out sc_lv 32 signal 2 } 
	{ w_2_q1 sc_in sc_lv 32 signal 2 } 
	{ zext_ln347_5 sc_in sc_lv 12 signal 3 } 
	{ zext_ln348_5 sc_in sc_lv 32 signal 4 } 
	{ uv_address0 sc_out sc_lv 13 signal 5 } 
	{ uv_ce0 sc_out sc_logic 1 signal 5 } 
	{ uv_q0 sc_in sc_lv 32 signal 5 } 
	{ ur_address0 sc_out sc_lv 13 signal 6 } 
	{ ur_ce0 sc_out sc_logic 1 signal 6 } 
	{ ur_q0 sc_in sc_lv 32 signal 6 } 
	{ zext_ln347_4 sc_in sc_lv 12 signal 7 } 
	{ inc133_248_out sc_out sc_lv 64 signal 8 } 
	{ inc133_248_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ grp_fu_4348_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4348_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4348_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4348_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4348_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4352_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4352_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4352_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4352_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln348_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln348_4", "role": "default" }} , 
 	{ "name": "inc133_2_lcssa52", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inc133_2_lcssa52", "role": "default" }} , 
 	{ "name": "w_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w_2", "role": "address0" }} , 
 	{ "name": "w_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "ce0" }} , 
 	{ "name": "w_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "q0" }} , 
 	{ "name": "w_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w_2", "role": "address1" }} , 
 	{ "name": "w_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "ce1" }} , 
 	{ "name": "w_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "we1" }} , 
 	{ "name": "w_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "d1" }} , 
 	{ "name": "w_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "q1" }} , 
 	{ "name": "zext_ln347_5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln347_5", "role": "default" }} , 
 	{ "name": "zext_ln348_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln348_5", "role": "default" }} , 
 	{ "name": "uv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "uv", "role": "address0" }} , 
 	{ "name": "uv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uv", "role": "ce0" }} , 
 	{ "name": "uv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uv", "role": "q0" }} , 
 	{ "name": "ur_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ur", "role": "address0" }} , 
 	{ "name": "ur_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ur", "role": "ce0" }} , 
 	{ "name": "ur_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ur", "role": "q0" }} , 
 	{ "name": "zext_ln347_4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln347_4", "role": "default" }} , 
 	{ "name": "inc133_248_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inc133_248_out", "role": "default" }} , 
 	{ "name": "inc133_248_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "inc133_248_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_4348_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4348_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4348_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4348_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4348_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4348_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4348_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4348_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4348_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4348_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4352_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4352_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4352_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4352_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4352_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4352_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4352_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4352_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_v2_Pipeline_VITIS_LOOP_348_97",
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
			{"Name" : "zext_ln348_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc133_2_lcssa52", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln347_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln348_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "uv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ur", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln347_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc133_248_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_348_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_v2_Pipeline_VITIS_LOOP_348_97 {
		zext_ln348_4 {Type I LastRead 0 FirstWrite -1}
		inc133_2_lcssa52 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type IO LastRead 3 FirstWrite 17}
		zext_ln347_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln348_5 {Type I LastRead 0 FirstWrite -1}
		uv {Type I LastRead 2 FirstWrite -1}
		ur {Type I LastRead 1 FirstWrite -1}
		zext_ln347_4 {Type I LastRead 0 FirstWrite -1}
		inc133_248_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln348_4 { ap_none {  { zext_ln348_4 in_data 0 32 } } }
	inc133_2_lcssa52 { ap_none {  { inc133_2_lcssa52 in_data 0 64 } } }
	w_2 { ap_memory {  { w_2_address0 mem_address 1 12 }  { w_2_ce0 mem_ce 1 1 }  { w_2_q0 mem_dout 0 32 }  { w_2_address1 MemPortADDR2 1 12 }  { w_2_ce1 MemPortCE2 1 1 }  { w_2_we1 MemPortWE2 1 1 }  { w_2_d1 MemPortDIN2 1 32 }  { w_2_q1 MemPortDOUT2 0 32 } } }
	zext_ln347_5 { ap_none {  { zext_ln347_5 in_data 0 12 } } }
	zext_ln348_5 { ap_none {  { zext_ln348_5 in_data 0 32 } } }
	uv { ap_memory {  { uv_address0 mem_address 1 13 }  { uv_ce0 mem_ce 1 1 }  { uv_q0 mem_dout 0 32 } } }
	ur { ap_memory {  { ur_address0 mem_address 1 13 }  { ur_ce0 mem_ce 1 1 }  { ur_q0 in_data 0 32 } } }
	zext_ln347_4 { ap_none {  { zext_ln347_4 in_data 0 12 } } }
	inc133_248_out { ap_vld {  { inc133_248_out out_data 1 64 }  { inc133_248_out_ap_vld out_vld 1 1 } } }
}
