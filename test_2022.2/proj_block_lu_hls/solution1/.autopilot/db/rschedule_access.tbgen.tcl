set moduleName rschedule_access
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
set C_modelName {rschedule_access}
set C_modelType { void 0 }
set C_modelArgList {
	{ rscheduler int 230 regular {fifo 0 volatile }  }
	{ rresponse1 int 168 regular {fifo 0 volatile }  }
	{ roff1 int 160 regular {fifo 1 volatile }  }
	{ off_pointer int 128 regular {array 513 { 1 3 } 1 1 }  }
	{ r_req int 230 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rscheduler", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rresponse1", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "roff1", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY"} , 
 	{ "Name" : "off_pointer", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "r_req", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rscheduler_dout sc_in sc_lv 230 signal 0 } 
	{ rscheduler_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rscheduler_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ rscheduler_read sc_out sc_logic 1 signal 0 } 
	{ rresponse1_dout sc_in sc_lv 168 signal 1 } 
	{ rresponse1_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ rresponse1_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ rresponse1_empty_n sc_in sc_logic 1 signal 1 } 
	{ rresponse1_read sc_out sc_logic 1 signal 1 } 
	{ roff1_din sc_out sc_lv 160 signal 2 } 
	{ roff1_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ roff1_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ roff1_full_n sc_in sc_logic 1 signal 2 } 
	{ roff1_write sc_out sc_logic 1 signal 2 } 
	{ off_pointer_address0 sc_out sc_lv 10 signal 3 } 
	{ off_pointer_ce0 sc_out sc_logic 1 signal 3 } 
	{ off_pointer_q0 sc_in sc_lv 128 signal 3 } 
	{ r_req_din sc_out sc_lv 230 signal 4 } 
	{ r_req_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ r_req_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ r_req_full_n sc_in sc_logic 1 signal 4 } 
	{ r_req_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rscheduler", "role": "dout" }} , 
 	{ "name": "rscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rscheduler", "role": "num_data_valid" }} , 
 	{ "name": "rscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rscheduler", "role": "fifo_cap" }} , 
 	{ "name": "rscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "empty_n" }} , 
 	{ "name": "rscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "read" }} , 
 	{ "name": "rresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse1", "role": "dout" }} , 
 	{ "name": "rresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse1", "role": "num_data_valid" }} , 
 	{ "name": "rresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse1", "role": "fifo_cap" }} , 
 	{ "name": "rresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "empty_n" }} , 
 	{ "name": "rresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse1", "role": "read" }} , 
 	{ "name": "roff1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff1", "role": "din" }} , 
 	{ "name": "roff1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "num_data_valid" }} , 
 	{ "name": "roff1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "fifo_cap" }} , 
 	{ "name": "roff1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "full_n" }} , 
 	{ "name": "roff1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "write" }} , 
 	{ "name": "off_pointer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "off_pointer", "role": "address0" }} , 
 	{ "name": "off_pointer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "off_pointer", "role": "ce0" }} , 
 	{ "name": "off_pointer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "off_pointer", "role": "q0" }} , 
 	{ "name": "r_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "r_req", "role": "din" }} , 
 	{ "name": "r_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_req", "role": "num_data_valid" }} , 
 	{ "name": "r_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_req", "role": "fifo_cap" }} , 
 	{ "name": "r_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "full_n" }} , 
 	{ "name": "r_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "rschedule_access",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rresponse1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rresponse1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "off_pointer", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rschedule_access_Pipeline_VITIS_LOOP_87_3_fu_197", "Port" : "off_pointer", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bridx_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rschedule_access_Pipeline_VITIS_LOOP_87_3_fu_197", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "rschedule_access_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "zext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "off_pointer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rschedule_access_Pipeline_VITIS_LOOP_87_3_fu_197.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse1 {Type I LastRead 2 FirstWrite -1}
		roff1 {Type O LastRead -1 FirstWrite 3}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		Bridx_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rscheduler { ap_fifo {  { rscheduler_dout fifo_port_we 0 230 }  { rscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { rscheduler_fifo_cap fifo_update 0 7 }  { rscheduler_empty_n fifo_status 0 1 }  { rscheduler_read fifo_data 1 1 } } }
	rresponse1 { ap_fifo {  { rresponse1_dout fifo_port_we 0 168 }  { rresponse1_num_data_valid fifo_status_num_data_valid 0 5 }  { rresponse1_fifo_cap fifo_update 0 5 }  { rresponse1_empty_n fifo_status 0 1 }  { rresponse1_read fifo_data 1 1 } } }
	roff1 { ap_fifo {  { roff1_din fifo_port_we 1 160 }  { roff1_num_data_valid fifo_status_num_data_valid 0 7 }  { roff1_fifo_cap fifo_update 0 7 }  { roff1_full_n fifo_status 0 1 }  { roff1_write fifo_data 1 1 } } }
	off_pointer { ap_memory {  { off_pointer_address0 mem_address 1 10 }  { off_pointer_ce0 mem_ce 1 1 }  { off_pointer_q0 mem_dout 0 128 } } }
	r_req { ap_fifo {  { r_req_din fifo_port_we 1 230 }  { r_req_num_data_valid fifo_status_num_data_valid 0 7 }  { r_req_fifo_cap fifo_update 0 7 }  { r_req_full_n fifo_status 0 1 }  { r_req_write fifo_data 1 1 } } }
}
