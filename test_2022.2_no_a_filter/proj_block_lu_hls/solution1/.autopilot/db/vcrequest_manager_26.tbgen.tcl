set moduleName vcrequest_manager_26
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
set C_modelName {vcrequest_manager.26}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank3_b int 68 regular {fifo 0 volatile }  }
	{ vrequest3 int 209 regular {fifo 1 volatile }  }
	{ crequest3 int 209 regular {fifo 1 volatile }  }
	{ vresponse3 int 6 regular {fifo 0 volatile }  }
	{ cresponse3 int 6 regular {fifo 0 volatile }  }
	{ vresult315 int 1024 regular {fifo 0 volatile }  }
	{ cresult319 int 1024 regular {fifo 0 volatile }  }
	{ vblock3 int 134 regular {fifo 1 volatile }  }
	{ cblock3 int 134 regular {fifo 1 volatile }  }
	{ bv3 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bc3 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank3_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest3", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vresult315", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "cresult319", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "vblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock3", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val_port3","offset": { "type": "dynamic","port_name": "B_val_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bc3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port3","offset": { "type": "dynamic","port_name": "B_cid_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 130
set portList { 
	{ rcache_result_bank3_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank3_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank3_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest3_din sc_out sc_lv 209 signal 1 } 
	{ vrequest3_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest3_write sc_out sc_logic 1 signal 1 } 
	{ crequest3_din sc_out sc_lv 209 signal 2 } 
	{ crequest3_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest3_write sc_out sc_logic 1 signal 2 } 
	{ vresponse3_dout sc_in sc_lv 6 signal 3 } 
	{ vresponse3_empty_n sc_in sc_logic 1 signal 3 } 
	{ vresponse3_read sc_out sc_logic 1 signal 3 } 
	{ cresponse3_dout sc_in sc_lv 6 signal 4 } 
	{ cresponse3_empty_n sc_in sc_logic 1 signal 4 } 
	{ cresponse3_read sc_out sc_logic 1 signal 4 } 
	{ vresult315_dout sc_in sc_lv 1024 signal 5 } 
	{ vresult315_empty_n sc_in sc_logic 1 signal 5 } 
	{ vresult315_read sc_out sc_logic 1 signal 5 } 
	{ cresult319_dout sc_in sc_lv 1024 signal 6 } 
	{ cresult319_empty_n sc_in sc_logic 1 signal 6 } 
	{ cresult319_read sc_out sc_logic 1 signal 6 } 
	{ vblock3_din sc_out sc_lv 134 signal 7 } 
	{ vblock3_full_n sc_in sc_logic 1 signal 7 } 
	{ vblock3_write sc_out sc_logic 1 signal 7 } 
	{ cblock3_din sc_out sc_lv 134 signal 8 } 
	{ cblock3_full_n sc_in sc_logic 1 signal 8 } 
	{ cblock3_write sc_out sc_logic 1 signal 8 } 
	{ m_axi_bv3_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv3_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv3_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv3_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv3_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv3_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv3_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_WDATA sc_out sc_lv 128 signal 9 } 
	{ m_axi_bv3_WSTRB sc_out sc_lv 16 signal 9 } 
	{ m_axi_bv3_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv3_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv3_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv3_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv3_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv3_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv3_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv3_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv3_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_RDATA sc_in sc_lv 128 signal 9 } 
	{ m_axi_bv3_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv3_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_bv3_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv3_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv3_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv3_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv3_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv3_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv3_BUSER sc_in sc_lv 1 signal 9 } 
	{ B_val sc_in sc_lv 64 signal 10 } 
	{ m_axi_bc3_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc3_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc3_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc3_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc3_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc3_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc3_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_WDATA sc_out sc_lv 128 signal 11 } 
	{ m_axi_bc3_WSTRB sc_out sc_lv 16 signal 11 } 
	{ m_axi_bc3_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc3_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc3_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc3_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc3_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc3_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc3_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc3_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc3_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_RDATA sc_in sc_lv 128 signal 11 } 
	{ m_axi_bc3_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc3_RFIFONUM sc_in sc_lv 9 signal 11 } 
	{ m_axi_bc3_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc3_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc3_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc3_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc3_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc3_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc3_BUSER sc_in sc_lv 1 signal 11 } 
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
	{ "name": "rcache_result_bank3_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank3_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank3_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank3_b", "role": "read" }} , 
 	{ "name": "vrequest3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest3", "role": "din" }} , 
 	{ "name": "vrequest3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "full_n" }} , 
 	{ "name": "vrequest3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest3", "role": "write" }} , 
 	{ "name": "crequest3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "crequest3", "role": "din" }} , 
 	{ "name": "crequest3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest3", "role": "full_n" }} , 
 	{ "name": "crequest3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest3", "role": "write" }} , 
 	{ "name": "vresponse3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse3", "role": "dout" }} , 
 	{ "name": "vresponse3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "empty_n" }} , 
 	{ "name": "vresponse3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "read" }} , 
 	{ "name": "cresponse3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse3", "role": "dout" }} , 
 	{ "name": "cresponse3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "empty_n" }} , 
 	{ "name": "cresponse3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "read" }} , 
 	{ "name": "vresult315_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult315", "role": "dout" }} , 
 	{ "name": "vresult315_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult315", "role": "empty_n" }} , 
 	{ "name": "vresult315_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult315", "role": "read" }} , 
 	{ "name": "cresult319_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult319", "role": "dout" }} , 
 	{ "name": "cresult319_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult319", "role": "empty_n" }} , 
 	{ "name": "cresult319_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult319", "role": "read" }} , 
 	{ "name": "vblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock3", "role": "din" }} , 
 	{ "name": "vblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "full_n" }} , 
 	{ "name": "vblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock3", "role": "write" }} , 
 	{ "name": "cblock3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock3", "role": "din" }} , 
 	{ "name": "cblock3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "full_n" }} , 
 	{ "name": "cblock3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock3", "role": "write" }} , 
 	{ "name": "m_axi_bv3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWID" }} , 
 	{ "name": "m_axi_bv3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WID" }} , 
 	{ "name": "m_axi_bv3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARID" }} , 
 	{ "name": "m_axi_bv3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RID" }} , 
 	{ "name": "m_axi_bv3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bv3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BID" }} , 
 	{ "name": "m_axi_bv3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bc3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWID" }} , 
 	{ "name": "m_axi_bc3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WID" }} , 
 	{ "name": "m_axi_bc3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARID" }} , 
 	{ "name": "m_axi_bc3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RID" }} , 
 	{ "name": "m_axi_bc3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BID" }} , 
 	{ "name": "m_axi_bc3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "BUSER" }} , 
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
		"CDFG" : "vcrequest_manager_26",
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
			{"ID" : "1", "Name" : "vcrequest_splitter_82_U0"},
			{"ID" : "7", "Name" : "schedule_access_84_U0"},
			{"ID" : "13", "Name" : "schedule_access_86_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "request_merger_87_U0"},
			{"ID" : "19", "Name" : "request_merger_88_U0"},
			{"ID" : "22", "Name" : "collector_89_U0"},
			{"ID" : "25", "Name" : "collector_90_U0"}],
		"Port" : [
			{"Name" : "rcache_result_bank3_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "vcrequest_splitter_82_U0", "Port" : "rcache_result_bank3_b"}]},
			{"Name" : "vrequest3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "request_merger_87_U0", "Port" : "vrequest3"}]},
			{"Name" : "crequest3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "request_merger_88_U0", "Port" : "crequest3"}]},
			{"Name" : "vresponse3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_84_U0", "Port" : "vresponse3"}]},
			{"Name" : "cresponse3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_86_U0", "Port" : "cresponse3"}]},
			{"Name" : "vresult315", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_89_U0", "Port" : "vresult315"}]},
			{"Name" : "cresult319", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_90_U0", "Port" : "cresult319"}]},
			{"Name" : "vblock3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_89_U0", "Port" : "vblock3"}]},
			{"Name" : "cblock3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_90_U0", "Port" : "cblock3"}]},
			{"Name" : "bv3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_84_U0", "Port" : "bv3"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_86_U0", "Port" : "bc3"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_82_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "vcrequest_splitter_82",
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
			{"Name" : "rcache_result_bank3_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "rcache_result_bank3_b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "28", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vcollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "31", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "ccollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "cscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_82_U0.grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1",
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
			{"Name" : "rcache_result_bank3_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank3_b_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_82_U0.grp_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_83_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "request_manager_83",
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
					{"ID" : "5", "SubInstance" : "grp_request_manager_83_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_request_manager_83_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_83_U0.grp_request_manager_83_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "request_manager_83_Pipeline_VITIS_LOOP_48_1",
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_83_U0.grp_request_manager_83_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_84_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "schedule_access_84",
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
			{"Name" : "vresponse3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresponse3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "voff3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bv3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bv3_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bv3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "v_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_84_U0.grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "schedule_access_84_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bv3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln26", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_84_U0.grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_85_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "request_manager_85",
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
					{"ID" : "11", "SubInstance" : "grp_request_manager_85_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "38", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_request_manager_85_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_85_U0.grp_request_manager_85_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "10", "Child" : ["12"],
		"CDFG" : "request_manager_85_Pipeline_VITIS_LOOP_48_1",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_85_U0.grp_request_manager_85_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_86_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "schedule_access_86",
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
			{"Name" : "cresponse3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_86_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc3_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_86_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_86_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_86_U0.grp_schedule_access_86_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "schedule_access_86_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bc3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln24", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_86_U0.grp_schedule_access_86_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_87_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "request_merger_87",
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
					{"ID" : "17", "SubInstance" : "grp_request_merger_87_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_87_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_87_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "vrequest3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_87_U0.grp_request_merger_87_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "request_merger_87_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "vrequest3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest3_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_87_U0.grp_request_merger_87_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_88_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "request_merger_88",
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
					{"ID" : "20", "SubInstance" : "grp_request_merger_88_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_88_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_88_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "crequest3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_88_U0.grp_request_merger_88_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "request_merger_88_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "crequest3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest3_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_88_U0.grp_request_merger_88_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_89_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "collector_89",
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
			{"Name" : "vresult315", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult315_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_89_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "voff3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_89_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "vblock3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_89_U0.grp_collector_89_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "collector_89_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "vblock3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_8", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_89_U0.grp_collector_89_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_90_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "collector_90",
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
			{"Name" : "cresult319", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult319_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_90_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "coff4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_90_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "cblock3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "41", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_90_U0.grp_collector_90_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "25", "Child" : ["27"],
		"CDFG" : "collector_90_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "cblock3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cblock3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_6", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_90_U0.grp_collector_90_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
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
	vcrequest_manager_26 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}
		crequest3 {Type O LastRead -1 FirstWrite 1}
		vresponse3 {Type I LastRead 3 FirstWrite -1}
		cresponse3 {Type I LastRead 3 FirstWrite -1}
		vresult315 {Type I LastRead 2 FirstWrite -1}
		cresult319 {Type I LastRead 2 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		bv3 {Type I LastRead 12 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc3 {Type I LastRead 12 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_82 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank3_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_V_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_83 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_83_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_84 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse3 {Type I LastRead 3 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		bv3 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit1 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_84_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bv3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_18 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_13 {Type I LastRead 0 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln26 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_8 {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_21_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_12_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_12_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_18_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_21_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_21_out {Type O LastRead -1 FirstWrite 1}}
	request_manager_85 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_85_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_86 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse3 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc3 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_86_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_13 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_11 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln24 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_6 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_15_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_10_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_10_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_13_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_15_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_15_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_87 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}}
	request_merger_87_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest3 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_88 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest3 {Type O LastRead -1 FirstWrite 1}}
	request_merger_88_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest3 {Type O LastRead -1 FirstWrite 1}
		c_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	collector_89 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult315 {Type I LastRead 2 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		v_hit1 {Type I LastRead 1 FirstWrite -1}}
	collector_89_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock3 {Type O LastRead -1 FirstWrite 2}
		cached_V_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}
	collector_90 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult319 {Type I LastRead 2 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		c_hit2 {Type I LastRead 1 FirstWrite -1}}
	collector_90_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock3 {Type O LastRead -1 FirstWrite 2}
		cached_V_6 {Type I LastRead 0 FirstWrite -1}
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
	rcache_result_bank3_b { ap_fifo {  { rcache_result_bank3_b_dout fifo_port_we 0 68 }  { rcache_result_bank3_b_empty_n fifo_status 0 1 }  { rcache_result_bank3_b_read fifo_data 1 1 } } }
	vrequest3 { ap_fifo {  { vrequest3_din fifo_port_we 1 209 }  { vrequest3_full_n fifo_status 0 1 }  { vrequest3_write fifo_data 1 1 } } }
	crequest3 { ap_fifo {  { crequest3_din fifo_port_we 1 209 }  { crequest3_full_n fifo_status 0 1 }  { crequest3_write fifo_data 1 1 } } }
	vresponse3 { ap_fifo {  { vresponse3_dout fifo_port_we 0 6 }  { vresponse3_empty_n fifo_status 0 1 }  { vresponse3_read fifo_data 1 1 } } }
	cresponse3 { ap_fifo {  { cresponse3_dout fifo_port_we 0 6 }  { cresponse3_empty_n fifo_status 0 1 }  { cresponse3_read fifo_data 1 1 } } }
	vresult315 { ap_fifo {  { vresult315_dout fifo_port_we 0 1024 }  { vresult315_empty_n fifo_status 0 1 }  { vresult315_read fifo_data 1 1 } } }
	cresult319 { ap_fifo {  { cresult319_dout fifo_port_we 0 1024 }  { cresult319_empty_n fifo_status 0 1 }  { cresult319_read fifo_data 1 1 } } }
	vblock3 { ap_fifo {  { vblock3_din fifo_port_we 1 134 }  { vblock3_full_n fifo_status 0 1 }  { vblock3_write fifo_data 1 1 } } }
	cblock3 { ap_fifo {  { cblock3_din fifo_port_we 1 134 }  { cblock3_full_n fifo_status 0 1 }  { cblock3_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bv3_AWVALID VALID 1 1 }  { m_axi_bv3_AWREADY READY 0 1 }  { m_axi_bv3_AWADDR ADDR 1 64 }  { m_axi_bv3_AWID ID 1 1 }  { m_axi_bv3_AWLEN SIZE 1 32 }  { m_axi_bv3_AWSIZE BURST 1 3 }  { m_axi_bv3_AWBURST LOCK 1 2 }  { m_axi_bv3_AWLOCK CACHE 1 2 }  { m_axi_bv3_AWCACHE PROT 1 4 }  { m_axi_bv3_AWPROT QOS 1 3 }  { m_axi_bv3_AWQOS REGION 1 4 }  { m_axi_bv3_AWREGION USER 1 4 }  { m_axi_bv3_AWUSER DATA 1 1 }  { m_axi_bv3_WVALID VALID 1 1 }  { m_axi_bv3_WREADY READY 0 1 }  { m_axi_bv3_WDATA FIFONUM 1 128 }  { m_axi_bv3_WSTRB STRB 1 16 }  { m_axi_bv3_WLAST LAST 1 1 }  { m_axi_bv3_WID ID 1 1 }  { m_axi_bv3_WUSER DATA 1 1 }  { m_axi_bv3_ARVALID VALID 1 1 }  { m_axi_bv3_ARREADY READY 0 1 }  { m_axi_bv3_ARADDR ADDR 1 64 }  { m_axi_bv3_ARID ID 1 1 }  { m_axi_bv3_ARLEN SIZE 1 32 }  { m_axi_bv3_ARSIZE BURST 1 3 }  { m_axi_bv3_ARBURST LOCK 1 2 }  { m_axi_bv3_ARLOCK CACHE 1 2 }  { m_axi_bv3_ARCACHE PROT 1 4 }  { m_axi_bv3_ARPROT QOS 1 3 }  { m_axi_bv3_ARQOS REGION 1 4 }  { m_axi_bv3_ARREGION USER 1 4 }  { m_axi_bv3_ARUSER DATA 1 1 }  { m_axi_bv3_RVALID VALID 0 1 }  { m_axi_bv3_RREADY READY 1 1 }  { m_axi_bv3_RDATA FIFONUM 0 128 }  { m_axi_bv3_RLAST LAST 0 1 }  { m_axi_bv3_RID ID 0 1 }  { m_axi_bv3_RFIFONUM LEN 0 9 }  { m_axi_bv3_RUSER DATA 0 1 }  { m_axi_bv3_RRESP RESP 0 2 }  { m_axi_bv3_BVALID VALID 0 1 }  { m_axi_bv3_BREADY READY 1 1 }  { m_axi_bv3_BRESP RESP 0 2 }  { m_axi_bv3_BID ID 0 1 }  { m_axi_bv3_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 }  { B_val_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_bc3_AWVALID VALID 1 1 }  { m_axi_bc3_AWREADY READY 0 1 }  { m_axi_bc3_AWADDR ADDR 1 64 }  { m_axi_bc3_AWID ID 1 1 }  { m_axi_bc3_AWLEN SIZE 1 32 }  { m_axi_bc3_AWSIZE BURST 1 3 }  { m_axi_bc3_AWBURST LOCK 1 2 }  { m_axi_bc3_AWLOCK CACHE 1 2 }  { m_axi_bc3_AWCACHE PROT 1 4 }  { m_axi_bc3_AWPROT QOS 1 3 }  { m_axi_bc3_AWQOS REGION 1 4 }  { m_axi_bc3_AWREGION USER 1 4 }  { m_axi_bc3_AWUSER DATA 1 1 }  { m_axi_bc3_WVALID VALID 1 1 }  { m_axi_bc3_WREADY READY 0 1 }  { m_axi_bc3_WDATA FIFONUM 1 128 }  { m_axi_bc3_WSTRB STRB 1 16 }  { m_axi_bc3_WLAST LAST 1 1 }  { m_axi_bc3_WID ID 1 1 }  { m_axi_bc3_WUSER DATA 1 1 }  { m_axi_bc3_ARVALID VALID 1 1 }  { m_axi_bc3_ARREADY READY 0 1 }  { m_axi_bc3_ARADDR ADDR 1 64 }  { m_axi_bc3_ARID ID 1 1 }  { m_axi_bc3_ARLEN SIZE 1 32 }  { m_axi_bc3_ARSIZE BURST 1 3 }  { m_axi_bc3_ARBURST LOCK 1 2 }  { m_axi_bc3_ARLOCK CACHE 1 2 }  { m_axi_bc3_ARCACHE PROT 1 4 }  { m_axi_bc3_ARPROT QOS 1 3 }  { m_axi_bc3_ARQOS REGION 1 4 }  { m_axi_bc3_ARREGION USER 1 4 }  { m_axi_bc3_ARUSER DATA 1 1 }  { m_axi_bc3_RVALID VALID 0 1 }  { m_axi_bc3_RREADY READY 1 1 }  { m_axi_bc3_RDATA FIFONUM 0 128 }  { m_axi_bc3_RLAST LAST 0 1 }  { m_axi_bc3_RID ID 0 1 }  { m_axi_bc3_RFIFONUM LEN 0 9 }  { m_axi_bc3_RUSER DATA 0 1 }  { m_axi_bc3_RRESP RESP 0 2 }  { m_axi_bc3_BVALID VALID 0 1 }  { m_axi_bc3_BREADY READY 1 1 }  { m_axi_bc3_BRESP RESP 0 2 }  { m_axi_bc3_BID ID 0 1 }  { m_axi_bc3_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 }  { B_cid_ap_vld in_vld 0 1 } } }
}
