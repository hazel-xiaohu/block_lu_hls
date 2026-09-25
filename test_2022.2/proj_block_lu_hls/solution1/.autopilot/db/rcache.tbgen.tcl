set moduleName rcache
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
set C_modelName {rcache}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_re_bank1 int 230 regular {fifo 0 volatile }  }
	{ base_addr_rcsr int 32 regular {fifo 0}  }
	{ rcache_bank1_res int 168 regular {fifo 1 volatile }  }
	{ r1acc int 32 regular {pointer 1}  }
	{ r1hit int 32 regular {pointer 1}  }
	{ mi1 int 5 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_re_bank1", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_rcsr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_bank1_res", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r1acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r1hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi1", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_re_bank1_dout sc_in sc_lv 230 signal 0 } 
	{ rcache_re_bank1_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank1_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_re_bank1_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_rcsr_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_rcsr_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ base_addr_rcsr_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ base_addr_rcsr_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_rcsr_read sc_out sc_logic 1 signal 1 } 
	{ rcache_bank1_res_din sc_out sc_lv 168 signal 2 } 
	{ rcache_bank1_res_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ rcache_bank1_res_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ rcache_bank1_res_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_bank1_res_write sc_out sc_logic 1 signal 2 } 
	{ r1acc sc_out sc_lv 32 signal 3 } 
	{ r1acc_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ r1hit sc_out sc_lv 32 signal 4 } 
	{ r1hit_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ mi1_din sc_out sc_lv 5 signal 5 } 
	{ mi1_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ mi1_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ mi1_full_n sc_in sc_logic 1 signal 5 } 
	{ mi1_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_re_bank1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "dout" }} , 
 	{ "name": "rcache_re_bank1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "read" }} , 
 	{ "name": "base_addr_rcsr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "dout" }} , 
 	{ "name": "base_addr_rcsr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_rcsr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "empty_n" }} , 
 	{ "name": "base_addr_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "read" }} , 
 	{ "name": "rcache_bank1_res_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "din" }} , 
 	{ "name": "rcache_bank1_res_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "num_data_valid" }} , 
 	{ "name": "rcache_bank1_res_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "fifo_cap" }} , 
 	{ "name": "rcache_bank1_res_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "full_n" }} , 
 	{ "name": "rcache_bank1_res_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank1_res", "role": "write" }} , 
 	{ "name": "r1acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r1acc", "role": "default" }} , 
 	{ "name": "r1acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r1acc", "role": "ap_vld" }} , 
 	{ "name": "r1hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r1hit", "role": "default" }} , 
 	{ "name": "r1hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r1hit", "role": "ap_vld" }} , 
 	{ "name": "mi1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi1", "role": "din" }} , 
 	{ "name": "mi1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1", "role": "num_data_valid" }} , 
 	{ "name": "mi1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi1", "role": "fifo_cap" }} , 
 	{ "name": "mi1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "full_n" }} , 
 	{ "name": "mi1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "rcache",
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
			{"Name" : "rcache_re_bank1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_rcsr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_rcsr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_bank1_res", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_bank1_res_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r1acc", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r1hit", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mi1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mi1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_359_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_76_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_77_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_78_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_79_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_80_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_81_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_82_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_83_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_84_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_85_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_86_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_87_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_88_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_89_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_90_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rcache_Pipeline_VITIS_LOOP_332_1_fu_975", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "rcache_Pipeline_VITIS_LOOP_332_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lru_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rcache_Pipeline_VITIS_LOOP_332_1_fu_975.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"}]}


set ArgLastReadFirstWriteLatency {
	rcache {
		rcache_re_bank1 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 1 FirstWrite -1}
		rcache_bank1_res {Type O LastRead -1 FirstWrite 2}
		r1acc {Type O LastRead -1 FirstWrite 2}
		r1hit {Type O LastRead -1 FirstWrite 2}
		mi1 {Type O LastRead -1 FirstWrite 2}}
	rcache_Pipeline_VITIS_LOOP_332_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_90 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_89 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_88 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_87 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_86 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_85 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_84 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_83 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_82 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_81 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_80 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_79 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_78 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_77 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_76 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_re_bank1 { ap_fifo {  { rcache_re_bank1_dout fifo_port_we 0 230 }  { rcache_re_bank1_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank1_fifo_cap fifo_update 0 4 }  { rcache_re_bank1_empty_n fifo_status 0 1 }  { rcache_re_bank1_read fifo_data 1 1 } } }
	base_addr_rcsr { ap_fifo {  { base_addr_rcsr_dout fifo_port_we 0 32 }  { base_addr_rcsr_num_data_valid fifo_status_num_data_valid 0 2 }  { base_addr_rcsr_fifo_cap fifo_update 0 2 }  { base_addr_rcsr_empty_n fifo_status 0 1 }  { base_addr_rcsr_read fifo_data 1 1 } } }
	rcache_bank1_res { ap_fifo {  { rcache_bank1_res_din fifo_port_we 1 168 }  { rcache_bank1_res_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_bank1_res_fifo_cap fifo_update 0 4 }  { rcache_bank1_res_full_n fifo_status 0 1 }  { rcache_bank1_res_write fifo_data 1 1 } } }
	r1acc { ap_vld {  { r1acc out_data 1 32 }  { r1acc_ap_vld out_vld 1 1 } } }
	r1hit { ap_vld {  { r1hit out_data 1 32 }  { r1hit_ap_vld out_vld 1 1 } } }
	mi1 { ap_fifo {  { mi1_din fifo_port_we 1 5 }  { mi1_num_data_valid fifo_status_num_data_valid 0 2 }  { mi1_fifo_cap fifo_update 0 2 }  { mi1_full_n fifo_status 0 1 }  { mi1_write fifo_data 1 1 } } }
}
