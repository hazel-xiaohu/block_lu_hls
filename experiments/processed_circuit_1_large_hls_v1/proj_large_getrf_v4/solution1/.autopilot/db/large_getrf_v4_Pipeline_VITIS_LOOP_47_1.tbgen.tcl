set moduleName large_getrf_v4_Pipeline_VITIS_LOOP_47_1
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
set C_modelName {large_getrf_v4_Pipeline_VITIS_LOOP_47_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ select_ln47 int 32 regular  }
	{ inv_diag float 32 regular {array 4096 { 3 0 } 0 1 }  }
	{ worktag_bank int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ worktag_bank_3 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ worktag_bank_2 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ worktag_bank_1 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ pattern_bank_3 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ pattern_bank_2 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ pattern_bank_1 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ pattern_bank int 32 regular {array 1024 { 3 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "select_ln47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inv_diag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "worktag_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "worktag_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "worktag_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "worktag_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pattern_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pattern_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pattern_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pattern_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln47 sc_in sc_lv 32 signal 0 } 
	{ inv_diag_address1 sc_out sc_lv 12 signal 1 } 
	{ inv_diag_ce1 sc_out sc_logic 1 signal 1 } 
	{ inv_diag_we1 sc_out sc_logic 1 signal 1 } 
	{ inv_diag_d1 sc_out sc_lv 32 signal 1 } 
	{ worktag_bank_address1 sc_out sc_lv 10 signal 2 } 
	{ worktag_bank_ce1 sc_out sc_logic 1 signal 2 } 
	{ worktag_bank_we1 sc_out sc_logic 1 signal 2 } 
	{ worktag_bank_d1 sc_out sc_lv 32 signal 2 } 
	{ worktag_bank_3_address1 sc_out sc_lv 10 signal 3 } 
	{ worktag_bank_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ worktag_bank_3_we1 sc_out sc_logic 1 signal 3 } 
	{ worktag_bank_3_d1 sc_out sc_lv 32 signal 3 } 
	{ worktag_bank_2_address1 sc_out sc_lv 10 signal 4 } 
	{ worktag_bank_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ worktag_bank_2_we1 sc_out sc_logic 1 signal 4 } 
	{ worktag_bank_2_d1 sc_out sc_lv 32 signal 4 } 
	{ worktag_bank_1_address1 sc_out sc_lv 10 signal 5 } 
	{ worktag_bank_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ worktag_bank_1_we1 sc_out sc_logic 1 signal 5 } 
	{ worktag_bank_1_d1 sc_out sc_lv 32 signal 5 } 
	{ pattern_bank_3_address1 sc_out sc_lv 10 signal 6 } 
	{ pattern_bank_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ pattern_bank_3_we1 sc_out sc_logic 1 signal 6 } 
	{ pattern_bank_3_d1 sc_out sc_lv 32 signal 6 } 
	{ pattern_bank_2_address1 sc_out sc_lv 10 signal 7 } 
	{ pattern_bank_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ pattern_bank_2_we1 sc_out sc_logic 1 signal 7 } 
	{ pattern_bank_2_d1 sc_out sc_lv 32 signal 7 } 
	{ pattern_bank_1_address1 sc_out sc_lv 10 signal 8 } 
	{ pattern_bank_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ pattern_bank_1_we1 sc_out sc_logic 1 signal 8 } 
	{ pattern_bank_1_d1 sc_out sc_lv 32 signal 8 } 
	{ pattern_bank_address1 sc_out sc_lv 10 signal 9 } 
	{ pattern_bank_ce1 sc_out sc_logic 1 signal 9 } 
	{ pattern_bank_we1 sc_out sc_logic 1 signal 9 } 
	{ pattern_bank_d1 sc_out sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln47", "role": "default" }} , 
 	{ "name": "inv_diag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "inv_diag", "role": "address1" }} , 
 	{ "name": "inv_diag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inv_diag", "role": "ce1" }} , 
 	{ "name": "inv_diag_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inv_diag", "role": "we1" }} , 
 	{ "name": "inv_diag_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inv_diag", "role": "d1" }} , 
 	{ "name": "worktag_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank", "role": "address1" }} , 
 	{ "name": "worktag_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "ce1" }} , 
 	{ "name": "worktag_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "we1" }} , 
 	{ "name": "worktag_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank", "role": "d1" }} , 
 	{ "name": "worktag_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "address1" }} , 
 	{ "name": "worktag_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "ce1" }} , 
 	{ "name": "worktag_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "we1" }} , 
 	{ "name": "worktag_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "d1" }} , 
 	{ "name": "worktag_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "address1" }} , 
 	{ "name": "worktag_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "ce1" }} , 
 	{ "name": "worktag_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "we1" }} , 
 	{ "name": "worktag_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "d1" }} , 
 	{ "name": "worktag_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "address1" }} , 
 	{ "name": "worktag_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "ce1" }} , 
 	{ "name": "worktag_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "we1" }} , 
 	{ "name": "worktag_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "d1" }} , 
 	{ "name": "pattern_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "address1" }} , 
 	{ "name": "pattern_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "ce1" }} , 
 	{ "name": "pattern_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "we1" }} , 
 	{ "name": "pattern_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "d1" }} , 
 	{ "name": "pattern_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "address1" }} , 
 	{ "name": "pattern_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "ce1" }} , 
 	{ "name": "pattern_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "we1" }} , 
 	{ "name": "pattern_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "d1" }} , 
 	{ "name": "pattern_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "address1" }} , 
 	{ "name": "pattern_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "ce1" }} , 
 	{ "name": "pattern_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "we1" }} , 
 	{ "name": "pattern_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "d1" }} , 
 	{ "name": "pattern_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank", "role": "address1" }} , 
 	{ "name": "pattern_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank", "role": "ce1" }} , 
 	{ "name": "pattern_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank", "role": "we1" }} , 
 	{ "name": "pattern_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_47_1",
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
			{"Name" : "select_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "inv_diag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4_Pipeline_VITIS_LOOP_47_1 {
		select_ln47 {Type I LastRead 0 FirstWrite -1}
		inv_diag {Type O LastRead -1 FirstWrite 0}
		worktag_bank {Type O LastRead -1 FirstWrite 0}
		worktag_bank_3 {Type O LastRead -1 FirstWrite 0}
		worktag_bank_2 {Type O LastRead -1 FirstWrite 0}
		worktag_bank_1 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_3 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_2 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_1 {Type O LastRead -1 FirstWrite 0}
		pattern_bank {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	select_ln47 { ap_none {  { select_ln47 in_data 0 32 } } }
	inv_diag { ap_memory {  { inv_diag_address1 MemPortADDR2 1 12 }  { inv_diag_ce1 MemPortCE2 1 1 }  { inv_diag_we1 MemPortWE2 1 1 }  { inv_diag_d1 MemPortDIN2 1 32 } } }
	worktag_bank { ap_memory {  { worktag_bank_address1 MemPortADDR2 1 10 }  { worktag_bank_ce1 MemPortCE2 1 1 }  { worktag_bank_we1 MemPortWE2 1 1 }  { worktag_bank_d1 MemPortDIN2 1 32 } } }
	worktag_bank_3 { ap_memory {  { worktag_bank_3_address1 MemPortADDR2 1 10 }  { worktag_bank_3_ce1 MemPortCE2 1 1 }  { worktag_bank_3_we1 MemPortWE2 1 1 }  { worktag_bank_3_d1 MemPortDIN2 1 32 } } }
	worktag_bank_2 { ap_memory {  { worktag_bank_2_address1 MemPortADDR2 1 10 }  { worktag_bank_2_ce1 MemPortCE2 1 1 }  { worktag_bank_2_we1 MemPortWE2 1 1 }  { worktag_bank_2_d1 MemPortDIN2 1 32 } } }
	worktag_bank_1 { ap_memory {  { worktag_bank_1_address1 MemPortADDR2 1 10 }  { worktag_bank_1_ce1 MemPortCE2 1 1 }  { worktag_bank_1_we1 MemPortWE2 1 1 }  { worktag_bank_1_d1 MemPortDIN2 1 32 } } }
	pattern_bank_3 { ap_memory {  { pattern_bank_3_address1 MemPortADDR2 1 10 }  { pattern_bank_3_ce1 MemPortCE2 1 1 }  { pattern_bank_3_we1 MemPortWE2 1 1 }  { pattern_bank_3_d1 MemPortDIN2 1 32 } } }
	pattern_bank_2 { ap_memory {  { pattern_bank_2_address1 MemPortADDR2 1 10 }  { pattern_bank_2_ce1 MemPortCE2 1 1 }  { pattern_bank_2_we1 MemPortWE2 1 1 }  { pattern_bank_2_d1 MemPortDIN2 1 32 } } }
	pattern_bank_1 { ap_memory {  { pattern_bank_1_address1 MemPortADDR2 1 10 }  { pattern_bank_1_ce1 MemPortCE2 1 1 }  { pattern_bank_1_we1 MemPortWE2 1 1 }  { pattern_bank_1_d1 MemPortDIN2 1 32 } } }
	pattern_bank { ap_memory {  { pattern_bank_address1 MemPortADDR2 1 10 }  { pattern_bank_ce1 MemPortCE2 1 1 }  { pattern_bank_we1 MemPortWE2 1 1 }  { pattern_bank_d1 MemPortDIN2 1 32 } } }
}
