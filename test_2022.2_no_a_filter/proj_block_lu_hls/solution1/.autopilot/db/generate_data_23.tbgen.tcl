set moduleName generate_data_23
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
set C_modelName {generate_data.23}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank3_d int 68 regular {fifo 0 volatile }  }
	{ bval3 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bcid3 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
	{ vblock3d int 134 regular {fifo 1 volatile }  }
	{ cblock3d int 134 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank3_d", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "bval3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val3","offset": { "type": "dynamic","port_name": "B_val3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bcid3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid3","offset": { "type": "dynamic","port_name": "B_cid3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock3d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
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
	{ rcache_result_bank3_d_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank3_d_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank3_d_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ rcache_result_bank3_d_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank3_d_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_bval3_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval3_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval3_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval3_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval3_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval3_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval3_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bval3_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bval3_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bval3_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bval3_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval3_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval3_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bval3_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bval3_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bval3_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bval3_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bval3_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval3_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bval3_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval3_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval3_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bval3_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bval3_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bval3_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bval3_BUSER sc_in sc_lv 1 signal 1 } 
	{ B_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_bcid3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid3_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid3_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid3_BUSER sc_in sc_lv 1 signal 3 } 
	{ B_cid sc_in sc_lv 64 signal 4 } 
	{ vblock3d_din sc_out sc_lv 134 signal 5 } 
	{ vblock3d_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ vblock3d_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ vblock3d_full_n sc_in sc_logic 1 signal 5 } 
	{ vblock3d_write sc_out sc_logic 1 signal 5 } 
	{ cblock3d_din sc_out sc_lv 134 signal 6 } 
	{ cblock3d_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ cblock3d_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ cblock3d_full_n sc_in sc_logic 1 signal 6 } 
	{ cblock3d_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rcache_result_bank3_d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "dout" }} , 
 	{ "name": "rcache_result_bank3_d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "num_data_valid" }} , 
 	{ "name": "rcache_result_bank3_d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "fifo_cap" }} , 
 	{ "name": "rcache_result_bank3_d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank3_d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_d", "role": "read" }} , 
 	{ "name": "m_axi_bval3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bval3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bval3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bval3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWID" }} , 
 	{ "name": "m_axi_bval3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bval3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bval3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bval3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bval3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bval3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bval3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bval3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bval3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bval3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bval3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bval3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bval3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bval3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bval3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WID" }} , 
 	{ "name": "m_axi_bval3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bval3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bval3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bval3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bval3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARID" }} , 
 	{ "name": "m_axi_bval3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bval3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bval3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bval3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bval3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bval3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bval3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bval3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bval3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bval3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bval3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bval3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bval3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bval3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RID" }} , 
 	{ "name": "m_axi_bval3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bval3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bval3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bval3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bval3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bval3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bval3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BID" }} , 
 	{ "name": "m_axi_bval3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval3", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bcid3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bcid3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bcid3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bcid3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWID" }} , 
 	{ "name": "m_axi_bcid3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bcid3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bcid3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bcid3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bcid3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bcid3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bcid3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bcid3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bcid3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bcid3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bcid3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bcid3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bcid3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bcid3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bcid3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WID" }} , 
 	{ "name": "m_axi_bcid3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bcid3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bcid3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bcid3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bcid3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARID" }} , 
 	{ "name": "m_axi_bcid3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bcid3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bcid3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bcid3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bcid3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bcid3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bcid3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bcid3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bcid3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bcid3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bcid3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bcid3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bcid3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bcid3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RID" }} , 
 	{ "name": "m_axi_bcid3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bcid3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bcid3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bcid3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bcid3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bcid3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bcid3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BID" }} , 
 	{ "name": "m_axi_bcid3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid3", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "vblock3d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3d", "role": "din" }} , 
 	{ "name": "vblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "num_data_valid" }} , 
 	{ "name": "vblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock3d", "role": "fifo_cap" }} , 
 	{ "name": "vblock3d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "full_n" }} , 
 	{ "name": "vblock3d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3d", "role": "write" }} , 
 	{ "name": "cblock3d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3d", "role": "din" }} , 
 	{ "name": "cblock3d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "num_data_valid" }} , 
 	{ "name": "cblock3d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock3d", "role": "fifo_cap" }} , 
 	{ "name": "cblock3d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "full_n" }} , 
 	{ "name": "cblock3d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3d", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "generate_data_23",
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
			{"Name" : "rcache_result_bank3_d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bval3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bval3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bval3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bcid3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bcid3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bcid3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock3d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vblock3d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock3d", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cblock3d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	generate_data_23 {
		rcache_result_bank3_d {Type I LastRead 1 FirstWrite -1}
		bval3 {Type I LastRead 11 FirstWrite -1}
		B_val {Type I LastRead 0 FirstWrite -1}
		bcid3 {Type I LastRead 11 FirstWrite -1}
		B_cid {Type I LastRead 0 FirstWrite -1}
		vblock3d {Type O LastRead -1 FirstWrite 12}
		cblock3d {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank3_d { ap_fifo {  { rcache_result_bank3_d_dout fifo_port_we 0 68 }  { rcache_result_bank3_d_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_result_bank3_d_fifo_cap fifo_update 0 7 }  { rcache_result_bank3_d_empty_n fifo_status 0 1 }  { rcache_result_bank3_d_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bval3_AWVALID VALID 1 1 }  { m_axi_bval3_AWREADY READY 0 1 }  { m_axi_bval3_AWADDR ADDR 1 64 }  { m_axi_bval3_AWID ID 1 1 }  { m_axi_bval3_AWLEN SIZE 1 32 }  { m_axi_bval3_AWSIZE BURST 1 3 }  { m_axi_bval3_AWBURST LOCK 1 2 }  { m_axi_bval3_AWLOCK CACHE 1 2 }  { m_axi_bval3_AWCACHE PROT 1 4 }  { m_axi_bval3_AWPROT QOS 1 3 }  { m_axi_bval3_AWQOS REGION 1 4 }  { m_axi_bval3_AWREGION USER 1 4 }  { m_axi_bval3_AWUSER DATA 1 1 }  { m_axi_bval3_WVALID VALID 1 1 }  { m_axi_bval3_WREADY READY 0 1 }  { m_axi_bval3_WDATA FIFONUM 1 128 }  { m_axi_bval3_WSTRB STRB 1 16 }  { m_axi_bval3_WLAST LAST 1 1 }  { m_axi_bval3_WID ID 1 1 }  { m_axi_bval3_WUSER DATA 1 1 }  { m_axi_bval3_ARVALID VALID 1 1 }  { m_axi_bval3_ARREADY READY 0 1 }  { m_axi_bval3_ARADDR ADDR 1 64 }  { m_axi_bval3_ARID ID 1 1 }  { m_axi_bval3_ARLEN SIZE 1 32 }  { m_axi_bval3_ARSIZE BURST 1 3 }  { m_axi_bval3_ARBURST LOCK 1 2 }  { m_axi_bval3_ARLOCK CACHE 1 2 }  { m_axi_bval3_ARCACHE PROT 1 4 }  { m_axi_bval3_ARPROT QOS 1 3 }  { m_axi_bval3_ARQOS REGION 1 4 }  { m_axi_bval3_ARREGION USER 1 4 }  { m_axi_bval3_ARUSER DATA 1 1 }  { m_axi_bval3_RVALID VALID 0 1 }  { m_axi_bval3_RREADY READY 1 1 }  { m_axi_bval3_RDATA FIFONUM 0 128 }  { m_axi_bval3_RLAST LAST 0 1 }  { m_axi_bval3_RID ID 0 1 }  { m_axi_bval3_RFIFONUM LEN 0 9 }  { m_axi_bval3_RUSER DATA 0 1 }  { m_axi_bval3_RRESP RESP 0 2 }  { m_axi_bval3_BVALID VALID 0 1 }  { m_axi_bval3_BREADY READY 1 1 }  { m_axi_bval3_BRESP RESP 0 2 }  { m_axi_bval3_BID ID 0 1 }  { m_axi_bval3_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 } } }
	 { m_axi {  { m_axi_bcid3_AWVALID VALID 1 1 }  { m_axi_bcid3_AWREADY READY 0 1 }  { m_axi_bcid3_AWADDR ADDR 1 64 }  { m_axi_bcid3_AWID ID 1 1 }  { m_axi_bcid3_AWLEN SIZE 1 32 }  { m_axi_bcid3_AWSIZE BURST 1 3 }  { m_axi_bcid3_AWBURST LOCK 1 2 }  { m_axi_bcid3_AWLOCK CACHE 1 2 }  { m_axi_bcid3_AWCACHE PROT 1 4 }  { m_axi_bcid3_AWPROT QOS 1 3 }  { m_axi_bcid3_AWQOS REGION 1 4 }  { m_axi_bcid3_AWREGION USER 1 4 }  { m_axi_bcid3_AWUSER DATA 1 1 }  { m_axi_bcid3_WVALID VALID 1 1 }  { m_axi_bcid3_WREADY READY 0 1 }  { m_axi_bcid3_WDATA FIFONUM 1 128 }  { m_axi_bcid3_WSTRB STRB 1 16 }  { m_axi_bcid3_WLAST LAST 1 1 }  { m_axi_bcid3_WID ID 1 1 }  { m_axi_bcid3_WUSER DATA 1 1 }  { m_axi_bcid3_ARVALID VALID 1 1 }  { m_axi_bcid3_ARREADY READY 0 1 }  { m_axi_bcid3_ARADDR ADDR 1 64 }  { m_axi_bcid3_ARID ID 1 1 }  { m_axi_bcid3_ARLEN SIZE 1 32 }  { m_axi_bcid3_ARSIZE BURST 1 3 }  { m_axi_bcid3_ARBURST LOCK 1 2 }  { m_axi_bcid3_ARLOCK CACHE 1 2 }  { m_axi_bcid3_ARCACHE PROT 1 4 }  { m_axi_bcid3_ARPROT QOS 1 3 }  { m_axi_bcid3_ARQOS REGION 1 4 }  { m_axi_bcid3_ARREGION USER 1 4 }  { m_axi_bcid3_ARUSER DATA 1 1 }  { m_axi_bcid3_RVALID VALID 0 1 }  { m_axi_bcid3_RREADY READY 1 1 }  { m_axi_bcid3_RDATA FIFONUM 0 128 }  { m_axi_bcid3_RLAST LAST 0 1 }  { m_axi_bcid3_RID ID 0 1 }  { m_axi_bcid3_RFIFONUM LEN 0 9 }  { m_axi_bcid3_RUSER DATA 0 1 }  { m_axi_bcid3_RRESP RESP 0 2 }  { m_axi_bcid3_BVALID VALID 0 1 }  { m_axi_bcid3_BREADY READY 1 1 }  { m_axi_bcid3_BRESP RESP 0 2 }  { m_axi_bcid3_BID ID 0 1 }  { m_axi_bcid3_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 } } }
	vblock3d { ap_fifo {  { vblock3d_din fifo_port_we 1 134 }  { vblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock3d_fifo_cap fifo_update 0 8 }  { vblock3d_full_n fifo_status 0 1 }  { vblock3d_write fifo_data 1 1 } } }
	cblock3d { ap_fifo {  { cblock3d_din fifo_port_we 1 134 }  { cblock3d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock3d_fifo_cap fifo_update 0 8 }  { cblock3d_full_n fifo_status 0 1 }  { cblock3d_write fifo_data 1 1 } } }
}
