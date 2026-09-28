set moduleName rcache_5
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
set C_modelName {rcache.5}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_re_bank3 int 230 regular {fifo 0 volatile }  }
	{ base_addr_rcsr int 32 regular {fifo 0}  }
	{ rcache_bank3_res int 168 regular {fifo 1 volatile }  }
	{ r3acc int 32 regular {pointer 1}  }
	{ r3hit int 32 regular {pointer 1}  }
	{ mi3 int 5 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_re_bank3", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_rcsr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_bank3_res", "interface" : "fifo", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r3acc", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r3hit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mi3", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
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
	{ rcache_re_bank3_dout sc_in sc_lv 230 signal 0 } 
	{ rcache_re_bank3_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank3_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ rcache_re_bank3_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_re_bank3_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_rcsr_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_rcsr_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ base_addr_rcsr_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ base_addr_rcsr_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_rcsr_read sc_out sc_logic 1 signal 1 } 
	{ rcache_bank3_res_din sc_out sc_lv 168 signal 2 } 
	{ rcache_bank3_res_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ rcache_bank3_res_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ rcache_bank3_res_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_bank3_res_write sc_out sc_logic 1 signal 2 } 
	{ r3acc sc_out sc_lv 32 signal 3 } 
	{ r3acc_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ r3hit sc_out sc_lv 32 signal 4 } 
	{ r3hit_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ mi3_din sc_out sc_lv 5 signal 5 } 
	{ mi3_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ mi3_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ mi3_full_n sc_in sc_logic 1 signal 5 } 
	{ mi3_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_re_bank3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "dout" }} , 
 	{ "name": "rcache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "empty_n" }} , 
 	{ "name": "rcache_re_bank3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "read" }} , 
 	{ "name": "base_addr_rcsr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "dout" }} , 
 	{ "name": "base_addr_rcsr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_rcsr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "empty_n" }} , 
 	{ "name": "base_addr_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "read" }} , 
 	{ "name": "rcache_bank3_res_din", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rcache_bank3_res", "role": "din" }} , 
 	{ "name": "rcache_bank3_res_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank3_res", "role": "num_data_valid" }} , 
 	{ "name": "rcache_bank3_res_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_bank3_res", "role": "fifo_cap" }} , 
 	{ "name": "rcache_bank3_res_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank3_res", "role": "full_n" }} , 
 	{ "name": "rcache_bank3_res_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_bank3_res", "role": "write" }} , 
 	{ "name": "r3acc", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r3acc", "role": "default" }} , 
 	{ "name": "r3acc_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r3acc", "role": "ap_vld" }} , 
 	{ "name": "r3hit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r3hit", "role": "default" }} , 
 	{ "name": "r3hit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r3hit", "role": "ap_vld" }} , 
 	{ "name": "mi3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mi3", "role": "din" }} , 
 	{ "name": "mi3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3", "role": "num_data_valid" }} , 
 	{ "name": "mi3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mi3", "role": "fifo_cap" }} , 
 	{ "name": "mi3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3", "role": "full_n" }} , 
 	{ "name": "mi3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mi3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "rcache_5",
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
			{"Name" : "rcache_re_bank3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_rcsr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_rcsr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_bank3_res", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_bank3_res_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r3acc", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "r3hit", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mi3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mi3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_372_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_46_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_47_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_48_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_49_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_50_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_51_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_52_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_53_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_54_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_55_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_56_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_57_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_58_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_59_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_tag_V_60_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lru_count_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rcache_5_Pipeline_VITIS_LOOP_345_1_fu_975", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "rcache_5_Pipeline_VITIS_LOOP_345_1",
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
			{"Name" : "p_tag_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_345_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rcache_5_Pipeline_VITIS_LOOP_345_1_fu_975.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"}]}


set ArgLastReadFirstWriteLatency {
	rcache_5 {
		rcache_re_bank3 {Type I LastRead 2 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 1 FirstWrite -1}
		rcache_bank3_res {Type O LastRead -1 FirstWrite 2}
		r3acc {Type O LastRead -1 FirstWrite 2}
		r3hit {Type O LastRead -1 FirstWrite 2}
		mi3 {Type O LastRead -1 FirstWrite 2}}
	rcache_5_Pipeline_VITIS_LOOP_345_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_60 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_59 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_58 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_57 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_56 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_55 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_54 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_53 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_52 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_51 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_50 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_49 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_48 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_47 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_46 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_re_bank3 { ap_fifo {  { rcache_re_bank3_dout fifo_port_we 0 230 }  { rcache_re_bank3_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank3_fifo_cap fifo_update 0 4 }  { rcache_re_bank3_empty_n fifo_status 0 1 }  { rcache_re_bank3_read fifo_data 1 1 } } }
	base_addr_rcsr { ap_fifo {  { base_addr_rcsr_dout fifo_port_we 0 32 }  { base_addr_rcsr_num_data_valid fifo_status_num_data_valid 0 2 }  { base_addr_rcsr_fifo_cap fifo_update 0 2 }  { base_addr_rcsr_empty_n fifo_status 0 1 }  { base_addr_rcsr_read fifo_data 1 1 } } }
	rcache_bank3_res { ap_fifo {  { rcache_bank3_res_din fifo_port_we 1 168 }  { rcache_bank3_res_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_bank3_res_fifo_cap fifo_update 0 4 }  { rcache_bank3_res_full_n fifo_status 0 1 }  { rcache_bank3_res_write fifo_data 1 1 } } }
	r3acc { ap_vld {  { r3acc out_data 1 32 }  { r3acc_ap_vld out_vld 1 1 } } }
	r3hit { ap_vld {  { r3hit out_data 1 32 }  { r3hit_ap_vld out_vld 1 1 } } }
	mi3 { ap_fifo {  { mi3_din fifo_port_we 1 5 }  { mi3_num_data_valid fifo_status_num_data_valid 0 2 }  { mi3_fifo_cap fifo_update 0 2 }  { mi3_full_n fifo_status 0 1 }  { mi3_write fifo_data 1 1 } } }
}
