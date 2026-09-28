set moduleName generate_data_22
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
set C_modelName {generate_data.22}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank2_d int 68 regular {fifo 0 volatile }  }
	{ bval2 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid2 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock2d int 134 regular {fifo 1 volatile }  }
	{ cblock2d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank2_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val2","offset": { "type": "dynamic","port_name": "B_val2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid2","offset": { "type": "dynamic","port_name": "B_cid2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
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
	{ rcache_result_bank2_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank2_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank2_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank2_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank2_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval2_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid2_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock2d_din sc_out sc_lv 134 signal 5 } 
	{ vblock2d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock2d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock2d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock2d_write sc_out sc_logic 1 signal 5 } 
	{ cblock2d_din sc_out sc_lv 134 signal 6 } 
	{ cblock2d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock2d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock2d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock2d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank2_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank2_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank2_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank2_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank2_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "read" }} , 
 	{ "name": "m_axi_bval2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWID" }} , 
 	{ "name": "m_axi_bval2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WID" }} , 
 	{ "name": "m_axi_bval2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARID" }} , 
 	{ "name": "m_axi_bval2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RID" }} , 
 	{ "name": "m_axi_bval2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BID" }} , 
 	{ "name": "m_axi_bval2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WID" }} , 
 	{ "name": "m_axi_bcid2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RID" }} , 
 	{ "name": "m_axi_bcid2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BID" }} , 
 	{ "name": "m_axi_bcid2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2d", "role": "din" }} , 
 	{ "name": "vblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "num_data_valid" }} , 
 	{ "name": "vblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "fifo_cap" }} , 
 	{ "name": "vblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "full_n" }} , 
 	{ "name": "vblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "write" }} , 
 	{ "name": "cblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2d", "role": "din" }} , 
 	{ "name": "cblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "num_data_valid" }} , 
 	{ "name": "cblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "fifo_cap" }} , 
 	{ "name": "cblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "full_n" }} , 
 	{ "name": "cblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data_22",
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
			{"Name" : "rcache_result_bank2_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank2_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock2d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock2d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock2d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock2d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data_22 {
		rcache_result_bank2_d {Type I LastRead 1 FirstWrite -1}
		bval2 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid2 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock2d {Type O LastRead -1 FirstWrite 12}
		cblock2d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank2_d { ap_fifo {  { rcache_result_bank2_d_dout fifo_port_we 0 68 }  { rcache_result_bank2_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank2_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank2_d_empty_n fifo_status 0 1 }  { rcache_result_bank2_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval2_AWVALID VALID 1 1 }  { m_axi_bval2_AWREADY READY 0 1 }  { m_axi_bval2_AWADDR ADDR 1 64 }  { m_axi_bval2_AWID ID 1 1 }  { m_axi_bval2_AWLEN SIZE 1 32 }  { m_axi_bval2_AWSIZE BURST 1 3 }  { m_axi_bval2_AWBURST LOCK 1 2 }  { m_axi_bval2_AWLOCK CACHE 1 2 }  { m_axi_bval2_AWCACHE PROT 1 4 }  { m_axi_bval2_AWPROT QOS 1 3 }  { m_axi_bval2_AWQOS REGION 1 4 }  { m_axi_bval2_AWREGION USER 1 4 }  { m_axi_bval2_AWUSER DATA 1 1 }  { m_axi_bval2_WVALID VALID 1 1 }  { m_axi_bval2_WREADY READY 0 1 }  { m_axi_bval2_WDATA FIFONUM 1 128 }  { m_axi_bval2_WSTRB STRB 1 16 }  { m_axi_bval2_WLAST LAST 1 1 }  { m_axi_bval2_WID ID 1 1 }  { m_axi_bval2_WUSER DATA 1 1 }  { m_axi_bval2_ARVALID VALID 1 1 }  { m_axi_bval2_ARREADY READY 0 1 }  { m_axi_bval2_ARADDR ADDR 1 64 }  { m_axi_bval2_ARID ID 1 1 }  { m_axi_bval2_ARLEN SIZE 1 32 }  { m_axi_bval2_ARSIZE BURST 1 3 }  { m_axi_bval2_ARBURST LOCK 1 2 }  { m_axi_bval2_ARLOCK CACHE 1 2 }  { m_axi_bval2_ARCACHE PROT 1 4 }  { m_axi_bval2_ARPROT QOS 1 3 }  { m_axi_bval2_ARQOS REGION 1 4 }  { m_axi_bval2_ARREGION USER 1 4 }  { m_axi_bval2_ARUSER DATA 1 1 }  { m_axi_bval2_RVALID VALID 0 1 }  { m_axi_bval2_RREADY READY 1 1 }  { m_axi_bval2_RDATA FIFONUM 0 128 }  { m_axi_bval2_RLAST LAST 0 1 }  { m_axi_bval2_RID ID 0 1 }  { m_axi_bval2_RFIFONUM LEN 0 9 }  { m_axi_bval2_RUSER DATA 0 1 }  { m_axi_bval2_RRESP RESP 0 2 }  { m_axi_bval2_BVALID VALID 0 1 }  { m_axi_bval2_BREADY READY 1 1 }  { m_axi_bval2_BRESP RESP 0 2 }  { m_axi_bval2_BID ID 0 1 }  { m_axi_bval2_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid2_AWVALID VALID 1 1 }  { m_axi_bcid2_AWREADY READY 0 1 }  { m_axi_bcid2_AWADDR ADDR 1 64 }  { m_axi_bcid2_AWID ID 1 1 }  { m_axi_bcid2_AWLEN SIZE 1 32 }  { m_axi_bcid2_AWSIZE BURST 1 3 }  { m_axi_bcid2_AWBURST LOCK 1 2 }  { m_axi_bcid2_AWLOCK CACHE 1 2 }  { m_axi_bcid2_AWCACHE PROT 1 4 }  { m_axi_bcid2_AWPROT QOS 1 3 }  { m_axi_bcid2_AWQOS REGION 1 4 }  { m_axi_bcid2_AWREGION USER 1 4 }  { m_axi_bcid2_AWUSER DATA 1 1 }  { m_axi_bcid2_WVALID VALID 1 1 }  { m_axi_bcid2_WREADY READY 0 1 }  { m_axi_bcid2_WDATA FIFONUM 1 128 }  { m_axi_bcid2_WSTRB STRB 1 16 }  { m_axi_bcid2_WLAST LAST 1 1 }  { m_axi_bcid2_WID ID 1 1 }  { m_axi_bcid2_WUSER DATA 1 1 }  { m_axi_bcid2_ARVALID VALID 1 1 }  { m_axi_bcid2_ARREADY READY 0 1 }  { m_axi_bcid2_ARADDR ADDR 1 64 }  { m_axi_bcid2_ARID ID 1 1 }  { m_axi_bcid2_ARLEN SIZE 1 32 }  { m_axi_bcid2_ARSIZE BURST 1 3 }  { m_axi_bcid2_ARBURST LOCK 1 2 }  { m_axi_bcid2_ARLOCK CACHE 1 2 }  { m_axi_bcid2_ARCACHE PROT 1 4 }  { m_axi_bcid2_ARPROT QOS 1 3 }  { m_axi_bcid2_ARQOS REGION 1 4 }  { m_axi_bcid2_ARREGION USER 1 4 }  { m_axi_bcid2_ARUSER DATA 1 1 }  { m_axi_bcid2_RVALID VALID 0 1 }  { m_axi_bcid2_RREADY READY 1 1 }  { m_axi_bcid2_RDATA FIFONUM 0 128 }  { m_axi_bcid2_RLAST LAST 0 1 }  { m_axi_bcid2_RID ID 0 1 }  { m_axi_bcid2_RFIFONUM LEN 0 9 }  { m_axi_bcid2_RUSER DATA 0 1 }  { m_axi_bcid2_RRESP RESP 0 2 }  { m_axi_bcid2_BVALID VALID 0 1 }  { m_axi_bcid2_BREADY READY 1 1 }  { m_axi_bcid2_BRESP RESP 0 2 }  { m_axi_bcid2_BID ID 0 1 }  { m_axi_bcid2_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock2d { ap_fifo {  { vblock2d_din fifo_port_we 1 134 }  { vblock2d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock2d_fifo_cap fifo_update 0 8 }  { vblock2d_full_n fifo_status 0 1 }  { vblock2d_write fifo_data 1 1 } } }
	cblock2d { ap_fifo {  { cblock2d_din fifo_port_we 1 134 }  { cblock2d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock2d_fifo_cap fifo_update 0 8 }  { cblock2d_full_n fifo_status 0 1 }  { cblock2d_write fifo_data 1 1 } } }
}
set moduleName generate_data_22
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
set C_modelName {generate_data.22}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank2_d int 68 regular {fifo 0 volatile }  }
	{ bval2 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid2 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock2d int 134 regular {fifo 1 volatile }  }
	{ cblock2d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank2_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val2","offset": { "type": "dynamic","port_name": "B_val2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid2","offset": { "type": "dynamic","port_name": "B_cid2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
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
	{ rcache_result_bank2_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank2_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank2_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank2_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank2_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval2_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval2_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid2_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock2d_din sc_out sc_lv 134 signal 5 } 
	{ vblock2d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock2d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock2d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock2d_write sc_out sc_logic 1 signal 5 } 
	{ cblock2d_din sc_out sc_lv 134 signal 6 } 
	{ cblock2d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock2d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock2d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock2d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank2_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank2_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank2_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank2_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank2_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_d", "role": "read" }} , 
 	{ "name": "m_axi_bval2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWID" }} , 
 	{ "name": "m_axi_bval2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WID" }} , 
 	{ "name": "m_axi_bval2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARID" }} , 
 	{ "name": "m_axi_bval2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RID" }} , 
 	{ "name": "m_axi_bval2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BID" }} , 
 	{ "name": "m_axi_bval2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WID" }} , 
 	{ "name": "m_axi_bcid2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RID" }} , 
 	{ "name": "m_axi_bcid2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BID" }} , 
 	{ "name": "m_axi_bcid2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2d", "role": "din" }} , 
 	{ "name": "vblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "num_data_valid" }} , 
 	{ "name": "vblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "fifo_cap" }} , 
 	{ "name": "vblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "full_n" }} , 
 	{ "name": "vblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "write" }} , 
 	{ "name": "cblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2d", "role": "din" }} , 
 	{ "name": "cblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "num_data_valid" }} , 
 	{ "name": "cblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "fifo_cap" }} , 
 	{ "name": "cblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "full_n" }} , 
 	{ "name": "cblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data_22",
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
			{"Name" : "rcache_result_bank2_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank2_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock2d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock2d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock2d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock2d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data_22 {
		rcache_result_bank2_d {Type I LastRead 1 FirstWrite -1}
		bval2 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid2 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock2d {Type O LastRead -1 FirstWrite 12}
		cblock2d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank2_d { ap_fifo {  { rcache_result_bank2_d_dout fifo_port_we 0 68 }  { rcache_result_bank2_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank2_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank2_d_empty_n fifo_status 0 1 }  { rcache_result_bank2_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval2_AWVALID VALID 1 1 }  { m_axi_bval2_AWREADY READY 0 1 }  { m_axi_bval2_AWADDR ADDR 1 64 }  { m_axi_bval2_AWID ID 1 1 }  { m_axi_bval2_AWLEN SIZE 1 32 }  { m_axi_bval2_AWSIZE BURST 1 3 }  { m_axi_bval2_AWBURST LOCK 1 2 }  { m_axi_bval2_AWLOCK CACHE 1 2 }  { m_axi_bval2_AWCACHE PROT 1 4 }  { m_axi_bval2_AWPROT QOS 1 3 }  { m_axi_bval2_AWQOS REGION 1 4 }  { m_axi_bval2_AWREGION USER 1 4 }  { m_axi_bval2_AWUSER DATA 1 1 }  { m_axi_bval2_WVALID VALID 1 1 }  { m_axi_bval2_WREADY READY 0 1 }  { m_axi_bval2_WDATA FIFONUM 1 128 }  { m_axi_bval2_WSTRB STRB 1 16 }  { m_axi_bval2_WLAST LAST 1 1 }  { m_axi_bval2_WID ID 1 1 }  { m_axi_bval2_WUSER DATA 1 1 }  { m_axi_bval2_ARVALID VALID 1 1 }  { m_axi_bval2_ARREADY READY 0 1 }  { m_axi_bval2_ARADDR ADDR 1 64 }  { m_axi_bval2_ARID ID 1 1 }  { m_axi_bval2_ARLEN SIZE 1 32 }  { m_axi_bval2_ARSIZE BURST 1 3 }  { m_axi_bval2_ARBURST LOCK 1 2 }  { m_axi_bval2_ARLOCK CACHE 1 2 }  { m_axi_bval2_ARCACHE PROT 1 4 }  { m_axi_bval2_ARPROT QOS 1 3 }  { m_axi_bval2_ARQOS REGION 1 4 }  { m_axi_bval2_ARREGION USER 1 4 }  { m_axi_bval2_ARUSER DATA 1 1 }  { m_axi_bval2_RVALID VALID 0 1 }  { m_axi_bval2_RREADY READY 1 1 }  { m_axi_bval2_RDATA FIFONUM 0 128 }  { m_axi_bval2_RLAST LAST 0 1 }  { m_axi_bval2_RID ID 0 1 }  { m_axi_bval2_RFIFONUM LEN 0 9 }  { m_axi_bval2_RUSER DATA 0 1 }  { m_axi_bval2_RRESP RESP 0 2 }  { m_axi_bval2_BVALID VALID 0 1 }  { m_axi_bval2_BREADY READY 1 1 }  { m_axi_bval2_BRESP RESP 0 2 }  { m_axi_bval2_BID ID 0 1 }  { m_axi_bval2_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid2_AWVALID VALID 1 1 }  { m_axi_bcid2_AWREADY READY 0 1 }  { m_axi_bcid2_AWADDR ADDR 1 64 }  { m_axi_bcid2_AWID ID 1 1 }  { m_axi_bcid2_AWLEN SIZE 1 32 }  { m_axi_bcid2_AWSIZE BURST 1 3 }  { m_axi_bcid2_AWBURST LOCK 1 2 }  { m_axi_bcid2_AWLOCK CACHE 1 2 }  { m_axi_bcid2_AWCACHE PROT 1 4 }  { m_axi_bcid2_AWPROT QOS 1 3 }  { m_axi_bcid2_AWQOS REGION 1 4 }  { m_axi_bcid2_AWREGION USER 1 4 }  { m_axi_bcid2_AWUSER DATA 1 1 }  { m_axi_bcid2_WVALID VALID 1 1 }  { m_axi_bcid2_WREADY READY 0 1 }  { m_axi_bcid2_WDATA FIFONUM 1 128 }  { m_axi_bcid2_WSTRB STRB 1 16 }  { m_axi_bcid2_WLAST LAST 1 1 }  { m_axi_bcid2_WID ID 1 1 }  { m_axi_bcid2_WUSER DATA 1 1 }  { m_axi_bcid2_ARVALID VALID 1 1 }  { m_axi_bcid2_ARREADY READY 0 1 }  { m_axi_bcid2_ARADDR ADDR 1 64 }  { m_axi_bcid2_ARID ID 1 1 }  { m_axi_bcid2_ARLEN SIZE 1 32 }  { m_axi_bcid2_ARSIZE BURST 1 3 }  { m_axi_bcid2_ARBURST LOCK 1 2 }  { m_axi_bcid2_ARLOCK CACHE 1 2 }  { m_axi_bcid2_ARCACHE PROT 1 4 }  { m_axi_bcid2_ARPROT QOS 1 3 }  { m_axi_bcid2_ARQOS REGION 1 4 }  { m_axi_bcid2_ARREGION USER 1 4 }  { m_axi_bcid2_ARUSER DATA 1 1 }  { m_axi_bcid2_RVALID VALID 0 1 }  { m_axi_bcid2_RREADY READY 1 1 }  { m_axi_bcid2_RDATA FIFONUM 0 128 }  { m_axi_bcid2_RLAST LAST 0 1 }  { m_axi_bcid2_RID ID 0 1 }  { m_axi_bcid2_RFIFONUM LEN 0 9 }  { m_axi_bcid2_RUSER DATA 0 1 }  { m_axi_bcid2_RRESP RESP 0 2 }  { m_axi_bcid2_BVALID VALID 0 1 }  { m_axi_bcid2_BREADY READY 1 1 }  { m_axi_bcid2_BRESP RESP 0 2 }  { m_axi_bcid2_BID ID 0 1 }  { m_axi_bcid2_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock2d { ap_fifo {  { vblock2d_din fifo_port_we 1 134 }  { vblock2d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock2d_fifo_cap fifo_update 0 8 }  { vblock2d_full_n fifo_status 0 1 }  { vblock2d_write fifo_data 1 1 } } }
	cblock2d { ap_fifo {  { cblock2d_din fifo_port_we 1 134 }  { cblock2d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock2d_fifo_cap fifo_update 0 8 }  { cblock2d_full_n fifo_status 0 1 }  { cblock2d_write fifo_data 1 1 } } }
}
