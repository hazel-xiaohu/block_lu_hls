set moduleName large_getrf_v4_Pipeline_VITIS_LOOP_98_11
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
set C_modelName {large_getrf_v4_Pipeline_VITIS_LOOP_98_11}
set C_modelType { void 0 }
set C_modelArgList {
	{ indvars_iv110 int 3 regular  }
	{ conflict int 1 regular  }
	{ valid int 1 regular  }
	{ valid_1 int 1 regular  }
	{ valid_2 int 1 regular  }
	{ js int 32 regular  }
	{ js_2 int 32 regular  }
	{ js_4 int 32 regular  }
	{ js_6 int 32 regular  }
	{ a_cast int 2 regular  }
	{ tmp_10 int 1 regular  }
	{ conflict_1_out int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv110", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "conflict", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "valid_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "valid_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "js", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conflict_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv110 sc_in sc_lv 3 signal 0 } 
	{ conflict sc_in sc_lv 1 signal 1 } 
	{ valid sc_in sc_lv 1 signal 2 } 
	{ valid_1 sc_in sc_lv 1 signal 3 } 
	{ valid_2 sc_in sc_lv 1 signal 4 } 
	{ js sc_in sc_lv 32 signal 5 } 
	{ js_2 sc_in sc_lv 32 signal 6 } 
	{ js_4 sc_in sc_lv 32 signal 7 } 
	{ js_6 sc_in sc_lv 32 signal 8 } 
	{ a_cast sc_in sc_lv 2 signal 9 } 
	{ tmp_10 sc_in sc_lv 1 signal 10 } 
	{ conflict_1_out sc_out sc_lv 1 signal 11 } 
	{ conflict_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv110", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "indvars_iv110", "role": "default" }} , 
 	{ "name": "conflict", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conflict", "role": "default" }} , 
 	{ "name": "valid", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid", "role": "default" }} , 
 	{ "name": "valid_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid_1", "role": "default" }} , 
 	{ "name": "valid_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid_2", "role": "default" }} , 
 	{ "name": "js", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js", "role": "default" }} , 
 	{ "name": "js_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_2", "role": "default" }} , 
 	{ "name": "js_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_4", "role": "default" }} , 
 	{ "name": "js_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_6", "role": "default" }} , 
 	{ "name": "a_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_cast", "role": "default" }} , 
 	{ "name": "tmp_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_10", "role": "default" }} , 
 	{ "name": "conflict_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conflict_1_out", "role": "default" }} , 
 	{ "name": "conflict_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conflict_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_98_11",
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
			{"Name" : "indvars_iv110", "Type" : "None", "Direction" : "I"},
			{"Name" : "conflict", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conflict_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_11", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U63", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U64", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U65", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4_Pipeline_VITIS_LOOP_98_11 {
		indvars_iv110 {Type I LastRead 0 FirstWrite -1}
		conflict {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		valid_1 {Type I LastRead 0 FirstWrite -1}
		valid_2 {Type I LastRead 0 FirstWrite -1}
		js {Type I LastRead 0 FirstWrite -1}
		js_2 {Type I LastRead 0 FirstWrite -1}
		js_4 {Type I LastRead 0 FirstWrite -1}
		js_6 {Type I LastRead 0 FirstWrite -1}
		a_cast {Type I LastRead 0 FirstWrite -1}
		tmp_10 {Type I LastRead 0 FirstWrite -1}
		conflict_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	indvars_iv110 { ap_none {  { indvars_iv110 in_data 0 3 } } }
	conflict { ap_none {  { conflict in_data 0 1 } } }
	valid { ap_none {  { valid in_data 0 1 } } }
	valid_1 { ap_none {  { valid_1 in_data 0 1 } } }
	valid_2 { ap_none {  { valid_2 in_data 0 1 } } }
	js { ap_none {  { js in_data 0 32 } } }
	js_2 { ap_none {  { js_2 in_data 0 32 } } }
	js_4 { ap_none {  { js_4 in_data 0 32 } } }
	js_6 { ap_none {  { js_6 in_data 0 32 } } }
	a_cast { ap_none {  { a_cast in_data 0 2 } } }
	tmp_10 { ap_none {  { tmp_10 in_data 0 1 } } }
	conflict_1_out { ap_vld {  { conflict_1_out out_data 1 1 }  { conflict_1_out_ap_vld out_vld 1 1 } } }
}
