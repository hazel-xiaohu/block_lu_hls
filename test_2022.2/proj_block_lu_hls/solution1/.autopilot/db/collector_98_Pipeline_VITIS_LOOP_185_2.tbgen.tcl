set moduleName collector_98_Pipeline_VITIS_LOOP_185_2
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
set C_modelName {collector.98_Pipeline_VITIS_LOOP_185_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln183 int 30 regular  }
	{ add_ln185 int 31 regular  }
	{ vblock4 int 134 regular {fifo 1 volatile }  }
	{ cached_V_4 int 1024 regular  }
	{ trunc_ln int 2 regular  }
	{ zext_ln184 int 30 regular  }
	{ empty int 2 regular  }
	{ hit int 1 regular  }
	{ voff3 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln183", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln185", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cached_V_4", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln184", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hit", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "voff3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ voff3_dout sc_in sc_lv 128 signal 8 } 
	{ voff3_num_data_valid sc_in sc_lv 7 signal 8 } 
	{ voff3_fifo_cap sc_in sc_lv 7 signal 8 } 
	{ voff3_empty_n sc_in sc_logic 1 signal 8 } 
	{ voff3_read sc_out sc_logic 1 signal 8 } 
	{ vblock4_din sc_out sc_lv 134 signal 2 } 
	{ vblock4_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ vblock4_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock4_full_n sc_in sc_logic 1 signal 2 } 
	{ vblock4_write sc_out sc_logic 1 signal 2 } 
	{ zext_ln183 sc_in sc_lv 30 signal 0 } 
	{ add_ln185 sc_in sc_lv 31 signal 1 } 
	{ cached_V_4 sc_in sc_lv 1024 signal 3 } 
	{ trunc_ln sc_in sc_lv 2 signal 4 } 
	{ zext_ln184 sc_in sc_lv 30 signal 5 } 
	{ empty sc_in sc_lv 2 signal 6 } 
	{ hit sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "voff3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff3", "role": "dout" }} , 
 	{ "name": "voff3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "num_data_valid" }} , 
 	{ "name": "voff3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "fifo_cap" }} , 
 	{ "name": "voff3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "empty_n" }} , 
 	{ "name": "voff3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "read" }} , 
 	{ "name": "vblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "din" }} , 
 	{ "name": "vblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "num_data_valid" }} , 
 	{ "name": "vblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "fifo_cap" }} , 
 	{ "name": "vblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "full_n" }} , 
 	{ "name": "vblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "write" }} , 
 	{ "name": "zext_ln183", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln183", "role": "default" }} , 
 	{ "name": "add_ln185", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln185", "role": "default" }} , 
 	{ "name": "cached_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cached_V_4", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "zext_ln184", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln184", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "hit", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hit", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "collector_98_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "zext_ln183", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	collector_98_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cached_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln183 { ap_none {  { zext_ln183 in_data 0 30 } } }
	add_ln185 { ap_none {  { add_ln185 in_data 0 31 } } }
	vblock4 { ap_fifo {  { vblock4_din fifo_port_we 1 134 }  { vblock4_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock4_fifo_cap fifo_update 0 8 }  { vblock4_full_n fifo_status 0 1 }  { vblock4_write fifo_data 1 1 } } }
	cached_V_4 { ap_none {  { cached_V_4 in_data 0 1024 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 2 } } }
	zext_ln184 { ap_none {  { zext_ln184 in_data 0 30 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	hit { ap_none {  { hit in_data 0 1 } } }
	voff3 { ap_fifo {  { voff3_dout fifo_port_we 0 128 }  { voff3_num_data_valid fifo_status_num_data_valid 0 7 }  { voff3_fifo_cap fifo_update 0 7 }  { voff3_empty_n fifo_status 0 1 }  { voff3_read fifo_data 1 1 } } }
}
set moduleName collector_98_Pipeline_VITIS_LOOP_185_2
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
set C_modelName {collector.98_Pipeline_VITIS_LOOP_185_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln183 int 30 regular  }
	{ add_ln185 int 31 regular  }
	{ vblock4 int 134 regular {fifo 1 volatile }  }
	{ cached_V_4 int 1024 regular  }
	{ trunc_ln int 2 regular  }
	{ zext_ln184 int 30 regular  }
	{ empty int 2 regular  }
	{ hit int 1 regular  }
	{ voff3 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln183", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln185", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cached_V_4", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln184", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "hit", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "voff3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ voff3_dout sc_in sc_lv 128 signal 8 } 
	{ voff3_num_data_valid sc_in sc_lv 7 signal 8 } 
	{ voff3_fifo_cap sc_in sc_lv 7 signal 8 } 
	{ voff3_empty_n sc_in sc_logic 1 signal 8 } 
	{ voff3_read sc_out sc_logic 1 signal 8 } 
	{ vblock4_din sc_out sc_lv 134 signal 2 } 
	{ vblock4_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ vblock4_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ vblock4_full_n sc_in sc_logic 1 signal 2 } 
	{ vblock4_write sc_out sc_logic 1 signal 2 } 
	{ zext_ln183 sc_in sc_lv 30 signal 0 } 
	{ add_ln185 sc_in sc_lv 31 signal 1 } 
	{ cached_V_4 sc_in sc_lv 1024 signal 3 } 
	{ trunc_ln sc_in sc_lv 2 signal 4 } 
	{ zext_ln184 sc_in sc_lv 30 signal 5 } 
	{ empty sc_in sc_lv 2 signal 6 } 
	{ hit sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "voff3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff3", "role": "dout" }} , 
 	{ "name": "voff3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "num_data_valid" }} , 
 	{ "name": "voff3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "fifo_cap" }} , 
 	{ "name": "voff3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "empty_n" }} , 
 	{ "name": "voff3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "read" }} , 
 	{ "name": "vblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "din" }} , 
 	{ "name": "vblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "num_data_valid" }} , 
 	{ "name": "vblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "fifo_cap" }} , 
 	{ "name": "vblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "full_n" }} , 
 	{ "name": "vblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "write" }} , 
 	{ "name": "zext_ln183", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln183", "role": "default" }} , 
 	{ "name": "add_ln185", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln185", "role": "default" }} , 
 	{ "name": "cached_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cached_V_4", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "zext_ln184", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln184", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "hit", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hit", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "collector_98_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "zext_ln183", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	collector_98_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cached_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln183 { ap_none {  { zext_ln183 in_data 0 30 } } }
	add_ln185 { ap_none {  { add_ln185 in_data 0 31 } } }
	vblock4 { ap_fifo {  { vblock4_din fifo_port_we 1 134 }  { vblock4_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock4_fifo_cap fifo_update 0 8 }  { vblock4_full_n fifo_status 0 1 }  { vblock4_write fifo_data 1 1 } } }
	cached_V_4 { ap_none {  { cached_V_4 in_data 0 1024 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 2 } } }
	zext_ln184 { ap_none {  { zext_ln184 in_data 0 30 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	hit { ap_none {  { hit in_data 0 1 } } }
	voff3 { ap_fifo {  { voff3_dout fifo_port_we 0 128 }  { voff3_num_data_valid fifo_status_num_data_valid 0 7 }  { voff3_fifo_cap fifo_update 0 7 }  { voff3_empty_n fifo_status 0 1 }  { voff3_read fifo_data 1 1 } } }
}
