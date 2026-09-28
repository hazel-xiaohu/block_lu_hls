set moduleName flush_three
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
set C_modelName {flush_three}
set C_modelType { void 0 }
set C_modelArgList {
	{ ping int 80 regular {fifo 0 volatile }  }
	{ ping1 int 80 regular {fifo 0 volatile }  }
	{ pong int 80 regular {fifo 0 volatile }  }
	{ na int 32 regular  }
	{ nb int 32 regular  }
	{ nc int 32 regular  }
	{ result_pe1 int 66 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ping", "interface" : "fifo", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "ping1", "interface" : "fifo", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "pong", "interface" : "fifo", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "na", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ping_dout sc_in sc_lv 80 signal 0 } 
	{ ping_empty_n sc_in sc_logic 1 signal 0 } 
	{ ping_read sc_out sc_logic 1 signal 0 } 
	{ ping1_dout sc_in sc_lv 80 signal 1 } 
	{ ping1_empty_n sc_in sc_logic 1 signal 1 } 
	{ ping1_read sc_out sc_logic 1 signal 1 } 
	{ pong_dout sc_in sc_lv 80 signal 2 } 
	{ pong_empty_n sc_in sc_logic 1 signal 2 } 
	{ pong_read sc_out sc_logic 1 signal 2 } 
	{ result_pe1_din sc_out sc_lv 66 signal 6 } 
	{ result_pe1_num_data_valid sc_in sc_lv 11 signal 6 } 
	{ result_pe1_fifo_cap sc_in sc_lv 11 signal 6 } 
	{ result_pe1_full_n sc_in sc_logic 1 signal 6 } 
	{ result_pe1_write sc_out sc_logic 1 signal 6 } 
	{ na sc_in sc_lv 32 signal 3 } 
	{ nb sc_in sc_lv 32 signal 4 } 
	{ nc sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ping_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "ping", "role": "dout" }} , 
 	{ "name": "ping_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "empty_n" }} , 
 	{ "name": "ping_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping", "role": "read" }} , 
 	{ "name": "ping1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "ping1", "role": "dout" }} , 
 	{ "name": "ping1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "empty_n" }} , 
 	{ "name": "ping1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ping1", "role": "read" }} , 
 	{ "name": "pong_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "pong", "role": "dout" }} , 
 	{ "name": "pong_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "empty_n" }} , 
 	{ "name": "pong_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pong", "role": "read" }} , 
 	{ "name": "result_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "result_pe1", "role": "din" }} , 
 	{ "name": "result_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe1", "role": "num_data_valid" }} , 
 	{ "name": "result_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "result_pe1", "role": "fifo_cap" }} , 
 	{ "name": "result_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe1", "role": "full_n" }} , 
 	{ "name": "result_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_pe1", "role": "write" }} , 
 	{ "name": "na", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "na", "role": "default" }} , 
 	{ "name": "nb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nb", "role": "default" }} , 
 	{ "name": "nc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nc", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "flush_three",
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
			{"Name" : "ping", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ping_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ping1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ping1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pong", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pong_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "na", "Type" : "None", "Direction" : "I"},
			{"Name" : "nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "nc", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_pe1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "result_pe1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_8_full_dsp_1_U1967", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_8_full_dsp_1_U1968", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	flush_three {
		ping {Type I LastRead 1 FirstWrite -1}
		ping1 {Type I LastRead 1 FirstWrite -1}
		pong {Type I LastRead 1 FirstWrite -1}
		na {Type I LastRead 0 FirstWrite -1}
		nb {Type I LastRead 0 FirstWrite -1}
		nc {Type I LastRead 0 FirstWrite -1}
		result_pe1 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ping { ap_fifo {  { ping_dout fifo_port_we 0 80 }  { ping_empty_n fifo_status 0 1 }  { ping_read fifo_data 1 1 } } }
	ping1 { ap_fifo {  { ping1_dout fifo_port_we 0 80 }  { ping1_empty_n fifo_status 0 1 }  { ping1_read fifo_data 1 1 } } }
	pong { ap_fifo {  { pong_dout fifo_port_we 0 80 }  { pong_empty_n fifo_status 0 1 }  { pong_read fifo_data 1 1 } } }
	na { ap_none {  { na in_data 0 32 } } }
	nb { ap_none {  { nb in_data 0 32 } } }
	nc { ap_none {  { nc in_data 0 32 } } }
	result_pe1 { ap_fifo {  { result_pe1_din fifo_port_we 1 66 }  { result_pe1_num_data_valid fifo_status_num_data_valid 0 11 }  { result_pe1_fifo_cap fifo_update 0 11 }  { result_pe1_full_n fifo_status 0 1 }  { result_pe1_write fifo_data 1 1 } } }
}
