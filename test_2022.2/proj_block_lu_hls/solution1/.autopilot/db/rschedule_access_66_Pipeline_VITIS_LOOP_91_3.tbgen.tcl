set moduleName rschedule_access_66_Pipeline_VITIS_LOOP_91_3
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
set C_modelName {rschedule_access.66_Pipeline_VITIS_LOOP_91_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ access_idx_cast_cast_cast int 30 regular  }
	{ brcsr4 int 128 regular {axi_master 0}  }
	{ sext_ln91 int 60 regular  }
	{ add int 31 regular  }
	{ trunc_ln int 1 regular  }
	{ Bridx_V int 128 regular {array 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "access_idx_cast_cast_cast", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "brcsr4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr4","offset": { "type": "dynamic","port_name": "B_rcsr4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln91", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
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
	{ m_axi_brcsr4_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr4_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr4_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_brcsr4_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_brcsr4_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr4_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr4_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_brcsr4_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_brcsr4_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_BUSER sc_in sc_lv 1 signal 1 } 
	{ access_idx_cast_cast_cast sc_in sc_lv 30 signal 0 } 
	{ sext_ln91 sc_in sc_lv 60 signal 2 } 
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
 	{ "name": "m_axi_brcsr4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BUSER" }} , 
 	{ "name": "access_idx_cast_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "access_idx_cast_cast_cast", "role": "default" }} , 
 	{ "name": "sext_ln91", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln91", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "Bridx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "address0" }} , 
 	{ "name": "Bridx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "ce0" }} , 
 	{ "name": "Bridx_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "we0" }} , 
 	{ "name": "Bridx_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bridx_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rschedule_access_66_Pipeline_VITIS_LOOP_91_3",
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
			{"Name" : "brcsr4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access_66_Pipeline_VITIS_LOOP_91_3 {
		access_idx_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		brcsr4 {Type I LastRead 1 FirstWrite -1}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
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
	 { m_axi {  { m_axi_brcsr4_AWVALID VALID 1 1 }  { m_axi_brcsr4_AWREADY READY 0 1 }  { m_axi_brcsr4_AWADDR ADDR 1 64 }  { m_axi_brcsr4_AWID ID 1 1 }  { m_axi_brcsr4_AWLEN SIZE 1 32 }  { m_axi_brcsr4_AWSIZE BURST 1 3 }  { m_axi_brcsr4_AWBURST LOCK 1 2 }  { m_axi_brcsr4_AWLOCK CACHE 1 2 }  { m_axi_brcsr4_AWCACHE PROT 1 4 }  { m_axi_brcsr4_AWPROT QOS 1 3 }  { m_axi_brcsr4_AWQOS REGION 1 4 }  { m_axi_brcsr4_AWREGION USER 1 4 }  { m_axi_brcsr4_AWUSER DATA 1 1 }  { m_axi_brcsr4_WVALID VALID 1 1 }  { m_axi_brcsr4_WREADY READY 0 1 }  { m_axi_brcsr4_WDATA FIFONUM 1 128 }  { m_axi_brcsr4_WSTRB STRB 1 16 }  { m_axi_brcsr4_WLAST LAST 1 1 }  { m_axi_brcsr4_WID ID 1 1 }  { m_axi_brcsr4_WUSER DATA 1 1 }  { m_axi_brcsr4_ARVALID VALID 1 1 }  { m_axi_brcsr4_ARREADY READY 0 1 }  { m_axi_brcsr4_ARADDR ADDR 1 64 }  { m_axi_brcsr4_ARID ID 1 1 }  { m_axi_brcsr4_ARLEN SIZE 1 32 }  { m_axi_brcsr4_ARSIZE BURST 1 3 }  { m_axi_brcsr4_ARBURST LOCK 1 2 }  { m_axi_brcsr4_ARLOCK CACHE 1 2 }  { m_axi_brcsr4_ARCACHE PROT 1 4 }  { m_axi_brcsr4_ARPROT QOS 1 3 }  { m_axi_brcsr4_ARQOS REGION 1 4 }  { m_axi_brcsr4_ARREGION USER 1 4 }  { m_axi_brcsr4_ARUSER DATA 1 1 }  { m_axi_brcsr4_RVALID VALID 0 1 }  { m_axi_brcsr4_RREADY READY 1 1 }  { m_axi_brcsr4_RDATA FIFONUM 0 128 }  { m_axi_brcsr4_RLAST LAST 0 1 }  { m_axi_brcsr4_RID ID 0 1 }  { m_axi_brcsr4_RFIFONUM LEN 0 9 }  { m_axi_brcsr4_RUSER DATA 0 1 }  { m_axi_brcsr4_RRESP RESP 0 2 }  { m_axi_brcsr4_BVALID VALID 0 1 }  { m_axi_brcsr4_BREADY READY 1 1 }  { m_axi_brcsr4_BRESP RESP 0 2 }  { m_axi_brcsr4_BID ID 0 1 }  { m_axi_brcsr4_BUSER DATA 0 1 } } }
	sext_ln91 { ap_none {  { sext_ln91 in_data 0 60 } } }
	add { ap_none {  { add in_data 0 31 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 1 } } }
	Bridx_V { ap_memory {  { Bridx_V_address0 mem_address 1 1 }  { Bridx_V_ce0 mem_ce 1 1 }  { Bridx_V_we0 mem_we 1 1 }  { Bridx_V_d0 mem_din 1 128 } } }
}
set moduleName rschedule_access_66_Pipeline_VITIS_LOOP_91_3
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
set C_modelName {rschedule_access.66_Pipeline_VITIS_LOOP_91_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ access_idx_cast_cast_cast int 30 regular  }
	{ brcsr4 int 128 regular {axi_master 0}  }
	{ sext_ln91 int 60 regular  }
	{ add int 31 regular  }
	{ trunc_ln int 1 regular  }
	{ Bridx_V int 128 regular {array 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "access_idx_cast_cast_cast", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "brcsr4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr4","offset": { "type": "dynamic","port_name": "B_rcsr4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln91", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
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
	{ m_axi_brcsr4_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr4_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr4_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_brcsr4_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_brcsr4_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_brcsr4_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_brcsr4_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_brcsr4_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_brcsr4_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_brcsr4_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_brcsr4_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_brcsr4_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_brcsr4_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_brcsr4_BUSER sc_in sc_lv 1 signal 1 } 
	{ access_idx_cast_cast_cast sc_in sc_lv 30 signal 0 } 
	{ sext_ln91 sc_in sc_lv 60 signal 2 } 
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
 	{ "name": "m_axi_brcsr4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_brcsr4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_brcsr4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_brcsr4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWID" }} , 
 	{ "name": "m_axi_brcsr4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_brcsr4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_brcsr4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_brcsr4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_brcsr4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_brcsr4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_brcsr4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_brcsr4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_brcsr4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_brcsr4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WVALID" }} , 
 	{ "name": "m_axi_brcsr4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WREADY" }} , 
 	{ "name": "m_axi_brcsr4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "WDATA" }} , 
 	{ "name": "m_axi_brcsr4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_brcsr4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WLAST" }} , 
 	{ "name": "m_axi_brcsr4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WID" }} , 
 	{ "name": "m_axi_brcsr4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "WUSER" }} , 
 	{ "name": "m_axi_brcsr4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_brcsr4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_brcsr4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_brcsr4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARID" }} , 
 	{ "name": "m_axi_brcsr4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_brcsr4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_brcsr4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_brcsr4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_brcsr4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_brcsr4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_brcsr4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_brcsr4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_brcsr4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_brcsr4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RVALID" }} , 
 	{ "name": "m_axi_brcsr4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RREADY" }} , 
 	{ "name": "m_axi_brcsr4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "RDATA" }} , 
 	{ "name": "m_axi_brcsr4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RLAST" }} , 
 	{ "name": "m_axi_brcsr4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RID" }} , 
 	{ "name": "m_axi_brcsr4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "RUSER" }} , 
 	{ "name": "m_axi_brcsr4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "RRESP" }} , 
 	{ "name": "m_axi_brcsr4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BVALID" }} , 
 	{ "name": "m_axi_brcsr4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BREADY" }} , 
 	{ "name": "m_axi_brcsr4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "BRESP" }} , 
 	{ "name": "m_axi_brcsr4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BID" }} , 
 	{ "name": "m_axi_brcsr4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "BUSER" }} , 
 	{ "name": "access_idx_cast_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "access_idx_cast_cast_cast", "role": "default" }} , 
 	{ "name": "sext_ln91", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln91", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "Bridx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "address0" }} , 
 	{ "name": "Bridx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "ce0" }} , 
 	{ "name": "Bridx_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bridx_V", "role": "we0" }} , 
 	{ "name": "Bridx_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bridx_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rschedule_access_66_Pipeline_VITIS_LOOP_91_3",
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
			{"Name" : "brcsr4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access_66_Pipeline_VITIS_LOOP_91_3 {
		access_idx_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		brcsr4 {Type I LastRead 1 FirstWrite -1}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
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
	 { m_axi {  { m_axi_brcsr4_AWVALID VALID 1 1 }  { m_axi_brcsr4_AWREADY READY 0 1 }  { m_axi_brcsr4_AWADDR ADDR 1 64 }  { m_axi_brcsr4_AWID ID 1 1 }  { m_axi_brcsr4_AWLEN SIZE 1 32 }  { m_axi_brcsr4_AWSIZE BURST 1 3 }  { m_axi_brcsr4_AWBURST LOCK 1 2 }  { m_axi_brcsr4_AWLOCK CACHE 1 2 }  { m_axi_brcsr4_AWCACHE PROT 1 4 }  { m_axi_brcsr4_AWPROT QOS 1 3 }  { m_axi_brcsr4_AWQOS REGION 1 4 }  { m_axi_brcsr4_AWREGION USER 1 4 }  { m_axi_brcsr4_AWUSER DATA 1 1 }  { m_axi_brcsr4_WVALID VALID 1 1 }  { m_axi_brcsr4_WREADY READY 0 1 }  { m_axi_brcsr4_WDATA FIFONUM 1 128 }  { m_axi_brcsr4_WSTRB STRB 1 16 }  { m_axi_brcsr4_WLAST LAST 1 1 }  { m_axi_brcsr4_WID ID 1 1 }  { m_axi_brcsr4_WUSER DATA 1 1 }  { m_axi_brcsr4_ARVALID VALID 1 1 }  { m_axi_brcsr4_ARREADY READY 0 1 }  { m_axi_brcsr4_ARADDR ADDR 1 64 }  { m_axi_brcsr4_ARID ID 1 1 }  { m_axi_brcsr4_ARLEN SIZE 1 32 }  { m_axi_brcsr4_ARSIZE BURST 1 3 }  { m_axi_brcsr4_ARBURST LOCK 1 2 }  { m_axi_brcsr4_ARLOCK CACHE 1 2 }  { m_axi_brcsr4_ARCACHE PROT 1 4 }  { m_axi_brcsr4_ARPROT QOS 1 3 }  { m_axi_brcsr4_ARQOS REGION 1 4 }  { m_axi_brcsr4_ARREGION USER 1 4 }  { m_axi_brcsr4_ARUSER DATA 1 1 }  { m_axi_brcsr4_RVALID VALID 0 1 }  { m_axi_brcsr4_RREADY READY 1 1 }  { m_axi_brcsr4_RDATA FIFONUM 0 128 }  { m_axi_brcsr4_RLAST LAST 0 1 }  { m_axi_brcsr4_RID ID 0 1 }  { m_axi_brcsr4_RFIFONUM LEN 0 9 }  { m_axi_brcsr4_RUSER DATA 0 1 }  { m_axi_brcsr4_RRESP RESP 0 2 }  { m_axi_brcsr4_BVALID VALID 0 1 }  { m_axi_brcsr4_BREADY READY 1 1 }  { m_axi_brcsr4_BRESP RESP 0 2 }  { m_axi_brcsr4_BID ID 0 1 }  { m_axi_brcsr4_BUSER DATA 0 1 } } }
	sext_ln91 { ap_none {  { sext_ln91 in_data 0 60 } } }
	add { ap_none {  { add in_data 0 31 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 1 } } }
	Bridx_V { ap_memory {  { Bridx_V_address0 mem_address 1 1 }  { Bridx_V_ce0 mem_ce 1 1 }  { Bridx_V_we0 mem_we 1 1 }  { Bridx_V_d0 mem_din 1 128 } } }
}
