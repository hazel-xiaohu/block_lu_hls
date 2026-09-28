set moduleName final_merger_Pipeline_VITIS_LOOP_769_2
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
set C_modelName {final_merger_Pipeline_VITIS_LOOP_769_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ enable_j_12 int 1 regular  }
	{ temp1_cid int 32 regular  }
	{ trunc_ln61 int 32 regular  }
	{ temp1_val float 32 regular  }
	{ enable_i_10 int 1 regular  }
	{ temp_cid int 32 regular  }
	{ trunc_ln int 32 regular  }
	{ temp_val float 32 regular  }
	{ final_merger_2 int 66 regular {fifo 0 volatile }  }
	{ final_merger_1 int 66 regular {fifo 0 volatile }  }
	{ final_merger_3 int 66 regular {fifo 1 volatile }  }
	{ temp1_global_end_6_out int 1 regular {pointer 1}  }
	{ temp_global_end_7_out int 1 regular {pointer 1}  }
	{ counter_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "enable_j_12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "temp1_cid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp1_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "enable_i_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "temp_cid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_2", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "final_merger_3", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp1_global_end_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_global_end_7_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "counter_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ final_merger_1_dout sc_in sc_lv 66 signal 9 } 
	{ final_merger_1_num_data_valid sc_in sc_lv 11 signal 9 } 
	{ final_merger_1_fifo_cap sc_in sc_lv 11 signal 9 } 
	{ final_merger_1_empty_n sc_in sc_logic 1 signal 9 } 
	{ final_merger_1_read sc_out sc_logic 1 signal 9 } 
	{ final_merger_2_dout sc_in sc_lv 66 signal 8 } 
	{ final_merger_2_num_data_valid sc_in sc_lv 11 signal 8 } 
	{ final_merger_2_fifo_cap sc_in sc_lv 11 signal 8 } 
	{ final_merger_2_empty_n sc_in sc_logic 1 signal 8 } 
	{ final_merger_2_read sc_out sc_logic 1 signal 8 } 
	{ final_merger_3_din sc_out sc_lv 66 signal 10 } 
	{ final_merger_3_num_data_valid sc_in sc_lv 11 signal 10 } 
	{ final_merger_3_fifo_cap sc_in sc_lv 11 signal 10 } 
	{ final_merger_3_full_n sc_in sc_logic 1 signal 10 } 
	{ final_merger_3_write sc_out sc_logic 1 signal 10 } 
	{ enable_j_12 sc_in sc_lv 1 signal 0 } 
	{ temp1_cid sc_in sc_lv 32 signal 1 } 
	{ trunc_ln61 sc_in sc_lv 32 signal 2 } 
	{ temp1_val sc_in sc_lv 32 signal 3 } 
	{ enable_i_10 sc_in sc_lv 1 signal 4 } 
	{ temp_cid sc_in sc_lv 32 signal 5 } 
	{ trunc_ln sc_in sc_lv 32 signal 6 } 
	{ temp_val sc_in sc_lv 32 signal 7 } 
	{ temp1_global_end_6_out sc_out sc_lv 1 signal 11 } 
	{ temp1_global_end_6_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_global_end_7_out sc_out sc_lv 1 signal 12 } 
	{ temp_global_end_7_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ counter_out sc_out sc_lv 32 signal 13 } 
	{ counter_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "final_merger_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_1", "role": "dout" }} , 
 	{ "name": "final_merger_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_1", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "empty_n" }} , 
 	{ "name": "final_merger_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_1", "role": "read" }} , 
 	{ "name": "final_merger_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_2", "role": "dout" }} , 
 	{ "name": "final_merger_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_2", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "empty_n" }} , 
 	{ "name": "final_merger_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_2", "role": "read" }} , 
 	{ "name": "final_merger_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_3", "role": "din" }} , 
 	{ "name": "final_merger_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "full_n" }} , 
 	{ "name": "final_merger_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "write" }} , 
 	{ "name": "enable_j_12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_j_12", "role": "default" }} , 
 	{ "name": "temp1_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_cid", "role": "default" }} , 
 	{ "name": "trunc_ln61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln61", "role": "default" }} , 
 	{ "name": "temp1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp1_val", "role": "default" }} , 
 	{ "name": "enable_i_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_i_10", "role": "default" }} , 
 	{ "name": "temp_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_cid", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "temp_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_val", "role": "default" }} , 
 	{ "name": "temp1_global_end_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "temp1_global_end_6_out", "role": "default" }} , 
 	{ "name": "temp1_global_end_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp1_global_end_6_out", "role": "ap_vld" }} , 
 	{ "name": "temp_global_end_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_global_end_7_out", "role": "default" }} , 
 	{ "name": "temp_global_end_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_global_end_7_out", "role": "ap_vld" }} , 
 	{ "name": "counter_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "counter_out", "role": "default" }} , 
 	{ "name": "counter_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "counter_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "final_merger_Pipeline_VITIS_LOOP_769_2",
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
			{"Name" : "enable_j_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp1_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "final_merger_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "final_merger_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_merger_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "final_merger_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_merger_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "final_merger_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp1_global_end_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_global_end_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "counter_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_769_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_8_full_dsp_1_U2041", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	final_merger_Pipeline_VITIS_LOOP_769_2 {
		enable_j_12 {Type I LastRead 0 FirstWrite -1}
		temp1_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln61 {Type I LastRead 0 FirstWrite -1}
		temp1_val {Type I LastRead 0 FirstWrite -1}
		enable_i_10 {Type I LastRead 0 FirstWrite -1}
		temp_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		temp_val {Type I LastRead 0 FirstWrite -1}
		final_merger_2 {Type I LastRead 1 FirstWrite -1}
		final_merger_1 {Type I LastRead 1 FirstWrite -1}
		final_merger_3 {Type O LastRead -1 FirstWrite 10}
		temp1_global_end_6_out {Type O LastRead -1 FirstWrite 9}
		temp_global_end_7_out {Type O LastRead -1 FirstWrite 9}
		counter_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	enable_j_12 { ap_none {  { enable_j_12 in_data 0 1 } } }
	temp1_cid { ap_none {  { temp1_cid in_data 0 32 } } }
	trunc_ln61 { ap_none {  { trunc_ln61 in_data 0 32 } } }
	temp1_val { ap_none {  { temp1_val in_data 0 32 } } }
	enable_i_10 { ap_none {  { enable_i_10 in_data 0 1 } } }
	temp_cid { ap_none {  { temp_cid in_data 0 32 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 32 } } }
	temp_val { ap_none {  { temp_val in_data 0 32 } } }
	final_merger_2 { ap_fifo {  { final_merger_2_dout fifo_port_we 0 66 }  { final_merger_2_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_2_fifo_cap fifo_update 0 11 }  { final_merger_2_empty_n fifo_status 0 1 }  { final_merger_2_read fifo_data 1 1 } } }
	final_merger_1 { ap_fifo {  { final_merger_1_dout fifo_port_we 0 66 }  { final_merger_1_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_1_fifo_cap fifo_update 0 11 }  { final_merger_1_empty_n fifo_status 0 1 }  { final_merger_1_read fifo_data 1 1 } } }
	final_merger_3 { ap_fifo {  { final_merger_3_din fifo_port_we 1 66 }  { final_merger_3_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_3_fifo_cap fifo_update 0 11 }  { final_merger_3_full_n fifo_status 0 1 }  { final_merger_3_write fifo_data 1 1 } } }
	temp1_global_end_6_out { ap_vld {  { temp1_global_end_6_out out_data 1 1 }  { temp1_global_end_6_out_ap_vld out_vld 1 1 } } }
	temp_global_end_7_out { ap_vld {  { temp_global_end_7_out out_data 1 1 }  { temp_global_end_7_out_ap_vld out_vld 1 1 } } }
	counter_out { ap_vld {  { counter_out out_data 1 32 }  { counter_out_ap_vld out_vld 1 1 } } }
}
