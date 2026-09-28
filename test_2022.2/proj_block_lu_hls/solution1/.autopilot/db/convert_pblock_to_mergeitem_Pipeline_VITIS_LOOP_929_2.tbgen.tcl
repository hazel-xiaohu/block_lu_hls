set moduleName convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_929_2
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
set C_modelName {convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_929_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln929 int 3 regular  }
	{ add_ln929 int 4 regular  }
	{ temp_cid_V int 128 regular  }
	{ temp_data_V int 128 regular  }
	{ m_pe1 int 66 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln929", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln929", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "temp_cid_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "temp_data_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "m_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_pe1_din sc_out sc_lv 66 signal 4 } 
	{ m_pe1_num_data_valid sc_in sc_lv 11 signal 4 } 
	{ m_pe1_fifo_cap sc_in sc_lv 11 signal 4 } 
	{ m_pe1_full_n sc_in sc_logic 1 signal 4 } 
	{ m_pe1_write sc_out sc_logic 1 signal 4 } 
	{ zext_ln929 sc_in sc_lv 3 signal 0 } 
	{ add_ln929 sc_in sc_lv 4 signal 1 } 
	{ temp_cid_V sc_in sc_lv 128 signal 2 } 
	{ temp_data_V sc_in sc_lv 128 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "m_pe1", "role": "din" }} , 
 	{ "name": "m_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe1", "role": "num_data_valid" }} , 
 	{ "name": "m_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "m_pe1", "role": "fifo_cap" }} , 
 	{ "name": "m_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe1", "role": "full_n" }} , 
 	{ "name": "m_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_pe1", "role": "write" }} , 
 	{ "name": "zext_ln929", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln929", "role": "default" }} , 
 	{ "name": "add_ln929", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln929", "role": "default" }} , 
 	{ "name": "temp_cid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_cid_V", "role": "default" }} , 
 	{ "name": "temp_data_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_data_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_929_2",
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
			{"Name" : "zext_ln929", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln929", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_cid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_pe1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_pe1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_929_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_929_2 {
		zext_ln929 {Type I LastRead 0 FirstWrite -1}
		add_ln929 {Type I LastRead 0 FirstWrite -1}
		temp_cid_V {Type I LastRead 0 FirstWrite -1}
		temp_data_V {Type I LastRead 0 FirstWrite -1}
		m_pe1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln929 { ap_none {  { zext_ln929 in_data 0 3 } } }
	add_ln929 { ap_none {  { add_ln929 in_data 0 4 } } }
	temp_cid_V { ap_none {  { temp_cid_V in_data 0 128 } } }
	temp_data_V { ap_none {  { temp_data_V in_data 0 128 } } }
	m_pe1 { ap_fifo {  { m_pe1_din fifo_port_we 1 66 }  { m_pe1_num_data_valid fifo_status_num_data_valid 0 11 }  { m_pe1_fifo_cap fifo_update 0 11 }  { m_pe1_full_n fifo_status 0 1 }  { m_pe1_write fifo_data 1 1 } } }
}
