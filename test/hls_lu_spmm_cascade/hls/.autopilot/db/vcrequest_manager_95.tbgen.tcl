set moduleName vcrequest_manager_95
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 272
set C_modelName {vcrequest_manager.95}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_result_bank4_b int 68 regular {fifo 0 volatile }  }
	{ vrequest4 int 225 regular {fifo 1 volatile }  }
	{ crequest4 int 225 regular {fifo 1 volatile }  }
	{ vresponse4 int 6 regular {fifo 0 volatile }  }
	{ cresponse4 int 6 regular {fifo 0 volatile }  }
	{ vresult4 int 1024 regular {fifo 0 volatile }  }
	{ cresult4 int 1024 regular {fifo 0 volatile }  }
	{ vblock4 int 134 regular {fifo 1 volatile }  }
	{ cblock4 int 134 regular {fifo 1 volatile }  }
	{ bv4 int 128 regular {axi_master 0}  }
	{ B_val int 64 regular  }
	{ bc4 int 128 regular {axi_master 0}  }
	{ B_cid int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_result_bank4_b", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vrequest4", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crequest4", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse4", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vresult4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "cresult4", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_val_port4","offset": { "type": "dynamic","port_name": "B_val_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bc4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_cid_port4","offset": { "type": "dynamic","port_name": "B_cid_port4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 140
set portList { 
	{ rcache_result_bank4_b_dout sc_in sc_lv 68 signal 0 } 
	{ rcache_result_bank4_b_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_result_bank4_b_read sc_out sc_logic 1 signal 0 } 
	{ vrequest4_din sc_out sc_lv 225 signal 1 } 
	{ vrequest4_full_n sc_in sc_logic 1 signal 1 } 
	{ vrequest4_write sc_out sc_logic 1 signal 1 } 
	{ crequest4_din sc_out sc_lv 225 signal 2 } 
	{ crequest4_full_n sc_in sc_logic 1 signal 2 } 
	{ crequest4_write sc_out sc_logic 1 signal 2 } 
	{ vresponse4_dout sc_in sc_lv 6 signal 3 } 
	{ vresponse4_empty_n sc_in sc_logic 1 signal 3 } 
	{ vresponse4_read sc_out sc_logic 1 signal 3 } 
	{ cresponse4_dout sc_in sc_lv 6 signal 4 } 
	{ cresponse4_empty_n sc_in sc_logic 1 signal 4 } 
	{ cresponse4_read sc_out sc_logic 1 signal 4 } 
	{ vresult4_dout sc_in sc_lv 1024 signal 5 } 
	{ vresult4_empty_n sc_in sc_logic 1 signal 5 } 
	{ vresult4_read sc_out sc_logic 1 signal 5 } 
	{ cresult4_dout sc_in sc_lv 1024 signal 6 } 
	{ cresult4_empty_n sc_in sc_logic 1 signal 6 } 
	{ cresult4_read sc_out sc_logic 1 signal 6 } 
	{ vblock4_din sc_out sc_lv 134 signal 7 } 
	{ vblock4_full_n sc_in sc_logic 1 signal 7 } 
	{ vblock4_write sc_out sc_logic 1 signal 7 } 
	{ cblock4_din sc_out sc_lv 134 signal 8 } 
	{ cblock4_full_n sc_in sc_logic 1 signal 8 } 
	{ cblock4_write sc_out sc_logic 1 signal 8 } 
	{ m_axi_bv4_0_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv4_0_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv4_0_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_0_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_0_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_WDATA sc_out sc_lv 128 signal 9 } 
	{ m_axi_bv4_0_WSTRB sc_out sc_lv 16 signal 9 } 
	{ m_axi_bv4_0_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_bv4_0_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_bv4_0_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_0_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_bv4_0_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_bv4_0_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_RDATA sc_in sc_lv 128 signal 9 } 
	{ m_axi_bv4_0_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_bv4_0_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_bv4_0_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_bv4_0_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_bv4_0_BUSER sc_in sc_lv 1 signal 9 } 
	{ B_val sc_in sc_lv 64 signal 10 } 
	{ m_axi_bc4_0_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc4_0_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc4_0_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_0_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_0_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_WDATA sc_out sc_lv 128 signal 11 } 
	{ m_axi_bc4_0_WSTRB sc_out sc_lv 16 signal 11 } 
	{ m_axi_bc4_0_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_bc4_0_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_bc4_0_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_0_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_bc4_0_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_bc4_0_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_RDATA sc_in sc_lv 128 signal 11 } 
	{ m_axi_bc4_0_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_RFIFONUM sc_in sc_lv 9 signal 11 } 
	{ m_axi_bc4_0_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_bc4_0_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_bc4_0_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_bc4_0_BUSER sc_in sc_lv 1 signal 11 } 
	{ B_cid sc_in sc_lv 64 signal 12 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_val_ap_vld sc_in sc_logic 1 invld 10 } 
	{ B_cid_ap_vld sc_in sc_logic 1 invld 12 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ vblock4_dout sc_in sc_lv 134 signal -1 } 
	{ vblock4_empty_n sc_in sc_logic 1 signal -1 } 
	{ vblock4_read sc_out sc_logic 1 signal -1 } 
	{ vblock4_num_data_valid sc_in sc_lv 32 signal -1 } 
	{ vblock4_fifo_cap sc_in sc_lv 32 signal -1 } 
	{ cblock4_dout sc_in sc_lv 134 signal -1 } 
	{ cblock4_empty_n sc_in sc_logic 1 signal -1 } 
	{ cblock4_read sc_out sc_logic 1 signal -1 } 
	{ cblock4_num_data_valid sc_in sc_lv 32 signal -1 } 
	{ cblock4_fifo_cap sc_in sc_lv 32 signal -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_result_bank4_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "dout" }} , 
 	{ "name": "rcache_result_bank4_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "empty_n" }} , 
 	{ "name": "rcache_result_bank4_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_result_bank4_b", "role": "read" }} , 
 	{ "name": "vrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "vrequest4", "role": "din" }} , 
 	{ "name": "vrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "full_n" }} , 
 	{ "name": "vrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vrequest4", "role": "write" }} , 
 	{ "name": "crequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "crequest4", "role": "din" }} , 
 	{ "name": "crequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest4", "role": "full_n" }} , 
 	{ "name": "crequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest4", "role": "write" }} , 
 	{ "name": "vresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse4", "role": "dout" }} , 
 	{ "name": "vresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "empty_n" }} , 
 	{ "name": "vresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse4", "role": "read" }} , 
 	{ "name": "cresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse4", "role": "dout" }} , 
 	{ "name": "cresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "empty_n" }} , 
 	{ "name": "cresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse4", "role": "read" }} , 
 	{ "name": "vresult4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "vresult4", "role": "dout" }} , 
 	{ "name": "vresult4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult4", "role": "empty_n" }} , 
 	{ "name": "vresult4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresult4", "role": "read" }} , 
 	{ "name": "cresult4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "cresult4", "role": "dout" }} , 
 	{ "name": "cresult4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "empty_n" }} , 
 	{ "name": "cresult4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresult4", "role": "read" }} , 
 	{ "name": "vblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "din" }} , 
 	{ "name": "vblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "full_n" }} , 
 	{ "name": "vblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "write" }} , 
 	{ "name": "cblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "din" }} , 
 	{ "name": "cblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "full_n" }} , 
 	{ "name": "cblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "write" }} , 
 	{ "name": "m_axi_bv4_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bv4_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bv4_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bv4_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bv4_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bv4_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bv4_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bv4_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bv4_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bv4_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bv4_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bv4_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bv4_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bv4_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bv4_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bv4_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bv4_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv4", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bv4_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bv4_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_WID" }} , 
 	{ "name": "m_axi_bv4_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bv4_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bv4_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bv4_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bv4_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bv4_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bv4_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bv4_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bv4_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bv4_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bv4_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bv4_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bv4_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bv4_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bv4_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bv4_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bv4_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv4", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bv4_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bv4_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_RID" }} , 
 	{ "name": "m_axi_bv4_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv4", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bv4_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bv4_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bv4_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bv4_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bv4_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv4", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bv4_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_BID" }} , 
 	{ "name": "m_axi_bv4_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv4", "role": "0_BUSER" }} , 
 	{ "name": "B_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_val", "role": "default" }} , 
 	{ "name": "m_axi_bc4_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bc4_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bc4_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bc4_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bc4_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bc4_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bc4_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bc4_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bc4_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bc4_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bc4_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bc4_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bc4_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bc4_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bc4_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bc4_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bc4_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc4", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bc4_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bc4_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_WID" }} , 
 	{ "name": "m_axi_bc4_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bc4_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bc4_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bc4_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bc4_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bc4_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bc4_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bc4_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bc4_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bc4_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bc4_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bc4_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bc4_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bc4_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bc4_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bc4_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bc4_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc4", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bc4_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bc4_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_RID" }} , 
 	{ "name": "m_axi_bc4_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc4", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bc4_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bc4_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bc4_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bc4_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bc4_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc4", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bc4_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_BID" }} , 
 	{ "name": "m_axi_bc4_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc4", "role": "0_BUSER" }} , 
 	{ "name": "B_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_cid", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_val", "role": "ap_vld" }} , 
 	{ "name": "B_cid_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_cid", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "vblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4_dout", "role": "default" }} , 
 	{ "name": "vblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4_empty_n", "role": "default" }} , 
 	{ "name": "vblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4_read", "role": "default" }} , 
 	{ "name": "vblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vblock4_num_data_valid", "role": "default" }} , 
 	{ "name": "vblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vblock4_fifo_cap", "role": "default" }} , 
 	{ "name": "cblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4_dout", "role": "default" }} , 
 	{ "name": "cblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4_empty_n", "role": "default" }} , 
 	{ "name": "cblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4_read", "role": "default" }} , 
 	{ "name": "cblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock4_num_data_valid", "role": "default" }} , 
 	{ "name": "cblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cblock4_fifo_cap", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	vcrequest_manager_95 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		vresult4 {Type I LastRead 1 FirstWrite -1}
		cresult4 {Type I LastRead 1 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		bv4 {Type I LastRead 5 FirstWrite -1}
		B_val {Type I LastRead 2 FirstWrite -1}
		bc4 {Type I LastRead 5 FirstWrite -1}
		B_cid {Type I LastRead 2 FirstWrite -1}}
	vcrequest_splitter {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}}
	vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 {
		rcache_result_bank4_b {Type I LastRead 0 FirstWrite -1}
		vrequest {Type O LastRead -1 FirstWrite 1}
		crequest {Type O LastRead -1 FirstWrite 1}
		vcollector {Type O LastRead -1 FirstWrite 1}
		ccollector {Type O LastRead -1 FirstWrite 1}
		vscheduler {Type O LastRead -1 FirstWrite 1}
		cscheduler {Type O LastRead -1 FirstWrite 1}
		tcontrol_peID_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_bridx_out {Type O LastRead -1 FirstWrite 0}
		tcontrol_brlen_out {Type O LastRead -1 FirstWrite 0}}
	request_manager_72 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_72_Pipeline_VITIS_LOOP_48_1 {
		vrequest {Type I LastRead 0 FirstWrite -1}
		v_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_104 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse4 {Type I LastRead 3 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv4 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_104_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln28 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_104_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bv4 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}}
	request_manager {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}}
	request_manager_Pipeline_VITIS_LOOP_48_1 {
		crequest {Type I LastRead 0 FirstWrite -1}
		c_first {Type O LastRead -1 FirstWrite 1}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_7_0_out {Type O LastRead -1 FirstWrite 0}}
	schedule_access_105 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse4 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc4 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_105_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc4 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln25 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_105_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc4 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}
	request_merger_73 {
		v_first {Type I LastRead 0 FirstWrite -1}
		v_req {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_73_Pipeline_VITIS_LOOP_152_1 {
		v_first {Type I LastRead 0 FirstWrite -1}
		vrequest4 {Type O LastRead -1 FirstWrite 1}
		v_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	request_merger {
		c_first {Type I LastRead 0 FirstWrite -1}
		c_req {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}}
	request_merger_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest4 {Type O LastRead -1 FirstWrite 1}
		c_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}
	collector_74 {
		vcollector {Type I LastRead 1 FirstWrite -1}
		vresult4 {Type I LastRead 1 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		v_hit {Type I LastRead 1 FirstWrite -1}}
	collector_74_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_1 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type O LastRead -1 FirstWrite 2}
		cached_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		voff {Type I LastRead 1 FirstWrite -1}}
	collector {
		ccollector {Type I LastRead 1 FirstWrite -1}
		cresult4 {Type I LastRead 1 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		c_hit {Type I LastRead 1 FirstWrite -1}}
	collector_Pipeline_VITIS_LOOP_185_2 {
		tmp {Type I LastRead 0 FirstWrite -1}
		trunc_ln183_8 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type O LastRead -1 FirstWrite 2}
		cached_8 {Type I LastRead 0 FirstWrite -1}
		trunc_ln189_8 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		hit {Type I LastRead 0 FirstWrite -1}
		coff {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_result_bank4_b { ap_fifo {  { rcache_result_bank4_b_dout fifo_data_out 0 68 }  { rcache_result_bank4_b_empty_n fifo_status_empty 0 1 }  { rcache_result_bank4_b_read fifo_data_in 1 1 } } }
	vrequest4 { ap_fifo {  { vrequest4_din fifo_data_out 1 225 }  { vrequest4_full_n fifo_status_empty 0 1 }  { vrequest4_write fifo_data_in 1 1 } } }
	crequest4 { ap_fifo {  { crequest4_din fifo_data_out 1 225 }  { crequest4_full_n fifo_status_empty 0 1 }  { crequest4_write fifo_data_in 1 1 } } }
	vresponse4 { ap_fifo {  { vresponse4_dout fifo_data_out 0 6 }  { vresponse4_empty_n fifo_status_empty 0 1 }  { vresponse4_read fifo_data_in 1 1 } } }
	cresponse4 { ap_fifo {  { cresponse4_dout fifo_data_out 0 6 }  { cresponse4_empty_n fifo_status_empty 0 1 }  { cresponse4_read fifo_data_in 1 1 } } }
	vresult4 { ap_fifo {  { vresult4_dout fifo_data_out 0 1024 }  { vresult4_empty_n fifo_status_empty 0 1 }  { vresult4_read fifo_data_in 1 1 } } }
	cresult4 { ap_fifo {  { cresult4_dout fifo_data_out 0 1024 }  { cresult4_empty_n fifo_status_empty 0 1 }  { cresult4_read fifo_data_in 1 1 } } }
	vblock4 { ap_fifo {  { vblock4_din fifo_data_out 1 134 }  { vblock4_full_n fifo_status_empty 0 1 }  { vblock4_write fifo_data_in 1 1 } } }
	cblock4 { ap_fifo {  { cblock4_din fifo_data_out 1 134 }  { cblock4_full_n fifo_status_empty 0 1 }  { cblock4_write fifo_data_in 1 1 } } }
	 { m_axi {  { m_axi_bv4_0_AWVALID VALID 1 1 }  { m_axi_bv4_0_AWREADY READY 0 1 }  { m_axi_bv4_0_AWADDR ADDR 1 64 }  { m_axi_bv4_0_AWID ID 1 1 }  { m_axi_bv4_0_AWLEN SIZE 1 32 }  { m_axi_bv4_0_AWSIZE BURST 1 3 }  { m_axi_bv4_0_AWBURST LOCK 1 2 }  { m_axi_bv4_0_AWLOCK CACHE 1 2 }  { m_axi_bv4_0_AWCACHE PROT 1 4 }  { m_axi_bv4_0_AWPROT QOS 1 3 }  { m_axi_bv4_0_AWQOS REGION 1 4 }  { m_axi_bv4_0_AWREGION USER 1 4 }  { m_axi_bv4_0_AWUSER DATA 1 1 }  { m_axi_bv4_0_WVALID VALID 1 1 }  { m_axi_bv4_0_WREADY READY 0 1 }  { m_axi_bv4_0_WDATA FIFONUM 1 128 }  { m_axi_bv4_0_WSTRB STRB 1 16 }  { m_axi_bv4_0_WLAST LAST 1 1 }  { m_axi_bv4_0_WID ID 1 1 }  { m_axi_bv4_0_WUSER DATA 1 1 }  { m_axi_bv4_0_ARVALID VALID 1 1 }  { m_axi_bv4_0_ARREADY READY 0 1 }  { m_axi_bv4_0_ARADDR ADDR 1 64 }  { m_axi_bv4_0_ARID ID 1 1 }  { m_axi_bv4_0_ARLEN SIZE 1 32 }  { m_axi_bv4_0_ARSIZE BURST 1 3 }  { m_axi_bv4_0_ARBURST LOCK 1 2 }  { m_axi_bv4_0_ARLOCK CACHE 1 2 }  { m_axi_bv4_0_ARCACHE PROT 1 4 }  { m_axi_bv4_0_ARPROT QOS 1 3 }  { m_axi_bv4_0_ARQOS REGION 1 4 }  { m_axi_bv4_0_ARREGION USER 1 4 }  { m_axi_bv4_0_ARUSER DATA 1 1 }  { m_axi_bv4_0_RVALID VALID 0 1 }  { m_axi_bv4_0_RREADY READY 1 1 }  { m_axi_bv4_0_RDATA FIFONUM 0 128 }  { m_axi_bv4_0_RLAST LAST 0 1 }  { m_axi_bv4_0_RID ID 0 1 }  { m_axi_bv4_0_RFIFONUM LEN 0 9 }  { m_axi_bv4_0_RUSER DATA 0 1 }  { m_axi_bv4_0_RRESP RESP 0 2 }  { m_axi_bv4_0_BVALID VALID 0 1 }  { m_axi_bv4_0_BREADY READY 1 1 }  { m_axi_bv4_0_BRESP RESP 0 2 }  { m_axi_bv4_0_BID ID 0 1 }  { m_axi_bv4_0_BUSER DATA 0 1 } } }
	B_val { ap_none {  { B_val in_data 0 64 }  { B_val_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_bc4_0_AWVALID VALID 1 1 }  { m_axi_bc4_0_AWREADY READY 0 1 }  { m_axi_bc4_0_AWADDR ADDR 1 64 }  { m_axi_bc4_0_AWID ID 1 1 }  { m_axi_bc4_0_AWLEN SIZE 1 32 }  { m_axi_bc4_0_AWSIZE BURST 1 3 }  { m_axi_bc4_0_AWBURST LOCK 1 2 }  { m_axi_bc4_0_AWLOCK CACHE 1 2 }  { m_axi_bc4_0_AWCACHE PROT 1 4 }  { m_axi_bc4_0_AWPROT QOS 1 3 }  { m_axi_bc4_0_AWQOS REGION 1 4 }  { m_axi_bc4_0_AWREGION USER 1 4 }  { m_axi_bc4_0_AWUSER DATA 1 1 }  { m_axi_bc4_0_WVALID VALID 1 1 }  { m_axi_bc4_0_WREADY READY 0 1 }  { m_axi_bc4_0_WDATA FIFONUM 1 128 }  { m_axi_bc4_0_WSTRB STRB 1 16 }  { m_axi_bc4_0_WLAST LAST 1 1 }  { m_axi_bc4_0_WID ID 1 1 }  { m_axi_bc4_0_WUSER DATA 1 1 }  { m_axi_bc4_0_ARVALID VALID 1 1 }  { m_axi_bc4_0_ARREADY READY 0 1 }  { m_axi_bc4_0_ARADDR ADDR 1 64 }  { m_axi_bc4_0_ARID ID 1 1 }  { m_axi_bc4_0_ARLEN SIZE 1 32 }  { m_axi_bc4_0_ARSIZE BURST 1 3 }  { m_axi_bc4_0_ARBURST LOCK 1 2 }  { m_axi_bc4_0_ARLOCK CACHE 1 2 }  { m_axi_bc4_0_ARCACHE PROT 1 4 }  { m_axi_bc4_0_ARPROT QOS 1 3 }  { m_axi_bc4_0_ARQOS REGION 1 4 }  { m_axi_bc4_0_ARREGION USER 1 4 }  { m_axi_bc4_0_ARUSER DATA 1 1 }  { m_axi_bc4_0_RVALID VALID 0 1 }  { m_axi_bc4_0_RREADY READY 1 1 }  { m_axi_bc4_0_RDATA FIFONUM 0 128 }  { m_axi_bc4_0_RLAST LAST 0 1 }  { m_axi_bc4_0_RID ID 0 1 }  { m_axi_bc4_0_RFIFONUM LEN 0 9 }  { m_axi_bc4_0_RUSER DATA 0 1 }  { m_axi_bc4_0_RRESP RESP 0 2 }  { m_axi_bc4_0_BVALID VALID 0 1 }  { m_axi_bc4_0_BREADY READY 1 1 }  { m_axi_bc4_0_BRESP RESP 0 2 }  { m_axi_bc4_0_BID ID 0 1 }  { m_axi_bc4_0_BUSER DATA 0 1 } } }
	B_cid { ap_none {  { B_cid in_data 0 64 }  { B_cid_ap_vld in_vld 0 1 } } }
}
