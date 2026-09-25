set moduleName vcrequest_manager_25
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
set C_modelName {vcrequest_manager.25}
set C_modelType { void 0 }
set C_modelArgList {
	{ rcache_result_bank2_b int 68 regular {fifo 0 volatile }  }
	{ vrequest2 int 209 regular {fifo 1 volatile }  }
	{ crequest2 int 209 regular {fifo 1 volatile }  }
	{ vresponse2 int 6 regular {fifo 0 volatile }  }
	{ cresponse2 int 6 regular {fifo 0 volatile }  }
	{ vresult215 int 1024 regular {fifo 0 volatile }  }
	{ cresult219 int 1024 regular {fifo 0 volatile }  }
	{ vblock2 int 134 regular {fifo 1 volatile }  }
	{ cblock2 int 134 regular {fifo 1 volatile }  }
	{ bv2 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bc2 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank2_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest2", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vresult215", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "cresult219", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock2", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val_port2","offset": { "type": "dynamic","port_name": "B_val_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bc2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port2","offset": { "type": "dynamic","port_name": "B_cid_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 130
set portList { 
	{ rcache_result_bank2_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank2_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank2_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest2_din sc_out sc_lv 209 signal 1 } 
	{ vrequest2_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest2_write sc_out sc_logic 1 signal 1 } 
	{ crequest2_din sc_out sc_lv 209 signal 2 } 
	{ crequest2_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest2_write sc_out sc_logic 1 signal 2 } 
	{ vresponse2_dout sc_in sc_lv 6 signal 3 } 
	{ vresponse2_empty_n sc_in sc_logic 1 signal 3 } 
	{ vresponse2_read sc_out sc_logic 1 signal 3 } 
	{ cresponse2_dout sc_in sc_lv 6 signal 4 } 
	{ cresponse2_empty_n sc_in sc_logic 1 signal 4 } 
	{ cresponse2_read sc_out sc_logic 1 signal 4 } 
	{ vresult215_dout sc_in sc_lv 1024 signal 5 } 
	{ vresult215_empty_n sc_in sc_logic 1 signal 5 } 
	{ vresult215_read sc_out sc_logic 1 signal 5 } 
	{ cresult219_dout sc_in sc_lv 1024 signal 6 } 
	{ cresult219_empty_n sc_in sc_logic 1 signal 6 } 
	{ cresult219_read sc_out sc_logic 1 signal 6 } 
	{ vblock2_din sc_out sc_lv 134 signal 7 } 
	{ vblock2_full_n sc_in sc_logic 1 signal 7 } 
	{ vblock2_write sc_out sc_logic 1 signal 7 } 
	{ cblock2_din sc_out sc_lv 134 signal 8 } 
	{ cblock2_full_n sc_in sc_logic 1 signal 8 } 
	{ cblock2_write sc_out sc_logic 1 signal 8 } 
	{ m_axi_bv2_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv2_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv2_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv2_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv2_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv2_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv2_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_WDATA sc_out sc_lv 128 signal 9 } 
	{ m_axi_bv2_WSTRB sc_out sc_lv 16 signal 9 } 
	{ m_axi_bv2_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv2_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv2_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv2_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv2_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv2_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv2_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv2_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv2_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_RDATA sc_in sc_lv 128 signal 9 } 
	{ m_axi_bv2_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv2_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_bv2_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv2_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv2_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv2_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv2_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv2_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv2_BUSER sc_in sc_lv 1 signal 9 } 
	{ B_val sc_in sc_lv 64 signal 10 } 
	{ m_axi_bc2_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc2_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc2_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc2_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc2_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc2_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc2_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_WDATA sc_out sc_lv 128 signal 11 } 
	{ m_axi_bc2_WSTRB sc_out sc_lv 16 signal 11 } 
	{ m_axi_bc2_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc2_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc2_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc2_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc2_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc2_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc2_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc2_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc2_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_RDATA sc_in sc_lv 128 signal 11 } 
	{ m_axi_bc2_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc2_RFIFONUM sc_in sc_lv 9 signal 11 } 
	{ m_axi_bc2_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc2_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc2_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc2_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc2_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc2_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc2_BUSER sc_in sc_lv 1 signal 11 } 
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
	{ "name": "rcache_result_bank2_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank2_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank2_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank2_b", "role": "read" }} , 
 	{ "name": "vrequest2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "vrequest2", "role": "din" }} , 
 	{ "name": "vrequest2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "full_n" }} , 
 	{ "name": "vrequest2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest2", "role": "write" }} , 
 	{ "name": "crequest2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "crequest2", "role": "din" }} , 
 	{ "name": "crequest2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest2", "role": "full_n" }} , 
 	{ "name": "crequest2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest2", "role": "write" }} , 
 	{ "name": "vresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse2", "role": "dout" }} , 
 	{ "name": "vresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse2", "role": "empty_n" }} , 
 	{ "name": "vresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse2", "role": "read" }} , 
 	{ "name": "cresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse2", "role": "dout" }} , 
 	{ "name": "cresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "empty_n" }} , 
 	{ "name": "cresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "read" }} , 
 	{ "name": "vresult215_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult215", "role": "dout" }} , 
 	{ "name": "vresult215_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult215", "role": "empty_n" }} , 
 	{ "name": "vresult215_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult215", "role": "read" }} , 
 	{ "name": "cresult219_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult219", "role": "dout" }} , 
 	{ "name": "cresult219_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult219", "role": "empty_n" }} , 
 	{ "name": "cresult219_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult219", "role": "read" }} , 
 	{ "name": "vblock2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2", "role": "din" }} , 
 	{ "name": "vblock2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2", "role": "full_n" }} , 
 	{ "name": "vblock2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2", "role": "write" }} , 
 	{ "name": "cblock2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2", "role": "din" }} , 
 	{ "name": "cblock2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2", "role": "full_n" }} , 
 	{ "name": "cblock2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2", "role": "write" }} , 
 	{ "name": "m_axi_bv2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWID" }} , 
 	{ "name": "m_axi_bv2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WID" }} , 
 	{ "name": "m_axi_bv2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARID" }} , 
 	{ "name": "m_axi_bv2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RID" }} , 
 	{ "name": "m_axi_bv2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bv2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BID" }} , 
 	{ "name": "m_axi_bv2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv2", "role": "BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bc2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWID" }} , 
 	{ "name": "m_axi_bc2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WID" }} , 
 	{ "name": "m_axi_bc2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARID" }} , 
 	{ "name": "m_axi_bc2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RID" }} , 
 	{ "name": "m_axi_bc2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BID" }} , 
 	{ "name": "m_axi_bc2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BUSER" }} , 
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
		"CDFG" : "vcrequest_manager_25",
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
			{"ID" : "1", "Name" : "vcrequest_splitter_73_U0"},
			{"ID" : "7", "Name" : "schedule_access_75_U0"},
			{"ID" : "13", "Name" : "schedule_access_77_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "request_merger_78_U0"},
			{"ID" : "19", "Name" : "request_merger_79_U0"},
			{"ID" : "22", "Name" : "collector_80_U0"},
			{"ID" : "25", "Name" : "collector_81_U0"}],
		"Port" : [
			{"Name" : "rcache_result_bank2_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "vcrequest_splitter_73_U0", "Port" : "rcache_result_bank2_b"}]},
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "request_merger_78_U0", "Port" : "vrequest2"}]},
			{"Name" : "crequest2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "request_merger_79_U0", "Port" : "crequest2"}]},
			{"Name" : "vresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_75_U0", "Port" : "vresponse2"}]},
			{"Name" : "cresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_77_U0", "Port" : "cresponse2"}]},
			{"Name" : "vresult215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_80_U0", "Port" : "vresult215"}]},
			{"Name" : "cresult219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_81_U0", "Port" : "cresult219"}]},
			{"Name" : "vblock2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "collector_80_U0", "Port" : "vblock2"}]},
			{"Name" : "cblock2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "collector_81_U0", "Port" : "cblock2"}]},
			{"Name" : "bv2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "schedule_access_75_U0", "Port" : "bv2"}]},
			{"Name" : "B_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "schedule_access_77_U0", "Port" : "bc2"}]},
			{"Name" : "B_cid", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_73_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "vcrequest_splitter_73",
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
			{"Name" : "rcache_result_bank2_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "rcache_result_bank2_b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["4"], "DependentChan" : "28", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vcollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "30", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vcollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vcollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ccollector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "31", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ccollector_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "ccollector", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "32", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "vscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Port" : "cscheduler", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_73_U0.grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1",
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
			{"Name" : "rcache_result_bank2_b", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rcache_result_bank2_b_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vcrequest_splitter_73_U0.grp_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_74_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "request_manager_74",
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
					{"ID" : "5", "SubInstance" : "grp_request_manager_74_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "vrequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "34", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_request_manager_74_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_74_U0.grp_request_manager_74_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "request_manager_74_Pipeline_VITIS_LOOP_48_1",
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_74_U0.grp_request_manager_74_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_75_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "schedule_access_75",
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
			{"Name" : "vresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_75_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "voff3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bv2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bv2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_75_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bv2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_schedule_access_75_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "v_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_75_U0.grp_schedule_access_75_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "schedule_access_75_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bv2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_75_U0.grp_schedule_access_75_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_manager_76_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "request_manager_76",
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
					{"ID" : "11", "SubInstance" : "grp_request_manager_76_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "crequest", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_first", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "38", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_first_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_request_manager_76_Pipeline_VITIS_LOOP_48_1_fu_99", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_manager_76_U0.grp_request_manager_76_Pipeline_VITIS_LOOP_48_1_fu_99", "Parent" : "10", "Child" : ["12"],
		"CDFG" : "request_manager_76_Pipeline_VITIS_LOOP_48_1",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_manager_76_U0.grp_request_manager_76_Pipeline_VITIS_LOOP_48_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.schedule_access_77_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "schedule_access_77",
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
			{"Name" : "cresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.schedule_access_77_U0.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "schedule_access_77_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.schedule_access_77_U0.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_78_U0", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "request_merger_78",
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
					{"ID" : "17", "SubInstance" : "grp_request_merger_78_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "36", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_78_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "v_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vrequest2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_request_merger_78_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "vrequest2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_78_U0.grp_request_merger_78_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "request_merger_78_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "vrequest2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vrequest2_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_78_U0.grp_request_merger_78_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.request_merger_79_U0", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "request_merger_79",
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
					{"ID" : "20", "SubInstance" : "grp_request_merger_79_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_first", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "40", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_79_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "c_req", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "crequest2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "crequest2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_request_merger_79_Pipeline_VITIS_LOOP_152_1_fu_113", "Port" : "crequest2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.request_merger_79_U0.grp_request_merger_79_Pipeline_VITIS_LOOP_152_1_fu_113", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "request_merger_79_Pipeline_VITIS_LOOP_152_1",
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
			{"Name" : "crequest2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "crequest2_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.request_merger_79_U0.grp_request_merger_79_Pipeline_VITIS_LOOP_152_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_80_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "collector_80",
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
			{"Name" : "vresult215", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresult215_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "35", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_80_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "voff3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_collector_80_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "vblock2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "37", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_80_U0.grp_collector_80_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "collector_80_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "vblock2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vblock2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_12", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_80_U0.grp_collector_80_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.collector_81_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "collector_81",
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
			{"Name" : "cresult219", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresult219_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "39", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_81_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "coff4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_collector_81_Pipeline_VITIS_LOOP_185_2_fu_96", "Port" : "cblock2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "41", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.collector_81_U0.grp_collector_81_Pipeline_VITIS_LOOP_185_2_fu_96", "Parent" : "25", "Child" : ["27"],
		"CDFG" : "collector_81_Pipeline_VITIS_LOOP_185_2",
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
			{"Name" : "cblock2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cblock2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cached_V_10", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.collector_81_U0.grp_collector_81_Pipeline_VITIS_LOOP_185_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
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
	vcrequest_manager_25 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}
		crequest2 {Type O LastRead -1 FirstWrite 1}
		vresponse2 {Type I LastRead 3 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		vresult215 {Type I LastRead 2 FirstWrite -1}
		cresult219 {Type I LastRead 2 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		bv2 {Type I LastRead 12 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc2 {Type I LastRead 12 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter_73 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank2_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_V_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_74 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_74_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_75 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse2 {Type I LastRead 3 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		bv2 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit1 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_75_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bv2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_28 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_17 {Type I LastRead 0 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_11 {Type I LastRead 0 FirstWrite -1}
		trunc_ln30 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_12 {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_33_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_16_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_16_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_28_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_33_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_33_out {Type O LastRead -1 FirstWrite 1}}
	request_manager_76 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_76_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_dest_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_target_V_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brid_out {Type O LastRead -1 FirstWrite 0}
		curr_request_brlen_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_77 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc2 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_77_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_23 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_15 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln28 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_10 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_27_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_23_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_27_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_78 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}}
	request_merger_78_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest2 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	request_merger_79 {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest2 {Type O LastRead -1 FirstWrite 1}}
	request_merger_79_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest2 {Type O LastRead -1 FirstWrite 1}
		c_req {Type I LastRead 0 FirstWrite -1}
		temp_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_brlen_out {Type O LastRead -1 FirstWrite 1}
		temp_brid_out {Type O LastRead -1 FirstWrite 1}
		temp_write_idx_V_out {Type O LastRead -1 FirstWrite 1}
		temp_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_peID_V_out {Type O LastRead -1 FirstWrite 1}
		temp_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_target_V_out {Type O LastRead -1 FirstWrite 1}}
	collector_80 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult215 {Type I LastRead 2 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		v_hit1 {Type I LastRead 1 FirstWrite -1}}
	collector_80_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock2 {Type O LastRead -1 FirstWrite 2}
		cached_V_12 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln184 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff3 {Type I LastRead 1 FirstWrite -1}}
	collector_81 {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult219 {Type I LastRead 2 FirstWrite -1}
		coff4 {Type I LastRead 1 FirstWrite -1}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		c_hit2 {Type I LastRead 1 FirstWrite -1}}
	collector_81_Pipeline_VITIS_LOOP_185_2 {
		zext_ln183 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock2 {Type O LastRead -1 FirstWrite 2}
		cached_V_10 {Type I LastRead 0 FirstWrite -1}
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
	rcache_result_bank2_b { ap_fifo {  { rcache_result_bank2_b_dout fifo_port_we 0 68 }  { rcache_result_bank2_b_empty_n fifo_status 0 1 }  { rcache_result_bank2_b_read fifo_data 1 1 } } }
	vrequest2 { ap_fifo {  { vrequest2_din fifo_port_we 1 209 }  { vrequest2_full_n fifo_status 0 1 }  { vrequest2_write fifo_data 1 1 } } }
	crequest2 { ap_fifo {  { crequest2_din fifo_port_we 1 209 }  { crequest2_full_n fifo_status 0 1 }  { crequest2_write fifo_data 1 1 } } }
	vresponse2 { ap_fifo {  { vresponse2_dout fifo_port_we 0 6 }  { vresponse2_empty_n fifo_status 0 1 }  { vresponse2_read fifo_data 1 1 } } }
	cresponse2 { ap_fifo {  { cresponse2_dout fifo_port_we 0 6 }  { cresponse2_empty_n fifo_status 0 1 }  { cresponse2_read fifo_data 1 1 } } }
	vresult215 { ap_fifo {  { vresult215_dout fifo_port_we 0 1024 }  { vresult215_empty_n fifo_status 0 1 }  { vresult215_read fifo_data 1 1 } } }
	cresult219 { ap_fifo {  { cresult219_dout fifo_port_we 0 1024 }  { cresult219_empty_n fifo_status 0 1 }  { cresult219_read fifo_data 1 1 } } }
	vblock2 { ap_fifo {  { vblock2_din fifo_port_we 1 134 }  { vblock2_full_n fifo_status 0 1 }  { vblock2_write fifo_data 1 1 } } }
	cblock2 { ap_fifo {  { cblock2_din fifo_port_we 1 134 }  { cblock2_full_n fifo_status 0 1 }  { cblock2_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bv2_AWVALID VALID 1 1 }  { m_axi_bv2_AWREADY READY 0 1 }  { m_axi_bv2_AWADDR ADDR 1 64 }  { m_axi_bv2_AWID ID 1 1 }  { m_axi_bv2_AWLEN SIZE 1 32 }  { m_axi_bv2_AWSIZE BURST 1 3 }  { m_axi_bv2_AWBURST LOCK 1 2 }  { m_axi_bv2_AWLOCK CACHE 1 2 }  { m_axi_bv2_AWCACHE PROT 1 4 }  { m_axi_bv2_AWPROT QOS 1 3 }  { m_axi_bv2_AWQOS REGION 1 4 }  { m_axi_bv2_AWREGION USER 1 4 }  { m_axi_bv2_AWUSER DATA 1 1 }  { m_axi_bv2_WVALID VALID 1 1 }  { m_axi_bv2_WREADY READY 0 1 }  { m_axi_bv2_WDATA FIFONUM 1 128 }  { m_axi_bv2_WSTRB STRB 1 16 }  { m_axi_bv2_WLAST LAST 1 1 }  { m_axi_bv2_WID ID 1 1 }  { m_axi_bv2_WUSER DATA 1 1 }  { m_axi_bv2_ARVALID VALID 1 1 }  { m_axi_bv2_ARREADY READY 0 1 }  { m_axi_bv2_ARADDR ADDR 1 64 }  { m_axi_bv2_ARID ID 1 1 }  { m_axi_bv2_ARLEN SIZE 1 32 }  { m_axi_bv2_ARSIZE BURST 1 3 }  { m_axi_bv2_ARBURST LOCK 1 2 }  { m_axi_bv2_ARLOCK CACHE 1 2 }  { m_axi_bv2_ARCACHE PROT 1 4 }  { m_axi_bv2_ARPROT QOS 1 3 }  { m_axi_bv2_ARQOS REGION 1 4 }  { m_axi_bv2_ARREGION USER 1 4 }  { m_axi_bv2_ARUSER DATA 1 1 }  { m_axi_bv2_RVALID VALID 0 1 }  { m_axi_bv2_RREADY READY 1 1 }  { m_axi_bv2_RDATA FIFONUM 0 128 }  { m_axi_bv2_RLAST LAST 0 1 }  { m_axi_bv2_RID ID 0 1 }  { m_axi_bv2_RFIFONUM LEN 0 9 }  { m_axi_bv2_RUSER DATA 0 1 }  { m_axi_bv2_RRESP RESP 0 2 }  { m_axi_bv2_BVALID VALID 0 1 }  { m_axi_bv2_BREADY READY 1 1 }  { m_axi_bv2_BRESP RESP 0 2 }  { m_axi_bv2_BID ID 0 1 }  { m_axi_bv2_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 }  { B_val_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_bc2_AWVALID VALID 1 1 }  { m_axi_bc2_AWREADY READY 0 1 }  { m_axi_bc2_AWADDR ADDR 1 64 }  { m_axi_bc2_AWID ID 1 1 }  { m_axi_bc2_AWLEN SIZE 1 32 }  { m_axi_bc2_AWSIZE BURST 1 3 }  { m_axi_bc2_AWBURST LOCK 1 2 }  { m_axi_bc2_AWLOCK CACHE 1 2 }  { m_axi_bc2_AWCACHE PROT 1 4 }  { m_axi_bc2_AWPROT QOS 1 3 }  { m_axi_bc2_AWQOS REGION 1 4 }  { m_axi_bc2_AWREGION USER 1 4 }  { m_axi_bc2_AWUSER DATA 1 1 }  { m_axi_bc2_WVALID VALID 1 1 }  { m_axi_bc2_WREADY READY 0 1 }  { m_axi_bc2_WDATA FIFONUM 1 128 }  { m_axi_bc2_WSTRB STRB 1 16 }  { m_axi_bc2_WLAST LAST 1 1 }  { m_axi_bc2_WID ID 1 1 }  { m_axi_bc2_WUSER DATA 1 1 }  { m_axi_bc2_ARVALID VALID 1 1 }  { m_axi_bc2_ARREADY READY 0 1 }  { m_axi_bc2_ARADDR ADDR 1 64 }  { m_axi_bc2_ARID ID 1 1 }  { m_axi_bc2_ARLEN SIZE 1 32 }  { m_axi_bc2_ARSIZE BURST 1 3 }  { m_axi_bc2_ARBURST LOCK 1 2 }  { m_axi_bc2_ARLOCK CACHE 1 2 }  { m_axi_bc2_ARCACHE PROT 1 4 }  { m_axi_bc2_ARPROT QOS 1 3 }  { m_axi_bc2_ARQOS REGION 1 4 }  { m_axi_bc2_ARREGION USER 1 4 }  { m_axi_bc2_ARUSER DATA 1 1 }  { m_axi_bc2_RVALID VALID 0 1 }  { m_axi_bc2_RREADY READY 1 1 }  { m_axi_bc2_RDATA FIFONUM 0 128 }  { m_axi_bc2_RLAST LAST 0 1 }  { m_axi_bc2_RID ID 0 1 }  { m_axi_bc2_RFIFONUM LEN 0 9 }  { m_axi_bc2_RUSER DATA 0 1 }  { m_axi_bc2_RRESP RESP 0 2 }  { m_axi_bc2_BVALID VALID 0 1 }  { m_axi_bc2_BREADY READY 1 1 }  { m_axi_bc2_BRESP RESP 0 2 }  { m_axi_bc2_BID ID 0 1 }  { m_axi_bc2_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 }  { B_cid_ap_vld in_vld 0 1 } } }
}
