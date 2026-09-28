set moduleName request_manager_69
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
set C_modelName {request_manager.69}
set C_modelType { void 0 }
set C_modelArgList {
	{ crequest int 68 regular {fifo 0 volatile }  }
	{ c_first int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "c_first", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ crequest_dout sc_in sc_lv 68 signal 0 } 
	{ crequest_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ crequest_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ crequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ crequest_read sc_out sc_logic 1 signal 0 } 
	{ c_first_din sc_out sc_lv 209 signal 1 } 
	{ c_first_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ c_first_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ c_first_full_n sc_in sc_logic 1 signal 1 } 
	{ c_first_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "crequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "dout" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "crequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "empty_n" }} , 
 	{ "name": "crequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "read" }} , 
 	{ "name": "c_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "c_first", "role": "din" }} , 
 	{ "name": "c_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_first", "role": "num_data_valid" }} , 
 	{ "name": "c_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_first", "role": "fifo_cap" }} , 
 	{ "name": "c_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "full_n" }} , 
 	{ "name": "c_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_manager_69",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_manager_69_Pipeline_VITIS_LOOP_48_1",
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
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_manager_69 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_69_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	crequest { ap_fifo {  { crequest_dout fifo_port_we 0 68 }  { crequest_num_data_valid fifo_status_num_data_valid 0 7 }  { crequest_fifo_cap fifo_update 0 7 }  { crequest_empty_n fifo_status 0 1 }  { crequest_read fifo_data 1 1 } } }
	c_first { ap_fifo {  { c_first_din fifo_port_we 1 209 }  { c_first_num_data_valid fifo_status_num_data_valid 0 7 }  { c_first_fifo_cap fifo_update 0 7 }  { c_first_full_n fifo_status 0 1 }  { c_first_write fifo_data 1 1 } } }
}
set moduleName request_manager_69
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
set C_modelName {request_manager.69}
set C_modelType { void 0 }
set C_modelArgList {
	{ crequest int 68 regular {fifo 0 volatile }  }
	{ c_first int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "crequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "c_first", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ crequest_dout sc_in sc_lv 68 signal 0 } 
	{ crequest_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ crequest_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ crequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ crequest_read sc_out sc_logic 1 signal 0 } 
	{ c_first_din sc_out sc_lv 209 signal 1 } 
	{ c_first_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ c_first_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ c_first_full_n sc_in sc_logic 1 signal 1 } 
	{ c_first_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "crequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "crequest", "role": "dout" }} , 
 	{ "name": "crequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "num_data_valid" }} , 
 	{ "name": "crequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "crequest", "role": "fifo_cap" }} , 
 	{ "name": "crequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "empty_n" }} , 
 	{ "name": "crequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest", "role": "read" }} , 
 	{ "name": "c_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "c_first", "role": "din" }} , 
 	{ "name": "c_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_first", "role": "num_data_valid" }} , 
 	{ "name": "c_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_first", "role": "fifo_cap" }} , 
 	{ "name": "c_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "full_n" }} , 
 	{ "name": "c_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_manager_69",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_manager_69_Pipeline_VITIS_LOOP_48_1",
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
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_manager_69_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_manager_69 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_69_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	crequest { ap_fifo {  { crequest_dout fifo_port_we 0 68 }  { crequest_num_data_valid fifo_status_num_data_valid 0 7 }  { crequest_fifo_cap fifo_update 0 7 }  { crequest_empty_n fifo_status 0 1 }  { crequest_read fifo_data 1 1 } } }
	c_first { ap_fifo {  { c_first_din fifo_port_we 1 209 }  { c_first_num_data_valid fifo_status_num_data_valid 0 7 }  { c_first_fifo_cap fifo_update 0 7 }  { c_first_full_n fifo_status 0 1 }  { c_first_write fifo_data 1 1 } } }
}
