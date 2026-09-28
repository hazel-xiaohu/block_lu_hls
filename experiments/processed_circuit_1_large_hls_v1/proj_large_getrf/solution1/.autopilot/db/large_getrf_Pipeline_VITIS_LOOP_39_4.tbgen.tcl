set moduleName large_getrf_Pipeline_VITIS_LOOP_39_4
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
set C_modelName {large_getrf_Pipeline_VITIS_LOOP_39_4}
set C_modelType { int 1 }
set C_modelArgList {
	{ zext_ln39 int 32 regular  }
	{ w1 int 32 regular {axi_master 0}  }
	{ w0 int 32 regular {axi_master 2}  }
	{ a2 int 32 regular {axi_master 0}  }
	{ a1 int 32 regular {axi_master 0}  }
	{ zext_ln39_1 int 32 regular  }
	{ a_val int 64 regular  }
	{ work int 64 regular  }
	{ a_idx int 64 regular  }
	{ mark int 64 regular  }
	{ add_ln30_3 int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mark","offset": { "type": "dynamic","port_name": "mark","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "w0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "a2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_val","offset": { "type": "dynamic","port_name": "a_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "a1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_idx","offset": { "type": "dynamic","port_name": "a_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln39_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_idx", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mark", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln30_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 203
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ zext_ln39 sc_in sc_lv 32 signal 0 } 
	{ m_axi_a2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_a2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_a2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_a2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_a2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_a2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_a2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_a2_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_a2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_a2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_a2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_a2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_a2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_a2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_a2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_a2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_a2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_a2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_a2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_a2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_a2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_a2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_a2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_a2_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_a1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_a1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_a1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_a1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_a1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_a1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_a1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_a1_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_a1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_a1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_a1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_a1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_a1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_a1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_a1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_a1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_a1_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_a1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_a1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_a1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_a1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_a1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_a1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_a1_BUSER sc_in sc_lv 1 signal 4 } 
	{ zext_ln39_1 sc_in sc_lv 32 signal 5 } 
	{ a_val sc_in sc_lv 64 signal 6 } 
	{ work sc_in sc_lv 64 signal 7 } 
	{ a_idx sc_in sc_lv 64 signal 8 } 
	{ mark sc_in sc_lv 64 signal 9 } 
	{ add_ln30_3 sc_in sc_lv 64 signal 10 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1957_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1957_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1957_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1957_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1957_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "zext_ln39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln39", "role": "default" }} , 
 	{ "name": "m_axi_a2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "AWID" }} , 
 	{ "name": "m_axi_a2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "WVALID" }} , 
 	{ "name": "m_axi_a2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "WREADY" }} , 
 	{ "name": "m_axi_a2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a2", "role": "WDATA" }} , 
 	{ "name": "m_axi_a2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "WLAST" }} , 
 	{ "name": "m_axi_a2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "WID" }} , 
 	{ "name": "m_axi_a2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "WUSER" }} , 
 	{ "name": "m_axi_a2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "ARID" }} , 
 	{ "name": "m_axi_a2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "RVALID" }} , 
 	{ "name": "m_axi_a2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "RREADY" }} , 
 	{ "name": "m_axi_a2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a2", "role": "RDATA" }} , 
 	{ "name": "m_axi_a2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "RLAST" }} , 
 	{ "name": "m_axi_a2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "RID" }} , 
 	{ "name": "m_axi_a2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_a2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "RUSER" }} , 
 	{ "name": "m_axi_a2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "RRESP" }} , 
 	{ "name": "m_axi_a2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "BVALID" }} , 
 	{ "name": "m_axi_a2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "BREADY" }} , 
 	{ "name": "m_axi_a2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a2", "role": "BRESP" }} , 
 	{ "name": "m_axi_a2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "BID" }} , 
 	{ "name": "m_axi_a2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "BUSER" }} , 
 	{ "name": "m_axi_a1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "AWID" }} , 
 	{ "name": "m_axi_a1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "WVALID" }} , 
 	{ "name": "m_axi_a1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "WREADY" }} , 
 	{ "name": "m_axi_a1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a1", "role": "WDATA" }} , 
 	{ "name": "m_axi_a1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "WLAST" }} , 
 	{ "name": "m_axi_a1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "WID" }} , 
 	{ "name": "m_axi_a1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "WUSER" }} , 
 	{ "name": "m_axi_a1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "ARID" }} , 
 	{ "name": "m_axi_a1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "RVALID" }} , 
 	{ "name": "m_axi_a1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "RREADY" }} , 
 	{ "name": "m_axi_a1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a1", "role": "RDATA" }} , 
 	{ "name": "m_axi_a1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "RLAST" }} , 
 	{ "name": "m_axi_a1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "RID" }} , 
 	{ "name": "m_axi_a1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_a1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "RUSER" }} , 
 	{ "name": "m_axi_a1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "RRESP" }} , 
 	{ "name": "m_axi_a1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "BVALID" }} , 
 	{ "name": "m_axi_a1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "BREADY" }} , 
 	{ "name": "m_axi_a1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a1", "role": "BRESP" }} , 
 	{ "name": "m_axi_a1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "BID" }} , 
 	{ "name": "m_axi_a1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "BUSER" }} , 
 	{ "name": "zext_ln39_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln39_1", "role": "default" }} , 
 	{ "name": "a_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "a_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_idx", "role": "default" }} , 
 	{ "name": "mark", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mark", "role": "default" }} , 
 	{ "name": "add_ln30_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln30_3", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_1957_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1957_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1957_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1957_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1957_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1957_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1957_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1957_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1957_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1957_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_getrf_Pipeline_VITIS_LOOP_39_4",
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
			{"Name" : "zext_ln39", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "w1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "w1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "w0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "w0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "w0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "a2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "a2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "a1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "a1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln39_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln30_3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "18", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage17", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage17_subdone", "QuitState" : "ap_ST_fsm_pp0_stage17", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage17_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_Pipeline_VITIS_LOOP_39_4 {
		zext_ln39 {Type I LastRead 0 FirstWrite -1}
		w1 {Type I LastRead 17 FirstWrite -1}
		w0 {Type IO LastRead 31 FirstWrite 30}
		a2 {Type I LastRead 25 FirstWrite -1}
		a1 {Type I LastRead 9 FirstWrite -1}
		zext_ln39_1 {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		add_ln30_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln39 { ap_none {  { zext_ln39 in_data 0 32 } } }
	 { m_axi {  { m_axi_w1_AWVALID VALID 1 1 }  { m_axi_w1_AWREADY READY 0 1 }  { m_axi_w1_AWADDR ADDR 1 64 }  { m_axi_w1_AWID ID 1 1 }  { m_axi_w1_AWLEN SIZE 1 32 }  { m_axi_w1_AWSIZE BURST 1 3 }  { m_axi_w1_AWBURST LOCK 1 2 }  { m_axi_w1_AWLOCK CACHE 1 2 }  { m_axi_w1_AWCACHE PROT 1 4 }  { m_axi_w1_AWPROT QOS 1 3 }  { m_axi_w1_AWQOS REGION 1 4 }  { m_axi_w1_AWREGION USER 1 4 }  { m_axi_w1_AWUSER DATA 1 1 }  { m_axi_w1_WVALID VALID 1 1 }  { m_axi_w1_WREADY READY 0 1 }  { m_axi_w1_WDATA FIFONUM 1 32 }  { m_axi_w1_WSTRB STRB 1 4 }  { m_axi_w1_WLAST LAST 1 1 }  { m_axi_w1_WID ID 1 1 }  { m_axi_w1_WUSER DATA 1 1 }  { m_axi_w1_ARVALID VALID 1 1 }  { m_axi_w1_ARREADY READY 0 1 }  { m_axi_w1_ARADDR ADDR 1 64 }  { m_axi_w1_ARID ID 1 1 }  { m_axi_w1_ARLEN SIZE 1 32 }  { m_axi_w1_ARSIZE BURST 1 3 }  { m_axi_w1_ARBURST LOCK 1 2 }  { m_axi_w1_ARLOCK CACHE 1 2 }  { m_axi_w1_ARCACHE PROT 1 4 }  { m_axi_w1_ARPROT QOS 1 3 }  { m_axi_w1_ARQOS REGION 1 4 }  { m_axi_w1_ARREGION USER 1 4 }  { m_axi_w1_ARUSER DATA 1 1 }  { m_axi_w1_RVALID VALID 0 1 }  { m_axi_w1_RREADY READY 1 1 }  { m_axi_w1_RDATA FIFONUM 0 32 }  { m_axi_w1_RLAST LAST 0 1 }  { m_axi_w1_RID ID 0 1 }  { m_axi_w1_RFIFONUM LEN 0 9 }  { m_axi_w1_RUSER DATA 0 1 }  { m_axi_w1_RRESP RESP 0 2 }  { m_axi_w1_BVALID VALID 0 1 }  { m_axi_w1_BREADY READY 1 1 }  { m_axi_w1_BRESP RESP 0 2 }  { m_axi_w1_BID ID 0 1 }  { m_axi_w1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_w0_AWVALID VALID 1 1 }  { m_axi_w0_AWREADY READY 0 1 }  { m_axi_w0_AWADDR ADDR 1 64 }  { m_axi_w0_AWID ID 1 1 }  { m_axi_w0_AWLEN SIZE 1 32 }  { m_axi_w0_AWSIZE BURST 1 3 }  { m_axi_w0_AWBURST LOCK 1 2 }  { m_axi_w0_AWLOCK CACHE 1 2 }  { m_axi_w0_AWCACHE PROT 1 4 }  { m_axi_w0_AWPROT QOS 1 3 }  { m_axi_w0_AWQOS REGION 1 4 }  { m_axi_w0_AWREGION USER 1 4 }  { m_axi_w0_AWUSER DATA 1 1 }  { m_axi_w0_WVALID VALID 1 1 }  { m_axi_w0_WREADY READY 0 1 }  { m_axi_w0_WDATA FIFONUM 1 32 }  { m_axi_w0_WSTRB STRB 1 4 }  { m_axi_w0_WLAST LAST 1 1 }  { m_axi_w0_WID ID 1 1 }  { m_axi_w0_WUSER DATA 1 1 }  { m_axi_w0_ARVALID VALID 1 1 }  { m_axi_w0_ARREADY READY 0 1 }  { m_axi_w0_ARADDR ADDR 1 64 }  { m_axi_w0_ARID ID 1 1 }  { m_axi_w0_ARLEN SIZE 1 32 }  { m_axi_w0_ARSIZE BURST 1 3 }  { m_axi_w0_ARBURST LOCK 1 2 }  { m_axi_w0_ARLOCK CACHE 1 2 }  { m_axi_w0_ARCACHE PROT 1 4 }  { m_axi_w0_ARPROT QOS 1 3 }  { m_axi_w0_ARQOS REGION 1 4 }  { m_axi_w0_ARREGION USER 1 4 }  { m_axi_w0_ARUSER DATA 1 1 }  { m_axi_w0_RVALID VALID 0 1 }  { m_axi_w0_RREADY READY 1 1 }  { m_axi_w0_RDATA FIFONUM 0 32 }  { m_axi_w0_RLAST LAST 0 1 }  { m_axi_w0_RID ID 0 1 }  { m_axi_w0_RFIFONUM LEN 0 9 }  { m_axi_w0_RUSER DATA 0 1 }  { m_axi_w0_RRESP RESP 0 2 }  { m_axi_w0_BVALID VALID 0 1 }  { m_axi_w0_BREADY READY 1 1 }  { m_axi_w0_BRESP RESP 0 2 }  { m_axi_w0_BID ID 0 1 }  { m_axi_w0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_a2_AWVALID VALID 1 1 }  { m_axi_a2_AWREADY READY 0 1 }  { m_axi_a2_AWADDR ADDR 1 64 }  { m_axi_a2_AWID ID 1 1 }  { m_axi_a2_AWLEN SIZE 1 32 }  { m_axi_a2_AWSIZE BURST 1 3 }  { m_axi_a2_AWBURST LOCK 1 2 }  { m_axi_a2_AWLOCK CACHE 1 2 }  { m_axi_a2_AWCACHE PROT 1 4 }  { m_axi_a2_AWPROT QOS 1 3 }  { m_axi_a2_AWQOS REGION 1 4 }  { m_axi_a2_AWREGION USER 1 4 }  { m_axi_a2_AWUSER DATA 1 1 }  { m_axi_a2_WVALID VALID 1 1 }  { m_axi_a2_WREADY READY 0 1 }  { m_axi_a2_WDATA FIFONUM 1 32 }  { m_axi_a2_WSTRB STRB 1 4 }  { m_axi_a2_WLAST LAST 1 1 }  { m_axi_a2_WID ID 1 1 }  { m_axi_a2_WUSER DATA 1 1 }  { m_axi_a2_ARVALID VALID 1 1 }  { m_axi_a2_ARREADY READY 0 1 }  { m_axi_a2_ARADDR ADDR 1 64 }  { m_axi_a2_ARID ID 1 1 }  { m_axi_a2_ARLEN SIZE 1 32 }  { m_axi_a2_ARSIZE BURST 1 3 }  { m_axi_a2_ARBURST LOCK 1 2 }  { m_axi_a2_ARLOCK CACHE 1 2 }  { m_axi_a2_ARCACHE PROT 1 4 }  { m_axi_a2_ARPROT QOS 1 3 }  { m_axi_a2_ARQOS REGION 1 4 }  { m_axi_a2_ARREGION USER 1 4 }  { m_axi_a2_ARUSER DATA 1 1 }  { m_axi_a2_RVALID VALID 0 1 }  { m_axi_a2_RREADY READY 1 1 }  { m_axi_a2_RDATA FIFONUM 0 32 }  { m_axi_a2_RLAST LAST 0 1 }  { m_axi_a2_RID ID 0 1 }  { m_axi_a2_RFIFONUM LEN 0 9 }  { m_axi_a2_RUSER DATA 0 1 }  { m_axi_a2_RRESP RESP 0 2 }  { m_axi_a2_BVALID VALID 0 1 }  { m_axi_a2_BREADY READY 1 1 }  { m_axi_a2_BRESP RESP 0 2 }  { m_axi_a2_BID ID 0 1 }  { m_axi_a2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_a1_AWVALID VALID 1 1 }  { m_axi_a1_AWREADY READY 0 1 }  { m_axi_a1_AWADDR ADDR 1 64 }  { m_axi_a1_AWID ID 1 1 }  { m_axi_a1_AWLEN SIZE 1 32 }  { m_axi_a1_AWSIZE BURST 1 3 }  { m_axi_a1_AWBURST LOCK 1 2 }  { m_axi_a1_AWLOCK CACHE 1 2 }  { m_axi_a1_AWCACHE PROT 1 4 }  { m_axi_a1_AWPROT QOS 1 3 }  { m_axi_a1_AWQOS REGION 1 4 }  { m_axi_a1_AWREGION USER 1 4 }  { m_axi_a1_AWUSER DATA 1 1 }  { m_axi_a1_WVALID VALID 1 1 }  { m_axi_a1_WREADY READY 0 1 }  { m_axi_a1_WDATA FIFONUM 1 32 }  { m_axi_a1_WSTRB STRB 1 4 }  { m_axi_a1_WLAST LAST 1 1 }  { m_axi_a1_WID ID 1 1 }  { m_axi_a1_WUSER DATA 1 1 }  { m_axi_a1_ARVALID VALID 1 1 }  { m_axi_a1_ARREADY READY 0 1 }  { m_axi_a1_ARADDR ADDR 1 64 }  { m_axi_a1_ARID ID 1 1 }  { m_axi_a1_ARLEN SIZE 1 32 }  { m_axi_a1_ARSIZE BURST 1 3 }  { m_axi_a1_ARBURST LOCK 1 2 }  { m_axi_a1_ARLOCK CACHE 1 2 }  { m_axi_a1_ARCACHE PROT 1 4 }  { m_axi_a1_ARPROT QOS 1 3 }  { m_axi_a1_ARQOS REGION 1 4 }  { m_axi_a1_ARREGION USER 1 4 }  { m_axi_a1_ARUSER DATA 1 1 }  { m_axi_a1_RVALID VALID 0 1 }  { m_axi_a1_RREADY READY 1 1 }  { m_axi_a1_RDATA FIFONUM 0 32 }  { m_axi_a1_RLAST LAST 0 1 }  { m_axi_a1_RID ID 0 1 }  { m_axi_a1_RFIFONUM LEN 0 9 }  { m_axi_a1_RUSER DATA 0 1 }  { m_axi_a1_RRESP RESP 0 2 }  { m_axi_a1_BVALID VALID 0 1 }  { m_axi_a1_BREADY READY 1 1 }  { m_axi_a1_BRESP RESP 0 2 }  { m_axi_a1_BID ID 0 1 }  { m_axi_a1_BUSER DATA 0 1 } } }
	zext_ln39_1 { ap_none {  { zext_ln39_1 in_data 0 32 } } }
	a_val { ap_none {  { a_val in_data 0 64 } } }
	work { ap_none {  { work in_data 0 64 } } }
	a_idx { ap_none {  { a_idx in_data 0 64 } } }
	mark { ap_none {  { mark in_data 0 64 } } }
	add_ln30_3 { ap_none {  { add_ln30_3 in_data 0 64 } } }
}
