set moduleName rcollector_63
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
set C_modelName {rcollector.63}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcollec int 230 regular {fifo 0 volatile }  }
	{ roff1 int 160 regular {fifo 0 volatile }  }
	{ rblock3 int 230 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcollec", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "roff1", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY"} , 
 	{ "Name" : "rblock3", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcollec_dout sc_in sc_lv 230 signal 0 } 
	{ rcollec_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcollec_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcollec_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcollec_read sc_out sc_logic 1 signal 0 } 
	{ roff1_dout sc_in sc_lv 160 signal 1 } 
	{ roff1_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ roff1_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ roff1_empty_n sc_in sc_logic 1 signal 1 } 
	{ roff1_read sc_out sc_logic 1 signal 1 } 
	{ rblock3_din sc_out sc_lv 230 signal 2 } 
	{ rblock3_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ rblock3_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ rblock3_full_n sc_in sc_logic 1 signal 2 } 
	{ rblock3_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcollec_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcollec", "role": "dout" }} , 
 	{ "name": "rcollec_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcollec", "role": "num_data_valid" }} , 
 	{ "name": "rcollec_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcollec", "role": "fifo_cap" }} , 
 	{ "name": "rcollec_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "empty_n" }} , 
 	{ "name": "rcollec_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcollec", "role": "read" }} , 
 	{ "name": "roff1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff1", "role": "dout" }} , 
 	{ "name": "roff1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "num_data_valid" }} , 
 	{ "name": "roff1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "fifo_cap" }} , 
 	{ "name": "roff1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "empty_n" }} , 
 	{ "name": "roff1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "read" }} , 
 	{ "name": "rblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rblock3", "role": "din" }} , 
 	{ "name": "rblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "num_data_valid" }} , 
 	{ "name": "rblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "fifo_cap" }} , 
 	{ "name": "rblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "full_n" }} , 
 	{ "name": "rblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "rcollector_63",
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
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rblock3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rblock3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_160_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_154_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	rcollector_63 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff1 {Type I LastRead 2 FirstWrite -1}
		rblock3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcollec { ap_fifo {  { rcollec_dout fifo_port_we 0 230 }  { rcollec_num_data_valid fifo_status_num_data_valid 0 7 }  { rcollec_fifo_cap fifo_update 0 7 }  { rcollec_empty_n fifo_status 0 1 }  { rcollec_read fifo_data 1 1 } } }
	roff1 { ap_fifo {  { roff1_dout fifo_port_we 0 160 }  { roff1_num_data_valid fifo_status_num_data_valid 0 7 }  { roff1_fifo_cap fifo_update 0 7 }  { roff1_empty_n fifo_status 0 1 }  { roff1_read fifo_data 1 1 } } }
	rblock3 { ap_fifo {  { rblock3_din fifo_port_we 1 230 }  { rblock3_num_data_valid fifo_status_num_data_valid 0 7 }  { rblock3_fifo_cap fifo_update 0 7 }  { rblock3_full_n fifo_status 0 1 }  { rblock3_write fifo_data 1 1 } } }
}
