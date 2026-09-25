set moduleName prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1
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
set C_modelName {prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ brcsr1 int 128 regular {axi_master 0}  }
	{ sext_ln199 int 60 regular  }
	{ local_rcsr int 128 regular {array 513 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "brcsr1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr1","offset": { "type": "dynamic","port_name": "B_rcsr1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln199", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "local_rcsr", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_brcsr1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_brcsr1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_brcsr1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_brcsr1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_brcsr1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_brcsr1_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_brcsr1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_brcsr1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_brcsr1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_brcsr1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_brcsr1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_brcsr1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_brcsr1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_brcsr1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_brcsr1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_brcsr1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_brcsr1_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln199 sc_in sc_lv 60 signal 1 } 
	{ local_rcsr_address0 sc_out sc_lv 10 signal 2 } 
	{ local_rcsr_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_rcsr_we0 sc_out sc_logic 1 signal 2 } 
	{ local_rcsr_d0 sc_out sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_brcsr1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr1", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr1", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr1", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr1", "role": "BUSER" }} , 
 	{ "name": "sext_ln199", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln199", "role": "default" }} , 
 	{ "name": "local_rcsr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_rcsr", "role": "address0" }} , 
 	{ "name": "local_rcsr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "ce0" }} , 
 	{ "name": "local_rcsr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_rcsr", "role": "we0" }} , 
 	{ "name": "local_rcsr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "local_rcsr", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "brcsr1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln199", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_rcsr", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1 {
		brcsr1 {Type I LastRead 1 FirstWrite -1}
		sext_ln199 {Type I LastRead 0 FirstWrite -1}
		local_rcsr {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "516", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "516", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_brcsr1_AWVALID VALID 1 1 }  { m_axi_brcsr1_AWREADY READY 0 1 }  { m_axi_brcsr1_AWADDR ADDR 1 64 }  { m_axi_brcsr1_AWID ID 1 1 }  { m_axi_brcsr1_AWLEN SIZE 1 32 }  { m_axi_brcsr1_AWSIZE BURST 1 3 }  { m_axi_brcsr1_AWBURST LOCK 1 2 }  { m_axi_brcsr1_AWLOCK CACHE 1 2 }  { m_axi_brcsr1_AWCACHE PROT 1 4 }  { m_axi_brcsr1_AWPROT QOS 1 3 }  { m_axi_brcsr1_AWQOS REGION 1 4 }  { m_axi_brcsr1_AWREGION USER 1 4 }  { m_axi_brcsr1_AWUSER DATA 1 1 }  { m_axi_brcsr1_WVALID VALID 1 1 }  { m_axi_brcsr1_WREADY READY 0 1 }  { m_axi_brcsr1_WDATA FIFONUM 1 128 }  { m_axi_brcsr1_WSTRB STRB 1 16 }  { m_axi_brcsr1_WLAST LAST 1 1 }  { m_axi_brcsr1_WID ID 1 1 }  { m_axi_brcsr1_WUSER DATA 1 1 }  { m_axi_brcsr1_ARVALID VALID 1 1 }  { m_axi_brcsr1_ARREADY READY 0 1 }  { m_axi_brcsr1_ARADDR ADDR 1 64 }  { m_axi_brcsr1_ARID ID 1 1 }  { m_axi_brcsr1_ARLEN SIZE 1 32 }  { m_axi_brcsr1_ARSIZE BURST 1 3 }  { m_axi_brcsr1_ARBURST LOCK 1 2 }  { m_axi_brcsr1_ARLOCK CACHE 1 2 }  { m_axi_brcsr1_ARCACHE PROT 1 4 }  { m_axi_brcsr1_ARPROT QOS 1 3 }  { m_axi_brcsr1_ARQOS REGION 1 4 }  { m_axi_brcsr1_ARREGION USER 1 4 }  { m_axi_brcsr1_ARUSER DATA 1 1 }  { m_axi_brcsr1_RVALID VALID 0 1 }  { m_axi_brcsr1_RREADY READY 1 1 }  { m_axi_brcsr1_RDATA FIFONUM 0 128 }  { m_axi_brcsr1_RLAST LAST 0 1 }  { m_axi_brcsr1_RID ID 0 1 }  { m_axi_brcsr1_RFIFONUM LEN 0 9 }  { m_axi_brcsr1_RUSER DATA 0 1 }  { m_axi_brcsr1_RRESP RESP 0 2 }  { m_axi_brcsr1_BVALID VALID 0 1 }  { m_axi_brcsr1_BREADY READY 1 1 }  { m_axi_brcsr1_BRESP RESP 0 2 }  { m_axi_brcsr1_BID ID 0 1 }  { m_axi_brcsr1_BUSER DATA 0 1 } } }
	sext_ln199 { ap_none {  { sext_ln199 in_data 0 60 } } }
	local_rcsr { ap_memory {  { local_rcsr_address0 mem_address 1 10 }  { local_rcsr_ce0 mem_ce 1 1 }  { local_rcsr_we0 mem_we 1 1 }  { local_rcsr_d0 mem_din 1 128 } } }
}
