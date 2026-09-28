set moduleName generate_data
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
set C_modelName {generate_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank1_d int 68 regular {fifo 0 volatile }  }
	{ bval1 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid1 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock1d int 134 regular {fifo 1 volatile }  }
	{ cblock1d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank1_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val1","offset": { "type": "dynamic","port_name": "B_val1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid1","offset": { "type": "dynamic","port_name": "B_cid1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_result_bank1_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank1_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank1_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank1_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank1_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval1_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid1_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock1d_din sc_out sc_lv 134 signal 5 } 
	{ vblock1d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock1d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock1d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock1d_write sc_out sc_logic 1 signal 5 } 
	{ cblock1d_din sc_out sc_lv 134 signal 6 } 
	{ cblock1d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock1d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock1d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock1d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank1_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank1_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank1_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank1_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank1_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "read" }} , 
 	{ "name": "m_axi_bval1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWID" }} , 
 	{ "name": "m_axi_bval1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WID" }} , 
 	{ "name": "m_axi_bval1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARID" }} , 
 	{ "name": "m_axi_bval1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RID" }} , 
 	{ "name": "m_axi_bval1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BID" }} , 
 	{ "name": "m_axi_bval1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WID" }} , 
 	{ "name": "m_axi_bcid1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RID" }} , 
 	{ "name": "m_axi_bcid1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BID" }} , 
 	{ "name": "m_axi_bcid1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock1d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1d", "role": "din" }} , 
 	{ "name": "vblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "num_data_valid" }} , 
 	{ "name": "vblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "fifo_cap" }} , 
 	{ "name": "vblock1d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "full_n" }} , 
 	{ "name": "vblock1d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "write" }} , 
 	{ "name": "cblock1d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1d", "role": "din" }} , 
 	{ "name": "cblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "num_data_valid" }} , 
 	{ "name": "cblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "fifo_cap" }} , 
 	{ "name": "cblock1d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "full_n" }} , 
 	{ "name": "cblock1d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data",
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
			{"Name" : "rcache_result_bank1_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank1_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock1d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock1d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock1d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock1d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data {
		rcache_result_bank1_d {Type I LastRead 1 FirstWrite -1}
		bval1 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid1 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type O LastRead -1 FirstWrite 12}
		cblock1d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank1_d { ap_fifo {  { rcache_result_bank1_d_dout fifo_port_we 0 68 }  { rcache_result_bank1_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank1_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank1_d_empty_n fifo_status 0 1 }  { rcache_result_bank1_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval1_AWVALID VALID 1 1 }  { m_axi_bval1_AWREADY READY 0 1 }  { m_axi_bval1_AWADDR ADDR 1 64 }  { m_axi_bval1_AWID ID 1 1 }  { m_axi_bval1_AWLEN SIZE 1 32 }  { m_axi_bval1_AWSIZE BURST 1 3 }  { m_axi_bval1_AWBURST LOCK 1 2 }  { m_axi_bval1_AWLOCK CACHE 1 2 }  { m_axi_bval1_AWCACHE PROT 1 4 }  { m_axi_bval1_AWPROT QOS 1 3 }  { m_axi_bval1_AWQOS REGION 1 4 }  { m_axi_bval1_AWREGION USER 1 4 }  { m_axi_bval1_AWUSER DATA 1 1 }  { m_axi_bval1_WVALID VALID 1 1 }  { m_axi_bval1_WREADY READY 0 1 }  { m_axi_bval1_WDATA FIFONUM 1 128 }  { m_axi_bval1_WSTRB STRB 1 16 }  { m_axi_bval1_WLAST LAST 1 1 }  { m_axi_bval1_WID ID 1 1 }  { m_axi_bval1_WUSER DATA 1 1 }  { m_axi_bval1_ARVALID VALID 1 1 }  { m_axi_bval1_ARREADY READY 0 1 }  { m_axi_bval1_ARADDR ADDR 1 64 }  { m_axi_bval1_ARID ID 1 1 }  { m_axi_bval1_ARLEN SIZE 1 32 }  { m_axi_bval1_ARSIZE BURST 1 3 }  { m_axi_bval1_ARBURST LOCK 1 2 }  { m_axi_bval1_ARLOCK CACHE 1 2 }  { m_axi_bval1_ARCACHE PROT 1 4 }  { m_axi_bval1_ARPROT QOS 1 3 }  { m_axi_bval1_ARQOS REGION 1 4 }  { m_axi_bval1_ARREGION USER 1 4 }  { m_axi_bval1_ARUSER DATA 1 1 }  { m_axi_bval1_RVALID VALID 0 1 }  { m_axi_bval1_RREADY READY 1 1 }  { m_axi_bval1_RDATA FIFONUM 0 128 }  { m_axi_bval1_RLAST LAST 0 1 }  { m_axi_bval1_RID ID 0 1 }  { m_axi_bval1_RFIFONUM LEN 0 9 }  { m_axi_bval1_RUSER DATA 0 1 }  { m_axi_bval1_RRESP RESP 0 2 }  { m_axi_bval1_BVALID VALID 0 1 }  { m_axi_bval1_BREADY READY 1 1 }  { m_axi_bval1_BRESP RESP 0 2 }  { m_axi_bval1_BID ID 0 1 }  { m_axi_bval1_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid1_AWVALID VALID 1 1 }  { m_axi_bcid1_AWREADY READY 0 1 }  { m_axi_bcid1_AWADDR ADDR 1 64 }  { m_axi_bcid1_AWID ID 1 1 }  { m_axi_bcid1_AWLEN SIZE 1 32 }  { m_axi_bcid1_AWSIZE BURST 1 3 }  { m_axi_bcid1_AWBURST LOCK 1 2 }  { m_axi_bcid1_AWLOCK CACHE 1 2 }  { m_axi_bcid1_AWCACHE PROT 1 4 }  { m_axi_bcid1_AWPROT QOS 1 3 }  { m_axi_bcid1_AWQOS REGION 1 4 }  { m_axi_bcid1_AWREGION USER 1 4 }  { m_axi_bcid1_AWUSER DATA 1 1 }  { m_axi_bcid1_WVALID VALID 1 1 }  { m_axi_bcid1_WREADY READY 0 1 }  { m_axi_bcid1_WDATA FIFONUM 1 128 }  { m_axi_bcid1_WSTRB STRB 1 16 }  { m_axi_bcid1_WLAST LAST 1 1 }  { m_axi_bcid1_WID ID 1 1 }  { m_axi_bcid1_WUSER DATA 1 1 }  { m_axi_bcid1_ARVALID VALID 1 1 }  { m_axi_bcid1_ARREADY READY 0 1 }  { m_axi_bcid1_ARADDR ADDR 1 64 }  { m_axi_bcid1_ARID ID 1 1 }  { m_axi_bcid1_ARLEN SIZE 1 32 }  { m_axi_bcid1_ARSIZE BURST 1 3 }  { m_axi_bcid1_ARBURST LOCK 1 2 }  { m_axi_bcid1_ARLOCK CACHE 1 2 }  { m_axi_bcid1_ARCACHE PROT 1 4 }  { m_axi_bcid1_ARPROT QOS 1 3 }  { m_axi_bcid1_ARQOS REGION 1 4 }  { m_axi_bcid1_ARREGION USER 1 4 }  { m_axi_bcid1_ARUSER DATA 1 1 }  { m_axi_bcid1_RVALID VALID 0 1 }  { m_axi_bcid1_RREADY READY 1 1 }  { m_axi_bcid1_RDATA FIFONUM 0 128 }  { m_axi_bcid1_RLAST LAST 0 1 }  { m_axi_bcid1_RID ID 0 1 }  { m_axi_bcid1_RFIFONUM LEN 0 9 }  { m_axi_bcid1_RUSER DATA 0 1 }  { m_axi_bcid1_RRESP RESP 0 2 }  { m_axi_bcid1_BVALID VALID 0 1 }  { m_axi_bcid1_BREADY READY 1 1 }  { m_axi_bcid1_BRESP RESP 0 2 }  { m_axi_bcid1_BID ID 0 1 }  { m_axi_bcid1_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock1d { ap_fifo {  { vblock1d_din fifo_port_we 1 134 }  { vblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock1d_fifo_cap fifo_update 0 8 }  { vblock1d_full_n fifo_status 0 1 }  { vblock1d_write fifo_data 1 1 } } }
	cblock1d { ap_fifo {  { cblock1d_din fifo_port_we 1 134 }  { cblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock1d_fifo_cap fifo_update 0 8 }  { cblock1d_full_n fifo_status 0 1 }  { cblock1d_write fifo_data 1 1 } } }
}
set moduleName generate_data
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
set C_modelName {generate_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank1_d int 68 regular {fifo 0 volatile }  }
	{ bval1 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid1 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock1d int 134 regular {fifo 1 volatile }  }
	{ cblock1d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank1_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val1","offset": { "type": "dynamic","port_name": "B_val1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid1","offset": { "type": "dynamic","port_name": "B_cid1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rcache_result_bank1_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank1_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank1_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank1_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank1_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval1_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval1_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid1_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid1_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock1d_din sc_out sc_lv 134 signal 5 } 
	{ vblock1d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock1d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock1d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock1d_write sc_out sc_logic 1 signal 5 } 
	{ cblock1d_din sc_out sc_lv 134 signal 6 } 
	{ cblock1d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock1d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock1d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock1d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank1_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank1_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank1_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank1_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank1_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank1_d", "role": "read" }} , 
 	{ "name": "m_axi_bval1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWID" }} , 
 	{ "name": "m_axi_bval1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WID" }} , 
 	{ "name": "m_axi_bval1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARID" }} , 
 	{ "name": "m_axi_bval1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RID" }} , 
 	{ "name": "m_axi_bval1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BID" }} , 
 	{ "name": "m_axi_bval1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval1", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WID" }} , 
 	{ "name": "m_axi_bcid1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RID" }} , 
 	{ "name": "m_axi_bcid1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BID" }} , 
 	{ "name": "m_axi_bcid1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid1", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock1d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1d", "role": "din" }} , 
 	{ "name": "vblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "num_data_valid" }} , 
 	{ "name": "vblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "fifo_cap" }} , 
 	{ "name": "vblock1d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "full_n" }} , 
 	{ "name": "vblock1d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "write" }} , 
 	{ "name": "cblock1d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1d", "role": "din" }} , 
 	{ "name": "cblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "num_data_valid" }} , 
 	{ "name": "cblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "fifo_cap" }} , 
 	{ "name": "cblock1d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "full_n" }} , 
 	{ "name": "cblock1d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data",
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
			{"Name" : "rcache_result_bank1_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank1_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock1d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock1d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock1d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock1d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data {
		rcache_result_bank1_d {Type I LastRead 1 FirstWrite -1}
		bval1 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid1 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type O LastRead -1 FirstWrite 12}
		cblock1d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank1_d { ap_fifo {  { rcache_result_bank1_d_dout fifo_port_we 0 68 }  { rcache_result_bank1_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank1_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank1_d_empty_n fifo_status 0 1 }  { rcache_result_bank1_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval1_AWVALID VALID 1 1 }  { m_axi_bval1_AWREADY READY 0 1 }  { m_axi_bval1_AWADDR ADDR 1 64 }  { m_axi_bval1_AWID ID 1 1 }  { m_axi_bval1_AWLEN SIZE 1 32 }  { m_axi_bval1_AWSIZE BURST 1 3 }  { m_axi_bval1_AWBURST LOCK 1 2 }  { m_axi_bval1_AWLOCK CACHE 1 2 }  { m_axi_bval1_AWCACHE PROT 1 4 }  { m_axi_bval1_AWPROT QOS 1 3 }  { m_axi_bval1_AWQOS REGION 1 4 }  { m_axi_bval1_AWREGION USER 1 4 }  { m_axi_bval1_AWUSER DATA 1 1 }  { m_axi_bval1_WVALID VALID 1 1 }  { m_axi_bval1_WREADY READY 0 1 }  { m_axi_bval1_WDATA FIFONUM 1 128 }  { m_axi_bval1_WSTRB STRB 1 16 }  { m_axi_bval1_WLAST LAST 1 1 }  { m_axi_bval1_WID ID 1 1 }  { m_axi_bval1_WUSER DATA 1 1 }  { m_axi_bval1_ARVALID VALID 1 1 }  { m_axi_bval1_ARREADY READY 0 1 }  { m_axi_bval1_ARADDR ADDR 1 64 }  { m_axi_bval1_ARID ID 1 1 }  { m_axi_bval1_ARLEN SIZE 1 32 }  { m_axi_bval1_ARSIZE BURST 1 3 }  { m_axi_bval1_ARBURST LOCK 1 2 }  { m_axi_bval1_ARLOCK CACHE 1 2 }  { m_axi_bval1_ARCACHE PROT 1 4 }  { m_axi_bval1_ARPROT QOS 1 3 }  { m_axi_bval1_ARQOS REGION 1 4 }  { m_axi_bval1_ARREGION USER 1 4 }  { m_axi_bval1_ARUSER DATA 1 1 }  { m_axi_bval1_RVALID VALID 0 1 }  { m_axi_bval1_RREADY READY 1 1 }  { m_axi_bval1_RDATA FIFONUM 0 128 }  { m_axi_bval1_RLAST LAST 0 1 }  { m_axi_bval1_RID ID 0 1 }  { m_axi_bval1_RFIFONUM LEN 0 9 }  { m_axi_bval1_RUSER DATA 0 1 }  { m_axi_bval1_RRESP RESP 0 2 }  { m_axi_bval1_BVALID VALID 0 1 }  { m_axi_bval1_BREADY READY 1 1 }  { m_axi_bval1_BRESP RESP 0 2 }  { m_axi_bval1_BID ID 0 1 }  { m_axi_bval1_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid1_AWVALID VALID 1 1 }  { m_axi_bcid1_AWREADY READY 0 1 }  { m_axi_bcid1_AWADDR ADDR 1 64 }  { m_axi_bcid1_AWID ID 1 1 }  { m_axi_bcid1_AWLEN SIZE 1 32 }  { m_axi_bcid1_AWSIZE BURST 1 3 }  { m_axi_bcid1_AWBURST LOCK 1 2 }  { m_axi_bcid1_AWLOCK CACHE 1 2 }  { m_axi_bcid1_AWCACHE PROT 1 4 }  { m_axi_bcid1_AWPROT QOS 1 3 }  { m_axi_bcid1_AWQOS REGION 1 4 }  { m_axi_bcid1_AWREGION USER 1 4 }  { m_axi_bcid1_AWUSER DATA 1 1 }  { m_axi_bcid1_WVALID VALID 1 1 }  { m_axi_bcid1_WREADY READY 0 1 }  { m_axi_bcid1_WDATA FIFONUM 1 128 }  { m_axi_bcid1_WSTRB STRB 1 16 }  { m_axi_bcid1_WLAST LAST 1 1 }  { m_axi_bcid1_WID ID 1 1 }  { m_axi_bcid1_WUSER DATA 1 1 }  { m_axi_bcid1_ARVALID VALID 1 1 }  { m_axi_bcid1_ARREADY READY 0 1 }  { m_axi_bcid1_ARADDR ADDR 1 64 }  { m_axi_bcid1_ARID ID 1 1 }  { m_axi_bcid1_ARLEN SIZE 1 32 }  { m_axi_bcid1_ARSIZE BURST 1 3 }  { m_axi_bcid1_ARBURST LOCK 1 2 }  { m_axi_bcid1_ARLOCK CACHE 1 2 }  { m_axi_bcid1_ARCACHE PROT 1 4 }  { m_axi_bcid1_ARPROT QOS 1 3 }  { m_axi_bcid1_ARQOS REGION 1 4 }  { m_axi_bcid1_ARREGION USER 1 4 }  { m_axi_bcid1_ARUSER DATA 1 1 }  { m_axi_bcid1_RVALID VALID 0 1 }  { m_axi_bcid1_RREADY READY 1 1 }  { m_axi_bcid1_RDATA FIFONUM 0 128 }  { m_axi_bcid1_RLAST LAST 0 1 }  { m_axi_bcid1_RID ID 0 1 }  { m_axi_bcid1_RFIFONUM LEN 0 9 }  { m_axi_bcid1_RUSER DATA 0 1 }  { m_axi_bcid1_RRESP RESP 0 2 }  { m_axi_bcid1_BVALID VALID 0 1 }  { m_axi_bcid1_BREADY READY 1 1 }  { m_axi_bcid1_BRESP RESP 0 2 }  { m_axi_bcid1_BID ID 0 1 }  { m_axi_bcid1_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock1d { ap_fifo {  { vblock1d_din fifo_port_we 1 134 }  { vblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock1d_fifo_cap fifo_update 0 8 }  { vblock1d_full_n fifo_status 0 1 }  { vblock1d_write fifo_data 1 1 } } }
	cblock1d { ap_fifo {  { cblock1d_din fifo_port_we 1 134 }  { cblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock1d_fifo_cap fifo_update 0 8 }  { cblock1d_full_n fifo_status 0 1 }  { cblock1d_write fifo_data 1 1 } } }
}
