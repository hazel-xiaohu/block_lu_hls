set moduleName distributer_vcresponse_Pipeline_VITIS_LOOP_301_1
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
set C_modelName {distributer_vcresponse_Pipeline_VITIS_LOOP_301_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vcache_res_vfinal int 6 regular {fifo 0 volatile }  }
	{ vresponse1 int 6 regular {fifo 1 volatile }  }
	{ vresponse2 int 6 regular {fifo 1 volatile }  }
	{ vresponse3 int 6 regular {fifo 1 volatile }  }
	{ vresponse4 int 6 regular {fifo 1 volatile }  }
	{ temp_peID_V_out int 3 regular {pointer 1}  }
	{ temp_result_V_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vcache_res_vfinal", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vresponse1", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_result_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vcache_res_vfinal_dout sc_in sc_lv 6 signal 0 } 
	{ vcache_res_vfinal_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ vcache_res_vfinal_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ vcache_res_vfinal_empty_n sc_in sc_logic 1 signal 0 } 
	{ vcache_res_vfinal_read sc_out sc_logic 1 signal 0 } 
	{ vresponse4_din sc_out sc_lv 6 signal 4 } 
	{ vresponse4_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ vresponse4_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ vresponse4_full_n sc_in sc_logic 1 signal 4 } 
	{ vresponse4_write sc_out sc_logic 1 signal 4 } 
	{ vresponse3_din sc_out sc_lv 6 signal 3 } 
	{ vresponse3_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ vresponse3_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ vresponse3_full_n sc_in sc_logic 1 signal 3 } 
	{ vresponse3_write sc_out sc_logic 1 signal 3 } 
	{ vresponse2_din sc_out sc_lv 6 signal 2 } 
	{ vresponse2_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ vresponse2_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ vresponse2_full_n sc_in sc_logic 1 signal 2 } 
	{ vresponse2_write sc_out sc_logic 1 signal 2 } 
	{ vresponse1_din sc_out sc_lv 6 signal 1 } 
	{ vresponse1_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ vresponse1_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ vresponse1_full_n sc_in sc_logic 1 signal 1 } 
	{ vresponse1_write sc_out sc_logic 1 signal 1 } 
	{ temp_peID_V_out sc_out sc_lv 3 signal 5 } 
	{ temp_peID_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_result_V_out sc_out sc_lv 2 signal 6 } 
	{ temp_result_V_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vcache_res_vfinal_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "dout" }} , 
 	{ "name": "vcache_res_vfinal_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "num_data_valid" }} , 
 	{ "name": "vcache_res_vfinal_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "fifo_cap" }} , 
 	{ "name": "vcache_res_vfinal_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "empty_n" }} , 
 	{ "name": "vcache_res_vfinal_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vcache_res_vfinal", "role": "read" }} , 
 	{ "name": "vresponse4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse4", "role": "din" }} , 
 	{ "name": "vresponse4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse4", "role": "num_data_valid" }} , 
 	{ "name": "vresponse4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse4", "role": "fifo_cap" }} , 
 	{ "name": "vresponse4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "full_n" }} , 
 	{ "name": "vresponse4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "write" }} , 
 	{ "name": "vresponse3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse3", "role": "din" }} , 
 	{ "name": "vresponse3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse3", "role": "num_data_valid" }} , 
 	{ "name": "vresponse3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse3", "role": "fifo_cap" }} , 
 	{ "name": "vresponse3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "full_n" }} , 
 	{ "name": "vresponse3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "write" }} , 
 	{ "name": "vresponse2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse2", "role": "din" }} , 
 	{ "name": "vresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse2", "role": "num_data_valid" }} , 
 	{ "name": "vresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse2", "role": "fifo_cap" }} , 
 	{ "name": "vresponse2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse2", "role": "full_n" }} , 
 	{ "name": "vresponse2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse2", "role": "write" }} , 
 	{ "name": "vresponse1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse1", "role": "din" }} , 
 	{ "name": "vresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse1", "role": "num_data_valid" }} , 
 	{ "name": "vresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse1", "role": "fifo_cap" }} , 
 	{ "name": "vresponse1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse1", "role": "full_n" }} , 
 	{ "name": "vresponse1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse1", "role": "write" }} , 
 	{ "name": "temp_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_peID_V_out", "role": "default" }} , 
 	{ "name": "temp_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_result_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_result_V_out", "role": "default" }} , 
 	{ "name": "temp_result_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_result_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "distributer_vcresponse_Pipeline_VITIS_LOOP_301_1",
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
			{"Name" : "vcache_res_vfinal", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vcache_res_vfinal_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vresponse1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vresponse3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vresponse4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_result_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_301_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	distributer_vcresponse_Pipeline_VITIS_LOOP_301_1 {
		vcache_res_vfinal {Type I LastRead 0 FirstWrite -1}
		vresponse1 {Type O LastRead -1 FirstWrite 1}
		vresponse2 {Type O LastRead -1 FirstWrite 1}
		vresponse3 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_result_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vcache_res_vfinal { ap_fifo {  { vcache_res_vfinal_dout fifo_port_we 0 6 }  { vcache_res_vfinal_num_data_valid fifo_status_num_data_valid 0 2 }  { vcache_res_vfinal_fifo_cap fifo_update 0 2 }  { vcache_res_vfinal_empty_n fifo_status 0 1 }  { vcache_res_vfinal_read fifo_data 1 1 } } }
	vresponse1 { ap_fifo {  { vresponse1_din fifo_port_we 1 6 }  { vresponse1_num_data_valid fifo_status_num_data_valid 0 7 }  { vresponse1_fifo_cap fifo_update 0 7 }  { vresponse1_full_n fifo_status 0 1 }  { vresponse1_write fifo_data 1 1 } } }
	vresponse2 { ap_fifo {  { vresponse2_din fifo_port_we 1 6 }  { vresponse2_num_data_valid fifo_status_num_data_valid 0 7 }  { vresponse2_fifo_cap fifo_update 0 7 }  { vresponse2_full_n fifo_status 0 1 }  { vresponse2_write fifo_data 1 1 } } }
	vresponse3 { ap_fifo {  { vresponse3_din fifo_port_we 1 6 }  { vresponse3_num_data_valid fifo_status_num_data_valid 0 7 }  { vresponse3_fifo_cap fifo_update 0 7 }  { vresponse3_full_n fifo_status 0 1 }  { vresponse3_write fifo_data 1 1 } } }
	vresponse4 { ap_fifo {  { vresponse4_din fifo_port_we 1 6 }  { vresponse4_num_data_valid fifo_status_num_data_valid 0 7 }  { vresponse4_fifo_cap fifo_update 0 7 }  { vresponse4_full_n fifo_status 0 1 }  { vresponse4_write fifo_data 1 1 } } }
	temp_peID_V_out { ap_vld {  { temp_peID_V_out out_data 1 3 }  { temp_peID_V_out_ap_vld out_vld 1 1 } } }
	temp_result_V_out { ap_vld {  { temp_result_V_out out_data 1 2 }  { temp_result_V_out_ap_vld out_vld 1 1 } } }
}
