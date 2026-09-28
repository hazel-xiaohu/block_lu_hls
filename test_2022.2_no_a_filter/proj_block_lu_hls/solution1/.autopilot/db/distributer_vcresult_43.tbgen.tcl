set moduleName distributer_vcresult_43
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
set C_modelName {distributer_vcresult.43}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcache_bank1_cresult1 int 1031 regular {fifo 0 volatile }  }
	{ cresult117 int 1024 regular {fifo 1 volatile }  }
	{ cresult218 int 1024 regular {fifo 1 volatile }  }
	{ cresult319 int 1024 regular {fifo 1 volatile }  }
	{ cresult420 int 1024 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank1_cresult1", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "cresult117", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult218", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult319", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cresult420", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
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
	{ vcache_bank1_cresult1_dout sc_in sc_lv 1031 signal 0 } 
	{ vcache_bank1_cresult1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_cresult1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vcache_bank1_cresult1_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank1_cresult1_read sc_out sc_logic 1 signal 0 } 
	{ cresult420_din sc_out sc_lv 1024 signal 4 } 
	{ cresult420_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ cresult420_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ cresult420_full_n sc_in sc_logic 1 signal 4 } 
	{ cresult420_write sc_out sc_logic 1 signal 4 } 
	{ cresult319_din sc_out sc_lv 1024 signal 3 } 
	{ cresult319_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ cresult319_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ cresult319_full_n sc_in sc_logic 1 signal 3 } 
	{ cresult319_write sc_out sc_logic 1 signal 3 } 
	{ cresult218_din sc_out sc_lv 1024 signal 2 } 
	{ cresult218_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ cresult218_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ cresult218_full_n sc_in sc_logic 1 signal 2 } 
	{ cresult218_write sc_out sc_logic 1 signal 2 } 
	{ cresult117_din sc_out sc_lv 1024 signal 1 } 
	{ cresult117_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ cresult117_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ cresult117_full_n sc_in sc_logic 1 signal 1 } 
	{ cresult117_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank1_cresult1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "dout" }} , 
 	{ "name": "vcache_bank1_cresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_cresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank1_cresult1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "empty_n" }} , 
 	{ "name": "vcache_bank1_cresult1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "read" }} , 
 	{ "name": "cresult420_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult420", "role": "din" }} , 
 	{ "name": "cresult420_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult420", "role": "num_data_valid" }} , 
 	{ "name": "cresult420_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult420", "role": "fifo_cap" }} , 
 	{ "name": "cresult420_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult420", "role": "full_n" }} , 
 	{ "name": "cresult420_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult420", "role": "write" }} , 
 	{ "name": "cresult319_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult319", "role": "din" }} , 
 	{ "name": "cresult319_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult319", "role": "num_data_valid" }} , 
 	{ "name": "cresult319_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult319", "role": "fifo_cap" }} , 
 	{ "name": "cresult319_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult319", "role": "full_n" }} , 
 	{ "name": "cresult319_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult319", "role": "write" }} , 
 	{ "name": "cresult218_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult218", "role": "din" }} , 
 	{ "name": "cresult218_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult218", "role": "num_data_valid" }} , 
 	{ "name": "cresult218_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult218", "role": "fifo_cap" }} , 
 	{ "name": "cresult218_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult218", "role": "full_n" }} , 
 	{ "name": "cresult218_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult218", "role": "write" }} , 
 	{ "name": "cresult117_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult117", "role": "din" }} , 
 	{ "name": "cresult117_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult117", "role": "num_data_valid" }} , 
 	{ "name": "cresult117_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresult117", "role": "fifo_cap" }} , 
 	{ "name": "cresult117_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult117", "role": "full_n" }} , 
 	{ "name": "cresult117_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult117", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "distributer_vcresult_43",
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
			{"Name" : "vcache_bank1_cresult1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_bank1_cresult1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult117", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult117_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult218", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult218_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult319", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult319_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult420", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult420_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_345_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	distributer_vcresult_43 {
		vcache_bank1_cresult1 {Type I LastRead 0 FirstWrite -1}
		cresult117 {Type O LastRead -1 FirstWrite 1}
		cresult218 {Type O LastRead -1 FirstWrite 1}
		cresult319 {Type O LastRead -1 FirstWrite 1}
		cresult420 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank1_cresult1 { ap_fifo {  { vcache_bank1_cresult1_dout fifo_port_we 0 1031 }  { vcache_bank1_cresult1_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank1_cresult1_fifo_cap fifo_update 0 4 }  { vcache_bank1_cresult1_empty_n fifo_status 0 1 }  { vcache_bank1_cresult1_read fifo_data 1 1 } } }
	cresult117 { ap_fifo {  { cresult117_din fifo_port_we 1 1024 }  { cresult117_num_data_valid fifo_status_num_data_valid 0 6 }  { cresult117_fifo_cap fifo_update 0 6 }  { cresult117_full_n fifo_status 0 1 }  { cresult117_write fifo_data 1 1 } } }
	cresult218 { ap_fifo {  { cresult218_din fifo_port_we 1 1024 }  { cresult218_num_data_valid fifo_status_num_data_valid 0 6 }  { cresult218_fifo_cap fifo_update 0 6 }  { cresult218_full_n fifo_status 0 1 }  { cresult218_write fifo_data 1 1 } } }
	cresult319 { ap_fifo {  { cresult319_din fifo_port_we 1 1024 }  { cresult319_num_data_valid fifo_status_num_data_valid 0 6 }  { cresult319_fifo_cap fifo_update 0 6 }  { cresult319_full_n fifo_status 0 1 }  { cresult319_write fifo_data 1 1 } } }
	cresult420 { ap_fifo {  { cresult420_din fifo_port_we 1 1024 }  { cresult420_num_data_valid fifo_status_num_data_valid 0 6 }  { cresult420_fifo_cap fifo_update 0 6 }  { cresult420_full_n fifo_status 0 1 }  { cresult420_write fifo_data 1 1 } } }
}
