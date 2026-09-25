set moduleName request_manager_83_Pipeline_VITIS_LOOP_48_1
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
set C_modelName {request_manager.83_Pipeline_VITIS_LOOP_48_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vrequest int 68 regular {fifo 0 volatile }  }
	{ v_first int 209 regular {fifo 1 volatile }  }
	{ curr_request_peID_V_out int 3 regular {pointer 1}  }
	{ curr_request_dest_V_out int 5 regular {pointer 1}  }
	{ curr_request_target_V_out int 2 regular {pointer 1}  }
	{ curr_request_brid_out int 32 regular {pointer 1}  }
	{ curr_request_brlen_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vrequest", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "v_first", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_dest_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_target_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brlen_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest_dout sc_in sc_lv 68 signal 0 } 
	{ vrequest_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vrequest_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vrequest_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest_read sc_out sc_logic 1 signal 0 } 
	{ v_first_din sc_out sc_lv 209 signal 1 } 
	{ v_first_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ v_first_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ v_first_full_n sc_in sc_logic 1 signal 1 } 
	{ v_first_write sc_out sc_logic 1 signal 1 } 
	{ curr_request_peID_V_out sc_out sc_lv 3 signal 2 } 
	{ curr_request_peID_V_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ curr_request_dest_V_out sc_out sc_lv 5 signal 3 } 
	{ curr_request_dest_V_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ curr_request_target_V_out sc_out sc_lv 2 signal 4 } 
	{ curr_request_target_V_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ curr_request_brid_out sc_out sc_lv 32 signal 5 } 
	{ curr_request_brid_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ curr_request_brlen_out sc_out sc_lv 32 signal 6 } 
	{ curr_request_brlen_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vrequest", "role": "dout" }} , 
 	{ "name": "vrequest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "num_data_valid" }} , 
 	{ "name": "vrequest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest", "role": "fifo_cap" }} , 
 	{ "name": "vrequest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "empty_n" }} , 
 	{ "name": "vrequest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest", "role": "read" }} , 
 	{ "name": "v_first_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_first", "role": "din" }} , 
 	{ "name": "v_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "num_data_valid" }} , 
 	{ "name": "v_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_first", "role": "fifo_cap" }} , 
 	{ "name": "v_first_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "full_n" }} , 
 	{ "name": "v_first_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_first", "role": "write" }} , 
 	{ "name": "curr_request_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_peID_V_out", "role": "default" }} , 
 	{ "name": "curr_request_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "curr_request_dest_V_out", "role": "default" }} , 
 	{ "name": "curr_request_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_target_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_request_target_V_out", "role": "default" }} , 
 	{ "name": "curr_request_target_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_target_V_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brid_out", "role": "default" }} , 
 	{ "name": "curr_request_brid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brid_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brlen_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brlen_out", "role": "default" }} , 
 	{ "name": "curr_request_brlen_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brlen_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_manager_83_Pipeline_VITIS_LOOP_48_1",
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
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	request_manager_83_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vrequest { ap_fifo {  { vrequest_dout fifo_port_we 0 68 }  { vrequest_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest_fifo_cap fifo_update 0 7 }  { vrequest_empty_n fifo_status 0 1 }  { vrequest_read fifo_data 1 1 } } }
	v_first { ap_fifo {  { v_first_din fifo_port_we 1 209 }  { v_first_num_data_valid fifo_status_num_data_valid 0 7 }  { v_first_fifo_cap fifo_update 0 7 }  { v_first_full_n fifo_status 0 1 }  { v_first_write fifo_data 1 1 } } }
	curr_request_peID_V_out { ap_vld {  { curr_request_peID_V_out out_data 1 3 }  { curr_request_peID_V_out_ap_vld out_vld 1 1 } } }
	curr_request_dest_V_out { ap_vld {  { curr_request_dest_V_out out_data 1 5 }  { curr_request_dest_V_out_ap_vld out_vld 1 1 } } }
	curr_request_target_V_out { ap_vld {  { curr_request_target_V_out out_data 1 2 }  { curr_request_target_V_out_ap_vld out_vld 1 1 } } }
	curr_request_brid_out { ap_vld {  { curr_request_brid_out out_data 1 32 }  { curr_request_brid_out_ap_vld out_vld 1 1 } } }
	curr_request_brlen_out { ap_vld {  { curr_request_brlen_out out_data 1 32 }  { curr_request_brlen_out_ap_vld out_vld 1 1 } } }
}
