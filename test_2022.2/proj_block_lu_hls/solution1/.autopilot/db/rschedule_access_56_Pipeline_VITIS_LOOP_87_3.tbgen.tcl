set moduleName rschedule_access_56_Pipeline_VITIS_LOOP_87_3
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
set C_modelName {rschedule_access.56_Pipeline_VITIS_LOOP_87_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ access_idx_cast_cast_cast int 30 regular  }
	{ brcsr2 int 128 regular {axi_master 0}  }
	{ sext_ln87 int 60 regular  }
	{ add int 31 regular  }
	{ trunc_ln int 1 regular  }
	{ Bridx_V int 128 regular {array 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "access_idx_cast_cast_cast", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "brcsr2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr2","offset": { "type": "dynamic","port_name": "B_rcsr2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "Bridx_V", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_brcsr2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_brcsr2_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_brcsr2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_brcsr2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_brcsr2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr2_BUSER sc_in sc_lv 1 signal 1 } 
	{ access_idx_cast_cast_cast sc_in sc_lv 30 signal 0 } 
	{ sext_ln87 sc_in sc_lv 60 signal 2 } 
	{ add sc_in sc_lv 31 signal 3 } 
	{ trunc_ln sc_in sc_lv 1 signal 4 } 
	{ Bridx_V_address0 sc_out sc_lv 1 signal 5 } 
	{ Bridx_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ Bridx_V_we0 sc_out sc_logic 1 signal 5 } 
	{ Bridx_V_d0 sc_out sc_lv 128 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_brcsr2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "BUSER" }} , 
 	{ "name": "access_idx_cast_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "access_idx_cast_cast_cast", "role": "default" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "Bridx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "address0" }} , 
 	{ "name": "Bridx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "ce0" }} , 
 	{ "name": "Bridx_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "we0" }} , 
 	{ "name": "Bridx_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bridx_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rschedule_access_56_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "access_idx_cast_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "brcsr2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access_56_Pipeline_VITIS_LOOP_87_3 {
		access_idx_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		brcsr2 {Type I LastRead 1 FirstWrite -1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		Bridx_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	access_idx_cast_cast_cast { ap_none {  { access_idx_cast_cast_cast in_data 0 30 } } }
	 { m_axi {  { m_axi_brcsr2_AWVALID VALID 1 1 }  { m_axi_brcsr2_AWREADY READY 0 1 }  { m_axi_brcsr2_AWADDR ADDR 1 64 }  { m_axi_brcsr2_AWID ID 1 1 }  { m_axi_brcsr2_AWLEN SIZE 1 32 }  { m_axi_brcsr2_AWSIZE BURST 1 3 }  { m_axi_brcsr2_AWBURST LOCK 1 2 }  { m_axi_brcsr2_AWLOCK CACHE 1 2 }  { m_axi_brcsr2_AWCACHE PROT 1 4 }  { m_axi_brcsr2_AWPROT QOS 1 3 }  { m_axi_brcsr2_AWQOS REGION 1 4 }  { m_axi_brcsr2_AWREGION USER 1 4 }  { m_axi_brcsr2_AWUSER DATA 1 1 }  { m_axi_brcsr2_WVALID VALID 1 1 }  { m_axi_brcsr2_WREADY READY 0 1 }  { m_axi_brcsr2_WDATA FIFONUM 1 128 }  { m_axi_brcsr2_WSTRB STRB 1 16 }  { m_axi_brcsr2_WLAST LAST 1 1 }  { m_axi_brcsr2_WID ID 1 1 }  { m_axi_brcsr2_WUSER DATA 1 1 }  { m_axi_brcsr2_ARVALID VALID 1 1 }  { m_axi_brcsr2_ARREADY READY 0 1 }  { m_axi_brcsr2_ARADDR ADDR 1 64 }  { m_axi_brcsr2_ARID ID 1 1 }  { m_axi_brcsr2_ARLEN SIZE 1 32 }  { m_axi_brcsr2_ARSIZE BURST 1 3 }  { m_axi_brcsr2_ARBURST LOCK 1 2 }  { m_axi_brcsr2_ARLOCK CACHE 1 2 }  { m_axi_brcsr2_ARCACHE PROT 1 4 }  { m_axi_brcsr2_ARPROT QOS 1 3 }  { m_axi_brcsr2_ARQOS REGION 1 4 }  { m_axi_brcsr2_ARREGION USER 1 4 }  { m_axi_brcsr2_ARUSER DATA 1 1 }  { m_axi_brcsr2_RVALID VALID 0 1 }  { m_axi_brcsr2_RREADY READY 1 1 }  { m_axi_brcsr2_RDATA FIFONUM 0 128 }  { m_axi_brcsr2_RLAST LAST 0 1 }  { m_axi_brcsr2_RID ID 0 1 }  { m_axi_brcsr2_RFIFONUM LEN 0 9 }  { m_axi_brcsr2_RUSER DATA 0 1 }  { m_axi_brcsr2_RRESP RESP 0 2 }  { m_axi_brcsr2_BVALID VALID 0 1 }  { m_axi_brcsr2_BREADY READY 1 1 }  { m_axi_brcsr2_BRESP RESP 0 2 }  { m_axi_brcsr2_BID ID 0 1 }  { m_axi_brcsr2_BUSER DATA 0 1 } } }
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 60 } } }
	add { ap_none {  { add in_data 0 31 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 1 } } }
	Bridx_V { ap_memory {  { Bridx_V_address0 mem_address 1 1 }  { Bridx_V_ce0 mem_ce 1 1 }  { Bridx_V_we0 mem_we 1 1 }  { Bridx_V_d0 mem_din 1 128 } } }
}
