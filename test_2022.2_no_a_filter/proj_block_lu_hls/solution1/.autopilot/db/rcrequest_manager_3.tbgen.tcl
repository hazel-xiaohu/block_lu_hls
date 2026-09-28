set moduleName rcrequest_manager_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rcrequest_manager.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_stream4 int 230 regular {fifo 0 volatile }  }
	{ rrequest4 int 230 regular {fifo 1 volatile }  }
	{ rresponse4 int 168 regular {fifo 0 volatile }  }
	{ rblock4 int 230 regular {fifo 1 volatile }  }
	{ brcsr4 int 128 regular {axi_master 0}  }
	{ B_rcsr int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_stream4", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest4", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rresponse4", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rblock4", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "brcsr4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr4","offset": { "type": "dynamic","port_name": "B_rcsr4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ rcache_stream4_dout sc_in sc_lv 230 signal 0 } 
	{ rcache_stream4_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_stream4_read sc_out sc_logic 1 signal 0 } 
	{ rrequest4_din sc_out sc_lv 230 signal 1 } 
	{ rrequest4_full_n sc_in sc_logic 1 signal 1 } 
	{ rrequest4_write sc_out sc_logic 1 signal 1 } 
	{ rresponse4_dout sc_in sc_lv 168 signal 2 } 
	{ rresponse4_empty_n sc_in sc_logic 1 signal 2 } 
	{ rresponse4_read sc_out sc_logic 1 signal 2 } 
	{ rblock4_din sc_out sc_lv 230 signal 3 } 
	{ rblock4_full_n sc_in sc_logic 1 signal 3 } 
	{ rblock4_write sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_brcsr4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_WDATA sc_out sc_lv 128 signal 4 } 
	{ m_axi_brcsr4_WSTRB sc_out sc_lv 16 signal 4 } 
	{ m_axi_brcsr4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_brcsr4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_RDATA sc_in sc_lv 128 signal 4 } 
	{ m_axi_brcsr4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_brcsr4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_BUSER sc_in sc_lv 1 signal 4 } 
	{ B_rcsr sc_in sc_lv 64 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_rcsr_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_stream4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "dout" }} , 
 	{ "name": "rcache_stream4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "empty_n" }} , 
 	{ "name": "rcache_stream4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "read" }} , 
 	{ "name": "rrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rrequest4", "role": "din" }} , 
 	{ "name": "rrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "full_n" }} , 
 	{ "name": "rrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "write" }} , 
 	{ "name": "rresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse4", "role": "dout" }} , 
 	{ "name": "rresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse4", "role": "empty_n" }} , 
 	{ "name": "rresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse4", "role": "read" }} , 
 	{ "name": "rblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rblock4", "role": "din" }} , 
 	{ "name": "rblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock4", "role": "full_n" }} , 
 	{ "name": "rblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock4", "role": "write" }} , 
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
 	{ "name": "B_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_rcsr", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_rcsr_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_rcsr", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "11", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "rcrequest_manager_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "rrequest_splitter_64_U0"},
			{"ID" : "7", "Name" : "rschedule_access_66_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "rrequest_merger_67_U0"},
			{"ID" : "14", "Name" : "rcollector_68_U0"}],
		"Port" : [
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rrequest_splitter_64_U0", "Port" : "rcache_stream4"}]},
			{"Name" : "rrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "rrequest_merger_67_U0", "Port" : "rrequest4"}]},
			{"Name" : "rresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "rschedule_access_66_U0", "Port" : "rresponse4"}]},
			{"Name" : "rblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "rcollector_68_U0", "Port" : "rblock4"}]},
			{"Name" : "brcsr4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "rschedule_access_66_U0", "Port" : "brcsr4"}]},
			{"Name" : "B_rcsr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_64_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rrequest_splitter_64",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rcache_stream4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "15", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "16", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rcollec", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "17", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93", "Port" : "rscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_64_U0.grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_r_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_r_data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_splitter_64_U0.grp_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_65_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "rrequest_manager_65",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "15", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rrequest_manager_65_Pipeline_VITIS_LOOP_40_1_fu_69", "Port" : "rrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_rrequest_manager_65_Pipeline_VITIS_LOOP_40_1_fu_69", "Port" : "r_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_65_U0.grp_rrequest_manager_65_Pipeline_VITIS_LOOP_40_1_fu_69", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "rrequest_manager_65_Pipeline_VITIS_LOOP_40_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rrequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_data_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_manager_65_U0.grp_rrequest_manager_65_Pipeline_VITIS_LOOP_40_1_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rschedule_access_66_U0", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "rschedule_access_66",
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
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "17", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rresponse4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "brcsr4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr4_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rschedule_access_66_Pipeline_VITIS_LOOP_91_3_fu_271", "Port" : "brcsr4", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "20", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6", "ap_ST_fsm_state7", "ap_ST_fsm_state17", "ap_ST_fsm_state2"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rschedule_access_66_U0.Bridx_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rschedule_access_66_U0.grp_rschedule_access_66_Pipeline_VITIS_LOOP_91_3_fu_271", "Parent" : "7", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rschedule_access_66_U0.grp_rschedule_access_66_Pipeline_VITIS_LOOP_91_3_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_67_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "rrequest_merger_67",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "18", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "r_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "20", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "r_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rrequest4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1_fu_77", "Port" : "rrequest4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_67_U0.grp_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1_fu_77", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "rrequest_merger_67_Pipeline_VITIS_LOOP_129_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rrequest4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rrequest4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_129_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rrequest_merger_67_U0.grp_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rcollector_68_U0", "Parent" : "0",
		"CDFG" : "rcollector_68",
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
			{"Name" : "rcollec", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "16", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcollec_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "19", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rblock4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_164_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_158_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rrequest_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rcollec_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rscheduler_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_first_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.roff_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_req_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcrequest_manager_3 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}
		rresponse4 {Type I LastRead 4 FirstWrite -1}
		rblock4 {Type O LastRead -1 FirstWrite 1}
		brcsr4 {Type I LastRead 5 FirstWrite -1}
		B_rcsr {Type I LastRead 2 FirstWrite -1}}
	rrequest_splitter_64 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_dest_V_out {Type O LastRead -1 FirstWrite 0}
		temp_r_type_V_out {Type O LastRead -1 FirstWrite 0}
		temp_r_Acid_out {Type O LastRead -1 FirstWrite 0}
		temp_r_Acid1_out {Type O LastRead -1 FirstWrite 0}
		temp_r_data_V_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager_65 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_65_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_Acid1_out {Type O LastRead -1 FirstWrite 0}
		curr_request_data_V_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access_66 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse4 {Type I LastRead 4 FirstWrite -1}
		roff1 {Type O LastRead -1 FirstWrite 5}
		brcsr4 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_66_Pipeline_VITIS_LOOP_91_3 {
		access_idx_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		brcsr4 {Type I LastRead 1 FirstWrite -1}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		Bridx_V {Type O LastRead -1 FirstWrite 2}}
	rrequest_merger_67 {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_67_Pipeline_VITIS_LOOP_129_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}
		r_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_Acid1_out {Type O LastRead -1 FirstWrite 1}
		temp_Acid_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}}
	rcollector_68 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff1 {Type I LastRead 2 FirstWrite -1}
		rblock4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_stream4 { ap_fifo {  { rcache_stream4_dout fifo_port_we 0 230 }  { rcache_stream4_empty_n fifo_status 0 1 }  { rcache_stream4_read fifo_data 1 1 } } }
	rrequest4 { ap_fifo {  { rrequest4_din fifo_port_we 1 230 }  { rrequest4_full_n fifo_status 0 1 }  { rrequest4_write fifo_data 1 1 } } }
	rresponse4 { ap_fifo {  { rresponse4_dout fifo_port_we 0 168 }  { rresponse4_empty_n fifo_status 0 1 }  { rresponse4_read fifo_data 1 1 } } }
	rblock4 { ap_fifo {  { rblock4_din fifo_port_we 1 230 }  { rblock4_full_n fifo_status 0 1 }  { rblock4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_brcsr4_AWVALID VALID 1 1 }  { m_axi_brcsr4_AWREADY READY 0 1 }  { m_axi_brcsr4_AWADDR ADDR 1 64 }  { m_axi_brcsr4_AWID ID 1 1 }  { m_axi_brcsr4_AWLEN SIZE 1 32 }  { m_axi_brcsr4_AWSIZE BURST 1 3 }  { m_axi_brcsr4_AWBURST LOCK 1 2 }  { m_axi_brcsr4_AWLOCK CACHE 1 2 }  { m_axi_brcsr4_AWCACHE PROT 1 4 }  { m_axi_brcsr4_AWPROT QOS 1 3 }  { m_axi_brcsr4_AWQOS REGION 1 4 }  { m_axi_brcsr4_AWREGION USER 1 4 }  { m_axi_brcsr4_AWUSER DATA 1 1 }  { m_axi_brcsr4_WVALID VALID 1 1 }  { m_axi_brcsr4_WREADY READY 0 1 }  { m_axi_brcsr4_WDATA FIFONUM 1 128 }  { m_axi_brcsr4_WSTRB STRB 1 16 }  { m_axi_brcsr4_WLAST LAST 1 1 }  { m_axi_brcsr4_WID ID 1 1 }  { m_axi_brcsr4_WUSER DATA 1 1 }  { m_axi_brcsr4_ARVALID VALID 1 1 }  { m_axi_brcsr4_ARREADY READY 0 1 }  { m_axi_brcsr4_ARADDR ADDR 1 64 }  { m_axi_brcsr4_ARID ID 1 1 }  { m_axi_brcsr4_ARLEN SIZE 1 32 }  { m_axi_brcsr4_ARSIZE BURST 1 3 }  { m_axi_brcsr4_ARBURST LOCK 1 2 }  { m_axi_brcsr4_ARLOCK CACHE 1 2 }  { m_axi_brcsr4_ARCACHE PROT 1 4 }  { m_axi_brcsr4_ARPROT QOS 1 3 }  { m_axi_brcsr4_ARQOS REGION 1 4 }  { m_axi_brcsr4_ARREGION USER 1 4 }  { m_axi_brcsr4_ARUSER DATA 1 1 }  { m_axi_brcsr4_RVALID VALID 0 1 }  { m_axi_brcsr4_RREADY READY 1 1 }  { m_axi_brcsr4_RDATA FIFONUM 0 128 }  { m_axi_brcsr4_RLAST LAST 0 1 }  { m_axi_brcsr4_RID ID 0 1 }  { m_axi_brcsr4_RFIFONUM LEN 0 9 }  { m_axi_brcsr4_RUSER DATA 0 1 }  { m_axi_brcsr4_RRESP RESP 0 2 }  { m_axi_brcsr4_BVALID VALID 0 1 }  { m_axi_brcsr4_BREADY READY 1 1 }  { m_axi_brcsr4_BRESP RESP 0 2 }  { m_axi_brcsr4_BID ID 0 1 }  { m_axi_brcsr4_BUSER DATA 0 1 } } }
	B_rcsr { ap_none {  { B_rcsr in_data 0 64 }  { B_rcsr_ap_vld in_vld 0 1 } } }
}
