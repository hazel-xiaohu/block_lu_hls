set moduleName large_getrf_Pipeline_VITIS_LOOP_35_3
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
set C_modelName {large_getrf_Pipeline_VITIS_LOOP_35_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln35 int 32 regular  }
	{ w1 int 32 regular {axi_master 1}  }
	{ w0 int 32 regular {axi_master 1}  }
	{ u1 int 32 regular {axi_master 0}  }
	{ sext_ln35_1 int 62 regular  }
	{ zext_ln35_1 int 32 regular  }
	{ work int 64 regular  }
	{ mark int 64 regular  }
	{ empty int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "mark","offset": { "type": "dynamic","port_name": "mark","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "w0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "u1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_idx","offset": { "type": "dynamic","port_name": "u_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln35_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln35_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mark", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 150
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_u1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_u1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_u1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_u1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_u1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_u1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_u1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_u1_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_u1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_u1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_u1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_u1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_u1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_u1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_u1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_u1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_u1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_u1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_u1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_u1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_u1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_u1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_u1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_u1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_u1_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_w0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_w0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_w0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_w0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_w0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_w0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_w0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_w0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_w0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_w0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_w0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_w0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_w0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_w0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_w0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_w0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_w0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_w0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_w0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_w0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_w0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_w0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_w0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_w0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_w0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_w1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_w1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_w1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_w1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_w1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_w1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_w1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_w1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_w1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_w1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_w1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_w1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_w1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_w1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_w1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_w1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_w1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_w1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_w1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_w1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_w1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_w1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_w1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_w1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_w1_BUSER sc_in sc_lv 1 signal 1 } 
	{ zext_ln35 sc_in sc_lv 32 signal 0 } 
	{ sext_ln35_1 sc_in sc_lv 62 signal 4 } 
	{ zext_ln35_1 sc_in sc_lv 32 signal 5 } 
	{ work sc_in sc_lv 64 signal 6 } 
	{ mark sc_in sc_lv 64 signal 7 } 
	{ empty sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_u1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "AWID" }} , 
 	{ "name": "m_axi_u1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "WVALID" }} , 
 	{ "name": "m_axi_u1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "WREADY" }} , 
 	{ "name": "m_axi_u1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u1", "role": "WDATA" }} , 
 	{ "name": "m_axi_u1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "WLAST" }} , 
 	{ "name": "m_axi_u1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "WID" }} , 
 	{ "name": "m_axi_u1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "WUSER" }} , 
 	{ "name": "m_axi_u1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "ARID" }} , 
 	{ "name": "m_axi_u1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "RVALID" }} , 
 	{ "name": "m_axi_u1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "RREADY" }} , 
 	{ "name": "m_axi_u1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u1", "role": "RDATA" }} , 
 	{ "name": "m_axi_u1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "RLAST" }} , 
 	{ "name": "m_axi_u1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "RID" }} , 
 	{ "name": "m_axi_u1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "u1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_u1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "RUSER" }} , 
 	{ "name": "m_axi_u1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "RRESP" }} , 
 	{ "name": "m_axi_u1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "BVALID" }} , 
 	{ "name": "m_axi_u1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "BREADY" }} , 
 	{ "name": "m_axi_u1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u1", "role": "BRESP" }} , 
 	{ "name": "m_axi_u1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "BID" }} , 
 	{ "name": "m_axi_u1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u1", "role": "BUSER" }} , 
 	{ "name": "m_axi_w0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_w0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_w0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_w0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "AWID" }} , 
 	{ "name": "m_axi_w0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_w0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_w0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_w0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_w0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_w0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_w0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_w0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_w0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_w0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "WVALID" }} , 
 	{ "name": "m_axi_w0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "WREADY" }} , 
 	{ "name": "m_axi_w0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w0", "role": "WDATA" }} , 
 	{ "name": "m_axi_w0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_w0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "WLAST" }} , 
 	{ "name": "m_axi_w0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "WID" }} , 
 	{ "name": "m_axi_w0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "WUSER" }} , 
 	{ "name": "m_axi_w0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_w0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_w0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_w0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "ARID" }} , 
 	{ "name": "m_axi_w0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_w0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_w0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_w0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_w0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_w0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_w0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_w0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_w0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_w0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "RVALID" }} , 
 	{ "name": "m_axi_w0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "RREADY" }} , 
 	{ "name": "m_axi_w0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w0", "role": "RDATA" }} , 
 	{ "name": "m_axi_w0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "RLAST" }} , 
 	{ "name": "m_axi_w0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "RID" }} , 
 	{ "name": "m_axi_w0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "w0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_w0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "RUSER" }} , 
 	{ "name": "m_axi_w0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "RRESP" }} , 
 	{ "name": "m_axi_w0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "BVALID" }} , 
 	{ "name": "m_axi_w0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "BREADY" }} , 
 	{ "name": "m_axi_w0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w0", "role": "BRESP" }} , 
 	{ "name": "m_axi_w0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "BID" }} , 
 	{ "name": "m_axi_w0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w0", "role": "BUSER" }} , 
 	{ "name": "m_axi_w1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_w1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_w1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_w1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "AWID" }} , 
 	{ "name": "m_axi_w1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_w1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_w1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_w1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_w1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_w1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_w1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_w1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_w1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_w1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "WVALID" }} , 
 	{ "name": "m_axi_w1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "WREADY" }} , 
 	{ "name": "m_axi_w1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1", "role": "WDATA" }} , 
 	{ "name": "m_axi_w1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_w1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "WLAST" }} , 
 	{ "name": "m_axi_w1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "WID" }} , 
 	{ "name": "m_axi_w1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "WUSER" }} , 
 	{ "name": "m_axi_w1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_w1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_w1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_w1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ARID" }} , 
 	{ "name": "m_axi_w1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_w1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_w1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_w1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_w1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_w1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "w1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_w1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_w1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_w1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_w1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "RVALID" }} , 
 	{ "name": "m_axi_w1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "RREADY" }} , 
 	{ "name": "m_axi_w1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w1", "role": "RDATA" }} , 
 	{ "name": "m_axi_w1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "RLAST" }} , 
 	{ "name": "m_axi_w1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "RID" }} , 
 	{ "name": "m_axi_w1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "w1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_w1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "RUSER" }} , 
 	{ "name": "m_axi_w1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "RRESP" }} , 
 	{ "name": "m_axi_w1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "BVALID" }} , 
 	{ "name": "m_axi_w1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "BREADY" }} , 
 	{ "name": "m_axi_w1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "BRESP" }} , 
 	{ "name": "m_axi_w1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "BID" }} , 
 	{ "name": "m_axi_w1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "BUSER" }} , 
 	{ "name": "zext_ln35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln35", "role": "default" }} , 
 	{ "name": "sext_ln35_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln35_1", "role": "default" }} , 
 	{ "name": "zext_ln35_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln35_1", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "mark", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mark", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_getrf_Pipeline_VITIS_LOOP_35_3",
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
			{"Name" : "zext_ln35", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "w1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "w1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "w0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "u1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "u1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_Pipeline_VITIS_LOOP_35_3 {
		zext_ln35 {Type I LastRead 0 FirstWrite -1}
		w1 {Type O LastRead 6 FirstWrite 5}
		w0 {Type O LastRead 6 FirstWrite 5}
		u1 {Type I LastRead 2 FirstWrite -1}
		sext_ln35_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln35_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln35 { ap_none {  { zext_ln35 in_data 0 32 } } }
	 { m_axi {  { m_axi_w1_AWVALID VALID 1 1 }  { m_axi_w1_AWREADY READY 0 1 }  { m_axi_w1_AWADDR ADDR 1 64 }  { m_axi_w1_AWID ID 1 1 }  { m_axi_w1_AWLEN SIZE 1 32 }  { m_axi_w1_AWSIZE BURST 1 3 }  { m_axi_w1_AWBURST LOCK 1 2 }  { m_axi_w1_AWLOCK CACHE 1 2 }  { m_axi_w1_AWCACHE PROT 1 4 }  { m_axi_w1_AWPROT QOS 1 3 }  { m_axi_w1_AWQOS REGION 1 4 }  { m_axi_w1_AWREGION USER 1 4 }  { m_axi_w1_AWUSER DATA 1 1 }  { m_axi_w1_WVALID VALID 1 1 }  { m_axi_w1_WREADY READY 0 1 }  { m_axi_w1_WDATA FIFONUM 1 32 }  { m_axi_w1_WSTRB STRB 1 4 }  { m_axi_w1_WLAST LAST 1 1 }  { m_axi_w1_WID ID 1 1 }  { m_axi_w1_WUSER DATA 1 1 }  { m_axi_w1_ARVALID VALID 1 1 }  { m_axi_w1_ARREADY READY 0 1 }  { m_axi_w1_ARADDR ADDR 1 64 }  { m_axi_w1_ARID ID 1 1 }  { m_axi_w1_ARLEN SIZE 1 32 }  { m_axi_w1_ARSIZE BURST 1 3 }  { m_axi_w1_ARBURST LOCK 1 2 }  { m_axi_w1_ARLOCK CACHE 1 2 }  { m_axi_w1_ARCACHE PROT 1 4 }  { m_axi_w1_ARPROT QOS 1 3 }  { m_axi_w1_ARQOS REGION 1 4 }  { m_axi_w1_ARREGION USER 1 4 }  { m_axi_w1_ARUSER DATA 1 1 }  { m_axi_w1_RVALID VALID 0 1 }  { m_axi_w1_RREADY READY 1 1 }  { m_axi_w1_RDATA FIFONUM 0 32 }  { m_axi_w1_RLAST LAST 0 1 }  { m_axi_w1_RID ID 0 1 }  { m_axi_w1_RFIFONUM LEN 0 9 }  { m_axi_w1_RUSER DATA 0 1 }  { m_axi_w1_RRESP RESP 0 2 }  { m_axi_w1_BVALID VALID 0 1 }  { m_axi_w1_BREADY READY 1 1 }  { m_axi_w1_BRESP RESP 0 2 }  { m_axi_w1_BID ID 0 1 }  { m_axi_w1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_w0_AWVALID VALID 1 1 }  { m_axi_w0_AWREADY READY 0 1 }  { m_axi_w0_AWADDR ADDR 1 64 }  { m_axi_w0_AWID ID 1 1 }  { m_axi_w0_AWLEN SIZE 1 32 }  { m_axi_w0_AWSIZE BURST 1 3 }  { m_axi_w0_AWBURST LOCK 1 2 }  { m_axi_w0_AWLOCK CACHE 1 2 }  { m_axi_w0_AWCACHE PROT 1 4 }  { m_axi_w0_AWPROT QOS 1 3 }  { m_axi_w0_AWQOS REGION 1 4 }  { m_axi_w0_AWREGION USER 1 4 }  { m_axi_w0_AWUSER DATA 1 1 }  { m_axi_w0_WVALID VALID 1 1 }  { m_axi_w0_WREADY READY 0 1 }  { m_axi_w0_WDATA FIFONUM 1 32 }  { m_axi_w0_WSTRB STRB 1 4 }  { m_axi_w0_WLAST LAST 1 1 }  { m_axi_w0_WID ID 1 1 }  { m_axi_w0_WUSER DATA 1 1 }  { m_axi_w0_ARVALID VALID 1 1 }  { m_axi_w0_ARREADY READY 0 1 }  { m_axi_w0_ARADDR ADDR 1 64 }  { m_axi_w0_ARID ID 1 1 }  { m_axi_w0_ARLEN SIZE 1 32 }  { m_axi_w0_ARSIZE BURST 1 3 }  { m_axi_w0_ARBURST LOCK 1 2 }  { m_axi_w0_ARLOCK CACHE 1 2 }  { m_axi_w0_ARCACHE PROT 1 4 }  { m_axi_w0_ARPROT QOS 1 3 }  { m_axi_w0_ARQOS REGION 1 4 }  { m_axi_w0_ARREGION USER 1 4 }  { m_axi_w0_ARUSER DATA 1 1 }  { m_axi_w0_RVALID VALID 0 1 }  { m_axi_w0_RREADY READY 1 1 }  { m_axi_w0_RDATA FIFONUM 0 32 }  { m_axi_w0_RLAST LAST 0 1 }  { m_axi_w0_RID ID 0 1 }  { m_axi_w0_RFIFONUM LEN 0 9 }  { m_axi_w0_RUSER DATA 0 1 }  { m_axi_w0_RRESP RESP 0 2 }  { m_axi_w0_BVALID VALID 0 1 }  { m_axi_w0_BREADY READY 1 1 }  { m_axi_w0_BRESP RESP 0 2 }  { m_axi_w0_BID ID 0 1 }  { m_axi_w0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_u1_AWVALID VALID 1 1 }  { m_axi_u1_AWREADY READY 0 1 }  { m_axi_u1_AWADDR ADDR 1 64 }  { m_axi_u1_AWID ID 1 1 }  { m_axi_u1_AWLEN SIZE 1 32 }  { m_axi_u1_AWSIZE BURST 1 3 }  { m_axi_u1_AWBURST LOCK 1 2 }  { m_axi_u1_AWLOCK CACHE 1 2 }  { m_axi_u1_AWCACHE PROT 1 4 }  { m_axi_u1_AWPROT QOS 1 3 }  { m_axi_u1_AWQOS REGION 1 4 }  { m_axi_u1_AWREGION USER 1 4 }  { m_axi_u1_AWUSER DATA 1 1 }  { m_axi_u1_WVALID VALID 1 1 }  { m_axi_u1_WREADY READY 0 1 }  { m_axi_u1_WDATA FIFONUM 1 32 }  { m_axi_u1_WSTRB STRB 1 4 }  { m_axi_u1_WLAST LAST 1 1 }  { m_axi_u1_WID ID 1 1 }  { m_axi_u1_WUSER DATA 1 1 }  { m_axi_u1_ARVALID VALID 1 1 }  { m_axi_u1_ARREADY READY 0 1 }  { m_axi_u1_ARADDR ADDR 1 64 }  { m_axi_u1_ARID ID 1 1 }  { m_axi_u1_ARLEN SIZE 1 32 }  { m_axi_u1_ARSIZE BURST 1 3 }  { m_axi_u1_ARBURST LOCK 1 2 }  { m_axi_u1_ARLOCK CACHE 1 2 }  { m_axi_u1_ARCACHE PROT 1 4 }  { m_axi_u1_ARPROT QOS 1 3 }  { m_axi_u1_ARQOS REGION 1 4 }  { m_axi_u1_ARREGION USER 1 4 }  { m_axi_u1_ARUSER DATA 1 1 }  { m_axi_u1_RVALID VALID 0 1 }  { m_axi_u1_RREADY READY 1 1 }  { m_axi_u1_RDATA FIFONUM 0 32 }  { m_axi_u1_RLAST LAST 0 1 }  { m_axi_u1_RID ID 0 1 }  { m_axi_u1_RFIFONUM LEN 0 9 }  { m_axi_u1_RUSER DATA 0 1 }  { m_axi_u1_RRESP RESP 0 2 }  { m_axi_u1_BVALID VALID 0 1 }  { m_axi_u1_BREADY READY 1 1 }  { m_axi_u1_BRESP RESP 0 2 }  { m_axi_u1_BID ID 0 1 }  { m_axi_u1_BUSER DATA 0 1 } } }
	sext_ln35_1 { ap_none {  { sext_ln35_1 in_data 0 62 } } }
	zext_ln35_1 { ap_none {  { zext_ln35_1 in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
	mark { ap_none {  { mark in_data 0 64 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
}
