set moduleName vcrequest_manager_27
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
set C_modelName {vcrequest_manager.27}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank4_b int 68 regular {fifo 0 volatile }  }
	{ vrequest4 int 209 regular {fifo 1 volatile }  }
	{ crequest4 int 209 regular {fifo 1 volatile }  }
	{ vresponse4 int 6 regular {fifo 0 volatile }  }
	{ cresponse4 int 6 regular {fifo 0 volatile }  }
	{ vresult416 int 1024 regular {fifo 0 volatile }  }
	{ cresult420 int 1024 regular {fifo 0 volatile }  }
	{ vblock4 int 134 regular {fifo 1 volatile }  }
	{ cblock4 int 134 regular {fifo 1 volatile }  }
	{ bv4 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bc4 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank4_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest4", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest4", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vresult416", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "cresult420", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val_port4","offset": { "type": "dynamic","port_name": "B_val_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bc4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port4","offset": { "type": "dynamic","port_name": "B_cid_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 130
set portList { 
	{ rcache_result_bank4_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank4_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank4_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest4_din sc_out sc_lv 209 signal 1 } 
	{ vrequest4_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest4_write sc_out sc_logic 1 signal 1 } 
	{ crequest4_din sc_out sc_lv 209 signal 2 } 
	{ crequest4_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest4_write sc_out sc_logic 1 signal 2 } 
	{ vresponse4_dout sc_in sc_lv 6 signal 3 } 
	{ vresponse4_empty_n sc_in sc_logic 1 signal 3 } 
	{ vresponse4_read sc_out sc_logic 1 signal 3 } 
	{ cresponse4_dout sc_in sc_lv 6 signal 4 } 
	{ cresponse4_empty_n sc_in sc_logic 1 signal 4 } 
	{ cresponse4_read sc_out sc_logic 1 signal 4 } 
	{ vresult416_dout sc_in sc_lv 1024 signal 5 } 
	{ vresult416_empty_n sc_in sc_logic 1 signal 5 } 
	{ vresult416_read sc_out sc_logic 1 signal 5 } 
	{ cresult420_dout sc_in sc_lv 1024 signal 6 } 
	{ cresult420_empty_n sc_in sc_logic 1 signal 6 } 
	{ cresult420_read sc_out sc_logic 1 signal 6 } 
	{ vblock4_din sc_out sc_lv 134 signal 7 } 
	{ vblock4_full_n sc_in sc_logic 1 signal 7 } 
	{ vblock4_write sc_out sc_logic 1 signal 7 } 
	{ cblock4_din sc_out sc_lv 134 signal 8 } 
	{ cblock4_full_n sc_in sc_logic 1 signal 8 } 
	{ cblock4_write sc_out sc_logic 1 signal 8 } 
	{ m_axi_bv4_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv4_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv4_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_WDATA sc_out sc_lv 128 signal 9 } 
	{ m_axi_bv4_WSTRB sc_out sc_lv 16 signal 9 } 
	{ m_axi_bv4_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv4_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv4_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_RDATA sc_in sc_lv 128 signal 9 } 
	{ m_axi_bv4_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_bv4_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv4_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv4_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_BUSER sc_in sc_lv 1 signal 9 } 
	{ B_val sc_in sc_lv 64 signal 10 } 
	{ m_axi_bc4_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc4_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc4_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_WDATA sc_out sc_lv 128 signal 11 } 
	{ m_axi_bc4_WSTRB sc_out sc_lv 16 signal 11 } 
	{ m_axi_bc4_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc4_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc4_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_RDATA sc_in sc_lv 128 signal 11 } 
	{ m_axi_bc4_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_RFIFONUM sc_in sc_lv 9 signal 11 } 
	{ m_axi_bc4_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc4_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc4_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_BUSER sc_in sc_lv 1 signal 11 } 
	{ B_cid sc_in sc_lv 64 signal 12 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_val_ap_vld sc_in sc_logic 1 invld 10 } 
	{ B_cid_ap_vld sc_in sc_logic 1 invld 12 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_result_bank4_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank4_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank4_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "read" }} , 
 	{ "name": "vrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest4", "role": "din" }} , 
 	{ "name": "vrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "full_n" }} , 
 	{ "name": "vrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "write" }} , 
 	{ "name": "crequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "crequest4", "role": "din" }} , 
 	{ "name": "crequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest4", "role": "full_n" }} , 
 	{ "name": "crequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest4", "role": "write" }} , 
 	{ "name": "vresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse4", "role": "dout" }} , 
 	{ "name": "vresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "empty_n" }} , 
 	{ "name": "vresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "read" }} , 
 	{ "name": "cresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse4", "role": "dout" }} , 
 	{ "name": "cresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "empty_n" }} , 
 	{ "name": "cresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "read" }} , 
 	{ "name": "vresult416_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult416", "role": "dout" }} , 
 	{ "name": "vresult416_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult416", "role": "empty_n" }} , 
 	{ "name": "vresult416_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult416", "role": "read" }} , 
 	{ "name": "cresult420_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult420", "role": "dout" }} , 
 	{ "name": "cresult420_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult420", "role": "empty_n" }} , 
 	{ "name": "cresult420_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult420", "role": "read" }} , 
 	{ "name": "vblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "din" }} , 
 	{ "name": "vblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "full_n" }} , 
 	{ "name": "vblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "write" }} , 
 	{ "name": "cblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "din" }} , 
 	{ "name": "cblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "full_n" }} , 
 	{ "name": "cblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "write" }} , 
 	{ "name": "m_axi_bv4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWID" }} , 
 	{ "name": "m_axi_bv4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WID" }} , 
 	{ "name": "m_axi_bv4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARID" }} , 
 	{ "name": "m_axi_bv4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RID" }} , 
 	{ "name": "m_axi_bv4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bv4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BID" }} , 
 	{ "name": "m_axi_bv4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bc4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWID" }} , 
 	{ "name": "m_axi_bc4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WID" }} , 
 	{ "name": "m_axi_bc4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARID" }} , 
 	{ "name": "m_axi_bc4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RID" }} , 
 	{ "name": "m_axi_bc4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BID" }} , 
 	{ "name": "m_axi_bc4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_val", "role": "ap_vld" }} , 
 	{ "name": "B_cid_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_cid", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "16", "19", "22", "25", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "vcrequest_manager_27",
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
			{"ID" : "1", "Name" : "vcrequest_splitter_91_U0"},
			{"ID" : "7", "Name" : "schedule_access_93_U0"},
			{"ID" : "13", "Name" : "schedule_access_95_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "request_merger_96_U0"},
			{"ID" : "19", "Name" : "request_merger_97_U0"},
			{"ID" : "22", "Name" : "collector_98_U0"},
			{"ID" : "25", "Name" : "collector_99_U0"}],
		"Port" : [
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "vcrequest_splitter_91_U0", "Port" : "rcache_result_bank4_b"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "request_merger_96_U0", "Port" : "vrequest4"}]},
			{"Name" : "crequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "request_merger_97_U0", "Port" : "crequest4"}]},
			{"Name" : "vresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_93_U0", "Port" : "vresponse4"}]},
			{"Name" : "cresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_95_U0", "Port" : "cresponse4"}]},
			{"Name" : "vresult416", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_98_U0", "Port" : "vresult416"}]},
			{"Name" : "cresult420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_99_U0", "Port" : "cresult420"}]},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_98_U0", "Port" : "vblock4"}]},
			{"Name" : "cblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_99_U0", "Port" : "cblock4"}]},
			{"Name" : "bv4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_93_U0", "Port" : "bv4"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc4", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_95_U0", "Port" : "bc4"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_91_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "vcrequest_splitter_91",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "rcache_result_bank4_b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "28", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vcollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "31", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "ccollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "cscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_91_U0.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1",
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
			{"Name" : "rcache_result_bank4_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank4_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcontrol_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_bridx_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tcontrol_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_91_U0.grp_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_92_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "request_manager_92",
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
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "28", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_request_manager_92_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_request_manager_92_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_92_U0.grp_request_manager_92_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "request_manager_92_Pipeline_VITIS_LOOP_48_1",
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
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_92_U0.grp_request_manager_92_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_93_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "schedule_access_93",
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
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresponse4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_93_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "voff3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bv4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bv4_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_93_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bv4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_93_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "v_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_105_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_93_U0.grp_schedule_access_93_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "schedule_access_93_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "bv4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_93_U0.grp_schedule_access_93_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_94_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "request_manager_94",
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
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_request_manager_94_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "38", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_request_manager_94_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_94_U0.grp_request_manager_94_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "10", "Child" : ["12"],
		"CDFG" : "request_manager_94_Pipeline_VITIS_LOOP_48_1",
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
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_94_U0.grp_request_manager_94_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_95_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "schedule_access_95",
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
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresponse4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_95_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc4_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_95_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_95_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "41", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_105_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_95_U0.grp_schedule_access_95_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "schedule_access_95_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_95_U0.grp_schedule_access_95_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_96_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "request_merger_96",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "vrequest4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_96_U0.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "request_merger_96_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vrequest4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_96_U0.grp_request_merger_96_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_97_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "request_merger_97",
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
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "38", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_97_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_97_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_97_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "crequest4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_97_U0.grp_request_merger_97_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "request_merger_97_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crequest4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brlen_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_brid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_write_idx_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_peID_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_target_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_97_U0.grp_request_merger_97_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_98_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "collector_98",
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
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresult416", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult416_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_98_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "voff3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_98_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "vblock4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_98_U0.grp_collector_98_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "collector_98_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "zext_ln183", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_98_U0.grp_collector_98_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_99_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "collector_99",
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
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "31", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresult420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_99_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "coff4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_99_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "cblock4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "41", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_99_U0.grp_collector_99_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "25", "Child" : ["27"],
		"CDFG" : "collector_99_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "zext_ln183", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "cblock4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "hit", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_99_U0.grp_collector_99_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vrequest_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crequest_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vcollector_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ccollector_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vscheduler_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cscheduler_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_first_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.voff_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_req_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_hit_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_first_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coff_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_req_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_hit_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vcrequest_manager_27 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		vresult416 {Type I LastRead 2 FirstWrite -1}
		cresult420 {Type I LastRead 2 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		bv4 {Type I LastRead 12 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc4 {Type I LastRead 12 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_91 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_V_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_92 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_92_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_93 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		bv4 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit1 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_93_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bv4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_8 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_9 {Type I LastRead 0 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln22 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_4 {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_9_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_8_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_8_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_8_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_9_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_9_out {Type O LastRead -1 FirstWrite 1}}
	request_manager_94 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_94_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_95 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc4 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_95_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_2 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_6 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln20 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_2 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_3_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_4_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_4_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_3_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_3_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_3_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_96 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_96_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_97 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_97_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
		c_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	collector_98 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult416 {Type I LastRead 2 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		v_hit1 {Type I LastRead 1 FirstWrite -1}}
	collector_98_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cached_V_4 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}
	collector_99 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult420 {Type I LastRead 2 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		c_hit2 {Type I LastRead 1 FirstWrite -1}}
	collector_99_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		cached_V_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank4_b { ap_fifo {  { rcache_result_bank4_b_dout fifo_port_we 0 68 }  { rcache_result_bank4_b_empty_n fifo_status 0 1 }  { rcache_result_bank4_b_read fifo_data 1 1 } } }
	vrequest4 { ap_fifo {  { vrequest4_din fifo_port_we 1 209 }  { vrequest4_full_n fifo_status 0 1 }  { vrequest4_write fifo_data 1 1 } } }
	crequest4 { ap_fifo {  { crequest4_din fifo_port_we 1 209 }  { crequest4_full_n fifo_status 0 1 }  { crequest4_write fifo_data 1 1 } } }
	vresponse4 { ap_fifo {  { vresponse4_dout fifo_port_we 0 6 }  { vresponse4_empty_n fifo_status 0 1 }  { vresponse4_read fifo_data 1 1 } } }
	cresponse4 { ap_fifo {  { cresponse4_dout fifo_port_we 0 6 }  { cresponse4_empty_n fifo_status 0 1 }  { cresponse4_read fifo_data 1 1 } } }
	vresult416 { ap_fifo {  { vresult416_dout fifo_port_we 0 1024 }  { vresult416_empty_n fifo_status 0 1 }  { vresult416_read fifo_data 1 1 } } }
	cresult420 { ap_fifo {  { cresult420_dout fifo_port_we 0 1024 }  { cresult420_empty_n fifo_status 0 1 }  { cresult420_read fifo_data 1 1 } } }
	vblock4 { ap_fifo {  { vblock4_din fifo_port_we 1 134 }  { vblock4_full_n fifo_status 0 1 }  { vblock4_write fifo_data 1 1 } } }
	cblock4 { ap_fifo {  { cblock4_din fifo_port_we 1 134 }  { cblock4_full_n fifo_status 0 1 }  { cblock4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bv4_AWVALID VALID 1 1 }  { m_axi_bv4_AWREADY READY 0 1 }  { m_axi_bv4_AWADDR ADDR 1 64 }  { m_axi_bv4_AWID ID 1 1 }  { m_axi_bv4_AWLEN SIZE 1 32 }  { m_axi_bv4_AWSIZE BURST 1 3 }  { m_axi_bv4_AWBURST LOCK 1 2 }  { m_axi_bv4_AWLOCK CACHE 1 2 }  { m_axi_bv4_AWCACHE PROT 1 4 }  { m_axi_bv4_AWPROT QOS 1 3 }  { m_axi_bv4_AWQOS REGION 1 4 }  { m_axi_bv4_AWREGION USER 1 4 }  { m_axi_bv4_AWUSER DATA 1 1 }  { m_axi_bv4_WVALID VALID 1 1 }  { m_axi_bv4_WREADY READY 0 1 }  { m_axi_bv4_WDATA FIFONUM 1 128 }  { m_axi_bv4_WSTRB STRB 1 16 }  { m_axi_bv4_WLAST LAST 1 1 }  { m_axi_bv4_WID ID 1 1 }  { m_axi_bv4_WUSER DATA 1 1 }  { m_axi_bv4_ARVALID VALID 1 1 }  { m_axi_bv4_ARREADY READY 0 1 }  { m_axi_bv4_ARADDR ADDR 1 64 }  { m_axi_bv4_ARID ID 1 1 }  { m_axi_bv4_ARLEN SIZE 1 32 }  { m_axi_bv4_ARSIZE BURST 1 3 }  { m_axi_bv4_ARBURST LOCK 1 2 }  { m_axi_bv4_ARLOCK CACHE 1 2 }  { m_axi_bv4_ARCACHE PROT 1 4 }  { m_axi_bv4_ARPROT QOS 1 3 }  { m_axi_bv4_ARQOS REGION 1 4 }  { m_axi_bv4_ARREGION USER 1 4 }  { m_axi_bv4_ARUSER DATA 1 1 }  { m_axi_bv4_RVALID VALID 0 1 }  { m_axi_bv4_RREADY READY 1 1 }  { m_axi_bv4_RDATA FIFONUM 0 128 }  { m_axi_bv4_RLAST LAST 0 1 }  { m_axi_bv4_RID ID 0 1 }  { m_axi_bv4_RFIFONUM LEN 0 9 }  { m_axi_bv4_RUSER DATA 0 1 }  { m_axi_bv4_RRESP RESP 0 2 }  { m_axi_bv4_BVALID VALID 0 1 }  { m_axi_bv4_BREADY READY 1 1 }  { m_axi_bv4_BRESP RESP 0 2 }  { m_axi_bv4_BID ID 0 1 }  { m_axi_bv4_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 }  { B_val_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_bc4_AWVALID VALID 1 1 }  { m_axi_bc4_AWREADY READY 0 1 }  { m_axi_bc4_AWADDR ADDR 1 64 }  { m_axi_bc4_AWID ID 1 1 }  { m_axi_bc4_AWLEN SIZE 1 32 }  { m_axi_bc4_AWSIZE BURST 1 3 }  { m_axi_bc4_AWBURST LOCK 1 2 }  { m_axi_bc4_AWLOCK CACHE 1 2 }  { m_axi_bc4_AWCACHE PROT 1 4 }  { m_axi_bc4_AWPROT QOS 1 3 }  { m_axi_bc4_AWQOS REGION 1 4 }  { m_axi_bc4_AWREGION USER 1 4 }  { m_axi_bc4_AWUSER DATA 1 1 }  { m_axi_bc4_WVALID VALID 1 1 }  { m_axi_bc4_WREADY READY 0 1 }  { m_axi_bc4_WDATA FIFONUM 1 128 }  { m_axi_bc4_WSTRB STRB 1 16 }  { m_axi_bc4_WLAST LAST 1 1 }  { m_axi_bc4_WID ID 1 1 }  { m_axi_bc4_WUSER DATA 1 1 }  { m_axi_bc4_ARVALID VALID 1 1 }  { m_axi_bc4_ARREADY READY 0 1 }  { m_axi_bc4_ARADDR ADDR 1 64 }  { m_axi_bc4_ARID ID 1 1 }  { m_axi_bc4_ARLEN SIZE 1 32 }  { m_axi_bc4_ARSIZE BURST 1 3 }  { m_axi_bc4_ARBURST LOCK 1 2 }  { m_axi_bc4_ARLOCK CACHE 1 2 }  { m_axi_bc4_ARCACHE PROT 1 4 }  { m_axi_bc4_ARPROT QOS 1 3 }  { m_axi_bc4_ARQOS REGION 1 4 }  { m_axi_bc4_ARREGION USER 1 4 }  { m_axi_bc4_ARUSER DATA 1 1 }  { m_axi_bc4_RVALID VALID 0 1 }  { m_axi_bc4_RREADY READY 1 1 }  { m_axi_bc4_RDATA FIFONUM 0 128 }  { m_axi_bc4_RLAST LAST 0 1 }  { m_axi_bc4_RID ID 0 1 }  { m_axi_bc4_RFIFONUM LEN 0 9 }  { m_axi_bc4_RUSER DATA 0 1 }  { m_axi_bc4_RRESP RESP 0 2 }  { m_axi_bc4_BVALID VALID 0 1 }  { m_axi_bc4_BREADY READY 1 1 }  { m_axi_bc4_BRESP RESP 0 2 }  { m_axi_bc4_BID ID 0 1 }  { m_axi_bc4_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 }  { B_cid_ap_vld in_vld 0 1 } } }
}
