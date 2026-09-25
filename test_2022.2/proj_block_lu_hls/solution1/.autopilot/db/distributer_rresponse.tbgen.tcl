set moduleName distributer_rresponse
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
set C_modelName {distributer_rresponse}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_bank1_res int 168 regular {fifo 0 volatile }  }
	{ rcache_re_bank1_1 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank1_2 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank1_3 int 168 regular {fifo 1 volatile }  }
	{ rcache_re_bank1_4 int 168 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_bank1_res", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank1_1", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank1_2", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank1_3", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank1_4", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} ]}
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
	{ rcache_bank1_res_dout sc_in sc_lv 168 signal 0 } 
	{ rcache_bank1_res_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ rcache_bank1_res_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ rcache_bank1_res_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_bank1_res_read sc_out sc_logic 1 signal 0 } 
	{ rcache_re_bank1_1_din sc_out sc_lv 168 signal 1 } 
	{ rcache_re_bank1_1_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ rcache_re_bank1_1_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ rcache_re_bank1_1_full_n sc_in sc_logic 1 signal 1 } 
	{ rcache_re_bank1_1_write sc_out sc_logic 1 signal 1 } 
	{ rcache_re_bank1_2_din sc_out sc_lv 168 signal 2 } 
	{ rcache_re_bank1_2_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ rcache_re_bank1_2_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ rcache_re_bank1_2_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_re_bank1_2_write sc_out sc_logic 1 signal 2 } 
	{ rcache_re_bank1_3_din sc_out sc_lv 168 signal 3 } 
	{ rcache_re_bank1_3_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ rcache_re_bank1_3_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ rcache_re_bank1_3_full_n sc_in sc_logic 1 signal 3 } 
	{ rcache_re_bank1_3_write sc_out sc_logic 1 signal 3 } 
	{ rcache_re_bank1_4_din sc_out sc_lv 168 signal 4 } 
	{ rcache_re_bank1_4_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ rcache_re_bank1_4_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ rcache_re_bank1_4_full_n sc_in sc_logic 1 signal 4 } 
	{ rcache_re_bank1_4_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_bank1_res_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "dout" }} , 
 	{ "name": "rcache_bank1_res_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "num_data_valid" }} , 
 	{ "name": "rcache_bank1_res_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "fifo_cap" }} , 
 	{ "name": "rcache_bank1_res_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "empty_n" }} , 
 	{ "name": "rcache_bank1_res_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "read" }} , 
 	{ "name": "rcache_re_bank1_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank1_1", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_1", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_1", "role": "write" }} , 
 	{ "name": "rcache_re_bank1_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_2", "role": "write" }} , 
 	{ "name": "rcache_re_bank1_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank1_3", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_3", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_3", "role": "write" }} , 
 	{ "name": "rcache_re_bank1_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_re_bank1_4", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rcache_re_bank1_4", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_4", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1_4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "distributer_rresponse",
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
			{"Name" : "rcache_bank1_res", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Port" : "rcache_bank1_res", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcache_re_bank1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Port" : "rcache_re_bank1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcache_re_bank1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Port" : "rcache_re_bank1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcache_re_bank1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Port" : "rcache_re_bank1_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcache_re_bank1_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Port" : "rcache_re_bank1_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "distributer_rresponse_Pipeline_VITIS_LOOP_92_1",
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
			{"Name" : "rcache_bank1_res", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_bank1_res_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_result_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_no_use_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_distributer_rresponse_Pipeline_VITIS_LOOP_92_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	distributer_rresponse {
		rcache_bank1_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_4 {Type O LastRead -1 FirstWrite 1}}
	distributer_rresponse_Pipeline_VITIS_LOOP_92_1 {
		rcache_bank1_res {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1_1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank1_4 {Type O LastRead -1 FirstWrite 1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_result_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_no_use_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_bank1_res { ap_fifo {  { rcache_bank1_res_dout fifo_port_we 0 168 }  { rcache_bank1_res_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_bank1_res_fifo_cap fifo_update 0 4 }  { rcache_bank1_res_empty_n fifo_status 0 1 }  { rcache_bank1_res_read fifo_data 1 1 } } }
	rcache_re_bank1_1 { ap_fifo {  { rcache_re_bank1_1_din fifo_port_we 1 168 }  { rcache_re_bank1_1_num_data_valid fifo_status_num_data_valid 0 2 }  { rcache_re_bank1_1_fifo_cap fifo_update 0 2 }  { rcache_re_bank1_1_full_n fifo_status 0 1 }  { rcache_re_bank1_1_write fifo_data 1 1 } } }
	rcache_re_bank1_2 { ap_fifo {  { rcache_re_bank1_2_din fifo_port_we 1 168 }  { rcache_re_bank1_2_num_data_valid fifo_status_num_data_valid 0 2 }  { rcache_re_bank1_2_fifo_cap fifo_update 0 2 }  { rcache_re_bank1_2_full_n fifo_status 0 1 }  { rcache_re_bank1_2_write fifo_data 1 1 } } }
	rcache_re_bank1_3 { ap_fifo {  { rcache_re_bank1_3_din fifo_port_we 1 168 }  { rcache_re_bank1_3_num_data_valid fifo_status_num_data_valid 0 2 }  { rcache_re_bank1_3_fifo_cap fifo_update 0 2 }  { rcache_re_bank1_3_full_n fifo_status 0 1 }  { rcache_re_bank1_3_write fifo_data 1 1 } } }
	rcache_re_bank1_4 { ap_fifo {  { rcache_re_bank1_4_din fifo_port_we 1 168 }  { rcache_re_bank1_4_num_data_valid fifo_status_num_data_valid 0 2 }  { rcache_re_bank1_4_fifo_cap fifo_update 0 2 }  { rcache_re_bank1_4_full_n fifo_status 0 1 }  { rcache_re_bank1_4_write fifo_data 1 1 } } }
}
