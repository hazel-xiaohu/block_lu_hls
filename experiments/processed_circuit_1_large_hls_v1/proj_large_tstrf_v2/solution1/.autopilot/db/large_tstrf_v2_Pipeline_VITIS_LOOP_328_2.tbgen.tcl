set moduleName large_tstrf_v2_Pipeline_VITIS_LOOP_328_2
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
set C_modelName {large_tstrf_v2_Pipeline_VITIS_LOOP_328_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2tu4 int 32 regular {axi_master 0}  }
	{ sext_ln328 int 62 regular  }
	{ n int 32 regular  }
	{ ud int 32 regular {array 2624 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2tu4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_diag_pos","offset": { "type": "dynamic","port_name": "u_diag_pos","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln328", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ud", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v2tu4_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2tu4_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu4_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu4_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu4_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu4_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2tu4_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu4_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu4_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu4_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu4_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2tu4_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_v2tu4_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu4_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2tu4_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu4_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln328 sc_in sc_lv 62 signal 1 } 
	{ n sc_in sc_lv 32 signal 2 } 
	{ ud_address0 sc_out sc_lv 12 signal 3 } 
	{ ud_ce0 sc_out sc_logic 1 signal 3 } 
	{ ud_we0 sc_out sc_logic 1 signal 3 } 
	{ ud_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v2tu4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tu4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tu4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tu4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tu4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tu4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tu4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tu4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tu4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tu4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tu4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tu4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tu4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tu4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tu4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tu4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu4", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tu4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tu4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tu4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "WID" }} , 
 	{ "name": "m_axi_v2tu4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tu4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tu4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tu4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tu4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tu4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tu4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tu4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tu4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tu4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tu4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tu4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tu4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tu4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tu4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tu4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tu4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu4", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tu4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tu4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "RID" }} , 
 	{ "name": "m_axi_v2tu4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tu4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tu4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tu4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tu4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tu4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tu4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu4", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tu4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "BID" }} , 
 	{ "name": "m_axi_v2tu4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu4", "role": "BUSER" }} , 
 	{ "name": "sext_ln328", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln328", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "ud_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ud", "role": "address0" }} , 
 	{ "name": "ud_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ud", "role": "ce0" }} , 
 	{ "name": "ud_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ud", "role": "we0" }} , 
 	{ "name": "ud_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ud", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_v2_Pipeline_VITIS_LOOP_328_2",
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
			{"Name" : "v2tu4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2tu4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln328", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "ud", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_328_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_v2_Pipeline_VITIS_LOOP_328_2 {
		v2tu4 {Type I LastRead 1 FirstWrite -1}
		sext_ln328 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		ud {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_v2tu4_AWVALID VALID 1 1 }  { m_axi_v2tu4_AWREADY READY 0 1 }  { m_axi_v2tu4_AWADDR ADDR 1 64 }  { m_axi_v2tu4_AWID ID 1 1 }  { m_axi_v2tu4_AWLEN SIZE 1 32 }  { m_axi_v2tu4_AWSIZE BURST 1 3 }  { m_axi_v2tu4_AWBURST LOCK 1 2 }  { m_axi_v2tu4_AWLOCK CACHE 1 2 }  { m_axi_v2tu4_AWCACHE PROT 1 4 }  { m_axi_v2tu4_AWPROT QOS 1 3 }  { m_axi_v2tu4_AWQOS REGION 1 4 }  { m_axi_v2tu4_AWREGION USER 1 4 }  { m_axi_v2tu4_AWUSER DATA 1 1 }  { m_axi_v2tu4_WVALID VALID 1 1 }  { m_axi_v2tu4_WREADY READY 0 1 }  { m_axi_v2tu4_WDATA FIFONUM 1 32 }  { m_axi_v2tu4_WSTRB STRB 1 4 }  { m_axi_v2tu4_WLAST LAST 1 1 }  { m_axi_v2tu4_WID ID 1 1 }  { m_axi_v2tu4_WUSER DATA 1 1 }  { m_axi_v2tu4_ARVALID VALID 1 1 }  { m_axi_v2tu4_ARREADY READY 0 1 }  { m_axi_v2tu4_ARADDR ADDR 1 64 }  { m_axi_v2tu4_ARID ID 1 1 }  { m_axi_v2tu4_ARLEN SIZE 1 32 }  { m_axi_v2tu4_ARSIZE BURST 1 3 }  { m_axi_v2tu4_ARBURST LOCK 1 2 }  { m_axi_v2tu4_ARLOCK CACHE 1 2 }  { m_axi_v2tu4_ARCACHE PROT 1 4 }  { m_axi_v2tu4_ARPROT QOS 1 3 }  { m_axi_v2tu4_ARQOS REGION 1 4 }  { m_axi_v2tu4_ARREGION USER 1 4 }  { m_axi_v2tu4_ARUSER DATA 1 1 }  { m_axi_v2tu4_RVALID VALID 0 1 }  { m_axi_v2tu4_RREADY READY 1 1 }  { m_axi_v2tu4_RDATA FIFONUM 0 32 }  { m_axi_v2tu4_RLAST LAST 0 1 }  { m_axi_v2tu4_RID ID 0 1 }  { m_axi_v2tu4_RFIFONUM LEN 0 9 }  { m_axi_v2tu4_RUSER DATA 0 1 }  { m_axi_v2tu4_RRESP RESP 0 2 }  { m_axi_v2tu4_BVALID VALID 0 1 }  { m_axi_v2tu4_BREADY READY 1 1 }  { m_axi_v2tu4_BRESP RESP 0 2 }  { m_axi_v2tu4_BID ID 0 1 }  { m_axi_v2tu4_BUSER DATA 0 1 } } }
	sext_ln328 { ap_none {  { sext_ln328 in_data 0 62 } } }
	n { ap_none {  { n in_data 0 32 } } }
	ud { ap_memory {  { ud_address0 mem_address 1 12 }  { ud_ce0 mem_ce 1 1 }  { ud_we0 mem_we 1 1 }  { ud_d0 mem_din 1 32 } } }
}
