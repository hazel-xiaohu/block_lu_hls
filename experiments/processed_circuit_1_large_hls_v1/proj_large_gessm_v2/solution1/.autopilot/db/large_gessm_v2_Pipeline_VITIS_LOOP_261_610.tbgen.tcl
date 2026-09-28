set moduleName large_gessm_v2_Pipeline_VITIS_LOOP_261_610
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
set C_modelName {large_gessm_v2_Pipeline_VITIS_LOOP_261_610}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln261_10 int 32 regular  }
	{ v2gb2 int 32 regular {axi_master 0}  }
	{ v2gb1 int 32 regular {axi_master 0}  }
	{ sext_ln261_11 int 62 regular  }
	{ sext_ln261_10 int 62 regular  }
	{ zext_ln261_11 int 32 regular  }
	{ w_3 float 32 regular {array 2624 { 1 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln261_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2gb2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_val","offset": { "type": "dynamic","port_name": "b_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gb1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_idx","offset": { "type": "dynamic","port_name": "b_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln261_11", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln261_10", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln261_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 114
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln261_10 sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2gb2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2gb2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2gb2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gb2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gb2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2gb2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2gb2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2gb2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gb2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gb2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gb2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v2gb2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v2gb2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gb2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gb2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gb2_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gb1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2gb1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2gb1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gb1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gb1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2gb1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2gb1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2gb1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gb1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gb1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gb1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v2gb1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_v2gb1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gb1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2gb1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gb1_BUSER sc_in sc_lv 1 signal 2 } 
	{ sext_ln261_11 sc_in sc_lv 62 signal 3 } 
	{ sext_ln261_10 sc_in sc_lv 62 signal 4 } 
	{ zext_ln261_11 sc_in sc_lv 32 signal 5 } 
	{ w_3_address0 sc_out sc_lv 12 signal 6 } 
	{ w_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ w_3_q0 sc_in sc_lv 32 signal 6 } 
	{ w_3_address1 sc_out sc_lv 12 signal 6 } 
	{ w_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ w_3_we1 sc_out sc_logic 1 signal 6 } 
	{ w_3_d1 sc_out sc_lv 32 signal 6 } 
	{ grp_fu_3444_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3444_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3444_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_3444_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3444_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln261_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln261_10", "role": "default" }} , 
 	{ "name": "m_axi_v2gb2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gb2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gb2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gb2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gb2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gb2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gb2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gb2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gb2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gb2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gb2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gb2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gb2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gb2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gb2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gb2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gb2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gb2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gb2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "WID" }} , 
 	{ "name": "m_axi_v2gb2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gb2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gb2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gb2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gb2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gb2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gb2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gb2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gb2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gb2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gb2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gb2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gb2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gb2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gb2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gb2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gb2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gb2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gb2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RID" }} , 
 	{ "name": "m_axi_v2gb2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2gb2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2gb2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gb2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gb2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gb2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gb2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gb2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BID" }} , 
 	{ "name": "m_axi_v2gb2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gb1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gb1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gb1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gb1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gb1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gb1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gb1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gb1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gb1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gb1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gb1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gb1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gb1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gb1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gb1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gb1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gb1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gb1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gb1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "WID" }} , 
 	{ "name": "m_axi_v2gb1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gb1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gb1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gb1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gb1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gb1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gb1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gb1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gb1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gb1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gb1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gb1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gb1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gb1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gb1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gb1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gb1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gb1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gb1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RID" }} , 
 	{ "name": "m_axi_v2gb1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2gb1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2gb1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gb1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gb1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gb1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gb1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gb1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BID" }} , 
 	{ "name": "m_axi_v2gb1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BUSER" }} , 
 	{ "name": "sext_ln261_11", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln261_11", "role": "default" }} , 
 	{ "name": "sext_ln261_10", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln261_10", "role": "default" }} , 
 	{ "name": "zext_ln261_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln261_11", "role": "default" }} , 
 	{ "name": "w_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w_3", "role": "address0" }} , 
 	{ "name": "w_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "ce0" }} , 
 	{ "name": "w_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "q0" }} , 
 	{ "name": "w_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "w_3", "role": "address1" }} , 
 	{ "name": "w_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "ce1" }} , 
 	{ "name": "w_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "we1" }} , 
 	{ "name": "w_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "d1" }} , 
 	{ "name": "grp_fu_3444_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3444_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3444_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3444_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3444_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_3444_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_3444_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3444_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3444_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3444_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_261_610",
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
			{"Name" : "zext_ln261_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln261_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln261_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln261_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_v2_Pipeline_VITIS_LOOP_261_610 {
		zext_ln261_10 {Type I LastRead 0 FirstWrite -1}
		v2gb2 {Type I LastRead 2 FirstWrite -1}
		v2gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln261_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln261_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln261_11 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type IO LastRead 3 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln261_10 { ap_none {  { zext_ln261_10 in_data 0 32 } } }
	 { m_axi {  { m_axi_v2gb2_AWVALID VALID 1 1 }  { m_axi_v2gb2_AWREADY READY 0 1 }  { m_axi_v2gb2_AWADDR ADDR 1 64 }  { m_axi_v2gb2_AWID ID 1 1 }  { m_axi_v2gb2_AWLEN SIZE 1 32 }  { m_axi_v2gb2_AWSIZE BURST 1 3 }  { m_axi_v2gb2_AWBURST LOCK 1 2 }  { m_axi_v2gb2_AWLOCK CACHE 1 2 }  { m_axi_v2gb2_AWCACHE PROT 1 4 }  { m_axi_v2gb2_AWPROT QOS 1 3 }  { m_axi_v2gb2_AWQOS REGION 1 4 }  { m_axi_v2gb2_AWREGION USER 1 4 }  { m_axi_v2gb2_AWUSER DATA 1 1 }  { m_axi_v2gb2_WVALID VALID 1 1 }  { m_axi_v2gb2_WREADY READY 0 1 }  { m_axi_v2gb2_WDATA FIFONUM 1 32 }  { m_axi_v2gb2_WSTRB STRB 1 4 }  { m_axi_v2gb2_WLAST LAST 1 1 }  { m_axi_v2gb2_WID ID 1 1 }  { m_axi_v2gb2_WUSER DATA 1 1 }  { m_axi_v2gb2_ARVALID VALID 1 1 }  { m_axi_v2gb2_ARREADY READY 0 1 }  { m_axi_v2gb2_ARADDR ADDR 1 64 }  { m_axi_v2gb2_ARID ID 1 1 }  { m_axi_v2gb2_ARLEN SIZE 1 32 }  { m_axi_v2gb2_ARSIZE BURST 1 3 }  { m_axi_v2gb2_ARBURST LOCK 1 2 }  { m_axi_v2gb2_ARLOCK CACHE 1 2 }  { m_axi_v2gb2_ARCACHE PROT 1 4 }  { m_axi_v2gb2_ARPROT QOS 1 3 }  { m_axi_v2gb2_ARQOS REGION 1 4 }  { m_axi_v2gb2_ARREGION USER 1 4 }  { m_axi_v2gb2_ARUSER DATA 1 1 }  { m_axi_v2gb2_RVALID VALID 0 1 }  { m_axi_v2gb2_RREADY READY 1 1 }  { m_axi_v2gb2_RDATA FIFONUM 0 32 }  { m_axi_v2gb2_RLAST LAST 0 1 }  { m_axi_v2gb2_RID ID 0 1 }  { m_axi_v2gb2_RFIFONUM LEN 0 9 }  { m_axi_v2gb2_RUSER DATA 0 1 }  { m_axi_v2gb2_RRESP RESP 0 2 }  { m_axi_v2gb2_BVALID VALID 0 1 }  { m_axi_v2gb2_BREADY READY 1 1 }  { m_axi_v2gb2_BRESP RESP 0 2 }  { m_axi_v2gb2_BID ID 0 1 }  { m_axi_v2gb2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v2gb1_AWVALID VALID 1 1 }  { m_axi_v2gb1_AWREADY READY 0 1 }  { m_axi_v2gb1_AWADDR ADDR 1 64 }  { m_axi_v2gb1_AWID ID 1 1 }  { m_axi_v2gb1_AWLEN SIZE 1 32 }  { m_axi_v2gb1_AWSIZE BURST 1 3 }  { m_axi_v2gb1_AWBURST LOCK 1 2 }  { m_axi_v2gb1_AWLOCK CACHE 1 2 }  { m_axi_v2gb1_AWCACHE PROT 1 4 }  { m_axi_v2gb1_AWPROT QOS 1 3 }  { m_axi_v2gb1_AWQOS REGION 1 4 }  { m_axi_v2gb1_AWREGION USER 1 4 }  { m_axi_v2gb1_AWUSER DATA 1 1 }  { m_axi_v2gb1_WVALID VALID 1 1 }  { m_axi_v2gb1_WREADY READY 0 1 }  { m_axi_v2gb1_WDATA FIFONUM 1 32 }  { m_axi_v2gb1_WSTRB STRB 1 4 }  { m_axi_v2gb1_WLAST LAST 1 1 }  { m_axi_v2gb1_WID ID 1 1 }  { m_axi_v2gb1_WUSER DATA 1 1 }  { m_axi_v2gb1_ARVALID VALID 1 1 }  { m_axi_v2gb1_ARREADY READY 0 1 }  { m_axi_v2gb1_ARADDR ADDR 1 64 }  { m_axi_v2gb1_ARID ID 1 1 }  { m_axi_v2gb1_ARLEN SIZE 1 32 }  { m_axi_v2gb1_ARSIZE BURST 1 3 }  { m_axi_v2gb1_ARBURST LOCK 1 2 }  { m_axi_v2gb1_ARLOCK CACHE 1 2 }  { m_axi_v2gb1_ARCACHE PROT 1 4 }  { m_axi_v2gb1_ARPROT QOS 1 3 }  { m_axi_v2gb1_ARQOS REGION 1 4 }  { m_axi_v2gb1_ARREGION USER 1 4 }  { m_axi_v2gb1_ARUSER DATA 1 1 }  { m_axi_v2gb1_RVALID VALID 0 1 }  { m_axi_v2gb1_RREADY READY 1 1 }  { m_axi_v2gb1_RDATA FIFONUM 0 32 }  { m_axi_v2gb1_RLAST LAST 0 1 }  { m_axi_v2gb1_RID ID 0 1 }  { m_axi_v2gb1_RFIFONUM LEN 0 9 }  { m_axi_v2gb1_RUSER DATA 0 1 }  { m_axi_v2gb1_RRESP RESP 0 2 }  { m_axi_v2gb1_BVALID VALID 0 1 }  { m_axi_v2gb1_BREADY READY 1 1 }  { m_axi_v2gb1_BRESP RESP 0 2 }  { m_axi_v2gb1_BID ID 0 1 }  { m_axi_v2gb1_BUSER DATA 0 1 } } }
	sext_ln261_11 { ap_none {  { sext_ln261_11 in_data 0 62 } } }
	sext_ln261_10 { ap_none {  { sext_ln261_10 in_data 0 62 } } }
	zext_ln261_11 { ap_none {  { zext_ln261_11 in_data 0 32 } } }
	w_3 { ap_memory {  { w_3_address0 mem_address 1 12 }  { w_3_ce0 mem_ce 1 1 }  { w_3_q0 mem_dout 0 32 }  { w_3_address1 MemPortADDR2 1 12 }  { w_3_ce1 MemPortCE2 1 1 }  { w_3_we1 MemPortWE2 1 1 }  { w_3_d1 MemPortDIN2 1 32 } } }
}
