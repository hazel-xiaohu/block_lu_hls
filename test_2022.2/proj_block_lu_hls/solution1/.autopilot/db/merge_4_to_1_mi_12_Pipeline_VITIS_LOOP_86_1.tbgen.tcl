set moduleName merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1
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
set C_modelName {merge_4_to_1_mi.12_Pipeline_VITIS_LOOP_86_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ mi1_4 int 5 regular {fifo 0 volatile }  }
	{ rm4_idle9 int 1 regular {fifo 1 volatile }  }
	{ mi2_4 int 5 regular {fifo 0 volatile }  }
	{ mi3_4 int 5 regular {fifo 0 volatile }  }
	{ mi4_4 int 5 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mi1_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "rm4_idle9", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi2_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi3_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi4_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mi4_4_dout sc_in sc_lv 5 signal 4 } 
	{ mi4_4_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ mi4_4_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ mi4_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ mi4_4_read sc_out sc_logic 1 signal 4 } 
	{ mi3_4_dout sc_in sc_lv 5 signal 3 } 
	{ mi3_4_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ mi3_4_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ mi3_4_empty_n sc_in sc_logic 1 signal 3 } 
	{ mi3_4_read sc_out sc_logic 1 signal 3 } 
	{ mi2_4_dout sc_in sc_lv 5 signal 2 } 
	{ mi2_4_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ mi2_4_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ mi2_4_empty_n sc_in sc_logic 1 signal 2 } 
	{ mi2_4_read sc_out sc_logic 1 signal 2 } 
	{ mi1_4_dout sc_in sc_lv 5 signal 0 } 
	{ mi1_4_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ mi1_4_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ mi1_4_empty_n sc_in sc_logic 1 signal 0 } 
	{ mi1_4_read sc_out sc_logic 1 signal 0 } 
	{ rm4_idle9_din sc_out sc_lv 1 signal 1 } 
	{ rm4_idle9_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ rm4_idle9_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ rm4_idle9_full_n sc_in sc_logic 1 signal 1 } 
	{ rm4_idle9_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mi4_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi4_4", "role": "dout" }} , 
 	{ "name": "mi4_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_4", "role": "num_data_valid" }} , 
 	{ "name": "mi4_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_4", "role": "fifo_cap" }} , 
 	{ "name": "mi4_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_4", "role": "empty_n" }} , 
 	{ "name": "mi4_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_4", "role": "read" }} , 
 	{ "name": "mi3_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_4", "role": "dout" }} , 
 	{ "name": "mi3_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_4", "role": "num_data_valid" }} , 
 	{ "name": "mi3_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_4", "role": "fifo_cap" }} , 
 	{ "name": "mi3_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "empty_n" }} , 
 	{ "name": "mi3_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "read" }} , 
 	{ "name": "mi2_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi2_4", "role": "dout" }} , 
 	{ "name": "mi2_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_4", "role": "num_data_valid" }} , 
 	{ "name": "mi2_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_4", "role": "fifo_cap" }} , 
 	{ "name": "mi2_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_4", "role": "empty_n" }} , 
 	{ "name": "mi2_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_4", "role": "read" }} , 
 	{ "name": "mi1_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_4", "role": "dout" }} , 
 	{ "name": "mi1_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_4", "role": "num_data_valid" }} , 
 	{ "name": "mi1_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_4", "role": "fifo_cap" }} , 
 	{ "name": "mi1_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "empty_n" }} , 
 	{ "name": "mi1_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "read" }} , 
 	{ "name": "rm4_idle9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "din" }} , 
 	{ "name": "rm4_idle9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "num_data_valid" }} , 
 	{ "name": "rm4_idle9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "fifo_cap" }} , 
 	{ "name": "rm4_idle9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "full_n" }} , 
 	{ "name": "rm4_idle9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mi1_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi1_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi2_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi2_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi3_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi3_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi4_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi4_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_86_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1 {
		mi1_4 {Type I LastRead 0 FirstWrite -1}
		rm4_idle9 {Type O LastRead -1 FirstWrite 1}
		mi2_4 {Type I LastRead 0 FirstWrite -1}
		mi3_4 {Type I LastRead 0 FirstWrite -1}
		mi4_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mi1_4 { ap_fifo {  { mi1_4_dout fifo_port_we 0 5 }  { mi1_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi1_4_fifo_cap fifo_update 0 2 }  { mi1_4_empty_n fifo_status 0 1 }  { mi1_4_read fifo_data 1 1 } } }
	rm4_idle9 { ap_fifo {  { rm4_idle9_din fifo_port_we 1 1 }  { rm4_idle9_num_data_valid fifo_status_num_data_valid 0 8 }  { rm4_idle9_fifo_cap fifo_update 0 8 }  { rm4_idle9_full_n fifo_status 0 1 }  { rm4_idle9_write fifo_data 1 1 } } }
	mi2_4 { ap_fifo {  { mi2_4_dout fifo_port_we 0 5 }  { mi2_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi2_4_fifo_cap fifo_update 0 2 }  { mi2_4_empty_n fifo_status 0 1 }  { mi2_4_read fifo_data 1 1 } } }
	mi3_4 { ap_fifo {  { mi3_4_dout fifo_port_we 0 5 }  { mi3_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi3_4_fifo_cap fifo_update 0 2 }  { mi3_4_empty_n fifo_status 0 1 }  { mi3_4_read fifo_data 1 1 } } }
	mi4_4 { ap_fifo {  { mi4_4_dout fifo_port_we 0 5 }  { mi4_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi4_4_fifo_cap fifo_update 0 2 }  { mi4_4_empty_n fifo_status 0 1 }  { mi4_4_read fifo_data 1 1 } } }
}
set moduleName merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1
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
set C_modelName {merge_4_to_1_mi.12_Pipeline_VITIS_LOOP_86_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ mi1_4 int 5 regular {fifo 0 volatile }  }
	{ rm4_idle9 int 1 regular {fifo 1 volatile }  }
	{ mi2_4 int 5 regular {fifo 0 volatile }  }
	{ mi3_4 int 5 regular {fifo 0 volatile }  }
	{ mi4_4 int 5 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mi1_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "rm4_idle9", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi2_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi3_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mi4_4", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mi4_4_dout sc_in sc_lv 5 signal 4 } 
	{ mi4_4_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ mi4_4_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ mi4_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ mi4_4_read sc_out sc_logic 1 signal 4 } 
	{ mi3_4_dout sc_in sc_lv 5 signal 3 } 
	{ mi3_4_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ mi3_4_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ mi3_4_empty_n sc_in sc_logic 1 signal 3 } 
	{ mi3_4_read sc_out sc_logic 1 signal 3 } 
	{ mi2_4_dout sc_in sc_lv 5 signal 2 } 
	{ mi2_4_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ mi2_4_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ mi2_4_empty_n sc_in sc_logic 1 signal 2 } 
	{ mi2_4_read sc_out sc_logic 1 signal 2 } 
	{ mi1_4_dout sc_in sc_lv 5 signal 0 } 
	{ mi1_4_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ mi1_4_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ mi1_4_empty_n sc_in sc_logic 1 signal 0 } 
	{ mi1_4_read sc_out sc_logic 1 signal 0 } 
	{ rm4_idle9_din sc_out sc_lv 1 signal 1 } 
	{ rm4_idle9_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ rm4_idle9_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ rm4_idle9_full_n sc_in sc_logic 1 signal 1 } 
	{ rm4_idle9_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mi4_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi4_4", "role": "dout" }} , 
 	{ "name": "mi4_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_4", "role": "num_data_valid" }} , 
 	{ "name": "mi4_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi4_4", "role": "fifo_cap" }} , 
 	{ "name": "mi4_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_4", "role": "empty_n" }} , 
 	{ "name": "mi4_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi4_4", "role": "read" }} , 
 	{ "name": "mi3_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3_4", "role": "dout" }} , 
 	{ "name": "mi3_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_4", "role": "num_data_valid" }} , 
 	{ "name": "mi3_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3_4", "role": "fifo_cap" }} , 
 	{ "name": "mi3_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "empty_n" }} , 
 	{ "name": "mi3_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3_4", "role": "read" }} , 
 	{ "name": "mi2_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi2_4", "role": "dout" }} , 
 	{ "name": "mi2_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_4", "role": "num_data_valid" }} , 
 	{ "name": "mi2_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi2_4", "role": "fifo_cap" }} , 
 	{ "name": "mi2_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_4", "role": "empty_n" }} , 
 	{ "name": "mi2_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi2_4", "role": "read" }} , 
 	{ "name": "mi1_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1_4", "role": "dout" }} , 
 	{ "name": "mi1_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_4", "role": "num_data_valid" }} , 
 	{ "name": "mi1_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1_4", "role": "fifo_cap" }} , 
 	{ "name": "mi1_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "empty_n" }} , 
 	{ "name": "mi1_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1_4", "role": "read" }} , 
 	{ "name": "rm4_idle9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "din" }} , 
 	{ "name": "rm4_idle9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "num_data_valid" }} , 
 	{ "name": "rm4_idle9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "fifo_cap" }} , 
 	{ "name": "rm4_idle9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "full_n" }} , 
 	{ "name": "rm4_idle9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mi1_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi1_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi2_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi2_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi3_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi3_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mi4_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mi4_4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_86_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1 {
		mi1_4 {Type I LastRead 0 FirstWrite -1}
		rm4_idle9 {Type O LastRead -1 FirstWrite 1}
		mi2_4 {Type I LastRead 0 FirstWrite -1}
		mi3_4 {Type I LastRead 0 FirstWrite -1}
		mi4_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mi1_4 { ap_fifo {  { mi1_4_dout fifo_port_we 0 5 }  { mi1_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi1_4_fifo_cap fifo_update 0 2 }  { mi1_4_empty_n fifo_status 0 1 }  { mi1_4_read fifo_data 1 1 } } }
	rm4_idle9 { ap_fifo {  { rm4_idle9_din fifo_port_we 1 1 }  { rm4_idle9_num_data_valid fifo_status_num_data_valid 0 8 }  { rm4_idle9_fifo_cap fifo_update 0 8 }  { rm4_idle9_full_n fifo_status 0 1 }  { rm4_idle9_write fifo_data 1 1 } } }
	mi2_4 { ap_fifo {  { mi2_4_dout fifo_port_we 0 5 }  { mi2_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi2_4_fifo_cap fifo_update 0 2 }  { mi2_4_empty_n fifo_status 0 1 }  { mi2_4_read fifo_data 1 1 } } }
	mi3_4 { ap_fifo {  { mi3_4_dout fifo_port_we 0 5 }  { mi3_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi3_4_fifo_cap fifo_update 0 2 }  { mi3_4_empty_n fifo_status 0 1 }  { mi3_4_read fifo_data 1 1 } } }
	mi4_4 { ap_fifo {  { mi4_4_dout fifo_port_we 0 5 }  { mi4_4_num_data_valid fifo_status_num_data_valid 0 2 }  { mi4_4_fifo_cap fifo_update 0 2 }  { mi4_4_empty_n fifo_status 0 1 }  { mi4_4_read fifo_data 1 1 } } }
}
