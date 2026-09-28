set moduleName merge_4_to_1_vcrequest_36_Pipeline_VITIS_LOOP_210_1
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
set C_modelName {merge_4_to_1_vcrequest.36_Pipeline_VITIS_LOOP_210_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ vccache_re_bank1_pe5 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe6 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe7 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank1_pe8 int 209 regular {fifo 0 volatile }  }
	{ vccache_re_bank3 int 209 regular {fifo 1 volatile }  }
	{ temp_data_V_out int 128 regular {pointer 1}  }
	{ temp_brlen_out int 32 regular {pointer 1}  }
	{ temp_brid_out int 32 regular {pointer 1}  }
	{ temp_write_idx_V_out int 3 regular {pointer 1}  }
	{ temp_dest_V_out int 5 regular {pointer 1}  }
	{ temp_peID_V_out int 3 regular {pointer 1}  }
	{ temp_type_V_out int 3 regular {pointer 1}  }
	{ temp_target_V_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vccache_re_bank1_pe5", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe6", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe7", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank1_pe8", "interface" : "fifo", "bitwidth" : 209, "direction" : "READONLY"} , 
 	{ "Name" : "vccache_re_bank3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_data_V_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_brlen_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_brid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_write_idx_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_dest_V_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_peID_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_type_V_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_target_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vccache_re_bank1_pe8_dout sc_in sc_lv 209 signal 3 } 
	{ vccache_re_bank1_pe8_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe8_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ vccache_re_bank1_pe8_empty_n sc_in sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe8_read sc_out sc_logic 1 signal 3 } 
	{ vccache_re_bank1_pe7_dout sc_in sc_lv 209 signal 2 } 
	{ vccache_re_bank1_pe7_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe7_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ vccache_re_bank1_pe7_empty_n sc_in sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe7_read sc_out sc_logic 1 signal 2 } 
	{ vccache_re_bank1_pe6_dout sc_in sc_lv 209 signal 1 } 
	{ vccache_re_bank1_pe6_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe6_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ vccache_re_bank1_pe6_empty_n sc_in sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe6_read sc_out sc_logic 1 signal 1 } 
	{ vccache_re_bank1_pe5_dout sc_in sc_lv 209 signal 0 } 
	{ vccache_re_bank1_pe5_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank1_pe5_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ vccache_re_bank1_pe5_empty_n sc_in sc_logic 1 signal 0 } 
	{ vccache_re_bank1_pe5_read sc_out sc_logic 1 signal 0 } 
	{ vccache_re_bank3_din sc_out sc_lv 209 signal 4 } 
	{ vccache_re_bank3_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ vccache_re_bank3_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ vccache_re_bank3_full_n sc_in sc_logic 1 signal 4 } 
	{ vccache_re_bank3_write sc_out sc_logic 1 signal 4 } 
	{ temp_data_V_out sc_out sc_lv 128 signal 5 } 
	{ temp_data_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_brlen_out sc_out sc_lv 32 signal 6 } 
	{ temp_brlen_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_brid_out sc_out sc_lv 32 signal 7 } 
	{ temp_brid_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_write_idx_V_out sc_out sc_lv 3 signal 8 } 
	{ temp_write_idx_V_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_dest_V_out sc_out sc_lv 5 signal 9 } 
	{ temp_dest_V_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_peID_V_out sc_out sc_lv 3 signal 10 } 
	{ temp_peID_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_type_V_out sc_out sc_lv 3 signal 11 } 
	{ temp_type_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_target_V_out sc_out sc_lv 2 signal 12 } 
	{ temp_target_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vccache_re_bank1_pe8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe8", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe7", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe6", "role": "read" }} , 
 	{ "name": "vccache_re_bank1_pe5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "dout" }} , 
 	{ "name": "vccache_re_bank1_pe5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank1_pe5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank1_pe5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "empty_n" }} , 
 	{ "name": "vccache_re_bank1_pe5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank1_pe5", "role": "read" }} , 
 	{ "name": "vccache_re_bank3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "din" }} , 
 	{ "name": "vccache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "vccache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "fifo_cap" }} , 
 	{ "name": "vccache_re_bank3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "full_n" }} , 
 	{ "name": "vccache_re_bank3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vccache_re_bank3", "role": "write" }} , 
 	{ "name": "temp_data_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_data_V_out", "role": "default" }} , 
 	{ "name": "temp_data_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_data_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_brlen_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_brlen_out", "role": "default" }} , 
 	{ "name": "temp_brlen_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_brlen_out", "role": "ap_vld" }} , 
 	{ "name": "temp_brid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_brid_out", "role": "default" }} , 
 	{ "name": "temp_brid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_brid_out", "role": "ap_vld" }} , 
 	{ "name": "temp_write_idx_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_write_idx_V_out", "role": "default" }} , 
 	{ "name": "temp_write_idx_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_write_idx_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_dest_V_out", "role": "default" }} , 
 	{ "name": "temp_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_dest_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_peID_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_peID_V_out", "role": "default" }} , 
 	{ "name": "temp_peID_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_peID_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_type_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_type_V_out", "role": "default" }} , 
 	{ "name": "temp_type_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_type_V_out", "role": "ap_vld" }} , 
 	{ "name": "temp_target_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_target_V_out", "role": "default" }} , 
 	{ "name": "temp_target_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_target_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "merge_4_to_1_vcrequest_36_Pipeline_VITIS_LOOP_210_1",
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
			{"Name" : "vccache_re_bank1_pe5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank1_pe8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank1_pe8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vccache_re_bank3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vccache_re_bank3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_210_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	merge_4_to_1_vcrequest_36_Pipeline_VITIS_LOOP_210_1 {
		vccache_re_bank1_pe5 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe6 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe7 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank1_pe8 {Type I LastRead 0 FirstWrite -1}
		vccache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 0}
		temp_brlen_out {Type O LastRead -1 FirstWrite 0}
		temp_brid_out {Type O LastRead -1 FirstWrite 0}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 0}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 0}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 0}
		temp_type_V_out {Type O LastRead -1 FirstWrite 0}
		temp_target_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vccache_re_bank1_pe5 { ap_fifo {  { vccache_re_bank1_pe5_dout fifo_port_we 0 209 }  { vccache_re_bank1_pe5_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe5_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe5_empty_n fifo_status 0 1 }  { vccache_re_bank1_pe5_read fifo_data 1 1 } } }
	vccache_re_bank1_pe6 { ap_fifo {  { vccache_re_bank1_pe6_dout fifo_port_we 0 209 }  { vccache_re_bank1_pe6_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe6_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe6_empty_n fifo_status 0 1 }  { vccache_re_bank1_pe6_read fifo_data 1 1 } } }
	vccache_re_bank1_pe7 { ap_fifo {  { vccache_re_bank1_pe7_dout fifo_port_we 0 209 }  { vccache_re_bank1_pe7_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe7_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe7_empty_n fifo_status 0 1 }  { vccache_re_bank1_pe7_read fifo_data 1 1 } } }
	vccache_re_bank1_pe8 { ap_fifo {  { vccache_re_bank1_pe8_dout fifo_port_we 0 209 }  { vccache_re_bank1_pe8_num_data_valid fifo_status_num_data_valid 0 4 }  { vccache_re_bank1_pe8_fifo_cap fifo_update 0 4 }  { vccache_re_bank1_pe8_empty_n fifo_status 0 1 }  { vccache_re_bank1_pe8_read fifo_data 1 1 } } }
	vccache_re_bank3 { ap_fifo {  { vccache_re_bank3_din fifo_port_we 1 209 }  { vccache_re_bank3_num_data_valid fifo_status_num_data_valid 0 7 }  { vccache_re_bank3_fifo_cap fifo_update 0 7 }  { vccache_re_bank3_full_n fifo_status 0 1 }  { vccache_re_bank3_write fifo_data 1 1 } } }
	temp_data_V_out { ap_vld {  { temp_data_V_out out_data 1 128 }  { temp_data_V_out_ap_vld out_vld 1 1 } } }
	temp_brlen_out { ap_vld {  { temp_brlen_out out_data 1 32 }  { temp_brlen_out_ap_vld out_vld 1 1 } } }
	temp_brid_out { ap_vld {  { temp_brid_out out_data 1 32 }  { temp_brid_out_ap_vld out_vld 1 1 } } }
	temp_write_idx_V_out { ap_vld {  { temp_write_idx_V_out out_data 1 3 }  { temp_write_idx_V_out_ap_vld out_vld 1 1 } } }
	temp_dest_V_out { ap_vld {  { temp_dest_V_out out_data 1 5 }  { temp_dest_V_out_ap_vld out_vld 1 1 } } }
	temp_peID_V_out { ap_vld {  { temp_peID_V_out out_data 1 3 }  { temp_peID_V_out_ap_vld out_vld 1 1 } } }
	temp_type_V_out { ap_vld {  { temp_type_V_out out_data 1 3 }  { temp_type_V_out_ap_vld out_vld 1 1 } } }
	temp_target_V_out { ap_vld {  { temp_target_V_out out_data 1 2 }  { temp_target_V_out_ap_vld out_vld 1 1 } } }
}
