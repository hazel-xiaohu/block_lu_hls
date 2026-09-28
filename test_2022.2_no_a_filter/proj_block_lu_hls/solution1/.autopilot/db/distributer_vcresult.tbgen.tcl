set moduleName distributer_vcresult
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
set C_modelName {distributer_vcresult}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcache_bank1_vresult1 int 1031 regular {fifo 0 volatile }  }
	{ vresult113 int 1024 regular {fifo 1 volatile }  }
	{ vresult214 int 1024 regular {fifo 1 volatile }  }
	{ vresult315 int 1024 regular {fifo 1 volatile }  }
	{ vresult416 int 1024 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank1_vresult1", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "vresult113", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult214", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult315", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresult416", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcache_bank1_vresult1_dout sc_in sc_lv 1031 signal 0 } 
	{ vcache_bank1_vresult1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_vresult1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_vresult1_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank1_vresult1_read sc_out sc_logic 1 signal 0 } 
	{ vresult416_din sc_out sc_lv 1024 signal 4 } 
	{ vresult416_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ vresult416_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ vresult416_full_n sc_in sc_logic 1 signal 4 } 
	{ vresult416_write sc_out sc_logic 1 signal 4 } 
	{ vresult315_din sc_out sc_lv 1024 signal 3 } 
	{ vresult315_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ vresult315_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ vresult315_full_n sc_in sc_logic 1 signal 3 } 
	{ vresult315_write sc_out sc_logic 1 signal 3 } 
	{ vresult214_din sc_out sc_lv 1024 signal 2 } 
	{ vresult214_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ vresult214_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ vresult214_full_n sc_in sc_logic 1 signal 2 } 
	{ vresult214_write sc_out sc_logic 1 signal 2 } 
	{ vresult113_din sc_out sc_lv 1024 signal 1 } 
	{ vresult113_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ vresult113_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ vresult113_full_n sc_in sc_logic 1 signal 1 } 
	{ vresult113_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank1_vresult1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "dout" }} , 
 	{ "name": "vcache_bank1_vresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_vresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank1_vresult1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "empty_n" }} , 
 	{ "name": "vcache_bank1_vresult1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_vresult1", "role": "read" }} , 
 	{ "name": "vresult416_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult416", "role": "din" }} , 
 	{ "name": "vresult416_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult416", "role": "num_data_valid" }} , 
 	{ "name": "vresult416_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult416", "role": "fifo_cap" }} , 
 	{ "name": "vresult416_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult416", "role": "full_n" }} , 
 	{ "name": "vresult416_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult416", "role": "write" }} , 
 	{ "name": "vresult315_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult315", "role": "din" }} , 
 	{ "name": "vresult315_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult315", "role": "num_data_valid" }} , 
 	{ "name": "vresult315_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult315", "role": "fifo_cap" }} , 
 	{ "name": "vresult315_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult315", "role": "full_n" }} , 
 	{ "name": "vresult315_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult315", "role": "write" }} , 
 	{ "name": "vresult214_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult214", "role": "din" }} , 
 	{ "name": "vresult214_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult214", "role": "num_data_valid" }} , 
 	{ "name": "vresult214_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult214", "role": "fifo_cap" }} , 
 	{ "name": "vresult214_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult214", "role": "full_n" }} , 
 	{ "name": "vresult214_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult214", "role": "write" }} , 
 	{ "name": "vresult113_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult113", "role": "din" }} , 
 	{ "name": "vresult113_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult113", "role": "num_data_valid" }} , 
 	{ "name": "vresult113_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresult113", "role": "fifo_cap" }} , 
 	{ "name": "vresult113_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult113", "role": "full_n" }} , 
 	{ "name": "vresult113_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult113", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "distributer_vcresult",
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
			{"Name" : "vcache_bank1_vresult1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank1_vresult1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult113", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult113_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult214", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult315", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult315_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult416", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult416_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_345_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	distributer_vcresult {
		vcache_bank1_vresult1 {Type I LastRead 0 FirstWrite -1}
		vresult113 {Type O LastRead -1 FirstWrite 1}
		vresult214 {Type O LastRead -1 FirstWrite 1}
		vresult315 {Type O LastRead -1 FirstWrite 1}
		vresult416 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank1_vresult1 { ap_fifo {  { vcache_bank1_vresult1_dout fifo_port_we 0 1031 }  { vcache_bank1_vresult1_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank1_vresult1_fifo_cap fifo_update 0 4 }  { vcache_bank1_vresult1_empty_n fifo_status 0 1 }  { vcache_bank1_vresult1_read fifo_data 1 1 } } }
	vresult113 { ap_fifo {  { vresult113_din fifo_port_we 1 1024 }  { vresult113_num_data_valid fifo_status_num_data_valid 0 6 }  { vresult113_fifo_cap fifo_update 0 6 }  { vresult113_full_n fifo_status 0 1 }  { vresult113_write fifo_data 1 1 } } }
	vresult214 { ap_fifo {  { vresult214_din fifo_port_we 1 1024 }  { vresult214_num_data_valid fifo_status_num_data_valid 0 6 }  { vresult214_fifo_cap fifo_update 0 6 }  { vresult214_full_n fifo_status 0 1 }  { vresult214_write fifo_data 1 1 } } }
	vresult315 { ap_fifo {  { vresult315_din fifo_port_we 1 1024 }  { vresult315_num_data_valid fifo_status_num_data_valid 0 6 }  { vresult315_fifo_cap fifo_update 0 6 }  { vresult315_full_n fifo_status 0 1 }  { vresult315_write fifo_data 1 1 } } }
	vresult416 { ap_fifo {  { vresult416_din fifo_port_we 1 1024 }  { vresult416_num_data_valid fifo_status_num_data_valid 0 6 }  { vresult416_fifo_cap fifo_update 0 6 }  { vresult416_full_n fifo_status 0 1 }  { vresult416_write fifo_data 1 1 } } }
}
