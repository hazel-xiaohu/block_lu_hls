set moduleName generate_data_24
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
set C_modelName {generate_data.24}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank4_d int 68 regular {fifo 0 volatile }  }
	{ bval4 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid4 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock4d int 134 regular {fifo 1 volatile }  }
	{ cblock4d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank4_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val4","offset": { "type": "dynamic","port_name": "B_val4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid4","offset": { "type": "dynamic","port_name": "B_cid4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
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
	{ rcache_result_bank4_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank4_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank4_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank4_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval4_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval4_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval4_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval4_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval4_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval4_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval4_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval4_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval4_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval4_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval4_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval4_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval4_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval4_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval4_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval4_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval4_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval4_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval4_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval4_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval4_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval4_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval4_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval4_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval4_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval4_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid4_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid4_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid4_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid4_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid4_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid4_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid4_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid4_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid4_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid4_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid4_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid4_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid4_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid4_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid4_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid4_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid4_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid4_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid4_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid4_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid4_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid4_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid4_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid4_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid4_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid4_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock4d_din sc_out sc_lv 134 signal 5 } 
	{ vblock4d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock4d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock4d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock4d_write sc_out sc_logic 1 signal 5 } 
	{ cblock4d_din sc_out sc_lv 134 signal 6 } 
	{ cblock4d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock4d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock4d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock4d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank4_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank4_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank4_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank4_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank4_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank4_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank4_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_d", "role": "read" }} , 
 	{ "name": "m_axi_bval4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWID" }} , 
 	{ "name": "m_axi_bval4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WID" }} , 
 	{ "name": "m_axi_bval4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARID" }} , 
 	{ "name": "m_axi_bval4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RID" }} , 
 	{ "name": "m_axi_bval4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BID" }} , 
 	{ "name": "m_axi_bval4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval4", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WID" }} , 
 	{ "name": "m_axi_bcid4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RID" }} , 
 	{ "name": "m_axi_bcid4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BID" }} , 
 	{ "name": "m_axi_bcid4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid4", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock4d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4d", "role": "din" }} , 
 	{ "name": "vblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "num_data_valid" }} , 
 	{ "name": "vblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "fifo_cap" }} , 
 	{ "name": "vblock4d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "full_n" }} , 
 	{ "name": "vblock4d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "write" }} , 
 	{ "name": "cblock4d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4d", "role": "din" }} , 
 	{ "name": "cblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "num_data_valid" }} , 
 	{ "name": "cblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "fifo_cap" }} , 
 	{ "name": "cblock4d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "full_n" }} , 
 	{ "name": "cblock4d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data_24",
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
			{"Name" : "rcache_result_bank4_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank4_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock4d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock4d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock4d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock4d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data_24 {
		rcache_result_bank4_d {Type I LastRead 1 FirstWrite -1}
		bval4 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid4 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock4d {Type O LastRead -1 FirstWrite 12}
		cblock4d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank4_d { ap_fifo {  { rcache_result_bank4_d_dout fifo_port_we 0 68 }  { rcache_result_bank4_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank4_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank4_d_empty_n fifo_status 0 1 }  { rcache_result_bank4_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval4_AWVALID VALID 1 1 }  { m_axi_bval4_AWREADY READY 0 1 }  { m_axi_bval4_AWADDR ADDR 1 64 }  { m_axi_bval4_AWID ID 1 1 }  { m_axi_bval4_AWLEN SIZE 1 32 }  { m_axi_bval4_AWSIZE BURST 1 3 }  { m_axi_bval4_AWBURST LOCK 1 2 }  { m_axi_bval4_AWLOCK CACHE 1 2 }  { m_axi_bval4_AWCACHE PROT 1 4 }  { m_axi_bval4_AWPROT QOS 1 3 }  { m_axi_bval4_AWQOS REGION 1 4 }  { m_axi_bval4_AWREGION USER 1 4 }  { m_axi_bval4_AWUSER DATA 1 1 }  { m_axi_bval4_WVALID VALID 1 1 }  { m_axi_bval4_WREADY READY 0 1 }  { m_axi_bval4_WDATA FIFONUM 1 128 }  { m_axi_bval4_WSTRB STRB 1 16 }  { m_axi_bval4_WLAST LAST 1 1 }  { m_axi_bval4_WID ID 1 1 }  { m_axi_bval4_WUSER DATA 1 1 }  { m_axi_bval4_ARVALID VALID 1 1 }  { m_axi_bval4_ARREADY READY 0 1 }  { m_axi_bval4_ARADDR ADDR 1 64 }  { m_axi_bval4_ARID ID 1 1 }  { m_axi_bval4_ARLEN SIZE 1 32 }  { m_axi_bval4_ARSIZE BURST 1 3 }  { m_axi_bval4_ARBURST LOCK 1 2 }  { m_axi_bval4_ARLOCK CACHE 1 2 }  { m_axi_bval4_ARCACHE PROT 1 4 }  { m_axi_bval4_ARPROT QOS 1 3 }  { m_axi_bval4_ARQOS REGION 1 4 }  { m_axi_bval4_ARREGION USER 1 4 }  { m_axi_bval4_ARUSER DATA 1 1 }  { m_axi_bval4_RVALID VALID 0 1 }  { m_axi_bval4_RREADY READY 1 1 }  { m_axi_bval4_RDATA FIFONUM 0 128 }  { m_axi_bval4_RLAST LAST 0 1 }  { m_axi_bval4_RID ID 0 1 }  { m_axi_bval4_RFIFONUM LEN 0 9 }  { m_axi_bval4_RUSER DATA 0 1 }  { m_axi_bval4_RRESP RESP 0 2 }  { m_axi_bval4_BVALID VALID 0 1 }  { m_axi_bval4_BREADY READY 1 1 }  { m_axi_bval4_BRESP RESP 0 2 }  { m_axi_bval4_BID ID 0 1 }  { m_axi_bval4_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid4_AWVALID VALID 1 1 }  { m_axi_bcid4_AWREADY READY 0 1 }  { m_axi_bcid4_AWADDR ADDR 1 64 }  { m_axi_bcid4_AWID ID 1 1 }  { m_axi_bcid4_AWLEN SIZE 1 32 }  { m_axi_bcid4_AWSIZE BURST 1 3 }  { m_axi_bcid4_AWBURST LOCK 1 2 }  { m_axi_bcid4_AWLOCK CACHE 1 2 }  { m_axi_bcid4_AWCACHE PROT 1 4 }  { m_axi_bcid4_AWPROT QOS 1 3 }  { m_axi_bcid4_AWQOS REGION 1 4 }  { m_axi_bcid4_AWREGION USER 1 4 }  { m_axi_bcid4_AWUSER DATA 1 1 }  { m_axi_bcid4_WVALID VALID 1 1 }  { m_axi_bcid4_WREADY READY 0 1 }  { m_axi_bcid4_WDATA FIFONUM 1 128 }  { m_axi_bcid4_WSTRB STRB 1 16 }  { m_axi_bcid4_WLAST LAST 1 1 }  { m_axi_bcid4_WID ID 1 1 }  { m_axi_bcid4_WUSER DATA 1 1 }  { m_axi_bcid4_ARVALID VALID 1 1 }  { m_axi_bcid4_ARREADY READY 0 1 }  { m_axi_bcid4_ARADDR ADDR 1 64 }  { m_axi_bcid4_ARID ID 1 1 }  { m_axi_bcid4_ARLEN SIZE 1 32 }  { m_axi_bcid4_ARSIZE BURST 1 3 }  { m_axi_bcid4_ARBURST LOCK 1 2 }  { m_axi_bcid4_ARLOCK CACHE 1 2 }  { m_axi_bcid4_ARCACHE PROT 1 4 }  { m_axi_bcid4_ARPROT QOS 1 3 }  { m_axi_bcid4_ARQOS REGION 1 4 }  { m_axi_bcid4_ARREGION USER 1 4 }  { m_axi_bcid4_ARUSER DATA 1 1 }  { m_axi_bcid4_RVALID VALID 0 1 }  { m_axi_bcid4_RREADY READY 1 1 }  { m_axi_bcid4_RDATA FIFONUM 0 128 }  { m_axi_bcid4_RLAST LAST 0 1 }  { m_axi_bcid4_RID ID 0 1 }  { m_axi_bcid4_RFIFONUM LEN 0 9 }  { m_axi_bcid4_RUSER DATA 0 1 }  { m_axi_bcid4_RRESP RESP 0 2 }  { m_axi_bcid4_BVALID VALID 0 1 }  { m_axi_bcid4_BREADY READY 1 1 }  { m_axi_bcid4_BRESP RESP 0 2 }  { m_axi_bcid4_BID ID 0 1 }  { m_axi_bcid4_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock4d { ap_fifo {  { vblock4d_din fifo_port_we 1 134 }  { vblock4d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock4d_fifo_cap fifo_update 0 8 }  { vblock4d_full_n fifo_status 0 1 }  { vblock4d_write fifo_data 1 1 } } }
	cblock4d { ap_fifo {  { cblock4d_din fifo_port_we 1 134 }  { cblock4d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock4d_fifo_cap fifo_update 0 8 }  { cblock4d_full_n fifo_status 0 1 }  { cblock4d_write fifo_data 1 1 } } }
}
