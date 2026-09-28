set moduleName from_rcache_result_to_B_vcrequest_20
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
set C_modelName {from_rcache_result_to_B_vcrequest.20}
set C_modelType { void 0 }
set C_modelArgList {
	{ rblock3 int 230 regular {fifo 0 volatile }  }
	{ rcache_result_bank3_b int 68 regular {fifo 1 volatile }  }
	{ rcache_result_bank3_d int 68 regular {fifo 1 volatile }  }
	{ B_rlen_pe312 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rblock3", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_result_bank3_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_result_bank3_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe312", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rblock3_dout sc_in sc_lv 230 signal 0 } 
	{ rblock3_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rblock3_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rblock3_empty_n sc_in sc_logic 1 signal 0 } 
	{ rblock3_read sc_out sc_logic 1 signal 0 } 
	{ rcache_result_bank3_b_din sc_out sc_lv 68 signal 1 } 
	{ rcache_result_bank3_b_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ rcache_result_bank3_b_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ rcache_result_bank3_b_full_n sc_in sc_logic 1 signal 1 } 
	{ rcache_result_bank3_b_write sc_out sc_logic 1 signal 1 } 
	{ rcache_result_bank3_d_din sc_out sc_lv 68 signal 2 } 
	{ rcache_result_bank3_d_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ rcache_result_bank3_d_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ rcache_result_bank3_d_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_result_bank3_d_write sc_out sc_logic 1 signal 2 } 
	{ B_rlen_pe312_din sc_out sc_lv 32 signal 3 } 
	{ B_rlen_pe312_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ B_rlen_pe312_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ B_rlen_pe312_full_n sc_in sc_logic 1 signal 3 } 
	{ B_rlen_pe312_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rblock3", "role": "dout" }} , 
 	{ "name": "rblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "num_data_valid" }} , 
 	{ "name": "rblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "fifo_cap" }} , 
 	{ "name": "rblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "empty_n" }} , 
 	{ "name": "rblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "read" }} , 
 	{ "name": "rcache_result_bank3_b_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "din" }} , 
 	{ "name": "rcache_result_bank3_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank3_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank3_b_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank3_b_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "write" }} , 
 	{ "name": "rcache_result_bank3_d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "din" }} , 
 	{ "name": "rcache_result_bank3_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank3_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank3_d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank3_d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "write" }} , 
 	{ "name": "B_rlen_pe312_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "din" }} , 
 	{ "name": "B_rlen_pe312_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe312_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe312_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "full_n" }} , 
 	{ "name": "B_rlen_pe312_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "from_rcache_result_to_B_vcrequest_20",
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
			{"Name" : "rblock3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_result_bank3_b", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_result_bank3_d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_rlen_pe312", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "B_rlen_pe312_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_163_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_163_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	from_rcache_result_to_B_vcrequest_20 {
		rblock3 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank3_b {Type O LastRead 2 FirstWrite 2}
		rcache_result_bank3_d {Type O LastRead 2 FirstWrite 2}
		B_rlen_pe312 {Type O LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rblock3 { ap_fifo {  { rblock3_dout fifo_port_we 0 230 }  { rblock3_num_data_valid fifo_status_num_data_valid 0 7 }  { rblock3_fifo_cap fifo_update 0 7 }  { rblock3_empty_n fifo_status 0 1 }  { rblock3_read fifo_data 1 1 } } }
	rcache_result_bank3_b { ap_fifo {  { rcache_result_bank3_b_din fifo_port_we 1 68 }  { rcache_result_bank3_b_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank3_b_fifo_cap fifo_update 0 7 }  { rcache_result_bank3_b_full_n fifo_status 0 1 }  { rcache_result_bank3_b_write fifo_data 1 1 } } }
	rcache_result_bank3_d { ap_fifo {  { rcache_result_bank3_d_din fifo_port_we 1 68 }  { rcache_result_bank3_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank3_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank3_d_full_n fifo_status 0 1 }  { rcache_result_bank3_d_write fifo_data 1 1 } } }
	B_rlen_pe312 { ap_fifo {  { B_rlen_pe312_din fifo_port_we 1 32 }  { B_rlen_pe312_num_data_valid fifo_status_num_data_valid 0 7 }  { B_rlen_pe312_fifo_cap fifo_update 0 7 }  { B_rlen_pe312_full_n fifo_status 0 1 }  { B_rlen_pe312_write fifo_data 1 1 } } }
}
set moduleName from_rcache_result_to_B_vcrequest_20
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
set C_modelName {from_rcache_result_to_B_vcrequest.20}
set C_modelType { void 0 }
set C_modelArgList {
	{ rblock3 int 230 regular {fifo 0 volatile }  }
	{ rcache_result_bank3_b int 68 regular {fifo 1 volatile }  }
	{ rcache_result_bank3_d int 68 regular {fifo 1 volatile }  }
	{ B_rlen_pe312 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rblock3", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_result_bank3_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_result_bank3_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe312", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rblock3_dout sc_in sc_lv 230 signal 0 } 
	{ rblock3_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rblock3_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rblock3_empty_n sc_in sc_logic 1 signal 0 } 
	{ rblock3_read sc_out sc_logic 1 signal 0 } 
	{ rcache_result_bank3_b_din sc_out sc_lv 68 signal 1 } 
	{ rcache_result_bank3_b_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ rcache_result_bank3_b_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ rcache_result_bank3_b_full_n sc_in sc_logic 1 signal 1 } 
	{ rcache_result_bank3_b_write sc_out sc_logic 1 signal 1 } 
	{ rcache_result_bank3_d_din sc_out sc_lv 68 signal 2 } 
	{ rcache_result_bank3_d_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ rcache_result_bank3_d_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ rcache_result_bank3_d_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_result_bank3_d_write sc_out sc_logic 1 signal 2 } 
	{ B_rlen_pe312_din sc_out sc_lv 32 signal 3 } 
	{ B_rlen_pe312_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ B_rlen_pe312_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ B_rlen_pe312_full_n sc_in sc_logic 1 signal 3 } 
	{ B_rlen_pe312_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rblock3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rblock3", "role": "dout" }} , 
 	{ "name": "rblock3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "num_data_valid" }} , 
 	{ "name": "rblock3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rblock3", "role": "fifo_cap" }} , 
 	{ "name": "rblock3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "empty_n" }} , 
 	{ "name": "rblock3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock3", "role": "read" }} , 
 	{ "name": "rcache_result_bank3_b_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "din" }} , 
 	{ "name": "rcache_result_bank3_b_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank3_b_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank3_b_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank3_b_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "write" }} , 
 	{ "name": "rcache_result_bank3_d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "din" }} , 
 	{ "name": "rcache_result_bank3_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank3_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank3_d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "full_n" }} , 
 	{ "name": "rcache_result_bank3_d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "write" }} , 
 	{ "name": "B_rlen_pe312_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "din" }} , 
 	{ "name": "B_rlen_pe312_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe312_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe312_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "full_n" }} , 
 	{ "name": "B_rlen_pe312_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe312", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "from_rcache_result_to_B_vcrequest_20",
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
			{"Name" : "rblock3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_result_bank3_b", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_result_bank3_d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_rlen_pe312", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "B_rlen_pe312_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	from_rcache_result_to_B_vcrequest_20 {
		rblock3 {Type I LastRead 1 FirstWrite -1}
		rcache_result_bank3_b {Type O LastRead -1 FirstWrite 2}
		rcache_result_bank3_d {Type O LastRead -1 FirstWrite 2}
		B_rlen_pe312 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rblock3 { ap_fifo {  { rblock3_dout fifo_port_we 0 230 }  { rblock3_num_data_valid fifo_status_num_data_valid 0 7 }  { rblock3_fifo_cap fifo_update 0 7 }  { rblock3_empty_n fifo_status 0 1 }  { rblock3_read fifo_data 1 1 } } }
	rcache_result_bank3_b { ap_fifo {  { rcache_result_bank3_b_din fifo_port_we 1 68 }  { rcache_result_bank3_b_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank3_b_fifo_cap fifo_update 0 7 }  { rcache_result_bank3_b_full_n fifo_status 0 1 }  { rcache_result_bank3_b_write fifo_data 1 1 } } }
	rcache_result_bank3_d { ap_fifo {  { rcache_result_bank3_d_din fifo_port_we 1 68 }  { rcache_result_bank3_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank3_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank3_d_full_n fifo_status 0 1 }  { rcache_result_bank3_d_write fifo_data 1 1 } } }
	B_rlen_pe312 { ap_fifo {  { B_rlen_pe312_din fifo_port_we 1 32 }  { B_rlen_pe312_num_data_valid fifo_status_num_data_valid 0 7 }  { B_rlen_pe312_fifo_cap fifo_update 0 7 }  { B_rlen_pe312_full_n fifo_status 0 1 }  { B_rlen_pe312_write fifo_data 1 1 } } }
}
