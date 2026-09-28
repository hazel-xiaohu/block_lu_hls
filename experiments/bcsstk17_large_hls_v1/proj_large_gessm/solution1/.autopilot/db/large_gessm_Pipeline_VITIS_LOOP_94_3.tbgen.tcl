set moduleName large_gessm_Pipeline_VITIS_LOOP_94_3
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
set C_modelName {large_gessm_Pipeline_VITIS_LOOP_94_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln94_1 int 32 regular  }
	{ gw0 int 32 regular {axi_master 2}  }
	{ gb2 int 32 regular {axi_master 0}  }
	{ gb1 int 32 regular {axi_master 0}  }
	{ sext_ln94_2 int 62 regular  }
	{ sext_ln94_1 int 62 regular  }
	{ zext_ln94_2 int 32 regular  }
	{ work int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln94_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gb2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_val","offset": { "type": "dynamic","port_name": "b_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gb1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_idx","offset": { "type": "dynamic","port_name": "b_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln94_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln94_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln94_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 154
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gw0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gw0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gw0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gw0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gw0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gw0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gw0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gw0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gw0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gw0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gw0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gw0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gw0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gw0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gw0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gw0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gw0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gw0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gw0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gw0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gw0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gw0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gw0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gw0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gw0_BUSER sc_in sc_lv 1 signal 1 } 
	{ zext_ln94_1 sc_in sc_lv 32 signal 0 } 
	{ m_axi_gb2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gb2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gb2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gb2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gb2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gb2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gb2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gb2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gb2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gb2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gb2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gb2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gb2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gb2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gb2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gb2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gb2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gb2_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gb2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gb2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gb2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gb2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gb2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gb2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gb2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gb1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gb1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gb1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gb1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gb1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gb1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gb1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gb1_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gb1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gb1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gb1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gb1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gb1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gb1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gb1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gb1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gb1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gb1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gb1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gb1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gb1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gb1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gb1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gb1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gb1_BUSER sc_in sc_lv 1 signal 3 } 
	{ sext_ln94_2 sc_in sc_lv 62 signal 4 } 
	{ sext_ln94_1 sc_in sc_lv 62 signal 5 } 
	{ zext_ln94_2 sc_in sc_lv 32 signal 6 } 
	{ work sc_in sc_lv 64 signal 7 } 
	{ grp_fu_1103_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1103_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1103_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1103_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1103_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "AWID" }} , 
 	{ "name": "m_axi_gw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gw0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gw0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gw0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gw0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gw0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gw0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gw0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gw0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gw0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gw0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gw0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gw0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gw0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gw0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gw0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gw0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gw0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gw0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "WID" }} , 
 	{ "name": "m_axi_gw0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gw0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gw0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gw0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gw0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gw0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "ARID" }} , 
 	{ "name": "m_axi_gw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gw0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gw0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gw0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gw0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gw0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gw0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gw0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gw0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gw0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gw0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gw0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gw0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gw0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gw0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gw0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gw0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gw0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gw0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "RID" }} , 
 	{ "name": "m_axi_gw0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gw0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "BID" }} , 
 	{ "name": "m_axi_gw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gw0", "role": "BUSER" }} , 
 	{ "name": "zext_ln94_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln94_1", "role": "default" }} , 
 	{ "name": "m_axi_gb2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gb2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gb2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gb2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gb2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "AWID" }} , 
 	{ "name": "m_axi_gb2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gb2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gb2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gb2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gb2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gb2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gb2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gb2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gb2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gb2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gb2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gb2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gb2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gb2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gb2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "WID" }} , 
 	{ "name": "m_axi_gb2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gb2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gb2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gb2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gb2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gb2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "ARID" }} , 
 	{ "name": "m_axi_gb2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gb2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gb2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gb2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gb2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gb2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gb2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gb2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gb2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gb2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gb2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gb2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gb2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gb2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "RID" }} , 
 	{ "name": "m_axi_gb2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gb2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gb2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gb2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gb2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gb2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gb2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gb2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "BID" }} , 
 	{ "name": "m_axi_gb2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gb1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gb1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gb1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gb1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gb1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "AWID" }} , 
 	{ "name": "m_axi_gb1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gb1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gb1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gb1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gb1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gb1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gb1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gb1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gb1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gb1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gb1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gb1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gb1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gb1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gb1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "WID" }} , 
 	{ "name": "m_axi_gb1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gb1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gb1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gb1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gb1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gb1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "ARID" }} , 
 	{ "name": "m_axi_gb1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gb1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gb1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gb1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gb1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gb1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gb1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gb1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gb1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gb1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gb1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gb1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gb1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gb1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gb1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gb1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gb1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "RID" }} , 
 	{ "name": "m_axi_gb1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gb1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gb1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gb1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gb1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gb1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gb1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gb1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gb1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "BID" }} , 
 	{ "name": "m_axi_gb1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gb1", "role": "BUSER" }} , 
 	{ "name": "sext_ln94_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln94_2", "role": "default" }} , 
 	{ "name": "sext_ln94_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln94_1", "role": "default" }} , 
 	{ "name": "zext_ln94_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln94_2", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "grp_fu_1103_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1103_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1103_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1103_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1103_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1103_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1103_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1103_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1103_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1103_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_gessm_Pipeline_VITIS_LOOP_94_3",
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
			{"Name" : "zext_ln94_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln94_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln94_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln94_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_Pipeline_VITIS_LOOP_94_3 {
		zext_ln94_1 {Type I LastRead 0 FirstWrite -1}
		gw0 {Type IO LastRead 21 FirstWrite 20}
		gb2 {Type I LastRead 2 FirstWrite -1}
		gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln94_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln94_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln94_2 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln94_1 { ap_none {  { zext_ln94_1 in_data 0 32 } } }
	 { m_axi {  { m_axi_gw0_AWVALID VALID 1 1 }  { m_axi_gw0_AWREADY READY 0 1 }  { m_axi_gw0_AWADDR ADDR 1 64 }  { m_axi_gw0_AWID ID 1 1 }  { m_axi_gw0_AWLEN SIZE 1 32 }  { m_axi_gw0_AWSIZE BURST 1 3 }  { m_axi_gw0_AWBURST LOCK 1 2 }  { m_axi_gw0_AWLOCK CACHE 1 2 }  { m_axi_gw0_AWCACHE PROT 1 4 }  { m_axi_gw0_AWPROT QOS 1 3 }  { m_axi_gw0_AWQOS REGION 1 4 }  { m_axi_gw0_AWREGION USER 1 4 }  { m_axi_gw0_AWUSER DATA 1 1 }  { m_axi_gw0_WVALID VALID 1 1 }  { m_axi_gw0_WREADY READY 0 1 }  { m_axi_gw0_WDATA FIFONUM 1 32 }  { m_axi_gw0_WSTRB STRB 1 4 }  { m_axi_gw0_WLAST LAST 1 1 }  { m_axi_gw0_WID ID 1 1 }  { m_axi_gw0_WUSER DATA 1 1 }  { m_axi_gw0_ARVALID VALID 1 1 }  { m_axi_gw0_ARREADY READY 0 1 }  { m_axi_gw0_ARADDR ADDR 1 64 }  { m_axi_gw0_ARID ID 1 1 }  { m_axi_gw0_ARLEN SIZE 1 32 }  { m_axi_gw0_ARSIZE BURST 1 3 }  { m_axi_gw0_ARBURST LOCK 1 2 }  { m_axi_gw0_ARLOCK CACHE 1 2 }  { m_axi_gw0_ARCACHE PROT 1 4 }  { m_axi_gw0_ARPROT QOS 1 3 }  { m_axi_gw0_ARQOS REGION 1 4 }  { m_axi_gw0_ARREGION USER 1 4 }  { m_axi_gw0_ARUSER DATA 1 1 }  { m_axi_gw0_RVALID VALID 0 1 }  { m_axi_gw0_RREADY READY 1 1 }  { m_axi_gw0_RDATA FIFONUM 0 32 }  { m_axi_gw0_RLAST LAST 0 1 }  { m_axi_gw0_RID ID 0 1 }  { m_axi_gw0_RFIFONUM LEN 0 9 }  { m_axi_gw0_RUSER DATA 0 1 }  { m_axi_gw0_RRESP RESP 0 2 }  { m_axi_gw0_BVALID VALID 0 1 }  { m_axi_gw0_BREADY READY 1 1 }  { m_axi_gw0_BRESP RESP 0 2 }  { m_axi_gw0_BID ID 0 1 }  { m_axi_gw0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gb2_AWVALID VALID 1 1 }  { m_axi_gb2_AWREADY READY 0 1 }  { m_axi_gb2_AWADDR ADDR 1 64 }  { m_axi_gb2_AWID ID 1 1 }  { m_axi_gb2_AWLEN SIZE 1 32 }  { m_axi_gb2_AWSIZE BURST 1 3 }  { m_axi_gb2_AWBURST LOCK 1 2 }  { m_axi_gb2_AWLOCK CACHE 1 2 }  { m_axi_gb2_AWCACHE PROT 1 4 }  { m_axi_gb2_AWPROT QOS 1 3 }  { m_axi_gb2_AWQOS REGION 1 4 }  { m_axi_gb2_AWREGION USER 1 4 }  { m_axi_gb2_AWUSER DATA 1 1 }  { m_axi_gb2_WVALID VALID 1 1 }  { m_axi_gb2_WREADY READY 0 1 }  { m_axi_gb2_WDATA FIFONUM 1 32 }  { m_axi_gb2_WSTRB STRB 1 4 }  { m_axi_gb2_WLAST LAST 1 1 }  { m_axi_gb2_WID ID 1 1 }  { m_axi_gb2_WUSER DATA 1 1 }  { m_axi_gb2_ARVALID VALID 1 1 }  { m_axi_gb2_ARREADY READY 0 1 }  { m_axi_gb2_ARADDR ADDR 1 64 }  { m_axi_gb2_ARID ID 1 1 }  { m_axi_gb2_ARLEN SIZE 1 32 }  { m_axi_gb2_ARSIZE BURST 1 3 }  { m_axi_gb2_ARBURST LOCK 1 2 }  { m_axi_gb2_ARLOCK CACHE 1 2 }  { m_axi_gb2_ARCACHE PROT 1 4 }  { m_axi_gb2_ARPROT QOS 1 3 }  { m_axi_gb2_ARQOS REGION 1 4 }  { m_axi_gb2_ARREGION USER 1 4 }  { m_axi_gb2_ARUSER DATA 1 1 }  { m_axi_gb2_RVALID VALID 0 1 }  { m_axi_gb2_RREADY READY 1 1 }  { m_axi_gb2_RDATA FIFONUM 0 32 }  { m_axi_gb2_RLAST LAST 0 1 }  { m_axi_gb2_RID ID 0 1 }  { m_axi_gb2_RFIFONUM LEN 0 9 }  { m_axi_gb2_RUSER DATA 0 1 }  { m_axi_gb2_RRESP RESP 0 2 }  { m_axi_gb2_BVALID VALID 0 1 }  { m_axi_gb2_BREADY READY 1 1 }  { m_axi_gb2_BRESP RESP 0 2 }  { m_axi_gb2_BID ID 0 1 }  { m_axi_gb2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gb1_AWVALID VALID 1 1 }  { m_axi_gb1_AWREADY READY 0 1 }  { m_axi_gb1_AWADDR ADDR 1 64 }  { m_axi_gb1_AWID ID 1 1 }  { m_axi_gb1_AWLEN SIZE 1 32 }  { m_axi_gb1_AWSIZE BURST 1 3 }  { m_axi_gb1_AWBURST LOCK 1 2 }  { m_axi_gb1_AWLOCK CACHE 1 2 }  { m_axi_gb1_AWCACHE PROT 1 4 }  { m_axi_gb1_AWPROT QOS 1 3 }  { m_axi_gb1_AWQOS REGION 1 4 }  { m_axi_gb1_AWREGION USER 1 4 }  { m_axi_gb1_AWUSER DATA 1 1 }  { m_axi_gb1_WVALID VALID 1 1 }  { m_axi_gb1_WREADY READY 0 1 }  { m_axi_gb1_WDATA FIFONUM 1 32 }  { m_axi_gb1_WSTRB STRB 1 4 }  { m_axi_gb1_WLAST LAST 1 1 }  { m_axi_gb1_WID ID 1 1 }  { m_axi_gb1_WUSER DATA 1 1 }  { m_axi_gb1_ARVALID VALID 1 1 }  { m_axi_gb1_ARREADY READY 0 1 }  { m_axi_gb1_ARADDR ADDR 1 64 }  { m_axi_gb1_ARID ID 1 1 }  { m_axi_gb1_ARLEN SIZE 1 32 }  { m_axi_gb1_ARSIZE BURST 1 3 }  { m_axi_gb1_ARBURST LOCK 1 2 }  { m_axi_gb1_ARLOCK CACHE 1 2 }  { m_axi_gb1_ARCACHE PROT 1 4 }  { m_axi_gb1_ARPROT QOS 1 3 }  { m_axi_gb1_ARQOS REGION 1 4 }  { m_axi_gb1_ARREGION USER 1 4 }  { m_axi_gb1_ARUSER DATA 1 1 }  { m_axi_gb1_RVALID VALID 0 1 }  { m_axi_gb1_RREADY READY 1 1 }  { m_axi_gb1_RDATA FIFONUM 0 32 }  { m_axi_gb1_RLAST LAST 0 1 }  { m_axi_gb1_RID ID 0 1 }  { m_axi_gb1_RFIFONUM LEN 0 9 }  { m_axi_gb1_RUSER DATA 0 1 }  { m_axi_gb1_RRESP RESP 0 2 }  { m_axi_gb1_BVALID VALID 0 1 }  { m_axi_gb1_BREADY READY 1 1 }  { m_axi_gb1_BRESP RESP 0 2 }  { m_axi_gb1_BID ID 0 1 }  { m_axi_gb1_BUSER DATA 0 1 } } }
	sext_ln94_2 { ap_none {  { sext_ln94_2 in_data 0 62 } } }
	sext_ln94_1 { ap_none {  { sext_ln94_1 in_data 0 62 } } }
	zext_ln94_2 { ap_none {  { zext_ln94_2 in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
}
