set moduleName merge_2_to_1_vcresult_42_Pipeline_VITIS_LOOP_529_1
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
set C_modelName {merge_2_to_1_vcresult.42_Pipeline_VITIS_LOOP_529_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcache_bank3_result int 1031 regular {fifo 0 volatile }  }
	{ vcache_bank4_result int 1031 regular {fifo 0 volatile }  }
	{ vcache_bank1_cresult1 int 1031 regular {fifo 1 volatile }  }
	{ temp_data_V_out int 1024 regular {pointer 1}  }
	{ temp_peID_V_out int 3 regular {pointer 1}  }
	{ temp_type_V_out int 3 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcache_bank3_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank4_result", "interface" : "fifo", "bitwidth" : 1031, "direction" : "READONLY"} , 
 	{ "Name" : "vcache_bank1_cresult1", "interface" : "fifo", "bitwidth" : 1031, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_data_V_out", "interface" : "wire", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_type_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcache_bank4_result_dout sc_in sc_lv 1031 signal 1 } 
	{ vcache_bank4_result_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vcache_bank4_result_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vcache_bank4_result_empty_n sc_in sc_logic 1 signal 1 } 
	{ vcache_bank4_result_read sc_out sc_logic 1 signal 1 } 
	{ vcache_bank3_result_dout sc_in sc_lv 1031 signal 0 } 
	{ vcache_bank3_result_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vcache_bank3_result_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vcache_bank3_result_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_bank3_result_read sc_out sc_logic 1 signal 0 } 
	{ vcache_bank1_cresult1_din sc_out sc_lv 1031 signal 2 } 
	{ vcache_bank1_cresult1_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ vcache_bank1_cresult1_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vcache_bank1_cresult1_full_n sc_in sc_logic 1 signal 2 } 
	{ vcache_bank1_cresult1_write sc_out sc_logic 1 signal 2 } 
	{ temp_data_V_out sc_out sc_lv 1024 signal 3 } 
	{ temp_data_V_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ temp_peID_V_out sc_out sc_lv 3 signal 4 } 
	{ temp_peID_V_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ temp_type_V_out sc_out sc_lv 3 signal 5 } 
	{ temp_type_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_bank4_result_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "dout" }} , 
 	{ "name": "vcache_bank4_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank4_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank4_result_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "empty_n" }} , 
 	{ "name": "vcache_bank4_result_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank4_result", "role": "read" }} , 
 	{ "name": "vcache_bank3_result_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank3_result", "role": "dout" }} , 
 	{ "name": "vcache_bank3_result_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank3_result", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank3_result_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank3_result", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank3_result_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_result", "role": "empty_n" }} , 
 	{ "name": "vcache_bank3_result_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank3_result", "role": "read" }} , 
 	{ "name": "vcache_bank1_cresult1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1031, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "din" }} , 
 	{ "name": "vcache_bank1_cresult1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "num_data_valid" }} , 
 	{ "name": "vcache_bank1_cresult1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "fifo_cap" }} , 
 	{ "name": "vcache_bank1_cresult1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "full_n" }} , 
 	{ "name": "vcache_bank1_cresult1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_bank1_cresult1", "role": "write" }} , 
 	{ "name": "temp_data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "temp_data_V_out", "role": "default" }} , 
 	{ "name": "temp_data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_data_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_peID_V_out", "role": "default" }} , 
 	{ "name": "temp_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_type_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_type_V_out", "role": "default" }} , 
 	{ "name": "temp_type_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_type_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_2_to_1_vcresult_42_Pipeline_VITIS_LOOP_529_1",
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
			{"Name" : "vcache_bank3_result", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vcache_bank3_result_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank4_result", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vcache_bank4_result_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcache_bank1_cresult1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vcache_bank1_cresult1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_529_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge_2_to_1_vcresult_42_Pipeline_VITIS_LOOP_529_1 {
		vcache_bank3_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank4_result {Type I LastRead 0 FirstWrite -1}
		vcache_bank1_cresult1 {Type O LastRead -1 FirstWrite 1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 0}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 0}
		temp_type_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_bank3_result { ap_fifo {  { vcache_bank3_result_dout fifo_port_we 0 1031 }  { vcache_bank3_result_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank3_result_fifo_cap fifo_update 0 4 }  { vcache_bank3_result_empty_n fifo_status 0 1 }  { vcache_bank3_result_read fifo_data 1 1 } } }
	vcache_bank4_result { ap_fifo {  { vcache_bank4_result_dout fifo_port_we 0 1031 }  { vcache_bank4_result_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank4_result_fifo_cap fifo_update 0 4 }  { vcache_bank4_result_empty_n fifo_status 0 1 }  { vcache_bank4_result_read fifo_data 1 1 } } }
	vcache_bank1_cresult1 { ap_fifo {  { vcache_bank1_cresult1_din fifo_port_we 1 1031 }  { vcache_bank1_cresult1_num_data_valid fifo_status_num_data_valid 0 4 }  { vcache_bank1_cresult1_fifo_cap fifo_update 0 4 }  { vcache_bank1_cresult1_full_n fifo_status 0 1 }  { vcache_bank1_cresult1_write fifo_data 1 1 } } }
	temp_data_V_out { ap_vld {  { temp_data_V_out out_data 1 1024 }  { temp_data_V_out_ap_vld out_vld 1 1 } } }
	temp_peID_V_out { ap_vld {  { temp_peID_V_out out_data 1 3 }  { temp_peID_V_out_ap_vld out_vld 1 1 } } }
	temp_type_V_out { ap_vld {  { temp_type_V_out out_data 1 3 }  { temp_type_V_out_ap_vld out_vld 1 1 } } }
}
