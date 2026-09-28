set moduleName request_merger_96
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
set C_modelName {request_merger.96}
set C_modelType { void 0 }
set C_modelArgList {
	{ v_first int 209 regular {fifo 0 volatile }  }
	{ v_req int 209 regular {fifo 0 volatile }  }
	{ vrequest4 int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v_first", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest4", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
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
	{ v_first_dout sc_in sc_lv 209 signal 0 } 
	{ v_first_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ v_first_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ v_first_empty_n sc_in sc_logic 1 signal 0 } 
	{ v_first_read sc_out sc_logic 1 signal 0 } 
	{ v_req_dout sc_in sc_lv 209 signal 1 } 
	{ v_req_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ v_req_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ v_req_empty_n sc_in sc_logic 1 signal 1 } 
	{ v_req_read sc_out sc_logic 1 signal 1 } 
	{ vrequest4_din sc_out sc_lv 209 signal 2 } 
	{ vrequest4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ vrequest4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ vrequest4_full_n sc_in sc_logic 1 signal 2 } 
	{ vrequest4_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_first_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_first", "role": "dout" }} , 
 	{ "name": "v_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "num_data_valid" }} , 
 	{ "name": "v_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "fifo_cap" }} , 
 	{ "name": "v_first_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "empty_n" }} , 
 	{ "name": "v_first_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "read" }} , 
 	{ "name": "v_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_req", "role": "dout" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "v_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "empty_n" }} , 
 	{ "name": "v_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "read" }} , 
 	{ "name": "vrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest4", "role": "din" }} , 
 	{ "name": "vrequest4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest4", "role": "num_data_valid" }} , 
 	{ "name": "vrequest4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest4", "role": "fifo_cap" }} , 
 	{ "name": "vrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "full_n" }} , 
 	{ "name": "vrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_merger_96",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "vrequest4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_merger_96_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_merger_96 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_96_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v_first { ap_fifo {  { v_first_dout fifo_port_we 0 209 }  { v_first_num_data_valid fifo_status_num_data_valid 0 7 }  { v_first_fifo_cap fifo_update 0 7 }  { v_first_empty_n fifo_status 0 1 }  { v_first_read fifo_data 1 1 } } }
	v_req { ap_fifo {  { v_req_dout fifo_port_we 0 209 }  { v_req_num_data_valid fifo_status_num_data_valid 0 7 }  { v_req_fifo_cap fifo_update 0 7 }  { v_req_empty_n fifo_status 0 1 }  { v_req_read fifo_data 1 1 } } }
	vrequest4 { ap_fifo {  { vrequest4_din fifo_port_we 1 209 }  { vrequest4_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest4_fifo_cap fifo_update 0 7 }  { vrequest4_full_n fifo_status 0 1 }  { vrequest4_write fifo_data 1 1 } } }
}
set moduleName request_merger_96
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
set C_modelName {request_merger.96}
set C_modelType { void 0 }
set C_modelArgList {
	{ v_first int 209 regular {fifo 0 volatile }  }
	{ v_req int 209 regular {fifo 0 volatile }  }
	{ vrequest4 int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v_first", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest4", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
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
	{ v_first_dout sc_in sc_lv 209 signal 0 } 
	{ v_first_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ v_first_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ v_first_empty_n sc_in sc_logic 1 signal 0 } 
	{ v_first_read sc_out sc_logic 1 signal 0 } 
	{ v_req_dout sc_in sc_lv 209 signal 1 } 
	{ v_req_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ v_req_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ v_req_empty_n sc_in sc_logic 1 signal 1 } 
	{ v_req_read sc_out sc_logic 1 signal 1 } 
	{ vrequest4_din sc_out sc_lv 209 signal 2 } 
	{ vrequest4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ vrequest4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ vrequest4_full_n sc_in sc_logic 1 signal 2 } 
	{ vrequest4_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_first_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_first", "role": "dout" }} , 
 	{ "name": "v_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "num_data_valid" }} , 
 	{ "name": "v_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "fifo_cap" }} , 
 	{ "name": "v_first_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "empty_n" }} , 
 	{ "name": "v_first_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "read" }} , 
 	{ "name": "v_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_req", "role": "dout" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "v_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "empty_n" }} , 
 	{ "name": "v_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "read" }} , 
 	{ "name": "vrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest4", "role": "din" }} , 
 	{ "name": "vrequest4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest4", "role": "num_data_valid" }} , 
 	{ "name": "vrequest4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest4", "role": "fifo_cap" }} , 
 	{ "name": "vrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "full_n" }} , 
 	{ "name": "vrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_merger_96",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "vrequest4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_merger_96_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_merger_96 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_96_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v_first { ap_fifo {  { v_first_dout fifo_port_we 0 209 }  { v_first_num_data_valid fifo_status_num_data_valid 0 7 }  { v_first_fifo_cap fifo_update 0 7 }  { v_first_empty_n fifo_status 0 1 }  { v_first_read fifo_data 1 1 } } }
	v_req { ap_fifo {  { v_req_dout fifo_port_we 0 209 }  { v_req_num_data_valid fifo_status_num_data_valid 0 7 }  { v_req_fifo_cap fifo_update 0 7 }  { v_req_empty_n fifo_status 0 1 }  { v_req_read fifo_data 1 1 } } }
	vrequest4 { ap_fifo {  { vrequest4_din fifo_port_we 1 209 }  { vrequest4_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest4_fifo_cap fifo_update 0 7 }  { vrequest4_full_n fifo_status 0 1 }  { vrequest4_write fifo_data 1 1 } } }
}
