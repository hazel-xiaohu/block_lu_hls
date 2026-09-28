set moduleName large_gessm_v2_Pipeline_VITIS_LOOP_247_1
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
set C_modelName {large_gessm_v2_Pipeline_VITIS_LOOP_247_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2gl0 int 32 regular {axi_master 0}  }
	{ add_ln247 int 32 regular  }
	{ l_ptr int 64 regular  }
	{ lp int 32 regular {array 2625 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2gl0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_ptr","offset": { "type": "dynamic","port_name": "l_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "add_ln247", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "l_ptr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v2gl0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_v2gl0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_BUSER sc_in sc_lv 1 signal 0 } 
	{ add_ln247 sc_in sc_lv 32 signal 1 } 
	{ l_ptr sc_in sc_lv 64 signal 2 } 
	{ lp_address0 sc_out sc_lv 12 signal 3 } 
	{ lp_ce0 sc_out sc_logic 1 signal 3 } 
	{ lp_we0 sc_out sc_logic 1 signal 3 } 
	{ lp_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v2gl0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gl0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gl0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gl0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gl0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gl0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gl0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gl0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gl0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gl0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gl0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gl0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gl0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gl0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gl0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gl0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gl0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gl0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gl0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WID" }} , 
 	{ "name": "m_axi_v2gl0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gl0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gl0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gl0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gl0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gl0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gl0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gl0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gl0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gl0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gl0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gl0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gl0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gl0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gl0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gl0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gl0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gl0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gl0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RID" }} , 
 	{ "name": "m_axi_v2gl0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2gl0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2gl0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gl0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gl0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gl0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gl0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gl0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BID" }} , 
 	{ "name": "m_axi_v2gl0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BUSER" }} , 
 	{ "name": "add_ln247", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln247", "role": "default" }} , 
 	{ "name": "l_ptr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_ptr", "role": "default" }} , 
 	{ "name": "lp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lp", "role": "address0" }} , 
 	{ "name": "lp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lp", "role": "ce0" }} , 
 	{ "name": "lp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lp", "role": "we0" }} , 
 	{ "name": "lp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lp", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_247_1",
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
			{"Name" : "v2gl0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2gl0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln247", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "lp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_247_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_v2_Pipeline_VITIS_LOOP_247_1 {
		v2gl0 {Type I LastRead 8 FirstWrite -1}
		add_ln247 {Type I LastRead 0 FirstWrite -1}
		l_ptr {Type I LastRead 0 FirstWrite -1}
		lp {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_v2gl0_AWVALID VALID 1 1 }  { m_axi_v2gl0_AWREADY READY 0 1 }  { m_axi_v2gl0_AWADDR ADDR 1 64 }  { m_axi_v2gl0_AWID ID 1 1 }  { m_axi_v2gl0_AWLEN SIZE 1 32 }  { m_axi_v2gl0_AWSIZE BURST 1 3 }  { m_axi_v2gl0_AWBURST LOCK 1 2 }  { m_axi_v2gl0_AWLOCK CACHE 1 2 }  { m_axi_v2gl0_AWCACHE PROT 1 4 }  { m_axi_v2gl0_AWPROT QOS 1 3 }  { m_axi_v2gl0_AWQOS REGION 1 4 }  { m_axi_v2gl0_AWREGION USER 1 4 }  { m_axi_v2gl0_AWUSER DATA 1 1 }  { m_axi_v2gl0_WVALID VALID 1 1 }  { m_axi_v2gl0_WREADY READY 0 1 }  { m_axi_v2gl0_WDATA FIFONUM 1 32 }  { m_axi_v2gl0_WSTRB STRB 1 4 }  { m_axi_v2gl0_WLAST LAST 1 1 }  { m_axi_v2gl0_WID ID 1 1 }  { m_axi_v2gl0_WUSER DATA 1 1 }  { m_axi_v2gl0_ARVALID VALID 1 1 }  { m_axi_v2gl0_ARREADY READY 0 1 }  { m_axi_v2gl0_ARADDR ADDR 1 64 }  { m_axi_v2gl0_ARID ID 1 1 }  { m_axi_v2gl0_ARLEN SIZE 1 32 }  { m_axi_v2gl0_ARSIZE BURST 1 3 }  { m_axi_v2gl0_ARBURST LOCK 1 2 }  { m_axi_v2gl0_ARLOCK CACHE 1 2 }  { m_axi_v2gl0_ARCACHE PROT 1 4 }  { m_axi_v2gl0_ARPROT QOS 1 3 }  { m_axi_v2gl0_ARQOS REGION 1 4 }  { m_axi_v2gl0_ARREGION USER 1 4 }  { m_axi_v2gl0_ARUSER DATA 1 1 }  { m_axi_v2gl0_RVALID VALID 0 1 }  { m_axi_v2gl0_RREADY READY 1 1 }  { m_axi_v2gl0_RDATA FIFONUM 0 32 }  { m_axi_v2gl0_RLAST LAST 0 1 }  { m_axi_v2gl0_RID ID 0 1 }  { m_axi_v2gl0_RFIFONUM LEN 0 9 }  { m_axi_v2gl0_RUSER DATA 0 1 }  { m_axi_v2gl0_RRESP RESP 0 2 }  { m_axi_v2gl0_BVALID VALID 0 1 }  { m_axi_v2gl0_BREADY READY 1 1 }  { m_axi_v2gl0_BRESP RESP 0 2 }  { m_axi_v2gl0_BID ID 0 1 }  { m_axi_v2gl0_BUSER DATA 0 1 } } }
	add_ln247 { ap_none {  { add_ln247 in_data 0 32 } } }
	l_ptr { ap_none {  { l_ptr in_data 0 64 } } }
	lp { ap_memory {  { lp_address0 mem_address 1 12 }  { lp_ce0 mem_ce 1 1 }  { lp_we0 mem_we 1 1 }  { lp_d0 mem_din 1 32 } } }
}
