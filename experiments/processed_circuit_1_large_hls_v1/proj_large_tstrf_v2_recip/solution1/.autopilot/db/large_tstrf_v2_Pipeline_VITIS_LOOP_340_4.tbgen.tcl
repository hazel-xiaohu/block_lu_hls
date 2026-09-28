set moduleName large_tstrf_v2_Pipeline_VITIS_LOOP_340_4
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
set C_modelName {large_tstrf_v2_Pipeline_VITIS_LOOP_340_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ n int 32 regular  }
	{ status int 32 regular {pointer 1}  }
	{ ud int 32 regular {array 2624 { 1 } 1 1 }  }
	{ up_load int 14 regular  }
	{ uv float 32 regular {array 8192 { 1 } 1 1 }  }
	{ bitcast_ln344 int 31 regular  }
	{ icmp_ln344_3 int 1 regular  }
	{ pivot_eps float 32 regular  }
	{ diag_recip float 32 regular {array 2624 { 3 0 } 0 1 }  }
	{ divisions int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ud", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "up_load", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "uv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln344", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln344_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pivot_eps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "diag_recip", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "divisions", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 32 signal 0 } 
	{ status sc_out sc_lv 32 signal 1 } 
	{ status_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ ud_address0 sc_out sc_lv 12 signal 2 } 
	{ ud_ce0 sc_out sc_logic 1 signal 2 } 
	{ ud_q0 sc_in sc_lv 32 signal 2 } 
	{ up_load sc_in sc_lv 14 signal 3 } 
	{ uv_address0 sc_out sc_lv 13 signal 4 } 
	{ uv_ce0 sc_out sc_logic 1 signal 4 } 
	{ uv_q0 sc_in sc_lv 32 signal 4 } 
	{ bitcast_ln344 sc_in sc_lv 31 signal 5 } 
	{ icmp_ln344_3 sc_in sc_lv 1 signal 6 } 
	{ pivot_eps sc_in sc_lv 32 signal 7 } 
	{ diag_recip_address1 sc_out sc_lv 12 signal 8 } 
	{ diag_recip_ce1 sc_out sc_logic 1 signal 8 } 
	{ diag_recip_we1 sc_out sc_logic 1 signal 8 } 
	{ diag_recip_d1 sc_out sc_lv 32 signal 8 } 
	{ divisions sc_out sc_lv 64 signal 9 } 
	{ divisions_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "default" }} , 
 	{ "name": "status_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "ap_vld" }} , 
 	{ "name": "ud_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ud", "role": "address0" }} , 
 	{ "name": "ud_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ud", "role": "ce0" }} , 
 	{ "name": "ud_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ud", "role": "q0" }} , 
 	{ "name": "up_load", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "up_load", "role": "default" }} , 
 	{ "name": "uv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "uv", "role": "address0" }} , 
 	{ "name": "uv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uv", "role": "ce0" }} , 
 	{ "name": "uv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uv", "role": "q0" }} , 
 	{ "name": "bitcast_ln344", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln344", "role": "default" }} , 
 	{ "name": "icmp_ln344_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln344_3", "role": "default" }} , 
 	{ "name": "pivot_eps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pivot_eps", "role": "default" }} , 
 	{ "name": "diag_recip_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "diag_recip", "role": "address1" }} , 
 	{ "name": "diag_recip_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "diag_recip", "role": "ce1" }} , 
 	{ "name": "diag_recip_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "diag_recip", "role": "we1" }} , 
 	{ "name": "diag_recip_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "diag_recip", "role": "d1" }} , 
 	{ "name": "divisions", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "divisions", "role": "default" }} , 
 	{ "name": "divisions_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "divisions", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "large_tstrf_v2_Pipeline_VITIS_LOOP_340_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "65526",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ud", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "up_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "uv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln344", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln344_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pivot_eps", "Type" : "None", "Direction" : "I"},
			{"Name" : "diag_recip", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "divisions", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U18", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_v2_Pipeline_VITIS_LOOP_340_4 {
		n {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 5}
		ud {Type I LastRead 0 FirstWrite -1}
		up_load {Type I LastRead 0 FirstWrite -1}
		uv {Type I LastRead 1 FirstWrite -1}
		bitcast_ln344 {Type I LastRead 0 FirstWrite -1}
		icmp_ln344_3 {Type I LastRead 0 FirstWrite -1}
		pivot_eps {Type I LastRead 0 FirstWrite -1}
		diag_recip {Type O LastRead -1 FirstWrite 5}
		divisions {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "65526"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "65526"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	status { ap_vld {  { status out_data 1 32 }  { status_ap_vld out_vld 1 1 } } }
	ud { ap_memory {  { ud_address0 mem_address 1 12 }  { ud_ce0 mem_ce 1 1 }  { ud_q0 in_data 0 32 } } }
	up_load { ap_none {  { up_load in_data 0 14 } } }
	uv { ap_memory {  { uv_address0 mem_address 1 13 }  { uv_ce0 mem_ce 1 1 }  { uv_q0 mem_dout 0 32 } } }
	bitcast_ln344 { ap_none {  { bitcast_ln344 in_data 0 31 } } }
	icmp_ln344_3 { ap_none {  { icmp_ln344_3 in_data 0 1 } } }
	pivot_eps { ap_none {  { pivot_eps in_data 0 32 } } }
	diag_recip { ap_memory {  { diag_recip_address1 MemPortADDR2 1 12 }  { diag_recip_ce1 MemPortCE2 1 1 }  { diag_recip_we1 MemPortWE2 1 1 }  { diag_recip_d1 MemPortDIN2 1 32 } } }
	divisions { ap_vld {  { divisions out_data 1 64 }  { divisions_ap_vld out_vld 1 1 } } }
}
