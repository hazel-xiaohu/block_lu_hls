set moduleName large_gessm_Pipeline_VITIS_LOOP_100_6
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
set C_modelName {large_gessm_Pipeline_VITIS_LOOP_100_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln100 int 32 regular  }
	{ gw0 int 32 regular {axi_master 0}  }
	{ gx4 int 32 regular {axi_master 1}  }
	{ gx3 int 32 regular {axi_master 0}  }
	{ gx2 int 32 regular {axi_master 1}  }
	{ gx1 int 32 regular {axi_master 0}  }
	{ sext_ln100_2 int 62 regular  }
	{ sext_ln100_3 int 62 regular  }
	{ sext_ln100_1 int 62 regular  }
	{ zext_ln100_1 int 32 regular  }
	{ work int 64 regular  }
	{ x_val_csr int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln100", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "gx4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val_csr","offset": { "type": "dynamic","port_name": "x_val_csr","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gx3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_csc_to_csr","offset": { "type": "dynamic","port_name": "x_csc_to_csr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gx2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val_csc","offset": { "type": "dynamic","port_name": "x_val_csc","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gx1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_idx","offset": { "type": "dynamic","port_name": "x_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln100_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln100_3", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln100_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln100_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_val_csr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 243
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gx1_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gx1_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gx1_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gx1_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gx1_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gx1_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gx1_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gx1_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gx1_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gx1_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gx1_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gx1_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gx1_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gx1_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gx1_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gx1_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gx1_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gx1_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_gx1_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gx1_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gx1_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gx1_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gx1_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gx1_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gx1_BUSER sc_in sc_lv 1 signal 5 } 
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
	{ m_axi_gx3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gx3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gx3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gx3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gx3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gx3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gx3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gx3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gx3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gx3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gx3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gx3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gx3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gx3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gx3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gx3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gx3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gx3_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gx3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gx3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gx3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gx3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gx3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gx3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gx3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gx4_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gx4_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gx4_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gx4_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gx4_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gx4_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gx4_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gx4_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gx4_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gx4_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gx4_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gx4_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gx4_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gx4_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gx4_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gx4_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gx4_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gx4_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gx4_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gx4_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gx4_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gx4_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gx4_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gx4_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gx4_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gx2_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gx2_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gx2_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gx2_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gx2_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gx2_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gx2_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gx2_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gx2_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gx2_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gx2_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gx2_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gx2_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gx2_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gx2_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gx2_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gx2_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gx2_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_gx2_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gx2_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gx2_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gx2_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gx2_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gx2_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gx2_BUSER sc_in sc_lv 1 signal 4 } 
	{ zext_ln100 sc_in sc_lv 32 signal 0 } 
	{ sext_ln100_2 sc_in sc_lv 62 signal 6 } 
	{ sext_ln100_3 sc_in sc_lv 62 signal 7 } 
	{ sext_ln100_1 sc_in sc_lv 62 signal 8 } 
	{ zext_ln100_1 sc_in sc_lv 32 signal 9 } 
	{ work sc_in sc_lv 64 signal 10 } 
	{ x_val_csr sc_in sc_lv 64 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gx1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gx1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gx1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gx1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "AWID" }} , 
 	{ "name": "m_axi_gx1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gx1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gx1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gx1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gx1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gx1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gx1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gx1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gx1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gx1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gx1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gx1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gx1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gx1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gx1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "WID" }} , 
 	{ "name": "m_axi_gx1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gx1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gx1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gx1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gx1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "ARID" }} , 
 	{ "name": "m_axi_gx1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gx1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gx1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gx1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gx1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gx1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gx1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gx1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gx1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gx1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gx1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gx1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gx1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gx1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "RID" }} , 
 	{ "name": "m_axi_gx1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gx1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gx1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gx1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gx1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gx1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gx1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gx1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "BID" }} , 
 	{ "name": "m_axi_gx1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx1", "role": "BUSER" }} , 
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
 	{ "name": "m_axi_gx3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gx3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gx3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gx3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "AWID" }} , 
 	{ "name": "m_axi_gx3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gx3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gx3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gx3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gx3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gx3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gx3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gx3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gx3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gx3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gx3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gx3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gx3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gx3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gx3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "WID" }} , 
 	{ "name": "m_axi_gx3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gx3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gx3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gx3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gx3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "ARID" }} , 
 	{ "name": "m_axi_gx3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gx3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gx3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gx3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gx3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gx3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gx3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gx3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gx3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gx3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gx3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gx3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gx3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gx3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "RID" }} , 
 	{ "name": "m_axi_gx3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gx3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gx3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gx3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gx3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gx3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gx3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gx3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "BID" }} , 
 	{ "name": "m_axi_gx3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gx4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gx4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gx4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gx4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "AWID" }} , 
 	{ "name": "m_axi_gx4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gx4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gx4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gx4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gx4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gx4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gx4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gx4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gx4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gx4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gx4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gx4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gx4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gx4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gx4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "WID" }} , 
 	{ "name": "m_axi_gx4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gx4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gx4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gx4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gx4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "ARID" }} , 
 	{ "name": "m_axi_gx4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gx4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gx4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gx4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gx4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gx4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gx4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gx4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gx4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gx4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gx4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gx4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gx4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gx4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "RID" }} , 
 	{ "name": "m_axi_gx4_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gx4", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gx4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gx4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gx4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gx4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gx4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gx4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "BID" }} , 
 	{ "name": "m_axi_gx4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx4", "role": "BUSER" }} , 
 	{ "name": "m_axi_gx2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gx2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gx2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gx2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "AWID" }} , 
 	{ "name": "m_axi_gx2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gx2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gx2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gx2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gx2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gx2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gx2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gx2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gx2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gx2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gx2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gx2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gx2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gx2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gx2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "WID" }} , 
 	{ "name": "m_axi_gx2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gx2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gx2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gx2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gx2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gx2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "ARID" }} , 
 	{ "name": "m_axi_gx2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gx2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gx2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gx2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gx2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gx2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gx2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gx2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gx2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gx2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gx2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gx2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gx2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gx2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gx2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gx2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "RID" }} , 
 	{ "name": "m_axi_gx2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gx2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gx2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gx2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gx2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gx2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gx2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gx2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gx2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "BID" }} , 
 	{ "name": "m_axi_gx2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gx2", "role": "BUSER" }} , 
 	{ "name": "zext_ln100", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln100", "role": "default" }} , 
 	{ "name": "sext_ln100_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln100_2", "role": "default" }} , 
 	{ "name": "sext_ln100_3", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln100_3", "role": "default" }} , 
 	{ "name": "sext_ln100_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln100_1", "role": "default" }} , 
 	{ "name": "zext_ln100_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln100_1", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "x_val_csr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_val_csr", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_gessm_Pipeline_VITIS_LOOP_100_6",
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
			{"Name" : "zext_ln100", "Type" : "None", "Direction" : "I"},
			{"Name" : "gw0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gw0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gx4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gx4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gx4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gx4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gx3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln100_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln100_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln100_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln100_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_100_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_Pipeline_VITIS_LOOP_100_6 {
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		gw0 {Type I LastRead 11 FirstWrite -1}
		gx4 {Type O LastRead 13 FirstWrite 12}
		gx3 {Type I LastRead 9 FirstWrite -1}
		gx2 {Type O LastRead -1 FirstWrite 12}
		gx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln100_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln100_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln100_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln100_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		x_val_csr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln100 { ap_none {  { zext_ln100 in_data 0 32 } } }
	 { m_axi {  { m_axi_gw0_AWVALID VALID 1 1 }  { m_axi_gw0_AWREADY READY 0 1 }  { m_axi_gw0_AWADDR ADDR 1 64 }  { m_axi_gw0_AWID ID 1 1 }  { m_axi_gw0_AWLEN SIZE 1 32 }  { m_axi_gw0_AWSIZE BURST 1 3 }  { m_axi_gw0_AWBURST LOCK 1 2 }  { m_axi_gw0_AWLOCK CACHE 1 2 }  { m_axi_gw0_AWCACHE PROT 1 4 }  { m_axi_gw0_AWPROT QOS 1 3 }  { m_axi_gw0_AWQOS REGION 1 4 }  { m_axi_gw0_AWREGION USER 1 4 }  { m_axi_gw0_AWUSER DATA 1 1 }  { m_axi_gw0_WVALID VALID 1 1 }  { m_axi_gw0_WREADY READY 0 1 }  { m_axi_gw0_WDATA FIFONUM 1 32 }  { m_axi_gw0_WSTRB STRB 1 4 }  { m_axi_gw0_WLAST LAST 1 1 }  { m_axi_gw0_WID ID 1 1 }  { m_axi_gw0_WUSER DATA 1 1 }  { m_axi_gw0_ARVALID VALID 1 1 }  { m_axi_gw0_ARREADY READY 0 1 }  { m_axi_gw0_ARADDR ADDR 1 64 }  { m_axi_gw0_ARID ID 1 1 }  { m_axi_gw0_ARLEN SIZE 1 32 }  { m_axi_gw0_ARSIZE BURST 1 3 }  { m_axi_gw0_ARBURST LOCK 1 2 }  { m_axi_gw0_ARLOCK CACHE 1 2 }  { m_axi_gw0_ARCACHE PROT 1 4 }  { m_axi_gw0_ARPROT QOS 1 3 }  { m_axi_gw0_ARQOS REGION 1 4 }  { m_axi_gw0_ARREGION USER 1 4 }  { m_axi_gw0_ARUSER DATA 1 1 }  { m_axi_gw0_RVALID VALID 0 1 }  { m_axi_gw0_RREADY READY 1 1 }  { m_axi_gw0_RDATA FIFONUM 0 32 }  { m_axi_gw0_RLAST LAST 0 1 }  { m_axi_gw0_RID ID 0 1 }  { m_axi_gw0_RFIFONUM LEN 0 9 }  { m_axi_gw0_RUSER DATA 0 1 }  { m_axi_gw0_RRESP RESP 0 2 }  { m_axi_gw0_BVALID VALID 0 1 }  { m_axi_gw0_BREADY READY 1 1 }  { m_axi_gw0_BRESP RESP 0 2 }  { m_axi_gw0_BID ID 0 1 }  { m_axi_gw0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gx4_AWVALID VALID 1 1 }  { m_axi_gx4_AWREADY READY 0 1 }  { m_axi_gx4_AWADDR ADDR 1 64 }  { m_axi_gx4_AWID ID 1 1 }  { m_axi_gx4_AWLEN SIZE 1 32 }  { m_axi_gx4_AWSIZE BURST 1 3 }  { m_axi_gx4_AWBURST LOCK 1 2 }  { m_axi_gx4_AWLOCK CACHE 1 2 }  { m_axi_gx4_AWCACHE PROT 1 4 }  { m_axi_gx4_AWPROT QOS 1 3 }  { m_axi_gx4_AWQOS REGION 1 4 }  { m_axi_gx4_AWREGION USER 1 4 }  { m_axi_gx4_AWUSER DATA 1 1 }  { m_axi_gx4_WVALID VALID 1 1 }  { m_axi_gx4_WREADY READY 0 1 }  { m_axi_gx4_WDATA FIFONUM 1 32 }  { m_axi_gx4_WSTRB STRB 1 4 }  { m_axi_gx4_WLAST LAST 1 1 }  { m_axi_gx4_WID ID 1 1 }  { m_axi_gx4_WUSER DATA 1 1 }  { m_axi_gx4_ARVALID VALID 1 1 }  { m_axi_gx4_ARREADY READY 0 1 }  { m_axi_gx4_ARADDR ADDR 1 64 }  { m_axi_gx4_ARID ID 1 1 }  { m_axi_gx4_ARLEN SIZE 1 32 }  { m_axi_gx4_ARSIZE BURST 1 3 }  { m_axi_gx4_ARBURST LOCK 1 2 }  { m_axi_gx4_ARLOCK CACHE 1 2 }  { m_axi_gx4_ARCACHE PROT 1 4 }  { m_axi_gx4_ARPROT QOS 1 3 }  { m_axi_gx4_ARQOS REGION 1 4 }  { m_axi_gx4_ARREGION USER 1 4 }  { m_axi_gx4_ARUSER DATA 1 1 }  { m_axi_gx4_RVALID VALID 0 1 }  { m_axi_gx4_RREADY READY 1 1 }  { m_axi_gx4_RDATA FIFONUM 0 32 }  { m_axi_gx4_RLAST LAST 0 1 }  { m_axi_gx4_RID ID 0 1 }  { m_axi_gx4_RFIFONUM LEN 0 9 }  { m_axi_gx4_RUSER DATA 0 1 }  { m_axi_gx4_RRESP RESP 0 2 }  { m_axi_gx4_BVALID VALID 0 1 }  { m_axi_gx4_BREADY READY 1 1 }  { m_axi_gx4_BRESP RESP 0 2 }  { m_axi_gx4_BID ID 0 1 }  { m_axi_gx4_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gx3_AWVALID VALID 1 1 }  { m_axi_gx3_AWREADY READY 0 1 }  { m_axi_gx3_AWADDR ADDR 1 64 }  { m_axi_gx3_AWID ID 1 1 }  { m_axi_gx3_AWLEN SIZE 1 32 }  { m_axi_gx3_AWSIZE BURST 1 3 }  { m_axi_gx3_AWBURST LOCK 1 2 }  { m_axi_gx3_AWLOCK CACHE 1 2 }  { m_axi_gx3_AWCACHE PROT 1 4 }  { m_axi_gx3_AWPROT QOS 1 3 }  { m_axi_gx3_AWQOS REGION 1 4 }  { m_axi_gx3_AWREGION USER 1 4 }  { m_axi_gx3_AWUSER DATA 1 1 }  { m_axi_gx3_WVALID VALID 1 1 }  { m_axi_gx3_WREADY READY 0 1 }  { m_axi_gx3_WDATA FIFONUM 1 32 }  { m_axi_gx3_WSTRB STRB 1 4 }  { m_axi_gx3_WLAST LAST 1 1 }  { m_axi_gx3_WID ID 1 1 }  { m_axi_gx3_WUSER DATA 1 1 }  { m_axi_gx3_ARVALID VALID 1 1 }  { m_axi_gx3_ARREADY READY 0 1 }  { m_axi_gx3_ARADDR ADDR 1 64 }  { m_axi_gx3_ARID ID 1 1 }  { m_axi_gx3_ARLEN SIZE 1 32 }  { m_axi_gx3_ARSIZE BURST 1 3 }  { m_axi_gx3_ARBURST LOCK 1 2 }  { m_axi_gx3_ARLOCK CACHE 1 2 }  { m_axi_gx3_ARCACHE PROT 1 4 }  { m_axi_gx3_ARPROT QOS 1 3 }  { m_axi_gx3_ARQOS REGION 1 4 }  { m_axi_gx3_ARREGION USER 1 4 }  { m_axi_gx3_ARUSER DATA 1 1 }  { m_axi_gx3_RVALID VALID 0 1 }  { m_axi_gx3_RREADY READY 1 1 }  { m_axi_gx3_RDATA FIFONUM 0 32 }  { m_axi_gx3_RLAST LAST 0 1 }  { m_axi_gx3_RID ID 0 1 }  { m_axi_gx3_RFIFONUM LEN 0 9 }  { m_axi_gx3_RUSER DATA 0 1 }  { m_axi_gx3_RRESP RESP 0 2 }  { m_axi_gx3_BVALID VALID 0 1 }  { m_axi_gx3_BREADY READY 1 1 }  { m_axi_gx3_BRESP RESP 0 2 }  { m_axi_gx3_BID ID 0 1 }  { m_axi_gx3_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gx2_AWVALID VALID 1 1 }  { m_axi_gx2_AWREADY READY 0 1 }  { m_axi_gx2_AWADDR ADDR 1 64 }  { m_axi_gx2_AWID ID 1 1 }  { m_axi_gx2_AWLEN SIZE 1 32 }  { m_axi_gx2_AWSIZE BURST 1 3 }  { m_axi_gx2_AWBURST LOCK 1 2 }  { m_axi_gx2_AWLOCK CACHE 1 2 }  { m_axi_gx2_AWCACHE PROT 1 4 }  { m_axi_gx2_AWPROT QOS 1 3 }  { m_axi_gx2_AWQOS REGION 1 4 }  { m_axi_gx2_AWREGION USER 1 4 }  { m_axi_gx2_AWUSER DATA 1 1 }  { m_axi_gx2_WVALID VALID 1 1 }  { m_axi_gx2_WREADY READY 0 1 }  { m_axi_gx2_WDATA FIFONUM 1 32 }  { m_axi_gx2_WSTRB STRB 1 4 }  { m_axi_gx2_WLAST LAST 1 1 }  { m_axi_gx2_WID ID 1 1 }  { m_axi_gx2_WUSER DATA 1 1 }  { m_axi_gx2_ARVALID VALID 1 1 }  { m_axi_gx2_ARREADY READY 0 1 }  { m_axi_gx2_ARADDR ADDR 1 64 }  { m_axi_gx2_ARID ID 1 1 }  { m_axi_gx2_ARLEN SIZE 1 32 }  { m_axi_gx2_ARSIZE BURST 1 3 }  { m_axi_gx2_ARBURST LOCK 1 2 }  { m_axi_gx2_ARLOCK CACHE 1 2 }  { m_axi_gx2_ARCACHE PROT 1 4 }  { m_axi_gx2_ARPROT QOS 1 3 }  { m_axi_gx2_ARQOS REGION 1 4 }  { m_axi_gx2_ARREGION USER 1 4 }  { m_axi_gx2_ARUSER DATA 1 1 }  { m_axi_gx2_RVALID VALID 0 1 }  { m_axi_gx2_RREADY READY 1 1 }  { m_axi_gx2_RDATA FIFONUM 0 32 }  { m_axi_gx2_RLAST LAST 0 1 }  { m_axi_gx2_RID ID 0 1 }  { m_axi_gx2_RFIFONUM LEN 0 9 }  { m_axi_gx2_RUSER DATA 0 1 }  { m_axi_gx2_RRESP RESP 0 2 }  { m_axi_gx2_BVALID VALID 0 1 }  { m_axi_gx2_BREADY READY 1 1 }  { m_axi_gx2_BRESP RESP 0 2 }  { m_axi_gx2_BID ID 0 1 }  { m_axi_gx2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_gx1_AWVALID VALID 1 1 }  { m_axi_gx1_AWREADY READY 0 1 }  { m_axi_gx1_AWADDR ADDR 1 64 }  { m_axi_gx1_AWID ID 1 1 }  { m_axi_gx1_AWLEN SIZE 1 32 }  { m_axi_gx1_AWSIZE BURST 1 3 }  { m_axi_gx1_AWBURST LOCK 1 2 }  { m_axi_gx1_AWLOCK CACHE 1 2 }  { m_axi_gx1_AWCACHE PROT 1 4 }  { m_axi_gx1_AWPROT QOS 1 3 }  { m_axi_gx1_AWQOS REGION 1 4 }  { m_axi_gx1_AWREGION USER 1 4 }  { m_axi_gx1_AWUSER DATA 1 1 }  { m_axi_gx1_WVALID VALID 1 1 }  { m_axi_gx1_WREADY READY 0 1 }  { m_axi_gx1_WDATA FIFONUM 1 32 }  { m_axi_gx1_WSTRB STRB 1 4 }  { m_axi_gx1_WLAST LAST 1 1 }  { m_axi_gx1_WID ID 1 1 }  { m_axi_gx1_WUSER DATA 1 1 }  { m_axi_gx1_ARVALID VALID 1 1 }  { m_axi_gx1_ARREADY READY 0 1 }  { m_axi_gx1_ARADDR ADDR 1 64 }  { m_axi_gx1_ARID ID 1 1 }  { m_axi_gx1_ARLEN SIZE 1 32 }  { m_axi_gx1_ARSIZE BURST 1 3 }  { m_axi_gx1_ARBURST LOCK 1 2 }  { m_axi_gx1_ARLOCK CACHE 1 2 }  { m_axi_gx1_ARCACHE PROT 1 4 }  { m_axi_gx1_ARPROT QOS 1 3 }  { m_axi_gx1_ARQOS REGION 1 4 }  { m_axi_gx1_ARREGION USER 1 4 }  { m_axi_gx1_ARUSER DATA 1 1 }  { m_axi_gx1_RVALID VALID 0 1 }  { m_axi_gx1_RREADY READY 1 1 }  { m_axi_gx1_RDATA FIFONUM 0 32 }  { m_axi_gx1_RLAST LAST 0 1 }  { m_axi_gx1_RID ID 0 1 }  { m_axi_gx1_RFIFONUM LEN 0 9 }  { m_axi_gx1_RUSER DATA 0 1 }  { m_axi_gx1_RRESP RESP 0 2 }  { m_axi_gx1_BVALID VALID 0 1 }  { m_axi_gx1_BREADY READY 1 1 }  { m_axi_gx1_BRESP RESP 0 2 }  { m_axi_gx1_BID ID 0 1 }  { m_axi_gx1_BUSER DATA 0 1 } } }
	sext_ln100_2 { ap_none {  { sext_ln100_2 in_data 0 62 } } }
	sext_ln100_3 { ap_none {  { sext_ln100_3 in_data 0 62 } } }
	sext_ln100_1 { ap_none {  { sext_ln100_1 in_data 0 62 } } }
	zext_ln100_1 { ap_none {  { zext_ln100_1 in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
	x_val_csr { ap_none {  { x_val_csr in_data 0 64 } } }
}
