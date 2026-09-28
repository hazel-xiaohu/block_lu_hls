set moduleName large_tstrf_v2_Pipeline_VITIS_LOOP_359_1012
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {large_tstrf_v2_Pipeline_VITIS_LOOP_359_1012}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln359_6 int 32 regular  }
	{ v2tx2 int 32 regular {axi_master 1}  }
	{ v2tx1 int 32 regular {axi_master 0}  }
	{ sext_ln359_11 int 62 regular  }
	{ sext_ln359_10 int 62 regular  }
	{ zext_ln359_7 int 32 regular  }
	{ w_3 float 32 regular {array 2624 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln359_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2tx2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val","offset": { "type": "dynamic","port_name": "x_val","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "v2tx1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_idx","offset": { "type": "dynamic","port_name": "x_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln359_11", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln359_10", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln359_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v2tx1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2tx1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tx1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tx1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tx1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tx1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2tx1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tx1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tx1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tx1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tx1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v2tx1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_v2tx1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tx1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2tx1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tx1_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tx2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2tx2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tx2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tx2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tx2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tx2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2tx2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tx2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tx2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tx2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tx2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v2tx2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v2tx2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tx2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2tx2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tx2_BUSER sc_in sc_lv 1 signal 1 } 
	{ zext_ln359_6 sc_in sc_lv 32 signal 0 } 
	{ sext_ln359_11 sc_in sc_lv 62 signal 3 } 
	{ sext_ln359_10 sc_in sc_lv 62 signal 4 } 
	{ zext_ln359_7 sc_in sc_lv 32 signal 5 } 
	{ w_3_address0 sc_out sc_lv 12 signal 6 } 
	{ w_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ w_3_q0 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v2tx1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tx1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tx1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tx1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tx1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tx1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tx1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tx1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tx1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tx1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tx1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tx1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tx1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tx1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tx1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tx1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tx1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tx1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tx1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "WID" }} , 
 	{ "name": "m_axi_v2tx1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tx1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tx1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tx1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tx1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tx1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tx1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tx1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tx1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tx1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tx1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tx1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tx1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tx1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tx1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tx1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tx1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tx1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tx1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "RID" }} , 
 	{ "name": "m_axi_v2tx1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tx1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tx1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tx1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tx1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tx1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tx1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tx1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "BID" }} , 
 	{ "name": "m_axi_v2tx1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2tx2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tx2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tx2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tx2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tx2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tx2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tx2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tx2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tx2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tx2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tx2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tx2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tx2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tx2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tx2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tx2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tx2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tx2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tx2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "WID" }} , 
 	{ "name": "m_axi_v2tx2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tx2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tx2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tx2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tx2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tx2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tx2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tx2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tx2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tx2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tx2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tx2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tx2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tx2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tx2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tx2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tx2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tx2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tx2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tx2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "RID" }} , 
 	{ "name": "m_axi_v2tx2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tx2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tx2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tx2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tx2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tx2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tx2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tx2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tx2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "BID" }} , 
 	{ "name": "m_axi_v2tx2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tx2", "role": "BUSER" }} , 
 	{ "name": "zext_ln359_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln359_6", "role": "default" }} , 
 	{ "name": "sext_ln359_11", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln359_11", "role": "default" }} , 
 	{ "name": "sext_ln359_10", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln359_10", "role": "default" }} , 
 	{ "name": "zext_ln359_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln359_7", "role": "default" }} , 
 	{ "name": "w_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w_3", "role": "address0" }} , 
 	{ "name": "w_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "ce0" }} , 
 	{ "name": "w_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_v2_Pipeline_VITIS_LOOP_359_1012",
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
			{"Name" : "zext_ln359_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2tx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2tx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v2tx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2tx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln359_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln359_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln359_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_359_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_v2_Pipeline_VITIS_LOOP_359_1012 {
		zext_ln359_6 {Type I LastRead 0 FirstWrite -1}
		v2tx2 {Type O LastRead -1 FirstWrite 5}
		v2tx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln359_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln359_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln359_7 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln359_6 { ap_none {  { zext_ln359_6 in_data 0 32 } } }
	 { m_axi {  { m_axi_v2tx2_AWVALID VALID 1 1 }  { m_axi_v2tx2_AWREADY READY 0 1 }  { m_axi_v2tx2_AWADDR ADDR 1 64 }  { m_axi_v2tx2_AWID ID 1 1 }  { m_axi_v2tx2_AWLEN SIZE 1 32 }  { m_axi_v2tx2_AWSIZE BURST 1 3 }  { m_axi_v2tx2_AWBURST LOCK 1 2 }  { m_axi_v2tx2_AWLOCK CACHE 1 2 }  { m_axi_v2tx2_AWCACHE PROT 1 4 }  { m_axi_v2tx2_AWPROT QOS 1 3 }  { m_axi_v2tx2_AWQOS REGION 1 4 }  { m_axi_v2tx2_AWREGION USER 1 4 }  { m_axi_v2tx2_AWUSER DATA 1 1 }  { m_axi_v2tx2_WVALID VALID 1 1 }  { m_axi_v2tx2_WREADY READY 0 1 }  { m_axi_v2tx2_WDATA FIFONUM 1 32 }  { m_axi_v2tx2_WSTRB STRB 1 4 }  { m_axi_v2tx2_WLAST LAST 1 1 }  { m_axi_v2tx2_WID ID 1 1 }  { m_axi_v2tx2_WUSER DATA 1 1 }  { m_axi_v2tx2_ARVALID VALID 1 1 }  { m_axi_v2tx2_ARREADY READY 0 1 }  { m_axi_v2tx2_ARADDR ADDR 1 64 }  { m_axi_v2tx2_ARID ID 1 1 }  { m_axi_v2tx2_ARLEN SIZE 1 32 }  { m_axi_v2tx2_ARSIZE BURST 1 3 }  { m_axi_v2tx2_ARBURST LOCK 1 2 }  { m_axi_v2tx2_ARLOCK CACHE 1 2 }  { m_axi_v2tx2_ARCACHE PROT 1 4 }  { m_axi_v2tx2_ARPROT QOS 1 3 }  { m_axi_v2tx2_ARQOS REGION 1 4 }  { m_axi_v2tx2_ARREGION USER 1 4 }  { m_axi_v2tx2_ARUSER DATA 1 1 }  { m_axi_v2tx2_RVALID VALID 0 1 }  { m_axi_v2tx2_RREADY READY 1 1 }  { m_axi_v2tx2_RDATA FIFONUM 0 32 }  { m_axi_v2tx2_RLAST LAST 0 1 }  { m_axi_v2tx2_RID ID 0 1 }  { m_axi_v2tx2_RFIFONUM LEN 0 9 }  { m_axi_v2tx2_RUSER DATA 0 1 }  { m_axi_v2tx2_RRESP RESP 0 2 }  { m_axi_v2tx2_BVALID VALID 0 1 }  { m_axi_v2tx2_BREADY READY 1 1 }  { m_axi_v2tx2_BRESP RESP 0 2 }  { m_axi_v2tx2_BID ID 0 1 }  { m_axi_v2tx2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v2tx1_AWVALID VALID 1 1 }  { m_axi_v2tx1_AWREADY READY 0 1 }  { m_axi_v2tx1_AWADDR ADDR 1 64 }  { m_axi_v2tx1_AWID ID 1 1 }  { m_axi_v2tx1_AWLEN SIZE 1 32 }  { m_axi_v2tx1_AWSIZE BURST 1 3 }  { m_axi_v2tx1_AWBURST LOCK 1 2 }  { m_axi_v2tx1_AWLOCK CACHE 1 2 }  { m_axi_v2tx1_AWCACHE PROT 1 4 }  { m_axi_v2tx1_AWPROT QOS 1 3 }  { m_axi_v2tx1_AWQOS REGION 1 4 }  { m_axi_v2tx1_AWREGION USER 1 4 }  { m_axi_v2tx1_AWUSER DATA 1 1 }  { m_axi_v2tx1_WVALID VALID 1 1 }  { m_axi_v2tx1_WREADY READY 0 1 }  { m_axi_v2tx1_WDATA FIFONUM 1 32 }  { m_axi_v2tx1_WSTRB STRB 1 4 }  { m_axi_v2tx1_WLAST LAST 1 1 }  { m_axi_v2tx1_WID ID 1 1 }  { m_axi_v2tx1_WUSER DATA 1 1 }  { m_axi_v2tx1_ARVALID VALID 1 1 }  { m_axi_v2tx1_ARREADY READY 0 1 }  { m_axi_v2tx1_ARADDR ADDR 1 64 }  { m_axi_v2tx1_ARID ID 1 1 }  { m_axi_v2tx1_ARLEN SIZE 1 32 }  { m_axi_v2tx1_ARSIZE BURST 1 3 }  { m_axi_v2tx1_ARBURST LOCK 1 2 }  { m_axi_v2tx1_ARLOCK CACHE 1 2 }  { m_axi_v2tx1_ARCACHE PROT 1 4 }  { m_axi_v2tx1_ARPROT QOS 1 3 }  { m_axi_v2tx1_ARQOS REGION 1 4 }  { m_axi_v2tx1_ARREGION USER 1 4 }  { m_axi_v2tx1_ARUSER DATA 1 1 }  { m_axi_v2tx1_RVALID VALID 0 1 }  { m_axi_v2tx1_RREADY READY 1 1 }  { m_axi_v2tx1_RDATA FIFONUM 0 32 }  { m_axi_v2tx1_RLAST LAST 0 1 }  { m_axi_v2tx1_RID ID 0 1 }  { m_axi_v2tx1_RFIFONUM LEN 0 9 }  { m_axi_v2tx1_RUSER DATA 0 1 }  { m_axi_v2tx1_RRESP RESP 0 2 }  { m_axi_v2tx1_BVALID VALID 0 1 }  { m_axi_v2tx1_BREADY READY 1 1 }  { m_axi_v2tx1_BRESP RESP 0 2 }  { m_axi_v2tx1_BID ID 0 1 }  { m_axi_v2tx1_BUSER DATA 0 1 } } }
	sext_ln359_11 { ap_none {  { sext_ln359_11 in_data 0 62 } } }
	sext_ln359_10 { ap_none {  { sext_ln359_10 in_data 0 62 } } }
	zext_ln359_7 { ap_none {  { zext_ln359_7 in_data 0 32 } } }
	w_3 { ap_memory {  { w_3_address0 mem_address 1 12 }  { w_3_ce0 mem_ce 1 1 }  { w_3_q0 mem_dout 0 32 } } }
}
