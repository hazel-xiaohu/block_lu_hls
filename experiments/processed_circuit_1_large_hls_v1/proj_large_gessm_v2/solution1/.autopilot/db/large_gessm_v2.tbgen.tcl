set moduleName large_gessm_v2
set isTopModule 1
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
set C_modelName {large_gessm_v2}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2gl0 int 32 regular {axi_master 0}  }
	{ v2gl1 int 32 regular {axi_master 0}  }
	{ v2gl2 int 32 regular {axi_master 0}  }
	{ v2gb0 int 32 regular {axi_master 0}  }
	{ v2gb1 int 32 regular {axi_master 0}  }
	{ v2gb2 int 32 regular {axi_master 0}  }
	{ v2gx0 int 32 regular {axi_master 0}  }
	{ v2gx1 int 32 regular {axi_master 0}  }
	{ v2gx2 int 32 regular {axi_master 1}  }
	{ v2gx3 int 32 regular {axi_master 0}  }
	{ v2gx4 int 32 regular {axi_master 1}  }
	{ v2ga0 int 32 regular {axi_master 0}  }
	{ v2gw0 int 32 unused {axi_master 0}  }
	{ l_ptr int 64 regular {axi_slave 0}  }
	{ l_idx int 64 regular {axi_slave 0}  }
	{ l_val int 64 regular {axi_slave 0}  }
	{ b_ptr int 64 regular {axi_slave 0}  }
	{ b_idx int 64 regular {axi_slave 0}  }
	{ b_val int 64 regular {axi_slave 0}  }
	{ x_ptr int 64 regular {axi_slave 0}  }
	{ x_idx int 64 regular {axi_slave 0}  }
	{ x_val_csc int 64 regular {axi_slave 0}  }
	{ x_csc_to_csr int 64 regular {axi_slave 0}  }
	{ x_val_csr int 64 regular {axi_slave 0}  }
	{ active_cols int 64 regular {axi_slave 0}  }
	{ active_count int 32 regular  }
	{ work int 64 unused {axi_slave 0}  }
	{ n int 32 regular  }
	{ status int 32 regular {pointer 1}  }
	{ muladds int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2gl0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_ptr","offset": { "type": "dynamic","port_name": "l_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gl1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_idx","offset": { "type": "dynamic","port_name": "l_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gl2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_val","offset": { "type": "dynamic","port_name": "l_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gb0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_ptr","offset": { "type": "dynamic","port_name": "b_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gb1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_idx","offset": { "type": "dynamic","port_name": "b_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gb2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_val","offset": { "type": "dynamic","port_name": "b_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gx0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_ptr","offset": { "type": "dynamic","port_name": "x_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gx1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_idx","offset": { "type": "dynamic","port_name": "x_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gx2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val_csc","offset": { "type": "dynamic","port_name": "x_val_csc","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "v2gx3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_csc_to_csr","offset": { "type": "dynamic","port_name": "x_csc_to_csr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gx4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val_csr","offset": { "type": "dynamic","port_name": "x_val_csr","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "v2ga0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "active_cols","offset": { "type": "dynamic","port_name": "active_cols","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},}]}]} , 
 	{ "Name" : "l_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "l_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "l_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "b_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "b_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "b_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "x_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "x_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "x_val_csc", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "x_csc_to_csr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "x_val_csr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "active_cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "active_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 611
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_v2gl0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_v2gl0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_v2gl0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2gl0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2gl1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_v2gl1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gl1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gl1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2gl1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2gl1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_v2gl1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gl1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2gl1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2gl1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v2gl1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2gl2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_v2gl2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gl2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gl2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2gl2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2gl2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_v2gl2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gl2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2gl2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2gl2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v2gl2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2gl2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2gl2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gl2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2gb0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_v2gb0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_v2gb0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_v2gb0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_v2gb0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_v2gb0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_v2gb0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_v2gb0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_v2gb0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_v2gb0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_v2gb0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_v2gb0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_v2gb0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_v2gb0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_v2gb0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_v2gb1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_v2gb1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_v2gb1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_v2gb1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_v2gb1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_v2gb1_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_v2gb1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_v2gb1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_v2gb1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_v2gb1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_v2gb1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_v2gb1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_v2gb1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_v2gb1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_v2gb1_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_v2gb2_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_v2gb2_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_v2gb2_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_v2gb2_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_v2gb2_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_v2gb2_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_v2gb2_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_v2gb2_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_v2gb2_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_v2gb2_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_v2gb2_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_v2gb2_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_v2gb2_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_v2gb2_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_v2gb2_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_v2gx0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_v2gx0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_v2gx0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_v2gx0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_v2gx0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_v2gx0_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_v2gx0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_v2gx0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_v2gx0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_v2gx0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_v2gx0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_v2gx0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_v2gx0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_v2gx0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_v2gx0_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_v2gx1_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_v2gx1_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_v2gx1_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_v2gx1_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_v2gx1_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_v2gx1_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_v2gx1_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_v2gx1_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_v2gx1_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_v2gx1_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_v2gx1_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_v2gx1_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_v2gx1_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_v2gx1_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_v2gx1_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_v2gx2_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_v2gx2_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_v2gx2_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_v2gx2_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_v2gx2_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_v2gx2_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_v2gx2_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_v2gx2_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_v2gx2_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_v2gx2_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_v2gx2_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_v2gx2_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_v2gx2_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_v2gx2_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_v2gx2_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_v2gx3_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_v2gx3_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_v2gx3_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_v2gx3_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_v2gx3_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_v2gx3_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_v2gx3_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_v2gx3_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_v2gx3_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_v2gx3_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_v2gx3_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_v2gx3_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_v2gx3_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_v2gx3_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_v2gx3_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_v2gx4_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_v2gx4_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_v2gx4_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_v2gx4_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_v2gx4_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_v2gx4_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_v2gx4_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_v2gx4_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_v2gx4_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_v2gx4_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_v2gx4_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_v2gx4_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_v2gx4_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_v2gx4_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_v2gx4_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_v2ga0_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_v2ga0_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_v2ga0_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_v2ga0_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_v2ga0_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_v2ga0_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_v2ga0_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_v2ga0_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_v2ga0_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_v2ga0_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_v2ga0_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_v2ga0_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_v2ga0_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_v2ga0_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_v2ga0_BUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_v2gw0_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_v2gw0_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_AWLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_v2gw0_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_v2gw0_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_v2gw0_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_WDATA sc_out sc_lv 32 signal 12 } 
	{ m_axi_v2gw0_WSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_v2gw0_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_ARLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_v2gw0_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_v2gw0_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_v2gw0_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_v2gw0_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_RDATA sc_in sc_lv 32 signal 12 } 
	{ m_axi_v2gw0_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_v2gw0_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_v2gw0_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_v2gw0_BUSER sc_in sc_lv 1 signal 12 } 
	{ active_count sc_in sc_lv 32 signal 25 } 
	{ n sc_in sc_lv 32 signal 27 } 
	{ status sc_out sc_lv 32 signal 28 } 
	{ status_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ muladds sc_out sc_lv 64 signal 29 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"large_gessm_v2","role":"start","value":"0","valid_bit":"0"},{"name":"large_gessm_v2","role":"continue","value":"0","valid_bit":"4"},{"name":"large_gessm_v2","role":"auto_start","value":"0","valid_bit":"7"},{"name":"l_ptr","role":"data","value":"16"},{"name":"l_idx","role":"data","value":"28"},{"name":"l_val","role":"data","value":"40"},{"name":"b_ptr","role":"data","value":"52"},{"name":"b_idx","role":"data","value":"64"},{"name":"b_val","role":"data","value":"76"},{"name":"x_ptr","role":"data","value":"88"},{"name":"x_idx","role":"data","value":"100"},{"name":"x_val_csc","role":"data","value":"112"},{"name":"x_csc_to_csr","role":"data","value":"124"},{"name":"x_val_csr","role":"data","value":"136"},{"name":"active_cols","role":"data","value":"148"},{"name":"work","role":"data","value":"160"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"large_gessm_v2","role":"start","value":"0","valid_bit":"0"},{"name":"large_gessm_v2","role":"done","value":"0","valid_bit":"1"},{"name":"large_gessm_v2","role":"idle","value":"0","valid_bit":"2"},{"name":"large_gessm_v2","role":"ready","value":"0","valid_bit":"3"},{"name":"large_gessm_v2","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_v2gl0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gl0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gl0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gl0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gl0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gl0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gl0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gl0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gl0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gl0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gl0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gl0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gl0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gl0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gl0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gl0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gl0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gl0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gl0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WID" }} , 
 	{ "name": "m_axi_v2gl0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gl0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gl0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gl0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gl0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gl0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gl0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gl0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gl0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gl0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gl0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gl0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gl0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gl0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gl0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gl0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gl0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gl0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gl0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RID" }} , 
 	{ "name": "m_axi_v2gl0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gl0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gl0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gl0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gl0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gl0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BID" }} , 
 	{ "name": "m_axi_v2gl0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gl1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gl1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gl1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gl1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gl1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gl1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gl1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gl1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gl1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gl1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gl1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gl1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gl1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gl1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gl1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gl1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gl1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gl1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gl1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "WID" }} , 
 	{ "name": "m_axi_v2gl1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gl1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gl1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gl1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gl1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gl1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gl1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gl1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gl1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gl1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gl1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gl1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gl1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gl1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gl1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gl1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gl1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gl1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gl1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "RID" }} , 
 	{ "name": "m_axi_v2gl1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gl1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gl1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gl1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gl1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gl1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "BID" }} , 
 	{ "name": "m_axi_v2gl1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gl2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gl2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gl2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gl2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gl2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gl2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gl2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gl2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gl2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gl2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gl2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gl2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gl2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gl2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gl2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gl2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gl2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gl2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gl2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "WID" }} , 
 	{ "name": "m_axi_v2gl2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gl2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gl2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gl2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gl2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gl2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gl2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gl2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gl2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gl2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gl2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gl2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gl2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gl2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gl2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gl2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gl2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gl2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gl2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RID" }} , 
 	{ "name": "m_axi_v2gl2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gl2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gl2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gl2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gl2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gl2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BID" }} , 
 	{ "name": "m_axi_v2gl2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gb0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gb0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gb0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gb0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gb0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gb0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gb0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gb0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gb0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gb0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gb0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gb0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gb0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gb0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gb0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gb0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gb0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gb0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gb0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "WID" }} , 
 	{ "name": "m_axi_v2gb0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gb0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gb0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gb0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gb0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gb0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gb0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gb0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gb0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gb0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gb0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gb0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gb0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gb0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gb0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gb0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gb0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gb0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gb0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gb0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "RID" }} , 
 	{ "name": "m_axi_v2gb0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gb0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gb0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gb0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gb0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gb0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "BID" }} , 
 	{ "name": "m_axi_v2gb0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gb1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gb1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gb1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gb1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gb1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v2gb1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v2gb1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gb1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gb1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gb1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gb1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gb1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BID" }} , 
 	{ "name": "m_axi_v2gb1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gb2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gb2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gb2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gb2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gb2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v2gb2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gb2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v2gb2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gb2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gb2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gb2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gb2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gb2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gb2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BID" }} , 
 	{ "name": "m_axi_v2gb2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gb2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gx0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gx0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gx0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gx0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gx0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gx0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gx0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gx0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gx0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gx0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gx0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gx0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gx0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gx0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gx0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gx0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gx0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gx0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gx0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "WID" }} , 
 	{ "name": "m_axi_v2gx0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gx0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gx0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gx0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gx0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gx0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gx0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gx0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gx0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gx0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gx0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gx0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gx0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gx0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gx0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gx0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gx0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gx0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gx0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "RID" }} , 
 	{ "name": "m_axi_v2gx0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gx0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gx0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gx0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gx0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gx0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "BID" }} , 
 	{ "name": "m_axi_v2gx0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gx1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gx1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gx1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gx1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gx1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gx1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gx1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gx1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gx1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gx1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gx1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gx1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gx1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gx1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gx1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gx1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gx1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gx1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gx1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "WID" }} , 
 	{ "name": "m_axi_v2gx1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gx1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gx1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gx1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gx1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gx1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gx1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gx1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gx1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gx1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gx1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gx1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gx1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gx1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gx1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gx1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gx1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gx1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gx1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "RID" }} , 
 	{ "name": "m_axi_v2gx1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gx1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gx1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gx1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gx1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gx1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "BID" }} , 
 	{ "name": "m_axi_v2gx1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gx2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gx2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gx2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gx2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gx2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gx2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gx2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gx2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gx2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gx2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gx2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gx2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gx2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gx2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gx2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gx2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gx2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gx2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gx2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "WID" }} , 
 	{ "name": "m_axi_v2gx2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gx2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gx2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gx2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gx2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gx2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gx2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gx2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gx2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gx2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gx2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gx2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gx2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gx2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gx2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gx2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gx2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gx2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gx2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "RID" }} , 
 	{ "name": "m_axi_v2gx2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gx2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gx2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gx2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gx2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gx2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "BID" }} , 
 	{ "name": "m_axi_v2gx2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gx3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gx3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gx3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gx3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gx3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gx3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gx3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gx3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gx3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gx3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gx3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gx3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gx3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gx3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gx3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gx3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx3", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gx3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gx3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gx3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "WID" }} , 
 	{ "name": "m_axi_v2gx3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gx3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gx3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gx3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gx3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gx3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gx3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gx3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gx3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gx3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gx3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gx3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gx3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gx3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gx3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gx3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gx3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx3", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gx3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gx3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "RID" }} , 
 	{ "name": "m_axi_v2gx3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gx3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gx3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gx3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gx3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx3", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gx3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "BID" }} , 
 	{ "name": "m_axi_v2gx3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx3", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gx4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gx4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gx4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gx4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gx4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gx4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gx4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gx4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gx4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gx4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gx4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gx4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gx4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gx4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gx4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gx4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx4", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gx4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gx4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gx4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "WID" }} , 
 	{ "name": "m_axi_v2gx4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gx4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gx4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gx4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gx4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gx4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gx4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gx4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gx4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gx4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gx4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gx4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gx4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gx4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gx4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gx4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gx4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gx4", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gx4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gx4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "RID" }} , 
 	{ "name": "m_axi_v2gx4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gx4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gx4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gx4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gx4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gx4", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gx4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "BID" }} , 
 	{ "name": "m_axi_v2gx4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gx4", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2ga0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2ga0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2ga0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2ga0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2ga0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2ga0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2ga0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2ga0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2ga0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2ga0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2ga0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2ga0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2ga0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2ga0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2ga0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2ga0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2ga0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2ga0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2ga0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2ga0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "WID" }} , 
 	{ "name": "m_axi_v2ga0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2ga0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2ga0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2ga0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2ga0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2ga0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2ga0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2ga0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2ga0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2ga0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2ga0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2ga0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2ga0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2ga0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2ga0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2ga0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2ga0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2ga0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2ga0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2ga0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "RID" }} , 
 	{ "name": "m_axi_v2ga0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2ga0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2ga0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2ga0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2ga0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2ga0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2ga0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "BID" }} , 
 	{ "name": "m_axi_v2ga0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2ga0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2gw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2gw0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2gw0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2gw0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2gw0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2gw0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2gw0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2gw0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2gw0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2gw0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2gw0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2gw0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gw0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2gw0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2gw0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2gw0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "WID" }} , 
 	{ "name": "m_axi_v2gw0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2gw0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2gw0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2gw0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2gw0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARID" }} , 
 	{ "name": "m_axi_v2gw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2gw0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2gw0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2gw0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2gw0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2gw0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2gw0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2gw0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2gw0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2gw0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2gw0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2gw0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gw0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2gw0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2gw0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "RID" }} , 
 	{ "name": "m_axi_v2gw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "BID" }} , 
 	{ "name": "m_axi_v2gw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gw0", "role": "BUSER" }} , 
 	{ "name": "active_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "active_count", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "default" }} , 
 	{ "name": "status_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "ap_vld" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "40", "42", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "large_gessm_v2",
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
			{"Name" : "v2gl0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_247_1_fu_926", "Port" : "v2gl0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v2gl1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_249_2_fu_936", "Port" : "v2gl1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "v2gl2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_249_2_fu_936", "Port" : "v2gl2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "v2gb0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2gb0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_610_fu_1120", "Port" : "v2gb1", "Inst_start_state" : "213", "Inst_end_state" : "214"},
					{"ID" : "22", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_62_fu_1010", "Port" : "v2gb1", "Inst_start_state" : "99", "Inst_end_state" : "100"},
					{"ID" : "30", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_66_fu_1065", "Port" : "v2gb1", "Inst_start_state" : "156", "Inst_end_state" : "157"},
					{"ID" : "14", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_6_fu_955", "Port" : "v2gb1", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "v2gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_610_fu_1120", "Port" : "v2gb2", "Inst_start_state" : "213", "Inst_end_state" : "214"},
					{"ID" : "22", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_62_fu_1010", "Port" : "v2gb2", "Inst_start_state" : "99", "Inst_end_state" : "100"},
					{"ID" : "30", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_66_fu_1065", "Port" : "v2gb2", "Inst_start_state" : "156", "Inst_end_state" : "157"},
					{"ID" : "14", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_6_fu_955", "Port" : "v2gb2", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "v2gx0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2gx0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095", "Port" : "v2gx1", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "42", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150", "Port" : "v2gx1", "Inst_start_state" : "237", "Inst_end_state" : "238"},
					{"ID" : "26", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040", "Port" : "v2gx1", "Inst_start_state" : "123", "Inst_end_state" : "124"},
					{"ID" : "18", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985", "Port" : "v2gx1", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "v2gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v2gx2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095", "Port" : "v2gx2", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "42", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150", "Port" : "v2gx2", "Inst_start_state" : "237", "Inst_end_state" : "238"},
					{"ID" : "26", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040", "Port" : "v2gx2", "Inst_start_state" : "123", "Inst_end_state" : "124"},
					{"ID" : "18", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985", "Port" : "v2gx2", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "v2gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx3_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095", "Port" : "v2gx3", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "42", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150", "Port" : "v2gx3", "Inst_start_state" : "237", "Inst_end_state" : "238"},
					{"ID" : "26", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040", "Port" : "v2gx3", "Inst_start_state" : "123", "Inst_end_state" : "124"},
					{"ID" : "18", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985", "Port" : "v2gx3", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "v2gx4", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095", "Port" : "v2gx4", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "42", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150", "Port" : "v2gx4", "Inst_start_state" : "237", "Inst_end_state" : "238"},
					{"ID" : "26", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040", "Port" : "v2gx4", "Inst_start_state" : "123", "Inst_end_state" : "124"},
					{"ID" : "18", "SubInstance" : "grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985", "Port" : "v2gx4", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "v2ga0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2ga0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2ga0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gw0", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "l_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_val_csc", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_csc_to_csr", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"},
			{"Name" : "active_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "active_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_265_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "244", "FirstState" : "ap_ST_fsm_state44", "LastState" : ["ap_ST_fsm_state48"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state43"], "PostState" : ["ap_ST_fsm_state49"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_265_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "244", "FirstState" : "ap_ST_fsm_state101", "LastState" : ["ap_ST_fsm_state105"], "QuitState" : ["ap_ST_fsm_state101"], "PreState" : ["ap_ST_fsm_state100"], "PostState" : ["ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_265_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "244", "FirstState" : "ap_ST_fsm_state158", "LastState" : ["ap_ST_fsm_state162"], "QuitState" : ["ap_ST_fsm_state158"], "PreState" : ["ap_ST_fsm_state157"], "PostState" : ["ap_ST_fsm_state163"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_265_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "244", "FirstState" : "ap_ST_fsm_state215", "LastState" : ["ap_ST_fsm_state219"], "QuitState" : ["ap_ST_fsm_state215"], "PreState" : ["ap_ST_fsm_state214"], "PostState" : ["ap_ST_fsm_state220"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_250_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "244", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state243"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state244"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.li_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_247_1_fu_926", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_247_1",
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
			{"Name" : "v2gl0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2gl0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln247", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "lp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_247_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_247_1_fu_926.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_249_2_fu_936", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_249_2",
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
			{"Name" : "v2gl2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gl1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gl1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln249_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln249", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln249_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_249_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_249_2_fu_936.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_5_fu_949", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_257_5",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_257_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_5_fu_949.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_6_fu_955", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_261_6",
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
			{"Name" : "zext_ln261_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln261_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln261_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln261_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_6_fu_955.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_8_fu_968", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_266_8",
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
			{"Name" : "zext_ln266", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_lcssa35", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln265_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln266_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc11331_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_8_fu_968.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_273_9",
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
			{"Name" : "zext_ln273", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gx4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln273_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln273_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_273_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_9_fu_985.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_51_fu_1004", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_257_51",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_257_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_51_fu_1004.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_62_fu_1010", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_261_62",
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
			{"Name" : "zext_ln261_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln261_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln261_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln261_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_62_fu_1010.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_83_fu_1023", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_266_83",
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
			{"Name" : "zext_ln266_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_1_lcssa40", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln265_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln266_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln265_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_136_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_83_fu_1023.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_273_94",
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
			{"Name" : "zext_ln273_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gx4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln273_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln273_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_273_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_94_fu_1040.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_55_fu_1059", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_257_55",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_257_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_55_fu_1059.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_66_fu_1065", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_261_66",
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
			{"Name" : "zext_ln261_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln261_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln261_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln261_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_66_fu_1065.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_87_fu_1078", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_266_87",
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
			{"Name" : "zext_ln266_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_2_lcssa45", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln265_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln266_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln265_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_241_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_87_fu_1078.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_273_98",
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
			{"Name" : "zext_ln273_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gx4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln273_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln273_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_273_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_98_fu_1095.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_59_fu_1114", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_257_59",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_257_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_257_59_fu_1114.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_610_fu_1120", "Parent" : "0", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_261_610_fu_1120.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_811_fu_1133", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_266_811",
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
			{"Name" : "zext_ln266_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_3_lcssa50", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln265_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln266_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "li", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln265_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "inc113_346_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_266_811_fu_1133.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "large_gessm_v2_Pipeline_VITIS_LOOP_273_912",
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
			{"Name" : "zext_ln273_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2gx4", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx4_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "v2gx4_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v2gx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v2gx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2gx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln273_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln273_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln273_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_val_csr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_273_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_gessm_v2_Pipeline_VITIS_LOOP_273_912_fu_1150.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2ga0_m_axi_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gb0_m_axi_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gb1_m_axi_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gb2_m_axi_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gl0_m_axi_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gl1_m_axi_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gl2_m_axi_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gx0_m_axi_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gx1_m_axi_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gx2_m_axi_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gx3_m_axi_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v2gx4_m_axi_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_6_no_dsp_1_U140", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_8_full_dsp_1_U141", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_1_U142", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_v2 {
		v2gl0 {Type I LastRead 8 FirstWrite -1}
		v2gl1 {Type I LastRead 5 FirstWrite -1}
		v2gl2 {Type I LastRead 5 FirstWrite -1}
		v2gb0 {Type I LastRead 191 FirstWrite -1}
		v2gb1 {Type I LastRead 193 FirstWrite -1}
		v2gb2 {Type I LastRead 193 FirstWrite -1}
		v2gx0 {Type I LastRead 211 FirstWrite -1}
		v2gx1 {Type I LastRead 213 FirstWrite -1}
		v2gx2 {Type O LastRead 222 FirstWrite 5}
		v2gx3 {Type I LastRead 213 FirstWrite -1}
		v2gx4 {Type O LastRead 6 FirstWrite 5}
		v2ga0 {Type I LastRead 181 FirstWrite -1}
		v2gw0 {Type I LastRead -1 FirstWrite -1}
		l_ptr {Type I LastRead 1 FirstWrite -1}
		l_idx {Type I LastRead 1 FirstWrite -1}
		l_val {Type I LastRead 1 FirstWrite -1}
		b_ptr {Type I LastRead 1 FirstWrite -1}
		b_idx {Type I LastRead 1 FirstWrite -1}
		b_val {Type I LastRead 1 FirstWrite -1}
		x_ptr {Type I LastRead 1 FirstWrite -1}
		x_idx {Type I LastRead 1 FirstWrite -1}
		x_val_csc {Type I LastRead 1 FirstWrite -1}
		x_csc_to_csr {Type I LastRead 1 FirstWrite -1}
		x_val_csr {Type I LastRead 1 FirstWrite -1}
		active_cols {Type I LastRead 1 FirstWrite -1}
		active_count {Type I LastRead 1 FirstWrite -1}
		work {Type I LastRead -1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 0}
		muladds {Type O LastRead -1 FirstWrite 15}}
	large_gessm_v2_Pipeline_VITIS_LOOP_247_1 {
		v2gl0 {Type I LastRead 8 FirstWrite -1}
		add_ln247 {Type I LastRead 0 FirstWrite -1}
		l_ptr {Type I LastRead 0 FirstWrite -1}
		lp {Type O LastRead -1 FirstWrite 9}}
	large_gessm_v2_Pipeline_VITIS_LOOP_249_2 {
		v2gl2 {Type I LastRead 1 FirstWrite -1}
		v2gl1 {Type I LastRead 1 FirstWrite -1}
		sext_ln249_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln249 {Type I LastRead 0 FirstWrite -1}
		trunc_ln249_2 {Type I LastRead 0 FirstWrite -1}
		li {Type O LastRead -1 FirstWrite 2}
		lv {Type O LastRead -1 FirstWrite 2}}
	large_gessm_v2_Pipeline_VITIS_LOOP_257_5 {
		n {Type I LastRead 0 FirstWrite -1}
		w {Type O LastRead -1 FirstWrite 0}}
	large_gessm_v2_Pipeline_VITIS_LOOP_261_6 {
		zext_ln261_1 {Type I LastRead 0 FirstWrite -1}
		v2gb2 {Type I LastRead 2 FirstWrite -1}
		v2gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln261_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln261_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln261_2 {Type I LastRead 0 FirstWrite -1}
		w {Type IO LastRead 3 FirstWrite 11}}
	large_gessm_v2_Pipeline_VITIS_LOOP_266_8 {
		zext_ln266 {Type I LastRead 0 FirstWrite -1}
		inc113_lcssa35 {Type I LastRead 0 FirstWrite -1}
		w {Type IO LastRead 3 FirstWrite 17}
		zext_ln265_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln266_1 {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 2 FirstWrite -1}
		li {Type I LastRead 1 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		inc11331_out {Type O LastRead -1 FirstWrite 4}}
	large_gessm_v2_Pipeline_VITIS_LOOP_273_9 {
		zext_ln273 {Type I LastRead 0 FirstWrite -1}
		v2gx4 {Type O LastRead 6 FirstWrite 5}
		v2gx3 {Type I LastRead 2 FirstWrite -1}
		v2gx2 {Type O LastRead -1 FirstWrite 5}
		v2gx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln273_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln273_1 {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 3 FirstWrite -1}
		x_val_csr {Type I LastRead 0 FirstWrite -1}}
	large_gessm_v2_Pipeline_VITIS_LOOP_257_51 {
		n {Type I LastRead 0 FirstWrite -1}
		w_1 {Type O LastRead -1 FirstWrite 0}}
	large_gessm_v2_Pipeline_VITIS_LOOP_261_62 {
		zext_ln261_4 {Type I LastRead 0 FirstWrite -1}
		v2gb2 {Type I LastRead 2 FirstWrite -1}
		v2gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln261_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln261_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln261_5 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type IO LastRead 3 FirstWrite 11}}
	large_gessm_v2_Pipeline_VITIS_LOOP_266_83 {
		zext_ln266_2 {Type I LastRead 0 FirstWrite -1}
		inc113_1_lcssa40 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type IO LastRead 3 FirstWrite 17}
		zext_ln265_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln266_3 {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 2 FirstWrite -1}
		li {Type I LastRead 1 FirstWrite -1}
		zext_ln265_2 {Type I LastRead 0 FirstWrite -1}
		inc113_136_out {Type O LastRead -1 FirstWrite 4}}
	large_gessm_v2_Pipeline_VITIS_LOOP_273_94 {
		zext_ln273_2 {Type I LastRead 0 FirstWrite -1}
		v2gx4 {Type O LastRead 6 FirstWrite 5}
		v2gx3 {Type I LastRead 2 FirstWrite -1}
		v2gx2 {Type O LastRead -1 FirstWrite 5}
		v2gx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln273_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln273_3 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 3 FirstWrite -1}
		x_val_csr {Type I LastRead 0 FirstWrite -1}}
	large_gessm_v2_Pipeline_VITIS_LOOP_257_55 {
		n {Type I LastRead 0 FirstWrite -1}
		w_2 {Type O LastRead -1 FirstWrite 0}}
	large_gessm_v2_Pipeline_VITIS_LOOP_261_66 {
		zext_ln261_7 {Type I LastRead 0 FirstWrite -1}
		v2gb2 {Type I LastRead 2 FirstWrite -1}
		v2gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln261_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln261_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln261_8 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type IO LastRead 3 FirstWrite 11}}
	large_gessm_v2_Pipeline_VITIS_LOOP_266_87 {
		zext_ln266_4 {Type I LastRead 0 FirstWrite -1}
		inc113_2_lcssa45 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type IO LastRead 3 FirstWrite 17}
		zext_ln265_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln266_5 {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 2 FirstWrite -1}
		li {Type I LastRead 1 FirstWrite -1}
		zext_ln265_4 {Type I LastRead 0 FirstWrite -1}
		inc113_241_out {Type O LastRead -1 FirstWrite 4}}
	large_gessm_v2_Pipeline_VITIS_LOOP_273_98 {
		zext_ln273_4 {Type I LastRead 0 FirstWrite -1}
		v2gx4 {Type O LastRead 6 FirstWrite 5}
		v2gx3 {Type I LastRead 2 FirstWrite -1}
		v2gx2 {Type O LastRead -1 FirstWrite 5}
		v2gx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln273_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln273_5 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 3 FirstWrite -1}
		x_val_csr {Type I LastRead 0 FirstWrite -1}}
	large_gessm_v2_Pipeline_VITIS_LOOP_257_59 {
		n {Type I LastRead 0 FirstWrite -1}
		w_3 {Type O LastRead -1 FirstWrite 0}}
	large_gessm_v2_Pipeline_VITIS_LOOP_261_610 {
		zext_ln261_10 {Type I LastRead 0 FirstWrite -1}
		v2gb2 {Type I LastRead 2 FirstWrite -1}
		v2gb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln261_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln261_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln261_11 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type IO LastRead 3 FirstWrite 11}}
	large_gessm_v2_Pipeline_VITIS_LOOP_266_811 {
		zext_ln266_6 {Type I LastRead 0 FirstWrite -1}
		inc113_3_lcssa50 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type IO LastRead 3 FirstWrite 17}
		zext_ln265_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln266_7 {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 2 FirstWrite -1}
		li {Type I LastRead 1 FirstWrite -1}
		zext_ln265_6 {Type I LastRead 0 FirstWrite -1}
		inc113_346_out {Type O LastRead -1 FirstWrite 4}}
	large_gessm_v2_Pipeline_VITIS_LOOP_273_912 {
		zext_ln273_6 {Type I LastRead 0 FirstWrite -1}
		v2gx4 {Type O LastRead 6 FirstWrite 5}
		v2gx3 {Type I LastRead 2 FirstWrite -1}
		v2gx2 {Type O LastRead -1 FirstWrite 5}
		v2gx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln273_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln273_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln273_7 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 3 FirstWrite -1}
		x_val_csr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v2gl0 { m_axi {  { m_axi_v2gl0_AWVALID VALID 1 1 }  { m_axi_v2gl0_AWREADY READY 0 1 }  { m_axi_v2gl0_AWADDR ADDR 1 64 }  { m_axi_v2gl0_AWID ID 1 1 }  { m_axi_v2gl0_AWLEN SIZE 1 8 }  { m_axi_v2gl0_AWSIZE BURST 1 3 }  { m_axi_v2gl0_AWBURST LOCK 1 2 }  { m_axi_v2gl0_AWLOCK CACHE 1 2 }  { m_axi_v2gl0_AWCACHE PROT 1 4 }  { m_axi_v2gl0_AWPROT QOS 1 3 }  { m_axi_v2gl0_AWQOS REGION 1 4 }  { m_axi_v2gl0_AWREGION USER 1 4 }  { m_axi_v2gl0_AWUSER DATA 1 1 }  { m_axi_v2gl0_WVALID VALID 1 1 }  { m_axi_v2gl0_WREADY READY 0 1 }  { m_axi_v2gl0_WDATA FIFONUM 1 32 }  { m_axi_v2gl0_WSTRB STRB 1 4 }  { m_axi_v2gl0_WLAST LAST 1 1 }  { m_axi_v2gl0_WID ID 1 1 }  { m_axi_v2gl0_WUSER DATA 1 1 }  { m_axi_v2gl0_ARVALID VALID 1 1 }  { m_axi_v2gl0_ARREADY READY 0 1 }  { m_axi_v2gl0_ARADDR ADDR 1 64 }  { m_axi_v2gl0_ARID ID 1 1 }  { m_axi_v2gl0_ARLEN SIZE 1 8 }  { m_axi_v2gl0_ARSIZE BURST 1 3 }  { m_axi_v2gl0_ARBURST LOCK 1 2 }  { m_axi_v2gl0_ARLOCK CACHE 1 2 }  { m_axi_v2gl0_ARCACHE PROT 1 4 }  { m_axi_v2gl0_ARPROT QOS 1 3 }  { m_axi_v2gl0_ARQOS REGION 1 4 }  { m_axi_v2gl0_ARREGION USER 1 4 }  { m_axi_v2gl0_ARUSER DATA 1 1 }  { m_axi_v2gl0_RVALID VALID 0 1 }  { m_axi_v2gl0_RREADY READY 1 1 }  { m_axi_v2gl0_RDATA FIFONUM 0 32 }  { m_axi_v2gl0_RLAST LAST 0 1 }  { m_axi_v2gl0_RID ID 0 1 }  { m_axi_v2gl0_RUSER DATA 0 1 }  { m_axi_v2gl0_RRESP RESP 0 2 }  { m_axi_v2gl0_BVALID VALID 0 1 }  { m_axi_v2gl0_BREADY READY 1 1 }  { m_axi_v2gl0_BRESP RESP 0 2 }  { m_axi_v2gl0_BID ID 0 1 }  { m_axi_v2gl0_BUSER DATA 0 1 } } }
	v2gl1 { m_axi {  { m_axi_v2gl1_AWVALID VALID 1 1 }  { m_axi_v2gl1_AWREADY READY 0 1 }  { m_axi_v2gl1_AWADDR ADDR 1 64 }  { m_axi_v2gl1_AWID ID 1 1 }  { m_axi_v2gl1_AWLEN SIZE 1 8 }  { m_axi_v2gl1_AWSIZE BURST 1 3 }  { m_axi_v2gl1_AWBURST LOCK 1 2 }  { m_axi_v2gl1_AWLOCK CACHE 1 2 }  { m_axi_v2gl1_AWCACHE PROT 1 4 }  { m_axi_v2gl1_AWPROT QOS 1 3 }  { m_axi_v2gl1_AWQOS REGION 1 4 }  { m_axi_v2gl1_AWREGION USER 1 4 }  { m_axi_v2gl1_AWUSER DATA 1 1 }  { m_axi_v2gl1_WVALID VALID 1 1 }  { m_axi_v2gl1_WREADY READY 0 1 }  { m_axi_v2gl1_WDATA FIFONUM 1 32 }  { m_axi_v2gl1_WSTRB STRB 1 4 }  { m_axi_v2gl1_WLAST LAST 1 1 }  { m_axi_v2gl1_WID ID 1 1 }  { m_axi_v2gl1_WUSER DATA 1 1 }  { m_axi_v2gl1_ARVALID VALID 1 1 }  { m_axi_v2gl1_ARREADY READY 0 1 }  { m_axi_v2gl1_ARADDR ADDR 1 64 }  { m_axi_v2gl1_ARID ID 1 1 }  { m_axi_v2gl1_ARLEN SIZE 1 8 }  { m_axi_v2gl1_ARSIZE BURST 1 3 }  { m_axi_v2gl1_ARBURST LOCK 1 2 }  { m_axi_v2gl1_ARLOCK CACHE 1 2 }  { m_axi_v2gl1_ARCACHE PROT 1 4 }  { m_axi_v2gl1_ARPROT QOS 1 3 }  { m_axi_v2gl1_ARQOS REGION 1 4 }  { m_axi_v2gl1_ARREGION USER 1 4 }  { m_axi_v2gl1_ARUSER DATA 1 1 }  { m_axi_v2gl1_RVALID VALID 0 1 }  { m_axi_v2gl1_RREADY READY 1 1 }  { m_axi_v2gl1_RDATA FIFONUM 0 32 }  { m_axi_v2gl1_RLAST LAST 0 1 }  { m_axi_v2gl1_RID ID 0 1 }  { m_axi_v2gl1_RUSER DATA 0 1 }  { m_axi_v2gl1_RRESP RESP 0 2 }  { m_axi_v2gl1_BVALID VALID 0 1 }  { m_axi_v2gl1_BREADY READY 1 1 }  { m_axi_v2gl1_BRESP RESP 0 2 }  { m_axi_v2gl1_BID ID 0 1 }  { m_axi_v2gl1_BUSER DATA 0 1 } } }
	v2gl2 { m_axi {  { m_axi_v2gl2_AWVALID VALID 1 1 }  { m_axi_v2gl2_AWREADY READY 0 1 }  { m_axi_v2gl2_AWADDR ADDR 1 64 }  { m_axi_v2gl2_AWID ID 1 1 }  { m_axi_v2gl2_AWLEN SIZE 1 8 }  { m_axi_v2gl2_AWSIZE BURST 1 3 }  { m_axi_v2gl2_AWBURST LOCK 1 2 }  { m_axi_v2gl2_AWLOCK CACHE 1 2 }  { m_axi_v2gl2_AWCACHE PROT 1 4 }  { m_axi_v2gl2_AWPROT QOS 1 3 }  { m_axi_v2gl2_AWQOS REGION 1 4 }  { m_axi_v2gl2_AWREGION USER 1 4 }  { m_axi_v2gl2_AWUSER DATA 1 1 }  { m_axi_v2gl2_WVALID VALID 1 1 }  { m_axi_v2gl2_WREADY READY 0 1 }  { m_axi_v2gl2_WDATA FIFONUM 1 32 }  { m_axi_v2gl2_WSTRB STRB 1 4 }  { m_axi_v2gl2_WLAST LAST 1 1 }  { m_axi_v2gl2_WID ID 1 1 }  { m_axi_v2gl2_WUSER DATA 1 1 }  { m_axi_v2gl2_ARVALID VALID 1 1 }  { m_axi_v2gl2_ARREADY READY 0 1 }  { m_axi_v2gl2_ARADDR ADDR 1 64 }  { m_axi_v2gl2_ARID ID 1 1 }  { m_axi_v2gl2_ARLEN SIZE 1 8 }  { m_axi_v2gl2_ARSIZE BURST 1 3 }  { m_axi_v2gl2_ARBURST LOCK 1 2 }  { m_axi_v2gl2_ARLOCK CACHE 1 2 }  { m_axi_v2gl2_ARCACHE PROT 1 4 }  { m_axi_v2gl2_ARPROT QOS 1 3 }  { m_axi_v2gl2_ARQOS REGION 1 4 }  { m_axi_v2gl2_ARREGION USER 1 4 }  { m_axi_v2gl2_ARUSER DATA 1 1 }  { m_axi_v2gl2_RVALID VALID 0 1 }  { m_axi_v2gl2_RREADY READY 1 1 }  { m_axi_v2gl2_RDATA FIFONUM 0 32 }  { m_axi_v2gl2_RLAST LAST 0 1 }  { m_axi_v2gl2_RID ID 0 1 }  { m_axi_v2gl2_RUSER DATA 0 1 }  { m_axi_v2gl2_RRESP RESP 0 2 }  { m_axi_v2gl2_BVALID VALID 0 1 }  { m_axi_v2gl2_BREADY READY 1 1 }  { m_axi_v2gl2_BRESP RESP 0 2 }  { m_axi_v2gl2_BID ID 0 1 }  { m_axi_v2gl2_BUSER DATA 0 1 } } }
	v2gb0 { m_axi {  { m_axi_v2gb0_AWVALID VALID 1 1 }  { m_axi_v2gb0_AWREADY READY 0 1 }  { m_axi_v2gb0_AWADDR ADDR 1 64 }  { m_axi_v2gb0_AWID ID 1 1 }  { m_axi_v2gb0_AWLEN SIZE 1 8 }  { m_axi_v2gb0_AWSIZE BURST 1 3 }  { m_axi_v2gb0_AWBURST LOCK 1 2 }  { m_axi_v2gb0_AWLOCK CACHE 1 2 }  { m_axi_v2gb0_AWCACHE PROT 1 4 }  { m_axi_v2gb0_AWPROT QOS 1 3 }  { m_axi_v2gb0_AWQOS REGION 1 4 }  { m_axi_v2gb0_AWREGION USER 1 4 }  { m_axi_v2gb0_AWUSER DATA 1 1 }  { m_axi_v2gb0_WVALID VALID 1 1 }  { m_axi_v2gb0_WREADY READY 0 1 }  { m_axi_v2gb0_WDATA FIFONUM 1 32 }  { m_axi_v2gb0_WSTRB STRB 1 4 }  { m_axi_v2gb0_WLAST LAST 1 1 }  { m_axi_v2gb0_WID ID 1 1 }  { m_axi_v2gb0_WUSER DATA 1 1 }  { m_axi_v2gb0_ARVALID VALID 1 1 }  { m_axi_v2gb0_ARREADY READY 0 1 }  { m_axi_v2gb0_ARADDR ADDR 1 64 }  { m_axi_v2gb0_ARID ID 1 1 }  { m_axi_v2gb0_ARLEN SIZE 1 8 }  { m_axi_v2gb0_ARSIZE BURST 1 3 }  { m_axi_v2gb0_ARBURST LOCK 1 2 }  { m_axi_v2gb0_ARLOCK CACHE 1 2 }  { m_axi_v2gb0_ARCACHE PROT 1 4 }  { m_axi_v2gb0_ARPROT QOS 1 3 }  { m_axi_v2gb0_ARQOS REGION 1 4 }  { m_axi_v2gb0_ARREGION USER 1 4 }  { m_axi_v2gb0_ARUSER DATA 1 1 }  { m_axi_v2gb0_RVALID VALID 0 1 }  { m_axi_v2gb0_RREADY READY 1 1 }  { m_axi_v2gb0_RDATA FIFONUM 0 32 }  { m_axi_v2gb0_RLAST LAST 0 1 }  { m_axi_v2gb0_RID ID 0 1 }  { m_axi_v2gb0_RUSER DATA 0 1 }  { m_axi_v2gb0_RRESP RESP 0 2 }  { m_axi_v2gb0_BVALID VALID 0 1 }  { m_axi_v2gb0_BREADY READY 1 1 }  { m_axi_v2gb0_BRESP RESP 0 2 }  { m_axi_v2gb0_BID ID 0 1 }  { m_axi_v2gb0_BUSER DATA 0 1 } } }
	v2gb1 { m_axi {  { m_axi_v2gb1_AWVALID VALID 1 1 }  { m_axi_v2gb1_AWREADY READY 0 1 }  { m_axi_v2gb1_AWADDR ADDR 1 64 }  { m_axi_v2gb1_AWID ID 1 1 }  { m_axi_v2gb1_AWLEN SIZE 1 8 }  { m_axi_v2gb1_AWSIZE BURST 1 3 }  { m_axi_v2gb1_AWBURST LOCK 1 2 }  { m_axi_v2gb1_AWLOCK CACHE 1 2 }  { m_axi_v2gb1_AWCACHE PROT 1 4 }  { m_axi_v2gb1_AWPROT QOS 1 3 }  { m_axi_v2gb1_AWQOS REGION 1 4 }  { m_axi_v2gb1_AWREGION USER 1 4 }  { m_axi_v2gb1_AWUSER DATA 1 1 }  { m_axi_v2gb1_WVALID VALID 1 1 }  { m_axi_v2gb1_WREADY READY 0 1 }  { m_axi_v2gb1_WDATA FIFONUM 1 32 }  { m_axi_v2gb1_WSTRB STRB 1 4 }  { m_axi_v2gb1_WLAST LAST 1 1 }  { m_axi_v2gb1_WID ID 1 1 }  { m_axi_v2gb1_WUSER DATA 1 1 }  { m_axi_v2gb1_ARVALID VALID 1 1 }  { m_axi_v2gb1_ARREADY READY 0 1 }  { m_axi_v2gb1_ARADDR ADDR 1 64 }  { m_axi_v2gb1_ARID ID 1 1 }  { m_axi_v2gb1_ARLEN SIZE 1 8 }  { m_axi_v2gb1_ARSIZE BURST 1 3 }  { m_axi_v2gb1_ARBURST LOCK 1 2 }  { m_axi_v2gb1_ARLOCK CACHE 1 2 }  { m_axi_v2gb1_ARCACHE PROT 1 4 }  { m_axi_v2gb1_ARPROT QOS 1 3 }  { m_axi_v2gb1_ARQOS REGION 1 4 }  { m_axi_v2gb1_ARREGION USER 1 4 }  { m_axi_v2gb1_ARUSER DATA 1 1 }  { m_axi_v2gb1_RVALID VALID 0 1 }  { m_axi_v2gb1_RREADY READY 1 1 }  { m_axi_v2gb1_RDATA FIFONUM 0 32 }  { m_axi_v2gb1_RLAST LAST 0 1 }  { m_axi_v2gb1_RID ID 0 1 }  { m_axi_v2gb1_RUSER DATA 0 1 }  { m_axi_v2gb1_RRESP RESP 0 2 }  { m_axi_v2gb1_BVALID VALID 0 1 }  { m_axi_v2gb1_BREADY READY 1 1 }  { m_axi_v2gb1_BRESP RESP 0 2 }  { m_axi_v2gb1_BID ID 0 1 }  { m_axi_v2gb1_BUSER DATA 0 1 } } }
	v2gb2 { m_axi {  { m_axi_v2gb2_AWVALID VALID 1 1 }  { m_axi_v2gb2_AWREADY READY 0 1 }  { m_axi_v2gb2_AWADDR ADDR 1 64 }  { m_axi_v2gb2_AWID ID 1 1 }  { m_axi_v2gb2_AWLEN SIZE 1 8 }  { m_axi_v2gb2_AWSIZE BURST 1 3 }  { m_axi_v2gb2_AWBURST LOCK 1 2 }  { m_axi_v2gb2_AWLOCK CACHE 1 2 }  { m_axi_v2gb2_AWCACHE PROT 1 4 }  { m_axi_v2gb2_AWPROT QOS 1 3 }  { m_axi_v2gb2_AWQOS REGION 1 4 }  { m_axi_v2gb2_AWREGION USER 1 4 }  { m_axi_v2gb2_AWUSER DATA 1 1 }  { m_axi_v2gb2_WVALID VALID 1 1 }  { m_axi_v2gb2_WREADY READY 0 1 }  { m_axi_v2gb2_WDATA FIFONUM 1 32 }  { m_axi_v2gb2_WSTRB STRB 1 4 }  { m_axi_v2gb2_WLAST LAST 1 1 }  { m_axi_v2gb2_WID ID 1 1 }  { m_axi_v2gb2_WUSER DATA 1 1 }  { m_axi_v2gb2_ARVALID VALID 1 1 }  { m_axi_v2gb2_ARREADY READY 0 1 }  { m_axi_v2gb2_ARADDR ADDR 1 64 }  { m_axi_v2gb2_ARID ID 1 1 }  { m_axi_v2gb2_ARLEN SIZE 1 8 }  { m_axi_v2gb2_ARSIZE BURST 1 3 }  { m_axi_v2gb2_ARBURST LOCK 1 2 }  { m_axi_v2gb2_ARLOCK CACHE 1 2 }  { m_axi_v2gb2_ARCACHE PROT 1 4 }  { m_axi_v2gb2_ARPROT QOS 1 3 }  { m_axi_v2gb2_ARQOS REGION 1 4 }  { m_axi_v2gb2_ARREGION USER 1 4 }  { m_axi_v2gb2_ARUSER DATA 1 1 }  { m_axi_v2gb2_RVALID VALID 0 1 }  { m_axi_v2gb2_RREADY READY 1 1 }  { m_axi_v2gb2_RDATA FIFONUM 0 32 }  { m_axi_v2gb2_RLAST LAST 0 1 }  { m_axi_v2gb2_RID ID 0 1 }  { m_axi_v2gb2_RUSER DATA 0 1 }  { m_axi_v2gb2_RRESP RESP 0 2 }  { m_axi_v2gb2_BVALID VALID 0 1 }  { m_axi_v2gb2_BREADY READY 1 1 }  { m_axi_v2gb2_BRESP RESP 0 2 }  { m_axi_v2gb2_BID ID 0 1 }  { m_axi_v2gb2_BUSER DATA 0 1 } } }
	v2gx0 { m_axi {  { m_axi_v2gx0_AWVALID VALID 1 1 }  { m_axi_v2gx0_AWREADY READY 0 1 }  { m_axi_v2gx0_AWADDR ADDR 1 64 }  { m_axi_v2gx0_AWID ID 1 1 }  { m_axi_v2gx0_AWLEN SIZE 1 8 }  { m_axi_v2gx0_AWSIZE BURST 1 3 }  { m_axi_v2gx0_AWBURST LOCK 1 2 }  { m_axi_v2gx0_AWLOCK CACHE 1 2 }  { m_axi_v2gx0_AWCACHE PROT 1 4 }  { m_axi_v2gx0_AWPROT QOS 1 3 }  { m_axi_v2gx0_AWQOS REGION 1 4 }  { m_axi_v2gx0_AWREGION USER 1 4 }  { m_axi_v2gx0_AWUSER DATA 1 1 }  { m_axi_v2gx0_WVALID VALID 1 1 }  { m_axi_v2gx0_WREADY READY 0 1 }  { m_axi_v2gx0_WDATA FIFONUM 1 32 }  { m_axi_v2gx0_WSTRB STRB 1 4 }  { m_axi_v2gx0_WLAST LAST 1 1 }  { m_axi_v2gx0_WID ID 1 1 }  { m_axi_v2gx0_WUSER DATA 1 1 }  { m_axi_v2gx0_ARVALID VALID 1 1 }  { m_axi_v2gx0_ARREADY READY 0 1 }  { m_axi_v2gx0_ARADDR ADDR 1 64 }  { m_axi_v2gx0_ARID ID 1 1 }  { m_axi_v2gx0_ARLEN SIZE 1 8 }  { m_axi_v2gx0_ARSIZE BURST 1 3 }  { m_axi_v2gx0_ARBURST LOCK 1 2 }  { m_axi_v2gx0_ARLOCK CACHE 1 2 }  { m_axi_v2gx0_ARCACHE PROT 1 4 }  { m_axi_v2gx0_ARPROT QOS 1 3 }  { m_axi_v2gx0_ARQOS REGION 1 4 }  { m_axi_v2gx0_ARREGION USER 1 4 }  { m_axi_v2gx0_ARUSER DATA 1 1 }  { m_axi_v2gx0_RVALID VALID 0 1 }  { m_axi_v2gx0_RREADY READY 1 1 }  { m_axi_v2gx0_RDATA FIFONUM 0 32 }  { m_axi_v2gx0_RLAST LAST 0 1 }  { m_axi_v2gx0_RID ID 0 1 }  { m_axi_v2gx0_RUSER DATA 0 1 }  { m_axi_v2gx0_RRESP RESP 0 2 }  { m_axi_v2gx0_BVALID VALID 0 1 }  { m_axi_v2gx0_BREADY READY 1 1 }  { m_axi_v2gx0_BRESP RESP 0 2 }  { m_axi_v2gx0_BID ID 0 1 }  { m_axi_v2gx0_BUSER DATA 0 1 } } }
	v2gx1 { m_axi {  { m_axi_v2gx1_AWVALID VALID 1 1 }  { m_axi_v2gx1_AWREADY READY 0 1 }  { m_axi_v2gx1_AWADDR ADDR 1 64 }  { m_axi_v2gx1_AWID ID 1 1 }  { m_axi_v2gx1_AWLEN SIZE 1 8 }  { m_axi_v2gx1_AWSIZE BURST 1 3 }  { m_axi_v2gx1_AWBURST LOCK 1 2 }  { m_axi_v2gx1_AWLOCK CACHE 1 2 }  { m_axi_v2gx1_AWCACHE PROT 1 4 }  { m_axi_v2gx1_AWPROT QOS 1 3 }  { m_axi_v2gx1_AWQOS REGION 1 4 }  { m_axi_v2gx1_AWREGION USER 1 4 }  { m_axi_v2gx1_AWUSER DATA 1 1 }  { m_axi_v2gx1_WVALID VALID 1 1 }  { m_axi_v2gx1_WREADY READY 0 1 }  { m_axi_v2gx1_WDATA FIFONUM 1 32 }  { m_axi_v2gx1_WSTRB STRB 1 4 }  { m_axi_v2gx1_WLAST LAST 1 1 }  { m_axi_v2gx1_WID ID 1 1 }  { m_axi_v2gx1_WUSER DATA 1 1 }  { m_axi_v2gx1_ARVALID VALID 1 1 }  { m_axi_v2gx1_ARREADY READY 0 1 }  { m_axi_v2gx1_ARADDR ADDR 1 64 }  { m_axi_v2gx1_ARID ID 1 1 }  { m_axi_v2gx1_ARLEN SIZE 1 8 }  { m_axi_v2gx1_ARSIZE BURST 1 3 }  { m_axi_v2gx1_ARBURST LOCK 1 2 }  { m_axi_v2gx1_ARLOCK CACHE 1 2 }  { m_axi_v2gx1_ARCACHE PROT 1 4 }  { m_axi_v2gx1_ARPROT QOS 1 3 }  { m_axi_v2gx1_ARQOS REGION 1 4 }  { m_axi_v2gx1_ARREGION USER 1 4 }  { m_axi_v2gx1_ARUSER DATA 1 1 }  { m_axi_v2gx1_RVALID VALID 0 1 }  { m_axi_v2gx1_RREADY READY 1 1 }  { m_axi_v2gx1_RDATA FIFONUM 0 32 }  { m_axi_v2gx1_RLAST LAST 0 1 }  { m_axi_v2gx1_RID ID 0 1 }  { m_axi_v2gx1_RUSER DATA 0 1 }  { m_axi_v2gx1_RRESP RESP 0 2 }  { m_axi_v2gx1_BVALID VALID 0 1 }  { m_axi_v2gx1_BREADY READY 1 1 }  { m_axi_v2gx1_BRESP RESP 0 2 }  { m_axi_v2gx1_BID ID 0 1 }  { m_axi_v2gx1_BUSER DATA 0 1 } } }
	v2gx2 { m_axi {  { m_axi_v2gx2_AWVALID VALID 1 1 }  { m_axi_v2gx2_AWREADY READY 0 1 }  { m_axi_v2gx2_AWADDR ADDR 1 64 }  { m_axi_v2gx2_AWID ID 1 1 }  { m_axi_v2gx2_AWLEN SIZE 1 8 }  { m_axi_v2gx2_AWSIZE BURST 1 3 }  { m_axi_v2gx2_AWBURST LOCK 1 2 }  { m_axi_v2gx2_AWLOCK CACHE 1 2 }  { m_axi_v2gx2_AWCACHE PROT 1 4 }  { m_axi_v2gx2_AWPROT QOS 1 3 }  { m_axi_v2gx2_AWQOS REGION 1 4 }  { m_axi_v2gx2_AWREGION USER 1 4 }  { m_axi_v2gx2_AWUSER DATA 1 1 }  { m_axi_v2gx2_WVALID VALID 1 1 }  { m_axi_v2gx2_WREADY READY 0 1 }  { m_axi_v2gx2_WDATA FIFONUM 1 32 }  { m_axi_v2gx2_WSTRB STRB 1 4 }  { m_axi_v2gx2_WLAST LAST 1 1 }  { m_axi_v2gx2_WID ID 1 1 }  { m_axi_v2gx2_WUSER DATA 1 1 }  { m_axi_v2gx2_ARVALID VALID 1 1 }  { m_axi_v2gx2_ARREADY READY 0 1 }  { m_axi_v2gx2_ARADDR ADDR 1 64 }  { m_axi_v2gx2_ARID ID 1 1 }  { m_axi_v2gx2_ARLEN SIZE 1 8 }  { m_axi_v2gx2_ARSIZE BURST 1 3 }  { m_axi_v2gx2_ARBURST LOCK 1 2 }  { m_axi_v2gx2_ARLOCK CACHE 1 2 }  { m_axi_v2gx2_ARCACHE PROT 1 4 }  { m_axi_v2gx2_ARPROT QOS 1 3 }  { m_axi_v2gx2_ARQOS REGION 1 4 }  { m_axi_v2gx2_ARREGION USER 1 4 }  { m_axi_v2gx2_ARUSER DATA 1 1 }  { m_axi_v2gx2_RVALID VALID 0 1 }  { m_axi_v2gx2_RREADY READY 1 1 }  { m_axi_v2gx2_RDATA FIFONUM 0 32 }  { m_axi_v2gx2_RLAST LAST 0 1 }  { m_axi_v2gx2_RID ID 0 1 }  { m_axi_v2gx2_RUSER DATA 0 1 }  { m_axi_v2gx2_RRESP RESP 0 2 }  { m_axi_v2gx2_BVALID VALID 0 1 }  { m_axi_v2gx2_BREADY READY 1 1 }  { m_axi_v2gx2_BRESP RESP 0 2 }  { m_axi_v2gx2_BID ID 0 1 }  { m_axi_v2gx2_BUSER DATA 0 1 } } }
	v2gx3 { m_axi {  { m_axi_v2gx3_AWVALID VALID 1 1 }  { m_axi_v2gx3_AWREADY READY 0 1 }  { m_axi_v2gx3_AWADDR ADDR 1 64 }  { m_axi_v2gx3_AWID ID 1 1 }  { m_axi_v2gx3_AWLEN SIZE 1 8 }  { m_axi_v2gx3_AWSIZE BURST 1 3 }  { m_axi_v2gx3_AWBURST LOCK 1 2 }  { m_axi_v2gx3_AWLOCK CACHE 1 2 }  { m_axi_v2gx3_AWCACHE PROT 1 4 }  { m_axi_v2gx3_AWPROT QOS 1 3 }  { m_axi_v2gx3_AWQOS REGION 1 4 }  { m_axi_v2gx3_AWREGION USER 1 4 }  { m_axi_v2gx3_AWUSER DATA 1 1 }  { m_axi_v2gx3_WVALID VALID 1 1 }  { m_axi_v2gx3_WREADY READY 0 1 }  { m_axi_v2gx3_WDATA FIFONUM 1 32 }  { m_axi_v2gx3_WSTRB STRB 1 4 }  { m_axi_v2gx3_WLAST LAST 1 1 }  { m_axi_v2gx3_WID ID 1 1 }  { m_axi_v2gx3_WUSER DATA 1 1 }  { m_axi_v2gx3_ARVALID VALID 1 1 }  { m_axi_v2gx3_ARREADY READY 0 1 }  { m_axi_v2gx3_ARADDR ADDR 1 64 }  { m_axi_v2gx3_ARID ID 1 1 }  { m_axi_v2gx3_ARLEN SIZE 1 8 }  { m_axi_v2gx3_ARSIZE BURST 1 3 }  { m_axi_v2gx3_ARBURST LOCK 1 2 }  { m_axi_v2gx3_ARLOCK CACHE 1 2 }  { m_axi_v2gx3_ARCACHE PROT 1 4 }  { m_axi_v2gx3_ARPROT QOS 1 3 }  { m_axi_v2gx3_ARQOS REGION 1 4 }  { m_axi_v2gx3_ARREGION USER 1 4 }  { m_axi_v2gx3_ARUSER DATA 1 1 }  { m_axi_v2gx3_RVALID VALID 0 1 }  { m_axi_v2gx3_RREADY READY 1 1 }  { m_axi_v2gx3_RDATA FIFONUM 0 32 }  { m_axi_v2gx3_RLAST LAST 0 1 }  { m_axi_v2gx3_RID ID 0 1 }  { m_axi_v2gx3_RUSER DATA 0 1 }  { m_axi_v2gx3_RRESP RESP 0 2 }  { m_axi_v2gx3_BVALID VALID 0 1 }  { m_axi_v2gx3_BREADY READY 1 1 }  { m_axi_v2gx3_BRESP RESP 0 2 }  { m_axi_v2gx3_BID ID 0 1 }  { m_axi_v2gx3_BUSER DATA 0 1 } } }
	v2gx4 { m_axi {  { m_axi_v2gx4_AWVALID VALID 1 1 }  { m_axi_v2gx4_AWREADY READY 0 1 }  { m_axi_v2gx4_AWADDR ADDR 1 64 }  { m_axi_v2gx4_AWID ID 1 1 }  { m_axi_v2gx4_AWLEN SIZE 1 8 }  { m_axi_v2gx4_AWSIZE BURST 1 3 }  { m_axi_v2gx4_AWBURST LOCK 1 2 }  { m_axi_v2gx4_AWLOCK CACHE 1 2 }  { m_axi_v2gx4_AWCACHE PROT 1 4 }  { m_axi_v2gx4_AWPROT QOS 1 3 }  { m_axi_v2gx4_AWQOS REGION 1 4 }  { m_axi_v2gx4_AWREGION USER 1 4 }  { m_axi_v2gx4_AWUSER DATA 1 1 }  { m_axi_v2gx4_WVALID VALID 1 1 }  { m_axi_v2gx4_WREADY READY 0 1 }  { m_axi_v2gx4_WDATA FIFONUM 1 32 }  { m_axi_v2gx4_WSTRB STRB 1 4 }  { m_axi_v2gx4_WLAST LAST 1 1 }  { m_axi_v2gx4_WID ID 1 1 }  { m_axi_v2gx4_WUSER DATA 1 1 }  { m_axi_v2gx4_ARVALID VALID 1 1 }  { m_axi_v2gx4_ARREADY READY 0 1 }  { m_axi_v2gx4_ARADDR ADDR 1 64 }  { m_axi_v2gx4_ARID ID 1 1 }  { m_axi_v2gx4_ARLEN SIZE 1 8 }  { m_axi_v2gx4_ARSIZE BURST 1 3 }  { m_axi_v2gx4_ARBURST LOCK 1 2 }  { m_axi_v2gx4_ARLOCK CACHE 1 2 }  { m_axi_v2gx4_ARCACHE PROT 1 4 }  { m_axi_v2gx4_ARPROT QOS 1 3 }  { m_axi_v2gx4_ARQOS REGION 1 4 }  { m_axi_v2gx4_ARREGION USER 1 4 }  { m_axi_v2gx4_ARUSER DATA 1 1 }  { m_axi_v2gx4_RVALID VALID 0 1 }  { m_axi_v2gx4_RREADY READY 1 1 }  { m_axi_v2gx4_RDATA FIFONUM 0 32 }  { m_axi_v2gx4_RLAST LAST 0 1 }  { m_axi_v2gx4_RID ID 0 1 }  { m_axi_v2gx4_RUSER DATA 0 1 }  { m_axi_v2gx4_RRESP RESP 0 2 }  { m_axi_v2gx4_BVALID VALID 0 1 }  { m_axi_v2gx4_BREADY READY 1 1 }  { m_axi_v2gx4_BRESP RESP 0 2 }  { m_axi_v2gx4_BID ID 0 1 }  { m_axi_v2gx4_BUSER DATA 0 1 } } }
	v2ga0 { m_axi {  { m_axi_v2ga0_AWVALID VALID 1 1 }  { m_axi_v2ga0_AWREADY READY 0 1 }  { m_axi_v2ga0_AWADDR ADDR 1 64 }  { m_axi_v2ga0_AWID ID 1 1 }  { m_axi_v2ga0_AWLEN SIZE 1 8 }  { m_axi_v2ga0_AWSIZE BURST 1 3 }  { m_axi_v2ga0_AWBURST LOCK 1 2 }  { m_axi_v2ga0_AWLOCK CACHE 1 2 }  { m_axi_v2ga0_AWCACHE PROT 1 4 }  { m_axi_v2ga0_AWPROT QOS 1 3 }  { m_axi_v2ga0_AWQOS REGION 1 4 }  { m_axi_v2ga0_AWREGION USER 1 4 }  { m_axi_v2ga0_AWUSER DATA 1 1 }  { m_axi_v2ga0_WVALID VALID 1 1 }  { m_axi_v2ga0_WREADY READY 0 1 }  { m_axi_v2ga0_WDATA FIFONUM 1 32 }  { m_axi_v2ga0_WSTRB STRB 1 4 }  { m_axi_v2ga0_WLAST LAST 1 1 }  { m_axi_v2ga0_WID ID 1 1 }  { m_axi_v2ga0_WUSER DATA 1 1 }  { m_axi_v2ga0_ARVALID VALID 1 1 }  { m_axi_v2ga0_ARREADY READY 0 1 }  { m_axi_v2ga0_ARADDR ADDR 1 64 }  { m_axi_v2ga0_ARID ID 1 1 }  { m_axi_v2ga0_ARLEN SIZE 1 8 }  { m_axi_v2ga0_ARSIZE BURST 1 3 }  { m_axi_v2ga0_ARBURST LOCK 1 2 }  { m_axi_v2ga0_ARLOCK CACHE 1 2 }  { m_axi_v2ga0_ARCACHE PROT 1 4 }  { m_axi_v2ga0_ARPROT QOS 1 3 }  { m_axi_v2ga0_ARQOS REGION 1 4 }  { m_axi_v2ga0_ARREGION USER 1 4 }  { m_axi_v2ga0_ARUSER DATA 1 1 }  { m_axi_v2ga0_RVALID VALID 0 1 }  { m_axi_v2ga0_RREADY READY 1 1 }  { m_axi_v2ga0_RDATA FIFONUM 0 32 }  { m_axi_v2ga0_RLAST LAST 0 1 }  { m_axi_v2ga0_RID ID 0 1 }  { m_axi_v2ga0_RUSER DATA 0 1 }  { m_axi_v2ga0_RRESP RESP 0 2 }  { m_axi_v2ga0_BVALID VALID 0 1 }  { m_axi_v2ga0_BREADY READY 1 1 }  { m_axi_v2ga0_BRESP RESP 0 2 }  { m_axi_v2ga0_BID ID 0 1 }  { m_axi_v2ga0_BUSER DATA 0 1 } } }
	v2gw0 { m_axi {  { m_axi_v2gw0_AWVALID VALID 1 1 }  { m_axi_v2gw0_AWREADY READY 0 1 }  { m_axi_v2gw0_AWADDR ADDR 1 64 }  { m_axi_v2gw0_AWID ID 1 1 }  { m_axi_v2gw0_AWLEN SIZE 1 8 }  { m_axi_v2gw0_AWSIZE BURST 1 3 }  { m_axi_v2gw0_AWBURST LOCK 1 2 }  { m_axi_v2gw0_AWLOCK CACHE 1 2 }  { m_axi_v2gw0_AWCACHE PROT 1 4 }  { m_axi_v2gw0_AWPROT QOS 1 3 }  { m_axi_v2gw0_AWQOS REGION 1 4 }  { m_axi_v2gw0_AWREGION USER 1 4 }  { m_axi_v2gw0_AWUSER DATA 1 1 }  { m_axi_v2gw0_WVALID VALID 1 1 }  { m_axi_v2gw0_WREADY READY 0 1 }  { m_axi_v2gw0_WDATA FIFONUM 1 32 }  { m_axi_v2gw0_WSTRB STRB 1 4 }  { m_axi_v2gw0_WLAST LAST 1 1 }  { m_axi_v2gw0_WID ID 1 1 }  { m_axi_v2gw0_WUSER DATA 1 1 }  { m_axi_v2gw0_ARVALID VALID 1 1 }  { m_axi_v2gw0_ARREADY READY 0 1 }  { m_axi_v2gw0_ARADDR ADDR 1 64 }  { m_axi_v2gw0_ARID ID 1 1 }  { m_axi_v2gw0_ARLEN SIZE 1 8 }  { m_axi_v2gw0_ARSIZE BURST 1 3 }  { m_axi_v2gw0_ARBURST LOCK 1 2 }  { m_axi_v2gw0_ARLOCK CACHE 1 2 }  { m_axi_v2gw0_ARCACHE PROT 1 4 }  { m_axi_v2gw0_ARPROT QOS 1 3 }  { m_axi_v2gw0_ARQOS REGION 1 4 }  { m_axi_v2gw0_ARREGION USER 1 4 }  { m_axi_v2gw0_ARUSER DATA 1 1 }  { m_axi_v2gw0_RVALID VALID 0 1 }  { m_axi_v2gw0_RREADY READY 1 1 }  { m_axi_v2gw0_RDATA FIFONUM 0 32 }  { m_axi_v2gw0_RLAST LAST 0 1 }  { m_axi_v2gw0_RID ID 0 1 }  { m_axi_v2gw0_RUSER DATA 0 1 }  { m_axi_v2gw0_RRESP RESP 0 2 }  { m_axi_v2gw0_BVALID VALID 0 1 }  { m_axi_v2gw0_BREADY READY 1 1 }  { m_axi_v2gw0_BRESP RESP 0 2 }  { m_axi_v2gw0_BID ID 0 1 }  { m_axi_v2gw0_BUSER DATA 0 1 } } }
	active_count { ap_none {  { active_count in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	status { ap_vld {  { status out_data 1 32 }  { status_ap_vld out_vld 1 1 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict v2gl0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gl1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gl2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gb0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gb1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gb2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gx0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gx1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gx2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict v2gx3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gx4 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict v2ga0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v2gw0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ v2gl0 1 }
	{ v2gl1 1 }
	{ v2gl2 1 }
	{ v2gb0 1 }
	{ v2gb1 1 }
	{ v2gb2 1 }
	{ v2gx0 1 }
	{ v2gx1 1 }
	{ v2gx2 1 }
	{ v2gx3 1 }
	{ v2gx4 1 }
	{ v2ga0 1 }
	{ v2gw0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ v2gl0 1 }
	{ v2gl1 1 }
	{ v2gl2 1 }
	{ v2gb0 1 }
	{ v2gb1 1 }
	{ v2gb2 1 }
	{ v2gx0 1 }
	{ v2gx1 1 }
	{ v2gx2 1 }
	{ v2gx3 1 }
	{ v2gx4 1 }
	{ v2ga0 1 }
	{ v2gw0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
