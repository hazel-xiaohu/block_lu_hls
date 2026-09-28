set moduleName request_to_vcbanks_28
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
set C_modelName {request_to_vcbanks.28}
set C_modelType { void 0 }
set C_modelArgList {
	{ vrequest2 int 209 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ base_addr_cid int 32 regular {fifo 0}  }
	{ vccache_re_bank1_pe2 int 209 regular {fifo 1 volatile }  }
	{ vccache_re_bank2_pe2 int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vrequest2", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
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
	{ vrequest2_dout sc_in sc_lv 209 signal 0 } 
	{ vrequest2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vrequest2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vrequest2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest2_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_cid_dout sc_in sc_lv 32 signal 2 } 
	{ base_addr_cid_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ base_addr_cid_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ base_addr_cid_empty_n sc_in sc_logic 1 signal 2 } 
	{ base_addr_cid_read sc_out sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe2_din sc_out sc_lv 209 signal 3 } 
	{ vccache_re_bank1_pe2_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe2_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe2_full_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe2_write sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank2_pe2_din sc_out sc_lv 209 signal 4 } 
	{ vccache_re_bank2_pe2_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe2_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe2_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe2_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest2", "role": "dout" }} , 
 	{ "name": "vrequest2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest2", "role": "num_data_valid" }} , 
 	{ "name": "vrequest2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest2", "role": "fifo_cap" }} , 
 	{ "name": "vrequest2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "empty_n" }} , 
 	{ "name": "vrequest2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "read" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "base_addr_cid_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "dout" }} , 
 	{ "name": "base_addr_cid_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_cid_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_cid_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "empty_n" }} , 
 	{ "name": "base_addr_cid_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_to_vcbanks_28",
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
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vrequest2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "base_addr_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_cid", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_cid_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vccache_re_bank1_pe2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "vccache_re_bank2_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vccache_re_bank2_pe2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1",
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
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_addr_cid_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "vccache_re_bank2_pe2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe2_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_28 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_load {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_load {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}
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
]}

set Spec2ImplPortList { 
	vrequest2 { ap_fifo {  { vrequest2_dout fifo_port_we 0 209 }  { vrequest2_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest2_fifo_cap fifo_update 0 7 }  { vrequest2_empty_n fifo_status 0 1 }  { vrequest2_read fifo_data 1 1 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_port_we 0 32 }  { base_addr_val_num_data_valid fifo_status_num_data_valid 0 4 }  { base_addr_val_fifo_cap fifo_update 0 4 }  { base_addr_val_empty_n fifo_status 0 1 }  { base_addr_val_read fifo_data 1 1 } } }
	base_addr_cid { ap_fifo {  { base_addr_cid_dout fifo_port_we 0 32 }  { base_addr_cid_num_data_valid fifo_status_num_data_valid 0 4 }  { base_addr_cid_fifo_cap fifo_update 0 4 }  { base_addr_cid_empty_n fifo_status 0 1 }  { base_addr_cid_read fifo_data 1 1 } } }
	vccache_re_bank1_pe2 { ap_fifo {  { vccache_re_bank1_pe2_din fifo_port_we 1 209 }  { vccache_re_bank1_pe2_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe2_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe2_full_n fifo_status 0 1 }  { vccache_re_bank1_pe2_write fifo_data 1 1 } } }
	vccache_re_bank2_pe2 { ap_fifo {  { vccache_re_bank2_pe2_din fifo_port_we 1 209 }  { vccache_re_bank2_pe2_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank2_pe2_fifo_cap fifo_update 0 4 }  { vccache_re_bank2_pe2_full_n fifo_status 0 1 }  { vccache_re_bank2_pe2_write fifo_data 1 1 } } }
}
set moduleName request_to_vcbanks_28
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
set C_modelName {request_to_vcbanks.28}
set C_modelType { void 0 }
set C_modelArgList {
	{ vrequest2 int 209 regular {fifo 0 volatile }  }
	{ base_addr_val int 32 regular {fifo 0}  }
	{ base_addr_cid int 32 regular {fifo 0}  }
	{ vccache_re_bank1_pe2 int 209 regular {fifo 1 volatile }  }
	{ vccache_re_bank2_pe2 int 209 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vrequest2", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_val", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_cid", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vccache_re_bank2_pe2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} ]}
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
	{ vrequest2_dout sc_in sc_lv 209 signal 0 } 
	{ vrequest2_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vrequest2_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vrequest2_empty_n sc_in sc_logic 1 signal 0 } 
	{ vrequest2_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_val_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_val_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ base_addr_val_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ base_addr_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_val_read sc_out sc_logic 1 signal 1 } 
	{ base_addr_cid_dout sc_in sc_lv 32 signal 2 } 
	{ base_addr_cid_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ base_addr_cid_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ base_addr_cid_empty_n sc_in sc_logic 1 signal 2 } 
	{ base_addr_cid_read sc_out sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe2_din sc_out sc_lv 209 signal 3 } 
	{ vccache_re_bank1_pe2_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe2_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe2_full_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe2_write sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank2_pe2_din sc_out sc_lv 209 signal 4 } 
	{ vccache_re_bank2_pe2_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe2_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ vccache_re_bank2_pe2_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank2_pe2_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vrequest2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest2", "role": "dout" }} , 
 	{ "name": "vrequest2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest2", "role": "num_data_valid" }} , 
 	{ "name": "vrequest2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vrequest2", "role": "fifo_cap" }} , 
 	{ "name": "vrequest2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "empty_n" }} , 
 	{ "name": "vrequest2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "read" }} , 
 	{ "name": "base_addr_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_val", "role": "dout" }} , 
 	{ "name": "base_addr_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_val", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "empty_n" }} , 
 	{ "name": "base_addr_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_val", "role": "read" }} , 
 	{ "name": "base_addr_cid_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "dout" }} , 
 	{ "name": "base_addr_cid_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_cid_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_cid_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "empty_n" }} , 
 	{ "name": "base_addr_cid_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_cid", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank1_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank1_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe2", "role": "write" }} , 
 	{ "name": "vccache_re_bank2_pe2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "din" }} , 
 	{ "name": "vccache_re_bank2_pe2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank2_pe2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank2_pe2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank2_pe2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank2_pe2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_to_vcbanks_28",
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
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vrequest2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "base_addr_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_cid", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_cid_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vccache_re_bank1_pe2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "vccache_re_bank2_pe2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Port" : "vccache_re_bank2_pe2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1",
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
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_val_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_addr_cid_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "vccache_re_bank2_pe2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank2_pe2_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_to_vcbanks_28 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		base_addr_val {Type I LastRead 0 FirstWrite -1}
		base_addr_cid {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}}
	request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1 {
		vrequest2 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe2 {Type O LastRead -1 FirstWrite 1}
		base_addr_val_load {Type I LastRead 0 FirstWrite -1}
		base_addr_cid_load {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank2_pe2 {Type O LastRead -1 FirstWrite 1}
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
]}

set Spec2ImplPortList { 
	vrequest2 { ap_fifo {  { vrequest2_dout fifo_port_we 0 209 }  { vrequest2_num_data_valid fifo_status_num_data_valid 0 7 }  { vrequest2_fifo_cap fifo_update 0 7 }  { vrequest2_empty_n fifo_status 0 1 }  { vrequest2_read fifo_data 1 1 } } }
	base_addr_val { ap_fifo {  { base_addr_val_dout fifo_port_we 0 32 }  { base_addr_val_num_data_valid fifo_status_num_data_valid 0 4 }  { base_addr_val_fifo_cap fifo_update 0 4 }  { base_addr_val_empty_n fifo_status 0 1 }  { base_addr_val_read fifo_data 1 1 } } }
	base_addr_cid { ap_fifo {  { base_addr_cid_dout fifo_port_we 0 32 }  { base_addr_cid_num_data_valid fifo_status_num_data_valid 0 4 }  { base_addr_cid_fifo_cap fifo_update 0 4 }  { base_addr_cid_empty_n fifo_status 0 1 }  { base_addr_cid_read fifo_data 1 1 } } }
	vccache_re_bank1_pe2 { ap_fifo {  { vccache_re_bank1_pe2_din fifo_port_we 1 209 }  { vccache_re_bank1_pe2_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe2_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe2_full_n fifo_status 0 1 }  { vccache_re_bank1_pe2_write fifo_data 1 1 } } }
	vccache_re_bank2_pe2 { ap_fifo {  { vccache_re_bank2_pe2_din fifo_port_we 1 209 }  { vccache_re_bank2_pe2_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank2_pe2_fifo_cap fifo_update 0 4 }  { vccache_re_bank2_pe2_full_n fifo_status 0 1 }  { vccache_re_bank2_pe2_write fifo_data 1 1 } } }
}
