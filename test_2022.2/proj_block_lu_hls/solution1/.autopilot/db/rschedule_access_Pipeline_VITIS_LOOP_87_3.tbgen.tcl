set moduleName rschedule_access_Pipeline_VITIS_LOOP_87_3
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
set C_modelName {rschedule_access_Pipeline_VITIS_LOOP_87_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln87 int 30 regular  }
	{ add int 31 regular  }
	{ off_pointer int 128 regular {array 513 { 1 3 } 1 1 }  }
	{ trunc_ln int 1 regular  }
	{ Bridx_V int 128 regular {array 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln87", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "off_pointer", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Bridx_V", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln87 sc_in sc_lv 30 signal 0 } 
	{ add sc_in sc_lv 31 signal 1 } 
	{ off_pointer_address0 sc_out sc_lv 10 signal 2 } 
	{ off_pointer_ce0 sc_out sc_logic 1 signal 2 } 
	{ off_pointer_q0 sc_in sc_lv 128 signal 2 } 
	{ trunc_ln sc_in sc_lv 1 signal 3 } 
	{ Bridx_V_address0 sc_out sc_lv 1 signal 4 } 
	{ Bridx_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ Bridx_V_we0 sc_out sc_logic 1 signal 4 } 
	{ Bridx_V_d0 sc_out sc_lv 128 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln87", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "off_pointer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "off_pointer", "role": "address0" }} , 
 	{ "name": "off_pointer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "off_pointer", "role": "ce0" }} , 
 	{ "name": "off_pointer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "off_pointer", "role": "q0" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "Bridx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "address0" }} , 
 	{ "name": "Bridx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "ce0" }} , 
 	{ "name": "Bridx_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "we0" }} , 
 	{ "name": "Bridx_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bridx_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rschedule_access_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "zext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "off_pointer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		Bridx_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln87 { ap_none {  { zext_ln87 in_data 0 30 } } }
	add { ap_none {  { add in_data 0 31 } } }
	off_pointer { ap_memory {  { off_pointer_address0 mem_address 1 10 }  { off_pointer_ce0 mem_ce 1 1 }  { off_pointer_q0 in_data 0 128 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 1 } } }
	Bridx_V { ap_memory {  { Bridx_V_address0 mem_address 1 1 }  { Bridx_V_ce0 mem_ce 1 1 }  { Bridx_V_we0 mem_we 1 1 }  { Bridx_V_d0 mem_din 1 128 } } }
}
