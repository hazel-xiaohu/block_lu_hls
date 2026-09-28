set moduleName merge_2_to_1_vcresponse_40
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
set C_modelName {merge_2_to_1_vcresponse.40}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcache_bank3_cres int 6 regular {fifo 0 volatile }  }
	{ vcache_bank4_cres int 6 regular {fifo 0 volatile }  }
	{ vcache_res_cfinal int 6 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank3_cres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank4_cres", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_res_cfinal", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
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
	{ vcache_bank3_cres_dout sc_in sc_lv 6 signal 0 } 
	{ vcache_bank3_cres_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ vcache_bank3_cres_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ vcache_bank3_cres_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank3_cres_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank4_cres_dout sc_in sc_lv 6 signal 1 } 
	{ vcache_bank4_cres_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ vcache_bank4_cres_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ vcache_bank4_cres_empty_n sc_in sc_logic 1 signal 1 } 
	{ vcache_bank4_cres_read sc_out sc_logic 1 signal 1 } 
	{ vcache_res_cfinal_din sc_out sc_lv 6 signal 2 } 
	{ vcache_res_cfinal_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ vcache_res_cfinal_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ vcache_res_cfinal_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_res_cfinal_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank3_cres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "dout" }} , 
 	{ "name": "vcache_bank3_cres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank3_cres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank3_cres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank3_cres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_cres", "role": "read" }} , 
 	{ "name": "vcache_bank4_cres_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "dout" }} , 
 	{ "name": "vcache_bank4_cres_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank4_cres_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank4_cres_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "empty_n" }} , 
 	{ "name": "vcache_bank4_cres_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_cres", "role": "read" }} , 
 	{ "name": "vcache_res_cfinal_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "din" }} , 
 	{ "name": "vcache_res_cfinal_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "num_data_valid" }} , 
 	{ "name": "vcache_res_cfinal_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "fifo_cap" }} , 
 	{ "name": "vcache_res_cfinal_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "full_n" }} , 
 	{ "name": "vcache_res_cfinal_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_cfinal", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_2_to_1_vcresponse_40",
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
			{"Name" : "vcache_bank3_cres", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1_fu_57", "Port" : "vcache_bank3_cres", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcache_bank4_cres", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1_fu_57", "Port" : "vcache_bank4_cres", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcache_res_cfinal", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcache_res_cfinal_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1_fu_57", "Port" : "vcache_res_cfinal", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1_fu_57", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1",
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
			{"Name" : "vcache_bank3_cres", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vcache_bank3_cres_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank4_cres", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vcache_bank4_cres_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_res_cfinal", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vcache_res_cfinal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_result_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_711_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1_fu_57.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	merge_2_to_1_vcresponse_40 {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}}
	merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1 {
		vcache_bank3_cres {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_cres {Type I LastRead 0 FirstWrite -1}
		vcache_res_cfinal {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 0}
		temp_result_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vcache_bank3_cres { ap_fifo {  { vcache_bank3_cres_dout fifo_port_we 0 6 }  { vcache_bank3_cres_num_data_valid fifo_status_num_data_valid 0 5 }  { vcache_bank3_cres_fifo_cap fifo_update 0 5 }  { vcache_bank3_cres_empty_n fifo_status 0 1 }  { vcache_bank3_cres_read fifo_data 1 1 } } }
	vcache_bank4_cres { ap_fifo {  { vcache_bank4_cres_dout fifo_port_we 0 6 }  { vcache_bank4_cres_num_data_valid fifo_status_num_data_valid 0 5 }  { vcache_bank4_cres_fifo_cap fifo_update 0 5 }  { vcache_bank4_cres_empty_n fifo_status 0 1 }  { vcache_bank4_cres_read fifo_data 1 1 } } }
	vcache_res_cfinal { ap_fifo {  { vcache_res_cfinal_din fifo_port_we 1 6 }  { vcache_res_cfinal_num_data_valid fifo_status_num_data_valid 0 2 }  { vcache_res_cfinal_fifo_cap fifo_update 0 2 }  { vcache_res_cfinal_full_n fifo_status 0 1 }  { vcache_res_cfinal_write fifo_data 1 1 } } }
}
