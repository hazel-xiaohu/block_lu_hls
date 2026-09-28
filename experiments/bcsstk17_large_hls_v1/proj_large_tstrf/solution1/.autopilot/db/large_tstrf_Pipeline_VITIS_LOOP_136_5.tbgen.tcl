set moduleName large_tstrf_Pipeline_VITIS_LOOP_136_5
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
set C_modelName {large_tstrf_Pipeline_VITIS_LOOP_136_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln136 int 32 regular  }
	{ empty int 64 regular  }
	{ tw0 int 32 regular {axi_master 2}  }
	{ tu3 int 32 regular {axi_master 0}  }
	{ tu2 int 32 regular {axi_master 0}  }
	{ tu1 int 32 regular {axi_master 0}  }
	{ sext_ln138 int 62 regular  }
	{ zext_ln136_1 int 32 regular  }
	{ work int 64 regular  }
	{ u_csc_to_csr int 64 regular  }
	{ u_csr_val int 64 regular  }
	{ muladds int 64 regular {pointer 1}  }
	{ u_row_idx int 64 regular  }
	{ j_1 int 32 regular  }
	{ p_out int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln136", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "tu3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csc_to_csr","offset": { "type": "dynamic","port_name": "u_csc_to_csr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csr_val","offset": { "type": "dynamic","port_name": "u_csr_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_row_idx","offset": { "type": "dynamic","port_name": "u_row_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln138", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln136_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_csc_to_csr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_csr_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_row_idx", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "j_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 208
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln136 sc_in sc_lv 32 signal 0 } 
	{ empty sc_in sc_lv 64 signal 1 } 
	{ m_axi_tw0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_tw0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_tw0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_tw0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_tw0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_tw0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_tw0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_tw0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_tw0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_tw0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_tw0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_tw0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_tw0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_tw0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_tw0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tw0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_tw0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_tw0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_tw0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_tw0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_tw0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_tw0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_tw0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_tw0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_tw0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_tu3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_tu3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_tu3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_tu3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_tu3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_tu3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_tu3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_tu3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_tu3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_tu3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_tu3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_tu3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_tu3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_tu3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_tu3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_tu3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu3_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_tu3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_tu3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_tu3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu2_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_tu2_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_tu2_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu2_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu2_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu2_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu2_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_tu2_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_tu2_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_tu2_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu2_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu2_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu2_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu2_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu2_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu2_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_tu2_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu2_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_tu2_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu2_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_tu2_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu2_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu2_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_tu2_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu2_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu1_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_tu1_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_tu1_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_tu1_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_tu1_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_tu1_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_tu1_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_tu1_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_tu1_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_tu1_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_tu1_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_tu1_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_tu1_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_tu1_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_tu1_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tu1_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_tu1_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_tu1_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_tu1_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_tu1_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_tu1_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_tu1_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_tu1_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_tu1_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_tu1_BUSER sc_in sc_lv 1 signal 5 } 
	{ sext_ln138 sc_in sc_lv 62 signal 6 } 
	{ zext_ln136_1 sc_in sc_lv 32 signal 7 } 
	{ work sc_in sc_lv 64 signal 8 } 
	{ u_csc_to_csr sc_in sc_lv 64 signal 9 } 
	{ u_csr_val sc_in sc_lv 64 signal 10 } 
	{ muladds sc_out sc_lv 64 signal 11 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ u_row_idx sc_in sc_lv 64 signal 12 } 
	{ j_1 sc_in sc_lv 32 signal 13 } 
	{ p_out sc_out sc_lv 64 signal 14 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ grp_fu_1584_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1584_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln136", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln136", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "m_axi_tw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWID" }} , 
 	{ "name": "m_axi_tw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tw0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tw0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tw0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tw0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tw0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tw0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tw0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tw0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tw0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WVALID" }} , 
 	{ "name": "m_axi_tw0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WREADY" }} , 
 	{ "name": "m_axi_tw0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "WDATA" }} , 
 	{ "name": "m_axi_tw0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tw0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WLAST" }} , 
 	{ "name": "m_axi_tw0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WID" }} , 
 	{ "name": "m_axi_tw0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "WUSER" }} , 
 	{ "name": "m_axi_tw0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tw0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tw0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tw0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tw0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARID" }} , 
 	{ "name": "m_axi_tw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tw0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tw0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tw0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tw0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tw0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tw0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tw0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tw0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tw0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tw0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tw0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RVALID" }} , 
 	{ "name": "m_axi_tw0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RREADY" }} , 
 	{ "name": "m_axi_tw0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tw0", "role": "RDATA" }} , 
 	{ "name": "m_axi_tw0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RLAST" }} , 
 	{ "name": "m_axi_tw0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RID" }} , 
 	{ "name": "m_axi_tw0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tw0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_tw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BID" }} , 
 	{ "name": "m_axi_tw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWID" }} , 
 	{ "name": "m_axi_tu3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tu3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tu3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tu3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tu3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tu3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tu3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tu3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tu3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tu3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "WVALID" }} , 
 	{ "name": "m_axi_tu3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "WREADY" }} , 
 	{ "name": "m_axi_tu3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu3", "role": "WDATA" }} , 
 	{ "name": "m_axi_tu3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tu3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "WLAST" }} , 
 	{ "name": "m_axi_tu3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "WID" }} , 
 	{ "name": "m_axi_tu3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "WUSER" }} , 
 	{ "name": "m_axi_tu3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tu3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tu3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tu3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "ARID" }} , 
 	{ "name": "m_axi_tu3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tu3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tu3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tu3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tu3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tu3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tu3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tu3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tu3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tu3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RVALID" }} , 
 	{ "name": "m_axi_tu3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RREADY" }} , 
 	{ "name": "m_axi_tu3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu3", "role": "RDATA" }} , 
 	{ "name": "m_axi_tu3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RLAST" }} , 
 	{ "name": "m_axi_tu3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RID" }} , 
 	{ "name": "m_axi_tu3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tu3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_tu3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BID" }} , 
 	{ "name": "m_axi_tu3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWID" }} , 
 	{ "name": "m_axi_tu2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tu2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tu2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tu2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tu2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tu2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tu2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tu2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tu2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tu2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "WVALID" }} , 
 	{ "name": "m_axi_tu2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "WREADY" }} , 
 	{ "name": "m_axi_tu2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu2", "role": "WDATA" }} , 
 	{ "name": "m_axi_tu2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tu2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "WLAST" }} , 
 	{ "name": "m_axi_tu2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "WID" }} , 
 	{ "name": "m_axi_tu2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "WUSER" }} , 
 	{ "name": "m_axi_tu2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tu2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tu2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tu2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "ARID" }} , 
 	{ "name": "m_axi_tu2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tu2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tu2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tu2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tu2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tu2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tu2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tu2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tu2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tu2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RVALID" }} , 
 	{ "name": "m_axi_tu2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RREADY" }} , 
 	{ "name": "m_axi_tu2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu2", "role": "RDATA" }} , 
 	{ "name": "m_axi_tu2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RLAST" }} , 
 	{ "name": "m_axi_tu2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RID" }} , 
 	{ "name": "m_axi_tu2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tu2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_tu2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BID" }} , 
 	{ "name": "m_axi_tu2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWID" }} , 
 	{ "name": "m_axi_tu1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tu1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tu1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tu1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tu1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tu1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tu1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tu1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tu1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tu1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "WVALID" }} , 
 	{ "name": "m_axi_tu1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "WREADY" }} , 
 	{ "name": "m_axi_tu1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu1", "role": "WDATA" }} , 
 	{ "name": "m_axi_tu1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tu1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "WLAST" }} , 
 	{ "name": "m_axi_tu1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "WID" }} , 
 	{ "name": "m_axi_tu1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "WUSER" }} , 
 	{ "name": "m_axi_tu1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tu1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tu1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tu1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "ARID" }} , 
 	{ "name": "m_axi_tu1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tu1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tu1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tu1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tu1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tu1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tu1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tu1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tu1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tu1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RVALID" }} , 
 	{ "name": "m_axi_tu1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RREADY" }} , 
 	{ "name": "m_axi_tu1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu1", "role": "RDATA" }} , 
 	{ "name": "m_axi_tu1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RLAST" }} , 
 	{ "name": "m_axi_tu1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RID" }} , 
 	{ "name": "m_axi_tu1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tu1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_tu1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BID" }} , 
 	{ "name": "m_axi_tu1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BUSER" }} , 
 	{ "name": "sext_ln138", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln138", "role": "default" }} , 
 	{ "name": "zext_ln136_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln136_1", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "u_csc_to_csr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_csc_to_csr", "role": "default" }} , 
 	{ "name": "u_csr_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_csr_val", "role": "default" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }} , 
 	{ "name": "u_row_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_row_idx", "role": "default" }} , 
 	{ "name": "j_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "j_1", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1584_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1584_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1584_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_Pipeline_VITIS_LOOP_136_5",
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
			{"Name" : "zext_ln136", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "tu3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tu2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tu1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln138", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln136_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_csc_to_csr", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_csr_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_row_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "j_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "30", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage18", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage18_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage18", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage18_subdone", "PostState" : ["ap_ST_fsm_state48", "ap_ST_fsm_state49"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_1_U14", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_Pipeline_VITIS_LOOP_136_5 {
		zext_ln136 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		tw0 {Type IO LastRead 42 FirstWrite 41}
		tu3 {Type I LastRead 18 FirstWrite -1}
		tu2 {Type I LastRead 27 FirstWrite -1}
		tu1 {Type I LastRead 9 FirstWrite -1}
		sext_ln138 {Type I LastRead 0 FirstWrite -1}
		zext_ln136_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		u_csc_to_csr {Type I LastRead 0 FirstWrite -1}
		u_csr_val {Type I LastRead 0 FirstWrite -1}
		muladds {Type O LastRead -1 FirstWrite 10}
		u_row_idx {Type I LastRead 0 FirstWrite -1}
		j_1 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln136 { ap_none {  { zext_ln136 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 64 } } }
	 { m_axi {  { m_axi_tw0_AWVALID VALID 1 1 }  { m_axi_tw0_AWREADY READY 0 1 }  { m_axi_tw0_AWADDR ADDR 1 64 }  { m_axi_tw0_AWID ID 1 1 }  { m_axi_tw0_AWLEN SIZE 1 32 }  { m_axi_tw0_AWSIZE BURST 1 3 }  { m_axi_tw0_AWBURST LOCK 1 2 }  { m_axi_tw0_AWLOCK CACHE 1 2 }  { m_axi_tw0_AWCACHE PROT 1 4 }  { m_axi_tw0_AWPROT QOS 1 3 }  { m_axi_tw0_AWQOS REGION 1 4 }  { m_axi_tw0_AWREGION USER 1 4 }  { m_axi_tw0_AWUSER DATA 1 1 }  { m_axi_tw0_WVALID VALID 1 1 }  { m_axi_tw0_WREADY READY 0 1 }  { m_axi_tw0_WDATA FIFONUM 1 32 }  { m_axi_tw0_WSTRB STRB 1 4 }  { m_axi_tw0_WLAST LAST 1 1 }  { m_axi_tw0_WID ID 1 1 }  { m_axi_tw0_WUSER DATA 1 1 }  { m_axi_tw0_ARVALID VALID 1 1 }  { m_axi_tw0_ARREADY READY 0 1 }  { m_axi_tw0_ARADDR ADDR 1 64 }  { m_axi_tw0_ARID ID 1 1 }  { m_axi_tw0_ARLEN SIZE 1 32 }  { m_axi_tw0_ARSIZE BURST 1 3 }  { m_axi_tw0_ARBURST LOCK 1 2 }  { m_axi_tw0_ARLOCK CACHE 1 2 }  { m_axi_tw0_ARCACHE PROT 1 4 }  { m_axi_tw0_ARPROT QOS 1 3 }  { m_axi_tw0_ARQOS REGION 1 4 }  { m_axi_tw0_ARREGION USER 1 4 }  { m_axi_tw0_ARUSER DATA 1 1 }  { m_axi_tw0_RVALID VALID 0 1 }  { m_axi_tw0_RREADY READY 1 1 }  { m_axi_tw0_RDATA FIFONUM 0 32 }  { m_axi_tw0_RLAST LAST 0 1 }  { m_axi_tw0_RID ID 0 1 }  { m_axi_tw0_RFIFONUM LEN 0 9 }  { m_axi_tw0_RUSER DATA 0 1 }  { m_axi_tw0_RRESP RESP 0 2 }  { m_axi_tw0_BVALID VALID 0 1 }  { m_axi_tw0_BREADY READY 1 1 }  { m_axi_tw0_BRESP RESP 0 2 }  { m_axi_tw0_BID ID 0 1 }  { m_axi_tw0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_tu3_AWVALID VALID 1 1 }  { m_axi_tu3_AWREADY READY 0 1 }  { m_axi_tu3_AWADDR ADDR 1 64 }  { m_axi_tu3_AWID ID 1 1 }  { m_axi_tu3_AWLEN SIZE 1 32 }  { m_axi_tu3_AWSIZE BURST 1 3 }  { m_axi_tu3_AWBURST LOCK 1 2 }  { m_axi_tu3_AWLOCK CACHE 1 2 }  { m_axi_tu3_AWCACHE PROT 1 4 }  { m_axi_tu3_AWPROT QOS 1 3 }  { m_axi_tu3_AWQOS REGION 1 4 }  { m_axi_tu3_AWREGION USER 1 4 }  { m_axi_tu3_AWUSER DATA 1 1 }  { m_axi_tu3_WVALID VALID 1 1 }  { m_axi_tu3_WREADY READY 0 1 }  { m_axi_tu3_WDATA FIFONUM 1 32 }  { m_axi_tu3_WSTRB STRB 1 4 }  { m_axi_tu3_WLAST LAST 1 1 }  { m_axi_tu3_WID ID 1 1 }  { m_axi_tu3_WUSER DATA 1 1 }  { m_axi_tu3_ARVALID VALID 1 1 }  { m_axi_tu3_ARREADY READY 0 1 }  { m_axi_tu3_ARADDR ADDR 1 64 }  { m_axi_tu3_ARID ID 1 1 }  { m_axi_tu3_ARLEN SIZE 1 32 }  { m_axi_tu3_ARSIZE BURST 1 3 }  { m_axi_tu3_ARBURST LOCK 1 2 }  { m_axi_tu3_ARLOCK CACHE 1 2 }  { m_axi_tu3_ARCACHE PROT 1 4 }  { m_axi_tu3_ARPROT QOS 1 3 }  { m_axi_tu3_ARQOS REGION 1 4 }  { m_axi_tu3_ARREGION USER 1 4 }  { m_axi_tu3_ARUSER DATA 1 1 }  { m_axi_tu3_RVALID VALID 0 1 }  { m_axi_tu3_RREADY READY 1 1 }  { m_axi_tu3_RDATA FIFONUM 0 32 }  { m_axi_tu3_RLAST LAST 0 1 }  { m_axi_tu3_RID ID 0 1 }  { m_axi_tu3_RFIFONUM LEN 0 9 }  { m_axi_tu3_RUSER DATA 0 1 }  { m_axi_tu3_RRESP RESP 0 2 }  { m_axi_tu3_BVALID VALID 0 1 }  { m_axi_tu3_BREADY READY 1 1 }  { m_axi_tu3_BRESP RESP 0 2 }  { m_axi_tu3_BID ID 0 1 }  { m_axi_tu3_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_tu2_AWVALID VALID 1 1 }  { m_axi_tu2_AWREADY READY 0 1 }  { m_axi_tu2_AWADDR ADDR 1 64 }  { m_axi_tu2_AWID ID 1 1 }  { m_axi_tu2_AWLEN SIZE 1 32 }  { m_axi_tu2_AWSIZE BURST 1 3 }  { m_axi_tu2_AWBURST LOCK 1 2 }  { m_axi_tu2_AWLOCK CACHE 1 2 }  { m_axi_tu2_AWCACHE PROT 1 4 }  { m_axi_tu2_AWPROT QOS 1 3 }  { m_axi_tu2_AWQOS REGION 1 4 }  { m_axi_tu2_AWREGION USER 1 4 }  { m_axi_tu2_AWUSER DATA 1 1 }  { m_axi_tu2_WVALID VALID 1 1 }  { m_axi_tu2_WREADY READY 0 1 }  { m_axi_tu2_WDATA FIFONUM 1 32 }  { m_axi_tu2_WSTRB STRB 1 4 }  { m_axi_tu2_WLAST LAST 1 1 }  { m_axi_tu2_WID ID 1 1 }  { m_axi_tu2_WUSER DATA 1 1 }  { m_axi_tu2_ARVALID VALID 1 1 }  { m_axi_tu2_ARREADY READY 0 1 }  { m_axi_tu2_ARADDR ADDR 1 64 }  { m_axi_tu2_ARID ID 1 1 }  { m_axi_tu2_ARLEN SIZE 1 32 }  { m_axi_tu2_ARSIZE BURST 1 3 }  { m_axi_tu2_ARBURST LOCK 1 2 }  { m_axi_tu2_ARLOCK CACHE 1 2 }  { m_axi_tu2_ARCACHE PROT 1 4 }  { m_axi_tu2_ARPROT QOS 1 3 }  { m_axi_tu2_ARQOS REGION 1 4 }  { m_axi_tu2_ARREGION USER 1 4 }  { m_axi_tu2_ARUSER DATA 1 1 }  { m_axi_tu2_RVALID VALID 0 1 }  { m_axi_tu2_RREADY READY 1 1 }  { m_axi_tu2_RDATA FIFONUM 0 32 }  { m_axi_tu2_RLAST LAST 0 1 }  { m_axi_tu2_RID ID 0 1 }  { m_axi_tu2_RFIFONUM LEN 0 9 }  { m_axi_tu2_RUSER DATA 0 1 }  { m_axi_tu2_RRESP RESP 0 2 }  { m_axi_tu2_BVALID VALID 0 1 }  { m_axi_tu2_BREADY READY 1 1 }  { m_axi_tu2_BRESP RESP 0 2 }  { m_axi_tu2_BID ID 0 1 }  { m_axi_tu2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_tu1_AWVALID VALID 1 1 }  { m_axi_tu1_AWREADY READY 0 1 }  { m_axi_tu1_AWADDR ADDR 1 64 }  { m_axi_tu1_AWID ID 1 1 }  { m_axi_tu1_AWLEN SIZE 1 32 }  { m_axi_tu1_AWSIZE BURST 1 3 }  { m_axi_tu1_AWBURST LOCK 1 2 }  { m_axi_tu1_AWLOCK CACHE 1 2 }  { m_axi_tu1_AWCACHE PROT 1 4 }  { m_axi_tu1_AWPROT QOS 1 3 }  { m_axi_tu1_AWQOS REGION 1 4 }  { m_axi_tu1_AWREGION USER 1 4 }  { m_axi_tu1_AWUSER DATA 1 1 }  { m_axi_tu1_WVALID VALID 1 1 }  { m_axi_tu1_WREADY READY 0 1 }  { m_axi_tu1_WDATA FIFONUM 1 32 }  { m_axi_tu1_WSTRB STRB 1 4 }  { m_axi_tu1_WLAST LAST 1 1 }  { m_axi_tu1_WID ID 1 1 }  { m_axi_tu1_WUSER DATA 1 1 }  { m_axi_tu1_ARVALID VALID 1 1 }  { m_axi_tu1_ARREADY READY 0 1 }  { m_axi_tu1_ARADDR ADDR 1 64 }  { m_axi_tu1_ARID ID 1 1 }  { m_axi_tu1_ARLEN SIZE 1 32 }  { m_axi_tu1_ARSIZE BURST 1 3 }  { m_axi_tu1_ARBURST LOCK 1 2 }  { m_axi_tu1_ARLOCK CACHE 1 2 }  { m_axi_tu1_ARCACHE PROT 1 4 }  { m_axi_tu1_ARPROT QOS 1 3 }  { m_axi_tu1_ARQOS REGION 1 4 }  { m_axi_tu1_ARREGION USER 1 4 }  { m_axi_tu1_ARUSER DATA 1 1 }  { m_axi_tu1_RVALID VALID 0 1 }  { m_axi_tu1_RREADY READY 1 1 }  { m_axi_tu1_RDATA FIFONUM 0 32 }  { m_axi_tu1_RLAST LAST 0 1 }  { m_axi_tu1_RID ID 0 1 }  { m_axi_tu1_RFIFONUM LEN 0 9 }  { m_axi_tu1_RUSER DATA 0 1 }  { m_axi_tu1_RRESP RESP 0 2 }  { m_axi_tu1_BVALID VALID 0 1 }  { m_axi_tu1_BREADY READY 1 1 }  { m_axi_tu1_BRESP RESP 0 2 }  { m_axi_tu1_BID ID 0 1 }  { m_axi_tu1_BUSER DATA 0 1 } } }
	sext_ln138 { ap_none {  { sext_ln138 in_data 0 62 } } }
	zext_ln136_1 { ap_none {  { zext_ln136_1 in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
	u_csc_to_csr { ap_none {  { u_csc_to_csr in_data 0 64 } } }
	u_csr_val { ap_none {  { u_csr_val in_data 0 64 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
	u_row_idx { ap_none {  { u_row_idx in_data 0 64 } } }
	j_1 { ap_none {  { j_1 in_data 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 64 }  { p_out_ap_vld out_vld 1 1 } } }
}
