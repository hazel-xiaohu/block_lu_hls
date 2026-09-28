set moduleName rschedule_access_56
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
set C_modelName {rschedule_access.56}
set C_modelType { void 0 }
set C_modelArgList {
	{ rscheduler int 230 regular {fifo 0 volatile }  }
	{ rresponse2 int 168 regular {fifo 0 volatile }  }
	{ roff1 int 160 regular {fifo 1 volatile }  }
	{ brcsr2 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ r_req int 230 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rscheduler", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "rresponse2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "roff1", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY"} , 
 	{ "Name" : "brcsr2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_rcsr2","offset": { "type": "dynamic","port_name": "B_rcsr2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "r_req", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rscheduler_dout sc_in sc_lv 230 signal 0 } 
	{ rscheduler_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rscheduler_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ rscheduler_read sc_out sc_logic 1 signal 0 } 
	{ rresponse2_dout sc_in sc_lv 168 signal 1 } 
	{ rresponse2_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ rresponse2_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ rresponse2_empty_n sc_in sc_logic 1 signal 1 } 
	{ rresponse2_read sc_out sc_logic 1 signal 1 } 
	{ roff1_din sc_out sc_lv 160 signal 2 } 
	{ roff1_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ roff1_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ roff1_full_n sc_in sc_logic 1 signal 2 } 
	{ roff1_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_brcsr2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_brcsr2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_brcsr2_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_brcsr2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_brcsr2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_brcsr2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_brcsr2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ r_req_din sc_out sc_lv 230 signal 5 } 
	{ r_req_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ r_req_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ r_req_full_n sc_in sc_logic 1 signal 5 } 
	{ r_req_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rscheduler", "role": "dout" }} , 
 	{ "name": "rscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rscheduler", "role": "num_data_valid" }} , 
 	{ "name": "rscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rscheduler", "role": "fifo_cap" }} , 
 	{ "name": "rscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "empty_n" }} , 
 	{ "name": "rscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "read" }} , 
 	{ "name": "rresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse2", "role": "dout" }} , 
 	{ "name": "rresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "num_data_valid" }} , 
 	{ "name": "rresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "fifo_cap" }} , 
 	{ "name": "rresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "empty_n" }} , 
 	{ "name": "rresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "read" }} , 
 	{ "name": "roff1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff1", "role": "din" }} , 
 	{ "name": "roff1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "num_data_valid" }} , 
 	{ "name": "roff1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "roff1", "role": "fifo_cap" }} , 
 	{ "name": "roff1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "full_n" }} , 
 	{ "name": "roff1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff1", "role": "write" }} , 
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
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "r_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "r_req", "role": "din" }} , 
 	{ "name": "r_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_req", "role": "num_data_valid" }} , 
 	{ "name": "r_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r_req", "role": "fifo_cap" }} , 
 	{ "name": "r_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "full_n" }} , 
 	{ "name": "r_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "rschedule_access_56",
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
			{"Name" : "rscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "roff1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "roff1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "brcsr2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "brcsr2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_rschedule_access_56_Pipeline_VITIS_LOOP_91_3_fu_271", "Port" : "brcsr2", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "r_req_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state6", "ap_ST_fsm_state7", "ap_ST_fsm_state17", "ap_ST_fsm_state2"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Bridx_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rschedule_access_56_Pipeline_VITIS_LOOP_91_3_fu_271", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "rschedule_access_56_Pipeline_VITIS_LOOP_91_3",
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
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bridx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rschedule_access_56_Pipeline_VITIS_LOOP_91_3_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	rschedule_access_56 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse2 {Type I LastRead 4 FirstWrite -1}
		roff1 {Type O LastRead -1 FirstWrite 5}
		brcsr2 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_56_Pipeline_VITIS_LOOP_91_3 {
		access_idx_cast_cast_cast {Type I LastRead 0 FirstWrite -1}
		brcsr2 {Type I LastRead 1 FirstWrite -1}
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
]}

set Spec2ImplPortList { 
	rscheduler { ap_fifo {  { rscheduler_dout fifo_port_we 0 230 }  { rscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { rscheduler_fifo_cap fifo_update 0 7 }  { rscheduler_empty_n fifo_status 0 1 }  { rscheduler_read fifo_data 1 1 } } }
	rresponse2 { ap_fifo {  { rresponse2_dout fifo_port_we 0 168 }  { rresponse2_num_data_valid fifo_status_num_data_valid 0 5 }  { rresponse2_fifo_cap fifo_update 0 5 }  { rresponse2_empty_n fifo_status 0 1 }  { rresponse2_read fifo_data 1 1 } } }
	roff1 { ap_fifo {  { roff1_din fifo_port_we 1 160 }  { roff1_num_data_valid fifo_status_num_data_valid 0 7 }  { roff1_fifo_cap fifo_update 0 7 }  { roff1_full_n fifo_status 0 1 }  { roff1_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_brcsr2_AWVALID VALID 1 1 }  { m_axi_brcsr2_AWREADY READY 0 1 }  { m_axi_brcsr2_AWADDR ADDR 1 64 }  { m_axi_brcsr2_AWID ID 1 1 }  { m_axi_brcsr2_AWLEN SIZE 1 32 }  { m_axi_brcsr2_AWSIZE BURST 1 3 }  { m_axi_brcsr2_AWBURST LOCK 1 2 }  { m_axi_brcsr2_AWLOCK CACHE 1 2 }  { m_axi_brcsr2_AWCACHE PROT 1 4 }  { m_axi_brcsr2_AWPROT QOS 1 3 }  { m_axi_brcsr2_AWQOS REGION 1 4 }  { m_axi_brcsr2_AWREGION USER 1 4 }  { m_axi_brcsr2_AWUSER DATA 1 1 }  { m_axi_brcsr2_WVALID VALID 1 1 }  { m_axi_brcsr2_WREADY READY 0 1 }  { m_axi_brcsr2_WDATA FIFONUM 1 128 }  { m_axi_brcsr2_WSTRB STRB 1 16 }  { m_axi_brcsr2_WLAST LAST 1 1 }  { m_axi_brcsr2_WID ID 1 1 }  { m_axi_brcsr2_WUSER DATA 1 1 }  { m_axi_brcsr2_ARVALID VALID 1 1 }  { m_axi_brcsr2_ARREADY READY 0 1 }  { m_axi_brcsr2_ARADDR ADDR 1 64 }  { m_axi_brcsr2_ARID ID 1 1 }  { m_axi_brcsr2_ARLEN SIZE 1 32 }  { m_axi_brcsr2_ARSIZE BURST 1 3 }  { m_axi_brcsr2_ARBURST LOCK 1 2 }  { m_axi_brcsr2_ARLOCK CACHE 1 2 }  { m_axi_brcsr2_ARCACHE PROT 1 4 }  { m_axi_brcsr2_ARPROT QOS 1 3 }  { m_axi_brcsr2_ARQOS REGION 1 4 }  { m_axi_brcsr2_ARREGION USER 1 4 }  { m_axi_brcsr2_ARUSER DATA 1 1 }  { m_axi_brcsr2_RVALID VALID 0 1 }  { m_axi_brcsr2_RREADY READY 1 1 }  { m_axi_brcsr2_RDATA FIFONUM 0 128 }  { m_axi_brcsr2_RLAST LAST 0 1 }  { m_axi_brcsr2_RID ID 0 1 }  { m_axi_brcsr2_RFIFONUM LEN 0 9 }  { m_axi_brcsr2_RUSER DATA 0 1 }  { m_axi_brcsr2_RRESP RESP 0 2 }  { m_axi_brcsr2_BVALID VALID 0 1 }  { m_axi_brcsr2_BREADY READY 1 1 }  { m_axi_brcsr2_BRESP RESP 0 2 }  { m_axi_brcsr2_BID ID 0 1 }  { m_axi_brcsr2_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	r_req { ap_fifo {  { r_req_din fifo_port_we 1 230 }  { r_req_num_data_valid fifo_status_num_data_valid 0 7 }  { r_req_fifo_cap fifo_update 0 7 }  { r_req_full_n fifo_status 0 1 }  { r_req_write fifo_data 1 1 } } }
}
