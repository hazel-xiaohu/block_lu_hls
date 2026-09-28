set moduleName request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1
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
set C_modelName {request_to_vcbanks.29_Pipeline_VITIS_LOOP_253_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vrequest3 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe3 int 209 regular {fifo 1 volatile }  }
	{ base_addr_val_load int 5 regular  }
	{ base_addr_cid_load int 5 regular  }
	{ vccache_re_bank2_pe3 int 209 regular {fifo 1 volatile }  }
	{ temp_vcreq_data_V_out int 128 regular {pointer 1}  }
	{ temp_vcreq_brlen_out int 32 regular {pointer 1}  }
	{ temp_vcreq_brid_out int 32 regular {pointer 1}  }
	{ temp_vcreq_write_idx_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_dest_V_out int 5 regular {pointer 1}  }
	{ temp_vcreq_peID_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_type_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_target_V_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vrequest3", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "base_addr_val_load", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid_load", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_data_V_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_brlen_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_brid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_write_idx_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_dest_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_type_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_target_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest3_dout sc_in sc_lv 209 signal 0 } 
	{ vrequest3_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vrequest3_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vrequest3_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest3_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe3_din sc_out sc_lv 209 signal 1 } 
	{ vccache_re_bank1_pe3_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe3_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe3_full_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe3_write sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank2_pe3_din sc_out sc_lv 209 signal 4 } 
	{ vccache_re_bank2_pe3_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe3_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe3_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe3_write sc_out sc_logic 1 signal 4 } 
	{ base_addr_val_load sc_in sc_lv 5 signal 2 } 
	{ base_addr_cid_load sc_in sc_lv 5 signal 3 } 
	{ temp_vcreq_data_V_out sc_out sc_lv 128 signal 5 } 
	{ temp_vcreq_data_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_vcreq_brlen_out sc_out sc_lv 32 signal 6 } 
	{ temp_vcreq_brlen_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_vcreq_brid_out sc_out sc_lv 32 signal 7 } 
	{ temp_vcreq_brid_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_vcreq_write_idx_V_out sc_out sc_lv 3 signal 8 } 
	{ temp_vcreq_write_idx_V_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_vcreq_dest_V_out sc_out sc_lv 5 signal 9 } 
	{ temp_vcreq_dest_V_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_vcreq_peID_V_out sc_out sc_lv 3 signal 10 } 
	{ temp_vcreq_peID_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_vcreq_type_V_out sc_out sc_lv 3 signal 11 } 
	{ temp_vcreq_type_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_vcreq_target_V_out sc_out sc_lv 2 signal 12 } 
	{ temp_vcreq_target_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest3", "role": "dout" }} , 
 	{ "name": "vrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest3", "role": "num_data_valid" }} , 
 	{ "name": "vrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest3", "role": "fifo_cap" }} , 
 	{ "name": "vrequest3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "empty_n" }} , 
 	{ "name": "vrequest3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "write" }} , 
 	{ "name": "base_addr_val_load", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_val_load", "role": "default" }} , 
 	{ "name": "base_addr_cid_load", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_cid_load", "role": "default" }} , 
 	{ "name": "temp_vcreq_data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_vcreq_data_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_data_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_brlen_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_brlen_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_brlen_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_brlen_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_brid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_brid_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_brid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_brid_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_write_idx_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_write_idx_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_write_idx_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_write_idx_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_vcreq_dest_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_peID_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_type_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_type_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_type_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_type_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_target_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_vcreq_target_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_target_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_target_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1",
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
			{"Name" : "vrequest3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_addr_cid_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "vccache_re_bank2_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_vcreq_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_253_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1 {
		vrequest3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_load {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_load {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe3 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_target_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vrequest3 { ap_fifo {  { vrequest3_dout fifo_port_we 0 209 }  { vrequest3_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest3_fifo_cap fifo_update 0 7 }  { vrequest3_empty_n fifo_status 0 1 }  { vrequest3_read fifo_data 1 1 } } }
	vccache_re_bank1_pe3 { ap_fifo {  { vccache_re_bank1_pe3_din fifo_port_we 1 209 }  { vccache_re_bank1_pe3_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe3_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe3_full_n fifo_status 0 1 }  { vccache_re_bank1_pe3_write fifo_data 1 1 } } }
	base_addr_val_load { ap_none {  { base_addr_val_load in_data 0 5 } } }
	base_addr_cid_load { ap_none {  { base_addr_cid_load in_data 0 5 } } }
	vccache_re_bank2_pe3 { ap_fifo {  { vccache_re_bank2_pe3_din fifo_port_we 1 209 }  { vccache_re_bank2_pe3_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank2_pe3_fifo_cap fifo_update 0 4 }  { vccache_re_bank2_pe3_full_n fifo_status 0 1 }  { vccache_re_bank2_pe3_write fifo_data 1 1 } } }
	temp_vcreq_data_V_out { ap_vld {  { temp_vcreq_data_V_out out_data 1 128 }  { temp_vcreq_data_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_brlen_out { ap_vld {  { temp_vcreq_brlen_out out_data 1 32 }  { temp_vcreq_brlen_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_brid_out { ap_vld {  { temp_vcreq_brid_out out_data 1 32 }  { temp_vcreq_brid_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_write_idx_V_out { ap_vld {  { temp_vcreq_write_idx_V_out out_data 1 3 }  { temp_vcreq_write_idx_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_dest_V_out { ap_vld {  { temp_vcreq_dest_V_out out_data 1 5 }  { temp_vcreq_dest_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_peID_V_out { ap_vld {  { temp_vcreq_peID_V_out out_data 1 3 }  { temp_vcreq_peID_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_type_V_out { ap_vld {  { temp_vcreq_type_V_out out_data 1 3 }  { temp_vcreq_type_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_target_V_out { ap_vld {  { temp_vcreq_target_V_out out_data 1 2 }  { temp_vcreq_target_V_out_ap_vld out_vld 1 1 } } }
}
set moduleName request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1
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
set C_modelName {request_to_vcbanks.29_Pipeline_VITIS_LOOP_253_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vrequest3 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe3 int 209 regular {fifo 1 volatile }  }
	{ base_addr_val_load int 5 regular  }
	{ base_addr_cid_load int 5 regular  }
	{ vccache_re_bank2_pe3 int 209 regular {fifo 1 volatile }  }
	{ temp_vcreq_data_V_out int 128 regular {pointer 1}  }
	{ temp_vcreq_brlen_out int 32 regular {pointer 1}  }
	{ temp_vcreq_brid_out int 32 regular {pointer 1}  }
	{ temp_vcreq_write_idx_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_dest_V_out int 5 regular {pointer 1}  }
	{ temp_vcreq_peID_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_type_V_out int 3 regular {pointer 1}  }
	{ temp_vcreq_target_V_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vrequest3", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "base_addr_val_load", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid_load", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_data_V_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_brlen_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_brid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_write_idx_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_dest_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_type_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_vcreq_target_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vrequest3_dout sc_in sc_lv 209 signal 0 } 
	{ vrequest3_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vrequest3_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vrequest3_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest3_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe3_din sc_out sc_lv 209 signal 1 } 
	{ vccache_re_bank1_pe3_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe3_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe3_full_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe3_write sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank2_pe3_din sc_out sc_lv 209 signal 4 } 
	{ vccache_re_bank2_pe3_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe3_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe3_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe3_write sc_out sc_logic 1 signal 4 } 
	{ base_addr_val_load sc_in sc_lv 5 signal 2 } 
	{ base_addr_cid_load sc_in sc_lv 5 signal 3 } 
	{ temp_vcreq_data_V_out sc_out sc_lv 128 signal 5 } 
	{ temp_vcreq_data_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_vcreq_brlen_out sc_out sc_lv 32 signal 6 } 
	{ temp_vcreq_brlen_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_vcreq_brid_out sc_out sc_lv 32 signal 7 } 
	{ temp_vcreq_brid_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_vcreq_write_idx_V_out sc_out sc_lv 3 signal 8 } 
	{ temp_vcreq_write_idx_V_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_vcreq_dest_V_out sc_out sc_lv 5 signal 9 } 
	{ temp_vcreq_dest_V_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_vcreq_peID_V_out sc_out sc_lv 3 signal 10 } 
	{ temp_vcreq_peID_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_vcreq_type_V_out sc_out sc_lv 3 signal 11 } 
	{ temp_vcreq_type_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_vcreq_target_V_out sc_out sc_lv 2 signal 12 } 
	{ temp_vcreq_target_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest3", "role": "dout" }} , 
 	{ "name": "vrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest3", "role": "num_data_valid" }} , 
 	{ "name": "vrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest3", "role": "fifo_cap" }} , 
 	{ "name": "vrequest3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "empty_n" }} , 
 	{ "name": "vrequest3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe3", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe3", "role": "write" }} , 
 	{ "name": "base_addr_val_load", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_val_load", "role": "default" }} , 
 	{ "name": "base_addr_cid_load", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "base_addr_cid_load", "role": "default" }} , 
 	{ "name": "temp_vcreq_data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_vcreq_data_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_data_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_brlen_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_brlen_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_brlen_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_brlen_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_brid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_vcreq_brid_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_brid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_brid_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_write_idx_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_write_idx_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_write_idx_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_write_idx_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_vcreq_dest_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_peID_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_type_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_vcreq_type_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_type_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_type_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_vcreq_target_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_vcreq_target_V_out", "role": "default" }} , 
 	{ "name": "temp_vcreq_target_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_vcreq_target_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1",
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
			{"Name" : "vrequest3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_addr_cid_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "vccache_re_bank2_pe3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_vcreq_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_vcreq_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_253_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1 {
		vrequest3 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe3 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_load {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_load {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe3 {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_vcreq_target_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vrequest3 { ap_fifo {  { vrequest3_dout fifo_port_we 0 209 }  { vrequest3_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest3_fifo_cap fifo_update 0 7 }  { vrequest3_empty_n fifo_status 0 1 }  { vrequest3_read fifo_data 1 1 } } }
	vccache_re_bank1_pe3 { ap_fifo {  { vccache_re_bank1_pe3_din fifo_port_we 1 209 }  { vccache_re_bank1_pe3_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe3_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe3_full_n fifo_status 0 1 }  { vccache_re_bank1_pe3_write fifo_data 1 1 } } }
	base_addr_val_load { ap_none {  { base_addr_val_load in_data 0 5 } } }
	base_addr_cid_load { ap_none {  { base_addr_cid_load in_data 0 5 } } }
	vccache_re_bank2_pe3 { ap_fifo {  { vccache_re_bank2_pe3_din fifo_port_we 1 209 }  { vccache_re_bank2_pe3_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank2_pe3_fifo_cap fifo_update 0 4 }  { vccache_re_bank2_pe3_full_n fifo_status 0 1 }  { vccache_re_bank2_pe3_write fifo_data 1 1 } } }
	temp_vcreq_data_V_out { ap_vld {  { temp_vcreq_data_V_out out_data 1 128 }  { temp_vcreq_data_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_brlen_out { ap_vld {  { temp_vcreq_brlen_out out_data 1 32 }  { temp_vcreq_brlen_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_brid_out { ap_vld {  { temp_vcreq_brid_out out_data 1 32 }  { temp_vcreq_brid_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_write_idx_V_out { ap_vld {  { temp_vcreq_write_idx_V_out out_data 1 3 }  { temp_vcreq_write_idx_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_dest_V_out { ap_vld {  { temp_vcreq_dest_V_out out_data 1 5 }  { temp_vcreq_dest_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_peID_V_out { ap_vld {  { temp_vcreq_peID_V_out out_data 1 3 }  { temp_vcreq_peID_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_type_V_out { ap_vld {  { temp_vcreq_type_V_out out_data 1 3 }  { temp_vcreq_type_V_out_ap_vld out_vld 1 1 } } }
	temp_vcreq_target_V_out { ap_vld {  { temp_vcreq_target_V_out out_data 1 2 }  { temp_vcreq_target_V_out_ap_vld out_vld 1 1 } } }
}
