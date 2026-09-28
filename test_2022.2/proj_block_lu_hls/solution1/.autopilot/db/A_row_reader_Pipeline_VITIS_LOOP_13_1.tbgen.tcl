set moduleName A_row_reader_Pipeline_VITIS_LOOP_13_1
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
set C_modelName {A_row_reader_Pipeline_VITIS_LOOP_13_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ arcsr int 32 regular {axi_master 0}  }
	{ sext_ln13 int 62 regular  }
	{ add int 32 regular  }
	{ p_A_reader_rs int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A_rcsr","offset": { "type": "dynamic","port_name": "A_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln13", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_A_reader_rs", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_arcsr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_arcsr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_arcsr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_BUSER sc_in sc_lv 1 signal 0 } 
	{ p_A_reader_rs_din sc_out sc_lv 64 signal 3 } 
	{ p_A_reader_rs_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ p_A_reader_rs_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ p_A_reader_rs_full_n sc_in sc_logic 1 signal 3 } 
	{ p_A_reader_rs_write sc_out sc_logic 1 signal 3 } 
	{ sext_ln13 sc_in sc_lv 62 signal 1 } 
	{ add sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_arcsr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_arcsr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_arcsr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_arcsr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWID" }} , 
 	{ "name": "m_axi_arcsr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_arcsr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_arcsr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_arcsr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_arcsr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_arcsr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_arcsr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_arcsr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_arcsr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_arcsr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WVALID" }} , 
 	{ "name": "m_axi_arcsr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WREADY" }} , 
 	{ "name": "m_axi_arcsr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "WDATA" }} , 
 	{ "name": "m_axi_arcsr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_arcsr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WLAST" }} , 
 	{ "name": "m_axi_arcsr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WID" }} , 
 	{ "name": "m_axi_arcsr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WUSER" }} , 
 	{ "name": "m_axi_arcsr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_arcsr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_arcsr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_arcsr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARID" }} , 
 	{ "name": "m_axi_arcsr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_arcsr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_arcsr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_arcsr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_arcsr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_arcsr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_arcsr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_arcsr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_arcsr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_arcsr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RVALID" }} , 
 	{ "name": "m_axi_arcsr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RREADY" }} , 
 	{ "name": "m_axi_arcsr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "RDATA" }} , 
 	{ "name": "m_axi_arcsr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RLAST" }} , 
 	{ "name": "m_axi_arcsr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RID" }} , 
 	{ "name": "m_axi_arcsr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "arcsr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_arcsr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RUSER" }} , 
 	{ "name": "m_axi_arcsr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "RRESP" }} , 
 	{ "name": "m_axi_arcsr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BVALID" }} , 
 	{ "name": "m_axi_arcsr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BREADY" }} , 
 	{ "name": "m_axi_arcsr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "BRESP" }} , 
 	{ "name": "m_axi_arcsr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BID" }} , 
 	{ "name": "m_axi_arcsr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BUSER" }} , 
 	{ "name": "p_A_reader_rs_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "din" }} , 
 	{ "name": "p_A_reader_rs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "num_data_valid" }} , 
 	{ "name": "p_A_reader_rs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "fifo_cap" }} , 
 	{ "name": "p_A_reader_rs_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "full_n" }} , 
 	{ "name": "p_A_reader_rs_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "write" }} , 
 	{ "name": "sext_ln13", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln13", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_row_reader_Pipeline_VITIS_LOOP_13_1",
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
			{"Name" : "arcsr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arcsr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_A_reader_rs", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_A_reader_rs_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_row_reader_Pipeline_VITIS_LOOP_13_1 {
		arcsr {Type I LastRead 1 FirstWrite -1}
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_arcsr_AWVALID VALID 1 1 }  { m_axi_arcsr_AWREADY READY 0 1 }  { m_axi_arcsr_AWADDR ADDR 1 64 }  { m_axi_arcsr_AWID ID 1 1 }  { m_axi_arcsr_AWLEN SIZE 1 32 }  { m_axi_arcsr_AWSIZE BURST 1 3 }  { m_axi_arcsr_AWBURST LOCK 1 2 }  { m_axi_arcsr_AWLOCK CACHE 1 2 }  { m_axi_arcsr_AWCACHE PROT 1 4 }  { m_axi_arcsr_AWPROT QOS 1 3 }  { m_axi_arcsr_AWQOS REGION 1 4 }  { m_axi_arcsr_AWREGION USER 1 4 }  { m_axi_arcsr_AWUSER DATA 1 1 }  { m_axi_arcsr_WVALID VALID 1 1 }  { m_axi_arcsr_WREADY READY 0 1 }  { m_axi_arcsr_WDATA FIFONUM 1 32 }  { m_axi_arcsr_WSTRB STRB 1 4 }  { m_axi_arcsr_WLAST LAST 1 1 }  { m_axi_arcsr_WID ID 1 1 }  { m_axi_arcsr_WUSER DATA 1 1 }  { m_axi_arcsr_ARVALID VALID 1 1 }  { m_axi_arcsr_ARREADY READY 0 1 }  { m_axi_arcsr_ARADDR ADDR 1 64 }  { m_axi_arcsr_ARID ID 1 1 }  { m_axi_arcsr_ARLEN SIZE 1 32 }  { m_axi_arcsr_ARSIZE BURST 1 3 }  { m_axi_arcsr_ARBURST LOCK 1 2 }  { m_axi_arcsr_ARLOCK CACHE 1 2 }  { m_axi_arcsr_ARCACHE PROT 1 4 }  { m_axi_arcsr_ARPROT QOS 1 3 }  { m_axi_arcsr_ARQOS REGION 1 4 }  { m_axi_arcsr_ARREGION USER 1 4 }  { m_axi_arcsr_ARUSER DATA 1 1 }  { m_axi_arcsr_RVALID VALID 0 1 }  { m_axi_arcsr_RREADY READY 1 1 }  { m_axi_arcsr_RDATA FIFONUM 0 32 }  { m_axi_arcsr_RLAST LAST 0 1 }  { m_axi_arcsr_RID ID 0 1 }  { m_axi_arcsr_RFIFONUM LEN 0 9 }  { m_axi_arcsr_RUSER DATA 0 1 }  { m_axi_arcsr_RRESP RESP 0 2 }  { m_axi_arcsr_BVALID VALID 0 1 }  { m_axi_arcsr_BREADY READY 1 1 }  { m_axi_arcsr_BRESP RESP 0 2 }  { m_axi_arcsr_BID ID 0 1 }  { m_axi_arcsr_BUSER DATA 0 1 } } }
	sext_ln13 { ap_none {  { sext_ln13 in_data 0 62 } } }
	add { ap_none {  { add in_data 0 32 } } }
	p_A_reader_rs { ap_fifo {  { p_A_reader_rs_din fifo_port_we 1 64 }  { p_A_reader_rs_num_data_valid fifo_status_num_data_valid 0 8 }  { p_A_reader_rs_fifo_cap fifo_update 0 8 }  { p_A_reader_rs_full_n fifo_status 0 1 }  { p_A_reader_rs_write fifo_data 1 1 } } }
}
set moduleName A_row_reader_Pipeline_VITIS_LOOP_13_1
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
set C_modelName {A_row_reader_Pipeline_VITIS_LOOP_13_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ arcsr int 32 regular {axi_master 0}  }
	{ sext_ln13 int 62 regular  }
	{ add int 32 regular  }
	{ p_A_reader_rs int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A_rcsr","offset": { "type": "dynamic","port_name": "A_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln13", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_A_reader_rs", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_arcsr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_arcsr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_arcsr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_arcsr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_arcsr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_arcsr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_arcsr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_arcsr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_arcsr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_arcsr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_arcsr_BUSER sc_in sc_lv 1 signal 0 } 
	{ p_A_reader_rs_din sc_out sc_lv 64 signal 3 } 
	{ p_A_reader_rs_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ p_A_reader_rs_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ p_A_reader_rs_full_n sc_in sc_logic 1 signal 3 } 
	{ p_A_reader_rs_write sc_out sc_logic 1 signal 3 } 
	{ sext_ln13 sc_in sc_lv 62 signal 1 } 
	{ add sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_arcsr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_arcsr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_arcsr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_arcsr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWID" }} , 
 	{ "name": "m_axi_arcsr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_arcsr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_arcsr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_arcsr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_arcsr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_arcsr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_arcsr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_arcsr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_arcsr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_arcsr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WVALID" }} , 
 	{ "name": "m_axi_arcsr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WREADY" }} , 
 	{ "name": "m_axi_arcsr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "WDATA" }} , 
 	{ "name": "m_axi_arcsr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_arcsr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WLAST" }} , 
 	{ "name": "m_axi_arcsr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WID" }} , 
 	{ "name": "m_axi_arcsr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "WUSER" }} , 
 	{ "name": "m_axi_arcsr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_arcsr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_arcsr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arcsr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_arcsr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARID" }} , 
 	{ "name": "m_axi_arcsr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_arcsr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_arcsr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_arcsr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_arcsr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_arcsr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "arcsr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_arcsr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_arcsr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "arcsr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_arcsr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_arcsr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RVALID" }} , 
 	{ "name": "m_axi_arcsr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RREADY" }} , 
 	{ "name": "m_axi_arcsr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arcsr", "role": "RDATA" }} , 
 	{ "name": "m_axi_arcsr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RLAST" }} , 
 	{ "name": "m_axi_arcsr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RID" }} , 
 	{ "name": "m_axi_arcsr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "arcsr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_arcsr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "RUSER" }} , 
 	{ "name": "m_axi_arcsr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "RRESP" }} , 
 	{ "name": "m_axi_arcsr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BVALID" }} , 
 	{ "name": "m_axi_arcsr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BREADY" }} , 
 	{ "name": "m_axi_arcsr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "arcsr", "role": "BRESP" }} , 
 	{ "name": "m_axi_arcsr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BID" }} , 
 	{ "name": "m_axi_arcsr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arcsr", "role": "BUSER" }} , 
 	{ "name": "p_A_reader_rs_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "din" }} , 
 	{ "name": "p_A_reader_rs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "num_data_valid" }} , 
 	{ "name": "p_A_reader_rs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "fifo_cap" }} , 
 	{ "name": "p_A_reader_rs_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "full_n" }} , 
 	{ "name": "p_A_reader_rs_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "write" }} , 
 	{ "name": "sext_ln13", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln13", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_row_reader_Pipeline_VITIS_LOOP_13_1",
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
			{"Name" : "arcsr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arcsr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_A_reader_rs", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_A_reader_rs_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	A_row_reader_Pipeline_VITIS_LOOP_13_1 {
		arcsr {Type I LastRead 1 FirstWrite -1}
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_arcsr_AWVALID VALID 1 1 }  { m_axi_arcsr_AWREADY READY 0 1 }  { m_axi_arcsr_AWADDR ADDR 1 64 }  { m_axi_arcsr_AWID ID 1 1 }  { m_axi_arcsr_AWLEN SIZE 1 32 }  { m_axi_arcsr_AWSIZE BURST 1 3 }  { m_axi_arcsr_AWBURST LOCK 1 2 }  { m_axi_arcsr_AWLOCK CACHE 1 2 }  { m_axi_arcsr_AWCACHE PROT 1 4 }  { m_axi_arcsr_AWPROT QOS 1 3 }  { m_axi_arcsr_AWQOS REGION 1 4 }  { m_axi_arcsr_AWREGION USER 1 4 }  { m_axi_arcsr_AWUSER DATA 1 1 }  { m_axi_arcsr_WVALID VALID 1 1 }  { m_axi_arcsr_WREADY READY 0 1 }  { m_axi_arcsr_WDATA FIFONUM 1 32 }  { m_axi_arcsr_WSTRB STRB 1 4 }  { m_axi_arcsr_WLAST LAST 1 1 }  { m_axi_arcsr_WID ID 1 1 }  { m_axi_arcsr_WUSER DATA 1 1 }  { m_axi_arcsr_ARVALID VALID 1 1 }  { m_axi_arcsr_ARREADY READY 0 1 }  { m_axi_arcsr_ARADDR ADDR 1 64 }  { m_axi_arcsr_ARID ID 1 1 }  { m_axi_arcsr_ARLEN SIZE 1 32 }  { m_axi_arcsr_ARSIZE BURST 1 3 }  { m_axi_arcsr_ARBURST LOCK 1 2 }  { m_axi_arcsr_ARLOCK CACHE 1 2 }  { m_axi_arcsr_ARCACHE PROT 1 4 }  { m_axi_arcsr_ARPROT QOS 1 3 }  { m_axi_arcsr_ARQOS REGION 1 4 }  { m_axi_arcsr_ARREGION USER 1 4 }  { m_axi_arcsr_ARUSER DATA 1 1 }  { m_axi_arcsr_RVALID VALID 0 1 }  { m_axi_arcsr_RREADY READY 1 1 }  { m_axi_arcsr_RDATA FIFONUM 0 32 }  { m_axi_arcsr_RLAST LAST 0 1 }  { m_axi_arcsr_RID ID 0 1 }  { m_axi_arcsr_RFIFONUM LEN 0 9 }  { m_axi_arcsr_RUSER DATA 0 1 }  { m_axi_arcsr_RRESP RESP 0 2 }  { m_axi_arcsr_BVALID VALID 0 1 }  { m_axi_arcsr_BREADY READY 1 1 }  { m_axi_arcsr_BRESP RESP 0 2 }  { m_axi_arcsr_BID ID 0 1 }  { m_axi_arcsr_BUSER DATA 0 1 } } }
	sext_ln13 { ap_none {  { sext_ln13 in_data 0 62 } } }
	add { ap_none {  { add in_data 0 32 } } }
	p_A_reader_rs { ap_fifo {  { p_A_reader_rs_din fifo_port_we 1 64 }  { p_A_reader_rs_num_data_valid fifo_status_num_data_valid 0 8 }  { p_A_reader_rs_fifo_cap fifo_update 0 8 }  { p_A_reader_rs_full_n fifo_status 0 1 }  { p_A_reader_rs_write fifo_data 1 1 } } }
}
