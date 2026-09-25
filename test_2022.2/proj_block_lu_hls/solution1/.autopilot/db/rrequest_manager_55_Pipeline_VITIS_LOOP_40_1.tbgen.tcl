set moduleName rrequest_manager_55_Pipeline_VITIS_LOOP_40_1
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
set C_modelName {rrequest_manager.55_Pipeline_VITIS_LOOP_40_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ rrequest int 230 regular {fifo 0 volatile }  }
	{ r_first int 230 regular {fifo 1 volatile }  }
	{ curr_request_dest_V_out int 3 regular {pointer 1}  }
	{ curr_request_Acid_out int 32 regular {pointer 1}  }
	{ curr_request_Acid1_out int 32 regular {pointer 1}  }
	{ curr_request_data_V_out int 160 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rrequest", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "r_first", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_dest_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_Acid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_Acid1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_data_V_out", "interface" : "wire", "bitwidth" : 160, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rrequest_dout sc_in sc_lv 230 signal 0 } 
	{ rrequest_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rrequest_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rrequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ rrequest_read sc_out sc_logic 1 signal 0 } 
	{ r_first_din sc_out sc_lv 230 signal 1 } 
	{ r_first_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ r_first_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ r_first_full_n sc_in sc_logic 1 signal 1 } 
	{ r_first_write sc_out sc_logic 1 signal 1 } 
	{ curr_request_dest_V_out sc_out sc_lv 3 signal 2 } 
	{ curr_request_dest_V_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ curr_request_Acid_out sc_out sc_lv 32 signal 3 } 
	{ curr_request_Acid_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ curr_request_Acid1_out sc_out sc_lv 32 signal 4 } 
	{ curr_request_Acid1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ curr_request_data_V_out sc_out sc_lv 160 signal 5 } 
	{ curr_request_data_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rrequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rrequest", "role": "dout" }} , 
 	{ "name": "rrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rrequest", "role": "num_data_valid" }} , 
 	{ "name": "rrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rrequest", "role": "fifo_cap" }} , 
 	{ "name": "rrequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest", "role": "empty_n" }} , 
 	{ "name": "rrequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest", "role": "read" }} , 
 	{ "name": "r_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "r_first", "role": "din" }} , 
 	{ "name": "r_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_first", "role": "num_data_valid" }} , 
 	{ "name": "r_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_first", "role": "fifo_cap" }} , 
 	{ "name": "r_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_first", "role": "full_n" }} , 
 	{ "name": "r_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_first", "role": "write" }} , 
 	{ "name": "curr_request_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_dest_V_out", "role": "default" }} , 
 	{ "name": "curr_request_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_Acid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_Acid_out", "role": "default" }} , 
 	{ "name": "curr_request_Acid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_Acid_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_Acid1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_Acid1_out", "role": "default" }} , 
 	{ "name": "curr_request_Acid1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_Acid1_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "curr_request_data_V_out", "role": "default" }} , 
 	{ "name": "curr_request_data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_data_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rrequest_manager_55_Pipeline_VITIS_LOOP_40_1",
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
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rrequest_manager_55_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid1_out {Type O LastRead -1 FirstWrite 0}
		curr_request_data_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rrequest { ap_fifo {  { rrequest_dout fifo_port_we 0 230 }  { rrequest_num_data_valid fifo_status_num_data_valid 0 7 }  { rrequest_fifo_cap fifo_update 0 7 }  { rrequest_empty_n fifo_status 0 1 }  { rrequest_read fifo_data 1 1 } } }
	r_first { ap_fifo {  { r_first_din fifo_port_we 1 230 }  { r_first_num_data_valid fifo_status_num_data_valid 0 7 }  { r_first_fifo_cap fifo_update 0 7 }  { r_first_full_n fifo_status 0 1 }  { r_first_write fifo_data 1 1 } } }
	curr_request_dest_V_out { ap_vld {  { curr_request_dest_V_out out_data 1 3 }  { curr_request_dest_V_out_ap_vld out_vld 1 1 } } }
	curr_request_Acid_out { ap_vld {  { curr_request_Acid_out out_data 1 32 }  { curr_request_Acid_out_ap_vld out_vld 1 1 } } }
	curr_request_Acid1_out { ap_vld {  { curr_request_Acid1_out out_data 1 32 }  { curr_request_Acid1_out_ap_vld out_vld 1 1 } } }
	curr_request_data_V_out { ap_vld {  { curr_request_data_V_out out_data 1 160 }  { curr_request_data_V_out_ap_vld out_vld 1 1 } } }
}
