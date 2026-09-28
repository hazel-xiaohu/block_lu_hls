set moduleName large_tstrf_Pipeline_VITIS_LOOP_133_2
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
set C_modelName {large_tstrf_Pipeline_VITIS_LOOP_133_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ tw0 int 32 regular {axi_master 1}  }
	{ sext_ln133 int 62 regular  }
	{ n int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln133", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_tw0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_tw0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_tw0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_tw0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_tw0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_tw0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_tw0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_tw0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_tw0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_tw0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_tw0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_tw0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_tw0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_tw0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_tw0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tw0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_tw0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_tw0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_tw0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_tw0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_tw0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_tw0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_tw0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_tw0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_tw0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln133 sc_in sc_lv 62 signal 1 } 
	{ n sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_tw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWID" }} , 
 	{ "name": "m_axi_tw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tw0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tw0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tw0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tw0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tw0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tw0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tw0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tw0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tw0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WVALID" }} , 
 	{ "name": "m_axi_tw0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WREADY" }} , 
 	{ "name": "m_axi_tw0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "WDATA" }} , 
 	{ "name": "m_axi_tw0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tw0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WLAST" }} , 
 	{ "name": "m_axi_tw0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WID" }} , 
 	{ "name": "m_axi_tw0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WUSER" }} , 
 	{ "name": "m_axi_tw0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tw0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tw0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tw0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tw0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARID" }} , 
 	{ "name": "m_axi_tw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tw0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tw0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tw0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tw0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tw0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tw0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tw0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tw0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tw0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RVALID" }} , 
 	{ "name": "m_axi_tw0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RREADY" }} , 
 	{ "name": "m_axi_tw0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "RDATA" }} , 
 	{ "name": "m_axi_tw0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RLAST" }} , 
 	{ "name": "m_axi_tw0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RID" }} , 
 	{ "name": "m_axi_tw0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tw0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_tw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BID" }} , 
 	{ "name": "m_axi_tw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BUSER" }} , 
 	{ "name": "sext_ln133", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln133", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_Pipeline_VITIS_LOOP_133_2",
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
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln133", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_133_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_Pipeline_VITIS_LOOP_133_2 {
		tw0 {Type O LastRead -1 FirstWrite 1}
		sext_ln133 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_tw0_AWVALID VALID 1 1 }  { m_axi_tw0_AWREADY READY 0 1 }  { m_axi_tw0_AWADDR ADDR 1 64 }  { m_axi_tw0_AWID ID 1 1 }  { m_axi_tw0_AWLEN SIZE 1 32 }  { m_axi_tw0_AWSIZE BURST 1 3 }  { m_axi_tw0_AWBURST LOCK 1 2 }  { m_axi_tw0_AWLOCK CACHE 1 2 }  { m_axi_tw0_AWCACHE PROT 1 4 }  { m_axi_tw0_AWPROT QOS 1 3 }  { m_axi_tw0_AWQOS REGION 1 4 }  { m_axi_tw0_AWREGION USER 1 4 }  { m_axi_tw0_AWUSER DATA 1 1 }  { m_axi_tw0_WVALID VALID 1 1 }  { m_axi_tw0_WREADY READY 0 1 }  { m_axi_tw0_WDATA FIFONUM 1 32 }  { m_axi_tw0_WSTRB STRB 1 4 }  { m_axi_tw0_WLAST LAST 1 1 }  { m_axi_tw0_WID ID 1 1 }  { m_axi_tw0_WUSER DATA 1 1 }  { m_axi_tw0_ARVALID VALID 1 1 }  { m_axi_tw0_ARREADY READY 0 1 }  { m_axi_tw0_ARADDR ADDR 1 64 }  { m_axi_tw0_ARID ID 1 1 }  { m_axi_tw0_ARLEN SIZE 1 32 }  { m_axi_tw0_ARSIZE BURST 1 3 }  { m_axi_tw0_ARBURST LOCK 1 2 }  { m_axi_tw0_ARLOCK CACHE 1 2 }  { m_axi_tw0_ARCACHE PROT 1 4 }  { m_axi_tw0_ARPROT QOS 1 3 }  { m_axi_tw0_ARQOS REGION 1 4 }  { m_axi_tw0_ARREGION USER 1 4 }  { m_axi_tw0_ARUSER DATA 1 1 }  { m_axi_tw0_RVALID VALID 0 1 }  { m_axi_tw0_RREADY READY 1 1 }  { m_axi_tw0_RDATA FIFONUM 0 32 }  { m_axi_tw0_RLAST LAST 0 1 }  { m_axi_tw0_RID ID 0 1 }  { m_axi_tw0_RFIFONUM LEN 0 9 }  { m_axi_tw0_RUSER DATA 0 1 }  { m_axi_tw0_RRESP RESP 0 2 }  { m_axi_tw0_BVALID VALID 0 1 }  { m_axi_tw0_BREADY READY 1 1 }  { m_axi_tw0_BRESP RESP 0 2 }  { m_axi_tw0_BID ID 0 1 }  { m_axi_tw0_BUSER DATA 0 1 } } }
	sext_ln133 { ap_none {  { sext_ln133 in_data 0 62 } } }
	n { ap_none {  { n in_data 0 32 } } }
}
