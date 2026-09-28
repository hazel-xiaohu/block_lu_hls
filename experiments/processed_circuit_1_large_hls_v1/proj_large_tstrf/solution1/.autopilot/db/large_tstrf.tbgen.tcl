set moduleName large_tstrf
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
set C_modelName {large_tstrf}
set C_modelType { void 0 }
set C_modelArgList {
	{ tu0 int 32 regular {axi_master 0}  }
	{ tu1 int 32 regular {axi_master 0}  }
	{ tu2 int 32 regular {axi_master 0}  }
	{ tu3 int 32 regular {axi_master 0}  }
	{ tu4 int 32 regular {axi_master 0}  }
	{ tb0 int 32 regular {axi_master 0}  }
	{ tb1 int 32 regular {axi_master 0}  }
	{ tb2 int 32 regular {axi_master 0}  }
	{ tx0 int 32 regular {axi_master 0}  }
	{ tx1 int 32 regular {axi_master 0}  }
	{ tx2 int 32 regular {axi_master 1}  }
	{ ta0 int 32 regular {axi_master 0}  }
	{ tw0 int 32 regular {axi_master 2}  }
	{ u_col_ptr int 64 regular {axi_slave 0}  }
	{ u_row_idx int 64 regular {axi_slave 0}  }
	{ u_csr_val int 64 regular {axi_slave 0}  }
	{ u_csc_to_csr int 64 regular {axi_slave 0}  }
	{ u_diag_pos int 64 regular {axi_slave 0}  }
	{ b_ptr int 64 regular {axi_slave 0}  }
	{ b_idx int 64 regular {axi_slave 0}  }
	{ b_val int 64 regular {axi_slave 0}  }
	{ x_ptr int 64 regular {axi_slave 0}  }
	{ x_idx int 64 regular {axi_slave 0}  }
	{ x_val int 64 regular {axi_slave 0}  }
	{ active_rows int 64 regular {axi_slave 0}  }
	{ active_count int 32 regular  }
	{ work int 64 regular {axi_slave 0}  }
	{ n int 32 regular  }
	{ pivot_eps float 32 regular  }
	{ status int 32 regular {pointer 1}  }
	{ muladds int 64 regular {pointer 1}  }
	{ divisions int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tu0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_col_ptr","offset": { "type": "dynamic","port_name": "u_col_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_row_idx","offset": { "type": "dynamic","port_name": "u_row_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csr_val","offset": { "type": "dynamic","port_name": "u_csr_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csc_to_csr","offset": { "type": "dynamic","port_name": "u_csc_to_csr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tu4", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_diag_pos","offset": { "type": "dynamic","port_name": "u_diag_pos","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tb0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_ptr","offset": { "type": "dynamic","port_name": "b_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tb1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_idx","offset": { "type": "dynamic","port_name": "b_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tb2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b_val","offset": { "type": "dynamic","port_name": "b_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tx0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_ptr","offset": { "type": "dynamic","port_name": "x_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tx1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_idx","offset": { "type": "dynamic","port_name": "x_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tx2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_val","offset": { "type": "dynamic","port_name": "x_val","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "ta0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "active_rows","offset": { "type": "dynamic","port_name": "active_rows","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "tw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "u_col_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "u_row_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "u_csr_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "u_csc_to_csr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "u_diag_pos", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "b_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "b_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "b_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "x_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "x_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "x_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "active_rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "active_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pivot_eps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "divisions", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 614
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_tu0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_tu0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_tu0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_tu0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_tu0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_tu0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_tu0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_tu0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_tu0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_tu0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_tu0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_tu0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_tu0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_tu0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_tu0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_tu0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_tu0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_tu0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_tu0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_tu0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_tu0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_tu0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_tu0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_tu0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_tu1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_tu1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_tu1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_tu1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_tu1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_tu1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_tu1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_tu1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_tu1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_tu1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_tu1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_tu1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_tu1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_tu1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_tu1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_tu1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_tu1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_tu1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_tu1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_tu1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_tu1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_tu1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_tu1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_tu1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_tu2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_tu2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_tu2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_tu2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_tu2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_tu2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_tu2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_tu2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_tu2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_tu2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_tu2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_tu2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_tu2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_tu2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_tu2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_tu2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_tu2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_tu2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_tu2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_tu2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_tu2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_tu2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_tu2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_tu2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_tu3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_tu3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_tu3_AWLEN sc_out sc_lv 8 signal 3 } 
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
	{ m_axi_tu3_ARLEN sc_out sc_lv 8 signal 3 } 
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
	{ m_axi_tu3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_tu3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_tu3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_tu3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_tu3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_tu4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_tu4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_tu4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_tu4_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_tu4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_tu4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_tu4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_tu4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_tu4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_tu4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_tu4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_tu4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_tu4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_tu4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_tu4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_tu4_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_tb0_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_tb0_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_tb0_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_tb0_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_tb0_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_tb0_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_tb0_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_tb0_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_tb0_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_tb0_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_tb0_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_tb0_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_tb0_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_tb0_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_tb0_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_tb0_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_tb0_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_tb0_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_tb0_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_tb0_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_tb0_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_tb0_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_tb0_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_tb0_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_tb1_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_tb1_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_tb1_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_tb1_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_tb1_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_tb1_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_tb1_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_tb1_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_tb1_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_tb1_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_tb1_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_tb1_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_tb1_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_tb1_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_tb1_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_tb1_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_tb1_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_tb1_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_tb1_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_tb1_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_tb1_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_tb1_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_tb1_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_tb1_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_tb2_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_tb2_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_tb2_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_tb2_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_tb2_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_tb2_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_tb2_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_tb2_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_tb2_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_tb2_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_tb2_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_tb2_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_tb2_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_tb2_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_tb2_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_tb2_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_tb2_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_tb2_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_tb2_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_tb2_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_tb2_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_tb2_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_tb2_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_tb2_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_tx0_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_tx0_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_tx0_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_tx0_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_tx0_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_tx0_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_tx0_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_tx0_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_tx0_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_tx0_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_tx0_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_tx0_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_tx0_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_tx0_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_tx0_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_tx0_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_tx0_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_tx0_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_tx0_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_tx0_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_tx0_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_tx0_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_tx0_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_tx0_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_tx1_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_tx1_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_tx1_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_tx1_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_tx1_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_tx1_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_tx1_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_tx1_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_tx1_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_tx1_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_tx1_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_tx1_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_tx1_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_tx1_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_tx1_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_tx1_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_tx1_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_tx1_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_tx1_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_tx1_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_tx1_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_tx1_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_tx1_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_tx1_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_tx2_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_tx2_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_tx2_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_tx2_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_tx2_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_tx2_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_tx2_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_tx2_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_tx2_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_tx2_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_tx2_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_tx2_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_tx2_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_tx2_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_tx2_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_tx2_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_tx2_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_tx2_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_tx2_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_tx2_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_tx2_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_tx2_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_tx2_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_tx2_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_ta0_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_ta0_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_ta0_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_ta0_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_ta0_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_ta0_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_ta0_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_ta0_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_ta0_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_ta0_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_ta0_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_ta0_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_ta0_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_ta0_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_ta0_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ta0_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_ta0_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_ta0_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_ta0_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_ta0_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_ta0_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_ta0_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_ta0_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_ta0_BUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_tw0_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_tw0_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_AWLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_tw0_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_tw0_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_tw0_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_tw0_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_tw0_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_WDATA sc_out sc_lv 32 signal 12 } 
	{ m_axi_tw0_WSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_tw0_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_ARLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_tw0_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_tw0_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_tw0_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_tw0_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_tw0_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_tw0_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_tw0_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_RDATA sc_in sc_lv 32 signal 12 } 
	{ m_axi_tw0_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_tw0_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_tw0_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_tw0_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_tw0_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_tw0_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_tw0_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_tw0_BUSER sc_in sc_lv 1 signal 12 } 
	{ active_count sc_in sc_lv 32 signal 25 } 
	{ n sc_in sc_lv 32 signal 27 } 
	{ pivot_eps sc_in sc_lv 32 signal 28 } 
	{ status sc_out sc_lv 32 signal 29 } 
	{ status_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ muladds sc_out sc_lv 64 signal 30 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ divisions sc_out sc_lv 64 signal 31 } 
	{ divisions_ap_vld sc_out sc_logic 1 outvld 31 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"large_tstrf","role":"start","value":"0","valid_bit":"0"},{"name":"large_tstrf","role":"continue","value":"0","valid_bit":"4"},{"name":"large_tstrf","role":"auto_start","value":"0","valid_bit":"7"},{"name":"u_col_ptr","role":"data","value":"16"},{"name":"u_row_idx","role":"data","value":"28"},{"name":"u_csr_val","role":"data","value":"40"},{"name":"u_csc_to_csr","role":"data","value":"52"},{"name":"u_diag_pos","role":"data","value":"64"},{"name":"b_ptr","role":"data","value":"76"},{"name":"b_idx","role":"data","value":"88"},{"name":"b_val","role":"data","value":"100"},{"name":"x_ptr","role":"data","value":"112"},{"name":"x_idx","role":"data","value":"124"},{"name":"x_val","role":"data","value":"136"},{"name":"active_rows","role":"data","value":"148"},{"name":"work","role":"data","value":"160"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"large_tstrf","role":"start","value":"0","valid_bit":"0"},{"name":"large_tstrf","role":"done","value":"0","valid_bit":"1"},{"name":"large_tstrf","role":"idle","value":"0","valid_bit":"2"},{"name":"large_tstrf","role":"ready","value":"0","valid_bit":"3"},{"name":"large_tstrf","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_tu0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "AWID" }} , 
 	{ "name": "m_axi_tu0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tu0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tu0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tu0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tu0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tu0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tu0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tu0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tu0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tu0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "WVALID" }} , 
 	{ "name": "m_axi_tu0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "WREADY" }} , 
 	{ "name": "m_axi_tu0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu0", "role": "WDATA" }} , 
 	{ "name": "m_axi_tu0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tu0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "WLAST" }} , 
 	{ "name": "m_axi_tu0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "WID" }} , 
 	{ "name": "m_axi_tu0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "WUSER" }} , 
 	{ "name": "m_axi_tu0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tu0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tu0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tu0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "ARID" }} , 
 	{ "name": "m_axi_tu0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tu0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tu0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tu0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tu0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tu0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tu0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tu0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tu0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tu0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "RVALID" }} , 
 	{ "name": "m_axi_tu0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "RREADY" }} , 
 	{ "name": "m_axi_tu0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu0", "role": "RDATA" }} , 
 	{ "name": "m_axi_tu0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "RLAST" }} , 
 	{ "name": "m_axi_tu0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "RID" }} , 
 	{ "name": "m_axi_tu0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "BID" }} , 
 	{ "name": "m_axi_tu0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu0", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "AWID" }} , 
 	{ "name": "m_axi_tu1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_tu1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_tu1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu1", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BID" }} , 
 	{ "name": "m_axi_tu1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu1", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "AWID" }} , 
 	{ "name": "m_axi_tu2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_tu2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_tu2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu2", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BID" }} , 
 	{ "name": "m_axi_tu2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu2", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "AWID" }} , 
 	{ "name": "m_axi_tu3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu3", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_tu3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu3", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_tu3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu3", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BID" }} , 
 	{ "name": "m_axi_tu3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu3", "role": "BUSER" }} , 
 	{ "name": "m_axi_tu4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tu4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tu4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tu4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "AWID" }} , 
 	{ "name": "m_axi_tu4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tu4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tu4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tu4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tu4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tu4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tu4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tu4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tu4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tu4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "WVALID" }} , 
 	{ "name": "m_axi_tu4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "WREADY" }} , 
 	{ "name": "m_axi_tu4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu4", "role": "WDATA" }} , 
 	{ "name": "m_axi_tu4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tu4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "WLAST" }} , 
 	{ "name": "m_axi_tu4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "WID" }} , 
 	{ "name": "m_axi_tu4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "WUSER" }} , 
 	{ "name": "m_axi_tu4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tu4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tu4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tu4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tu4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "ARID" }} , 
 	{ "name": "m_axi_tu4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tu4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tu4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tu4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tu4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tu4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tu4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tu4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tu4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tu4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tu4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tu4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tu4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "RVALID" }} , 
 	{ "name": "m_axi_tu4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "RREADY" }} , 
 	{ "name": "m_axi_tu4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tu4", "role": "RDATA" }} , 
 	{ "name": "m_axi_tu4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "RLAST" }} , 
 	{ "name": "m_axi_tu4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "RID" }} , 
 	{ "name": "m_axi_tu4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "RUSER" }} , 
 	{ "name": "m_axi_tu4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "RRESP" }} , 
 	{ "name": "m_axi_tu4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "BVALID" }} , 
 	{ "name": "m_axi_tu4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "BREADY" }} , 
 	{ "name": "m_axi_tu4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tu4", "role": "BRESP" }} , 
 	{ "name": "m_axi_tu4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "BID" }} , 
 	{ "name": "m_axi_tu4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tu4", "role": "BUSER" }} , 
 	{ "name": "m_axi_tb0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tb0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tb0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tb0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "AWID" }} , 
 	{ "name": "m_axi_tb0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tb0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tb0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tb0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tb0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tb0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tb0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tb0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tb0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tb0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "WVALID" }} , 
 	{ "name": "m_axi_tb0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "WREADY" }} , 
 	{ "name": "m_axi_tb0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb0", "role": "WDATA" }} , 
 	{ "name": "m_axi_tb0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tb0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "WLAST" }} , 
 	{ "name": "m_axi_tb0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "WID" }} , 
 	{ "name": "m_axi_tb0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "WUSER" }} , 
 	{ "name": "m_axi_tb0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tb0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tb0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tb0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "ARID" }} , 
 	{ "name": "m_axi_tb0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tb0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tb0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tb0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tb0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tb0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tb0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tb0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tb0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tb0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "RVALID" }} , 
 	{ "name": "m_axi_tb0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "RREADY" }} , 
 	{ "name": "m_axi_tb0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb0", "role": "RDATA" }} , 
 	{ "name": "m_axi_tb0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "RLAST" }} , 
 	{ "name": "m_axi_tb0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "RID" }} , 
 	{ "name": "m_axi_tb0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tb0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tb0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tb0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tb0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tb0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "BID" }} , 
 	{ "name": "m_axi_tb0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb0", "role": "BUSER" }} , 
 	{ "name": "m_axi_tb1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tb1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tb1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tb1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "AWID" }} , 
 	{ "name": "m_axi_tb1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tb1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tb1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tb1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tb1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tb1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tb1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tb1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tb1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tb1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "WVALID" }} , 
 	{ "name": "m_axi_tb1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "WREADY" }} , 
 	{ "name": "m_axi_tb1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb1", "role": "WDATA" }} , 
 	{ "name": "m_axi_tb1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tb1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "WLAST" }} , 
 	{ "name": "m_axi_tb1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "WID" }} , 
 	{ "name": "m_axi_tb1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "WUSER" }} , 
 	{ "name": "m_axi_tb1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tb1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tb1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tb1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "ARID" }} , 
 	{ "name": "m_axi_tb1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tb1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tb1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tb1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tb1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tb1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tb1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tb1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tb1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tb1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "RVALID" }} , 
 	{ "name": "m_axi_tb1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "RREADY" }} , 
 	{ "name": "m_axi_tb1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb1", "role": "RDATA" }} , 
 	{ "name": "m_axi_tb1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "RLAST" }} , 
 	{ "name": "m_axi_tb1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "RID" }} , 
 	{ "name": "m_axi_tb1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "RUSER" }} , 
 	{ "name": "m_axi_tb1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "RRESP" }} , 
 	{ "name": "m_axi_tb1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "BVALID" }} , 
 	{ "name": "m_axi_tb1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "BREADY" }} , 
 	{ "name": "m_axi_tb1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb1", "role": "BRESP" }} , 
 	{ "name": "m_axi_tb1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "BID" }} , 
 	{ "name": "m_axi_tb1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb1", "role": "BUSER" }} , 
 	{ "name": "m_axi_tb2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tb2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tb2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tb2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "AWID" }} , 
 	{ "name": "m_axi_tb2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tb2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tb2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tb2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tb2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tb2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tb2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tb2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tb2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tb2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "WVALID" }} , 
 	{ "name": "m_axi_tb2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "WREADY" }} , 
 	{ "name": "m_axi_tb2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb2", "role": "WDATA" }} , 
 	{ "name": "m_axi_tb2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tb2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "WLAST" }} , 
 	{ "name": "m_axi_tb2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "WID" }} , 
 	{ "name": "m_axi_tb2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "WUSER" }} , 
 	{ "name": "m_axi_tb2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tb2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tb2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tb2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "ARID" }} , 
 	{ "name": "m_axi_tb2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tb2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tb2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tb2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tb2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tb2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tb2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tb2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tb2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tb2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tb2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tb2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "RVALID" }} , 
 	{ "name": "m_axi_tb2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "RREADY" }} , 
 	{ "name": "m_axi_tb2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb2", "role": "RDATA" }} , 
 	{ "name": "m_axi_tb2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "RLAST" }} , 
 	{ "name": "m_axi_tb2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "RID" }} , 
 	{ "name": "m_axi_tb2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "RUSER" }} , 
 	{ "name": "m_axi_tb2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "RRESP" }} , 
 	{ "name": "m_axi_tb2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "BVALID" }} , 
 	{ "name": "m_axi_tb2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "BREADY" }} , 
 	{ "name": "m_axi_tb2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tb2", "role": "BRESP" }} , 
 	{ "name": "m_axi_tb2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "BID" }} , 
 	{ "name": "m_axi_tb2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tb2", "role": "BUSER" }} , 
 	{ "name": "m_axi_tx0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tx0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tx0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tx0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "AWID" }} , 
 	{ "name": "m_axi_tx0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tx0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tx0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tx0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tx0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tx0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tx0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tx0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tx0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tx0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "WVALID" }} , 
 	{ "name": "m_axi_tx0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "WREADY" }} , 
 	{ "name": "m_axi_tx0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx0", "role": "WDATA" }} , 
 	{ "name": "m_axi_tx0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tx0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "WLAST" }} , 
 	{ "name": "m_axi_tx0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "WID" }} , 
 	{ "name": "m_axi_tx0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "WUSER" }} , 
 	{ "name": "m_axi_tx0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tx0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tx0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tx0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "ARID" }} , 
 	{ "name": "m_axi_tx0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tx0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tx0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tx0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tx0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tx0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tx0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tx0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tx0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tx0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "RVALID" }} , 
 	{ "name": "m_axi_tx0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "RREADY" }} , 
 	{ "name": "m_axi_tx0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx0", "role": "RDATA" }} , 
 	{ "name": "m_axi_tx0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "RLAST" }} , 
 	{ "name": "m_axi_tx0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "RID" }} , 
 	{ "name": "m_axi_tx0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tx0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tx0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tx0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tx0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tx0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "BID" }} , 
 	{ "name": "m_axi_tx0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx0", "role": "BUSER" }} , 
 	{ "name": "m_axi_tx1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tx1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tx1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tx1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "AWID" }} , 
 	{ "name": "m_axi_tx1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tx1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tx1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tx1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tx1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tx1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tx1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tx1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tx1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tx1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "WVALID" }} , 
 	{ "name": "m_axi_tx1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "WREADY" }} , 
 	{ "name": "m_axi_tx1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx1", "role": "WDATA" }} , 
 	{ "name": "m_axi_tx1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tx1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "WLAST" }} , 
 	{ "name": "m_axi_tx1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "WID" }} , 
 	{ "name": "m_axi_tx1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "WUSER" }} , 
 	{ "name": "m_axi_tx1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tx1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tx1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tx1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "ARID" }} , 
 	{ "name": "m_axi_tx1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tx1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tx1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tx1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tx1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tx1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tx1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tx1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tx1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tx1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "RVALID" }} , 
 	{ "name": "m_axi_tx1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "RREADY" }} , 
 	{ "name": "m_axi_tx1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx1", "role": "RDATA" }} , 
 	{ "name": "m_axi_tx1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "RLAST" }} , 
 	{ "name": "m_axi_tx1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "RID" }} , 
 	{ "name": "m_axi_tx1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "RUSER" }} , 
 	{ "name": "m_axi_tx1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "RRESP" }} , 
 	{ "name": "m_axi_tx1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "BVALID" }} , 
 	{ "name": "m_axi_tx1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "BREADY" }} , 
 	{ "name": "m_axi_tx1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx1", "role": "BRESP" }} , 
 	{ "name": "m_axi_tx1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "BID" }} , 
 	{ "name": "m_axi_tx1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx1", "role": "BUSER" }} , 
 	{ "name": "m_axi_tx2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tx2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tx2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tx2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "AWID" }} , 
 	{ "name": "m_axi_tx2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_tx2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_tx2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_tx2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_tx2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_tx2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_tx2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_tx2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_tx2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_tx2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "WVALID" }} , 
 	{ "name": "m_axi_tx2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "WREADY" }} , 
 	{ "name": "m_axi_tx2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx2", "role": "WDATA" }} , 
 	{ "name": "m_axi_tx2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_tx2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "WLAST" }} , 
 	{ "name": "m_axi_tx2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "WID" }} , 
 	{ "name": "m_axi_tx2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "WUSER" }} , 
 	{ "name": "m_axi_tx2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_tx2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_tx2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_tx2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "ARID" }} , 
 	{ "name": "m_axi_tx2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_tx2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_tx2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_tx2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_tx2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_tx2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tx2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_tx2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_tx2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_tx2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_tx2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "RVALID" }} , 
 	{ "name": "m_axi_tx2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "RREADY" }} , 
 	{ "name": "m_axi_tx2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tx2", "role": "RDATA" }} , 
 	{ "name": "m_axi_tx2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "RLAST" }} , 
 	{ "name": "m_axi_tx2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "RID" }} , 
 	{ "name": "m_axi_tx2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "RUSER" }} , 
 	{ "name": "m_axi_tx2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "RRESP" }} , 
 	{ "name": "m_axi_tx2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "BVALID" }} , 
 	{ "name": "m_axi_tx2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "BREADY" }} , 
 	{ "name": "m_axi_tx2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tx2", "role": "BRESP" }} , 
 	{ "name": "m_axi_tx2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "BID" }} , 
 	{ "name": "m_axi_tx2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx2", "role": "BUSER" }} , 
 	{ "name": "m_axi_ta0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ta0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ta0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ta0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ta0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "AWID" }} , 
 	{ "name": "m_axi_ta0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ta0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ta0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ta0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ta0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ta0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ta0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ta0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ta0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ta0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ta0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ta0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ta0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "WVALID" }} , 
 	{ "name": "m_axi_ta0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "WREADY" }} , 
 	{ "name": "m_axi_ta0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ta0", "role": "WDATA" }} , 
 	{ "name": "m_axi_ta0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ta0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "WLAST" }} , 
 	{ "name": "m_axi_ta0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "WID" }} , 
 	{ "name": "m_axi_ta0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "WUSER" }} , 
 	{ "name": "m_axi_ta0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ta0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ta0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ta0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ta0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "ARID" }} , 
 	{ "name": "m_axi_ta0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ta0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ta0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ta0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ta0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ta0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ta0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ta0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ta0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ta0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ta0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ta0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ta0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ta0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "RVALID" }} , 
 	{ "name": "m_axi_ta0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "RREADY" }} , 
 	{ "name": "m_axi_ta0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ta0", "role": "RDATA" }} , 
 	{ "name": "m_axi_ta0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "RLAST" }} , 
 	{ "name": "m_axi_ta0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "RID" }} , 
 	{ "name": "m_axi_ta0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "RUSER" }} , 
 	{ "name": "m_axi_ta0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "RRESP" }} , 
 	{ "name": "m_axi_ta0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "BVALID" }} , 
 	{ "name": "m_axi_ta0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "BREADY" }} , 
 	{ "name": "m_axi_ta0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ta0", "role": "BRESP" }} , 
 	{ "name": "m_axi_ta0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "BID" }} , 
 	{ "name": "m_axi_ta0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ta0", "role": "BUSER" }} , 
 	{ "name": "m_axi_tw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_tw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_tw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_tw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "AWID" }} , 
 	{ "name": "m_axi_tw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tw0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_tw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tw0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_tw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_tw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_tw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_tw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_tw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_tw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BID" }} , 
 	{ "name": "m_axi_tw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tw0", "role": "BUSER" }} , 
 	{ "name": "active_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "active_count", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "pivot_eps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pivot_eps", "role": "default" }} , 
 	{ "name": "status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "default" }} , 
 	{ "name": "status_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "ap_vld" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }} , 
 	{ "name": "divisions", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "divisions", "role": "default" }} , 
 	{ "name": "divisions_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "divisions", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "large_tstrf",
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
			{"Name" : "tu0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tu1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Port" : "tu1", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "tu2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Port" : "tu2", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "tu3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu3_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Port" : "tu3", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "tu4", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tu4_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tu4_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tb0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tb0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tb0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tb1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_134_3_fu_523", "Port" : "tb1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "tb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tb2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_134_3_fu_523", "Port" : "tb2", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "tx0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tx0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tx0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tx1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_144_6_fu_563", "Port" : "tx1", "Inst_start_state" : "109", "Inst_end_state" : "110"}]},
			{"Name" : "tx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tx2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "tx2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_144_6_fu_563", "Port" : "tx2", "Inst_start_state" : "109", "Inst_end_state" : "110"}]},
			{"Name" : "ta0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ta0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ta0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_134_3_fu_523", "Port" : "tw0", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "1", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_133_2_fu_515", "Port" : "tw0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "5", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Port" : "tw0", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "7", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_144_6_fu_563", "Port" : "tw0", "Inst_start_state" : "109", "Inst_end_state" : "110"}]},
			{"Name" : "u_col_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_row_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_csr_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_csc_to_csr", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_diag_pos", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "active_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "active_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "pivot_eps", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Port" : "muladds", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "divisions", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_135_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "115", "FirstState" : "ap_ST_fsm_state31", "LastState" : ["ap_ST_fsm_state91"], "QuitState" : ["ap_ST_fsm_state31"], "PreState" : ["ap_ST_fsm_state30"], "PostState" : ["ap_ST_fsm_state92"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_131_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "115", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state115"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_133_2_fu_515", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "large_tstrf_Pipeline_VITIS_LOOP_133_2",
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
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln133", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_133_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_133_2_fu_515.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_134_3_fu_523", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "large_tstrf_Pipeline_VITIS_LOOP_134_3",
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
			{"Name" : "zext_ln134_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "tb2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tb2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tb1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tb1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln134_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln134_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln134_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_134_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_134_3_fu_523.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_136_5_fu_538.fmul_32ns_32ns_32_5_max_dsp_1_U14", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_144_6_fu_563", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "large_tstrf_Pipeline_VITIS_LOOP_144_6",
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
			{"Name" : "zext_ln144", "Type" : "None", "Direction" : "I"},
			{"Name" : "tw0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "tw0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "tx2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tx2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "tx1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tx1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln144_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln144_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln144_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_tstrf_Pipeline_VITIS_LOOP_144_6_fu_563.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ta0_m_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tb0_m_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tb1_m_axi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tb2_m_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tu0_m_axi_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tu1_m_axi_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tu2_m_axi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tu3_m_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tu4_m_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tw0_m_axi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx0_m_axi_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx1_m_axi_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx2_m_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U39", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U40", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_8_full_dsp_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf {
		tu0 {Type I LastRead 39 FirstWrite -1}
		tu1 {Type I LastRead 9 FirstWrite -1}
		tu2 {Type I LastRead 58 FirstWrite -1}
		tu3 {Type I LastRead 49 FirstWrite -1}
		tu4 {Type I LastRead 38 FirstWrite -1}
		tb0 {Type I LastRead 19 FirstWrite -1}
		tb1 {Type I LastRead 21 FirstWrite -1}
		tb2 {Type I LastRead 21 FirstWrite -1}
		tx0 {Type I LastRead 39 FirstWrite -1}
		tx1 {Type I LastRead 41 FirstWrite -1}
		tx2 {Type O LastRead 50 FirstWrite 12}
		ta0 {Type I LastRead 9 FirstWrite -1}
		tw0 {Type IO LastRead 86 FirstWrite -1}
		u_col_ptr {Type I LastRead 0 FirstWrite -1}
		u_row_idx {Type I LastRead 0 FirstWrite -1}
		u_csr_val {Type I LastRead 0 FirstWrite -1}
		u_csc_to_csr {Type I LastRead 0 FirstWrite -1}
		u_diag_pos {Type I LastRead 0 FirstWrite -1}
		b_ptr {Type I LastRead 0 FirstWrite -1}
		b_idx {Type I LastRead 0 FirstWrite -1}
		b_val {Type I LastRead 0 FirstWrite -1}
		x_ptr {Type I LastRead 0 FirstWrite -1}
		x_idx {Type I LastRead 0 FirstWrite -1}
		x_val {Type I LastRead 0 FirstWrite -1}
		active_rows {Type I LastRead 0 FirstWrite -1}
		active_count {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		pivot_eps {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 0}
		muladds {Type O LastRead -1 FirstWrite 0}
		divisions {Type O LastRead -1 FirstWrite 0}}
	large_tstrf_Pipeline_VITIS_LOOP_133_2 {
		tw0 {Type O LastRead -1 FirstWrite 1}
		sext_ln133 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	large_tstrf_Pipeline_VITIS_LOOP_134_3 {
		zext_ln134_1 {Type I LastRead 0 FirstWrite -1}
		tw0 {Type IO LastRead 21 FirstWrite 20}
		tb2 {Type I LastRead 2 FirstWrite -1}
		tb1 {Type I LastRead 2 FirstWrite -1}
		sext_ln134_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln134_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln134_2 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}}
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
		p_out {Type O LastRead -1 FirstWrite 2}}
	large_tstrf_Pipeline_VITIS_LOOP_144_6 {
		zext_ln144 {Type I LastRead 0 FirstWrite -1}
		tw0 {Type I LastRead 11 FirstWrite -1}
		tx2 {Type O LastRead -1 FirstWrite 12}
		tx1 {Type I LastRead 2 FirstWrite -1}
		sext_ln144_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln144_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln144_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tu0 { m_axi {  { m_axi_tu0_AWVALID VALID 1 1 }  { m_axi_tu0_AWREADY READY 0 1 }  { m_axi_tu0_AWADDR ADDR 1 64 }  { m_axi_tu0_AWID ID 1 1 }  { m_axi_tu0_AWLEN SIZE 1 8 }  { m_axi_tu0_AWSIZE BURST 1 3 }  { m_axi_tu0_AWBURST LOCK 1 2 }  { m_axi_tu0_AWLOCK CACHE 1 2 }  { m_axi_tu0_AWCACHE PROT 1 4 }  { m_axi_tu0_AWPROT QOS 1 3 }  { m_axi_tu0_AWQOS REGION 1 4 }  { m_axi_tu0_AWREGION USER 1 4 }  { m_axi_tu0_AWUSER DATA 1 1 }  { m_axi_tu0_WVALID VALID 1 1 }  { m_axi_tu0_WREADY READY 0 1 }  { m_axi_tu0_WDATA FIFONUM 1 32 }  { m_axi_tu0_WSTRB STRB 1 4 }  { m_axi_tu0_WLAST LAST 1 1 }  { m_axi_tu0_WID ID 1 1 }  { m_axi_tu0_WUSER DATA 1 1 }  { m_axi_tu0_ARVALID VALID 1 1 }  { m_axi_tu0_ARREADY READY 0 1 }  { m_axi_tu0_ARADDR ADDR 1 64 }  { m_axi_tu0_ARID ID 1 1 }  { m_axi_tu0_ARLEN SIZE 1 8 }  { m_axi_tu0_ARSIZE BURST 1 3 }  { m_axi_tu0_ARBURST LOCK 1 2 }  { m_axi_tu0_ARLOCK CACHE 1 2 }  { m_axi_tu0_ARCACHE PROT 1 4 }  { m_axi_tu0_ARPROT QOS 1 3 }  { m_axi_tu0_ARQOS REGION 1 4 }  { m_axi_tu0_ARREGION USER 1 4 }  { m_axi_tu0_ARUSER DATA 1 1 }  { m_axi_tu0_RVALID VALID 0 1 }  { m_axi_tu0_RREADY READY 1 1 }  { m_axi_tu0_RDATA FIFONUM 0 32 }  { m_axi_tu0_RLAST LAST 0 1 }  { m_axi_tu0_RID ID 0 1 }  { m_axi_tu0_RUSER DATA 0 1 }  { m_axi_tu0_RRESP RESP 0 2 }  { m_axi_tu0_BVALID VALID 0 1 }  { m_axi_tu0_BREADY READY 1 1 }  { m_axi_tu0_BRESP RESP 0 2 }  { m_axi_tu0_BID ID 0 1 }  { m_axi_tu0_BUSER DATA 0 1 } } }
	tu1 { m_axi {  { m_axi_tu1_AWVALID VALID 1 1 }  { m_axi_tu1_AWREADY READY 0 1 }  { m_axi_tu1_AWADDR ADDR 1 64 }  { m_axi_tu1_AWID ID 1 1 }  { m_axi_tu1_AWLEN SIZE 1 8 }  { m_axi_tu1_AWSIZE BURST 1 3 }  { m_axi_tu1_AWBURST LOCK 1 2 }  { m_axi_tu1_AWLOCK CACHE 1 2 }  { m_axi_tu1_AWCACHE PROT 1 4 }  { m_axi_tu1_AWPROT QOS 1 3 }  { m_axi_tu1_AWQOS REGION 1 4 }  { m_axi_tu1_AWREGION USER 1 4 }  { m_axi_tu1_AWUSER DATA 1 1 }  { m_axi_tu1_WVALID VALID 1 1 }  { m_axi_tu1_WREADY READY 0 1 }  { m_axi_tu1_WDATA FIFONUM 1 32 }  { m_axi_tu1_WSTRB STRB 1 4 }  { m_axi_tu1_WLAST LAST 1 1 }  { m_axi_tu1_WID ID 1 1 }  { m_axi_tu1_WUSER DATA 1 1 }  { m_axi_tu1_ARVALID VALID 1 1 }  { m_axi_tu1_ARREADY READY 0 1 }  { m_axi_tu1_ARADDR ADDR 1 64 }  { m_axi_tu1_ARID ID 1 1 }  { m_axi_tu1_ARLEN SIZE 1 8 }  { m_axi_tu1_ARSIZE BURST 1 3 }  { m_axi_tu1_ARBURST LOCK 1 2 }  { m_axi_tu1_ARLOCK CACHE 1 2 }  { m_axi_tu1_ARCACHE PROT 1 4 }  { m_axi_tu1_ARPROT QOS 1 3 }  { m_axi_tu1_ARQOS REGION 1 4 }  { m_axi_tu1_ARREGION USER 1 4 }  { m_axi_tu1_ARUSER DATA 1 1 }  { m_axi_tu1_RVALID VALID 0 1 }  { m_axi_tu1_RREADY READY 1 1 }  { m_axi_tu1_RDATA FIFONUM 0 32 }  { m_axi_tu1_RLAST LAST 0 1 }  { m_axi_tu1_RID ID 0 1 }  { m_axi_tu1_RUSER DATA 0 1 }  { m_axi_tu1_RRESP RESP 0 2 }  { m_axi_tu1_BVALID VALID 0 1 }  { m_axi_tu1_BREADY READY 1 1 }  { m_axi_tu1_BRESP RESP 0 2 }  { m_axi_tu1_BID ID 0 1 }  { m_axi_tu1_BUSER DATA 0 1 } } }
	tu2 { m_axi {  { m_axi_tu2_AWVALID VALID 1 1 }  { m_axi_tu2_AWREADY READY 0 1 }  { m_axi_tu2_AWADDR ADDR 1 64 }  { m_axi_tu2_AWID ID 1 1 }  { m_axi_tu2_AWLEN SIZE 1 8 }  { m_axi_tu2_AWSIZE BURST 1 3 }  { m_axi_tu2_AWBURST LOCK 1 2 }  { m_axi_tu2_AWLOCK CACHE 1 2 }  { m_axi_tu2_AWCACHE PROT 1 4 }  { m_axi_tu2_AWPROT QOS 1 3 }  { m_axi_tu2_AWQOS REGION 1 4 }  { m_axi_tu2_AWREGION USER 1 4 }  { m_axi_tu2_AWUSER DATA 1 1 }  { m_axi_tu2_WVALID VALID 1 1 }  { m_axi_tu2_WREADY READY 0 1 }  { m_axi_tu2_WDATA FIFONUM 1 32 }  { m_axi_tu2_WSTRB STRB 1 4 }  { m_axi_tu2_WLAST LAST 1 1 }  { m_axi_tu2_WID ID 1 1 }  { m_axi_tu2_WUSER DATA 1 1 }  { m_axi_tu2_ARVALID VALID 1 1 }  { m_axi_tu2_ARREADY READY 0 1 }  { m_axi_tu2_ARADDR ADDR 1 64 }  { m_axi_tu2_ARID ID 1 1 }  { m_axi_tu2_ARLEN SIZE 1 8 }  { m_axi_tu2_ARSIZE BURST 1 3 }  { m_axi_tu2_ARBURST LOCK 1 2 }  { m_axi_tu2_ARLOCK CACHE 1 2 }  { m_axi_tu2_ARCACHE PROT 1 4 }  { m_axi_tu2_ARPROT QOS 1 3 }  { m_axi_tu2_ARQOS REGION 1 4 }  { m_axi_tu2_ARREGION USER 1 4 }  { m_axi_tu2_ARUSER DATA 1 1 }  { m_axi_tu2_RVALID VALID 0 1 }  { m_axi_tu2_RREADY READY 1 1 }  { m_axi_tu2_RDATA FIFONUM 0 32 }  { m_axi_tu2_RLAST LAST 0 1 }  { m_axi_tu2_RID ID 0 1 }  { m_axi_tu2_RUSER DATA 0 1 }  { m_axi_tu2_RRESP RESP 0 2 }  { m_axi_tu2_BVALID VALID 0 1 }  { m_axi_tu2_BREADY READY 1 1 }  { m_axi_tu2_BRESP RESP 0 2 }  { m_axi_tu2_BID ID 0 1 }  { m_axi_tu2_BUSER DATA 0 1 } } }
	tu3 { m_axi {  { m_axi_tu3_AWVALID VALID 1 1 }  { m_axi_tu3_AWREADY READY 0 1 }  { m_axi_tu3_AWADDR ADDR 1 64 }  { m_axi_tu3_AWID ID 1 1 }  { m_axi_tu3_AWLEN SIZE 1 8 }  { m_axi_tu3_AWSIZE BURST 1 3 }  { m_axi_tu3_AWBURST LOCK 1 2 }  { m_axi_tu3_AWLOCK CACHE 1 2 }  { m_axi_tu3_AWCACHE PROT 1 4 }  { m_axi_tu3_AWPROT QOS 1 3 }  { m_axi_tu3_AWQOS REGION 1 4 }  { m_axi_tu3_AWREGION USER 1 4 }  { m_axi_tu3_AWUSER DATA 1 1 }  { m_axi_tu3_WVALID VALID 1 1 }  { m_axi_tu3_WREADY READY 0 1 }  { m_axi_tu3_WDATA FIFONUM 1 32 }  { m_axi_tu3_WSTRB STRB 1 4 }  { m_axi_tu3_WLAST LAST 1 1 }  { m_axi_tu3_WID ID 1 1 }  { m_axi_tu3_WUSER DATA 1 1 }  { m_axi_tu3_ARVALID VALID 1 1 }  { m_axi_tu3_ARREADY READY 0 1 }  { m_axi_tu3_ARADDR ADDR 1 64 }  { m_axi_tu3_ARID ID 1 1 }  { m_axi_tu3_ARLEN SIZE 1 8 }  { m_axi_tu3_ARSIZE BURST 1 3 }  { m_axi_tu3_ARBURST LOCK 1 2 }  { m_axi_tu3_ARLOCK CACHE 1 2 }  { m_axi_tu3_ARCACHE PROT 1 4 }  { m_axi_tu3_ARPROT QOS 1 3 }  { m_axi_tu3_ARQOS REGION 1 4 }  { m_axi_tu3_ARREGION USER 1 4 }  { m_axi_tu3_ARUSER DATA 1 1 }  { m_axi_tu3_RVALID VALID 0 1 }  { m_axi_tu3_RREADY READY 1 1 }  { m_axi_tu3_RDATA FIFONUM 0 32 }  { m_axi_tu3_RLAST LAST 0 1 }  { m_axi_tu3_RID ID 0 1 }  { m_axi_tu3_RUSER DATA 0 1 }  { m_axi_tu3_RRESP RESP 0 2 }  { m_axi_tu3_BVALID VALID 0 1 }  { m_axi_tu3_BREADY READY 1 1 }  { m_axi_tu3_BRESP RESP 0 2 }  { m_axi_tu3_BID ID 0 1 }  { m_axi_tu3_BUSER DATA 0 1 } } }
	tu4 { m_axi {  { m_axi_tu4_AWVALID VALID 1 1 }  { m_axi_tu4_AWREADY READY 0 1 }  { m_axi_tu4_AWADDR ADDR 1 64 }  { m_axi_tu4_AWID ID 1 1 }  { m_axi_tu4_AWLEN SIZE 1 8 }  { m_axi_tu4_AWSIZE BURST 1 3 }  { m_axi_tu4_AWBURST LOCK 1 2 }  { m_axi_tu4_AWLOCK CACHE 1 2 }  { m_axi_tu4_AWCACHE PROT 1 4 }  { m_axi_tu4_AWPROT QOS 1 3 }  { m_axi_tu4_AWQOS REGION 1 4 }  { m_axi_tu4_AWREGION USER 1 4 }  { m_axi_tu4_AWUSER DATA 1 1 }  { m_axi_tu4_WVALID VALID 1 1 }  { m_axi_tu4_WREADY READY 0 1 }  { m_axi_tu4_WDATA FIFONUM 1 32 }  { m_axi_tu4_WSTRB STRB 1 4 }  { m_axi_tu4_WLAST LAST 1 1 }  { m_axi_tu4_WID ID 1 1 }  { m_axi_tu4_WUSER DATA 1 1 }  { m_axi_tu4_ARVALID VALID 1 1 }  { m_axi_tu4_ARREADY READY 0 1 }  { m_axi_tu4_ARADDR ADDR 1 64 }  { m_axi_tu4_ARID ID 1 1 }  { m_axi_tu4_ARLEN SIZE 1 8 }  { m_axi_tu4_ARSIZE BURST 1 3 }  { m_axi_tu4_ARBURST LOCK 1 2 }  { m_axi_tu4_ARLOCK CACHE 1 2 }  { m_axi_tu4_ARCACHE PROT 1 4 }  { m_axi_tu4_ARPROT QOS 1 3 }  { m_axi_tu4_ARQOS REGION 1 4 }  { m_axi_tu4_ARREGION USER 1 4 }  { m_axi_tu4_ARUSER DATA 1 1 }  { m_axi_tu4_RVALID VALID 0 1 }  { m_axi_tu4_RREADY READY 1 1 }  { m_axi_tu4_RDATA FIFONUM 0 32 }  { m_axi_tu4_RLAST LAST 0 1 }  { m_axi_tu4_RID ID 0 1 }  { m_axi_tu4_RUSER DATA 0 1 }  { m_axi_tu4_RRESP RESP 0 2 }  { m_axi_tu4_BVALID VALID 0 1 }  { m_axi_tu4_BREADY READY 1 1 }  { m_axi_tu4_BRESP RESP 0 2 }  { m_axi_tu4_BID ID 0 1 }  { m_axi_tu4_BUSER DATA 0 1 } } }
	tb0 { m_axi {  { m_axi_tb0_AWVALID VALID 1 1 }  { m_axi_tb0_AWREADY READY 0 1 }  { m_axi_tb0_AWADDR ADDR 1 64 }  { m_axi_tb0_AWID ID 1 1 }  { m_axi_tb0_AWLEN SIZE 1 8 }  { m_axi_tb0_AWSIZE BURST 1 3 }  { m_axi_tb0_AWBURST LOCK 1 2 }  { m_axi_tb0_AWLOCK CACHE 1 2 }  { m_axi_tb0_AWCACHE PROT 1 4 }  { m_axi_tb0_AWPROT QOS 1 3 }  { m_axi_tb0_AWQOS REGION 1 4 }  { m_axi_tb0_AWREGION USER 1 4 }  { m_axi_tb0_AWUSER DATA 1 1 }  { m_axi_tb0_WVALID VALID 1 1 }  { m_axi_tb0_WREADY READY 0 1 }  { m_axi_tb0_WDATA FIFONUM 1 32 }  { m_axi_tb0_WSTRB STRB 1 4 }  { m_axi_tb0_WLAST LAST 1 1 }  { m_axi_tb0_WID ID 1 1 }  { m_axi_tb0_WUSER DATA 1 1 }  { m_axi_tb0_ARVALID VALID 1 1 }  { m_axi_tb0_ARREADY READY 0 1 }  { m_axi_tb0_ARADDR ADDR 1 64 }  { m_axi_tb0_ARID ID 1 1 }  { m_axi_tb0_ARLEN SIZE 1 8 }  { m_axi_tb0_ARSIZE BURST 1 3 }  { m_axi_tb0_ARBURST LOCK 1 2 }  { m_axi_tb0_ARLOCK CACHE 1 2 }  { m_axi_tb0_ARCACHE PROT 1 4 }  { m_axi_tb0_ARPROT QOS 1 3 }  { m_axi_tb0_ARQOS REGION 1 4 }  { m_axi_tb0_ARREGION USER 1 4 }  { m_axi_tb0_ARUSER DATA 1 1 }  { m_axi_tb0_RVALID VALID 0 1 }  { m_axi_tb0_RREADY READY 1 1 }  { m_axi_tb0_RDATA FIFONUM 0 32 }  { m_axi_tb0_RLAST LAST 0 1 }  { m_axi_tb0_RID ID 0 1 }  { m_axi_tb0_RUSER DATA 0 1 }  { m_axi_tb0_RRESP RESP 0 2 }  { m_axi_tb0_BVALID VALID 0 1 }  { m_axi_tb0_BREADY READY 1 1 }  { m_axi_tb0_BRESP RESP 0 2 }  { m_axi_tb0_BID ID 0 1 }  { m_axi_tb0_BUSER DATA 0 1 } } }
	tb1 { m_axi {  { m_axi_tb1_AWVALID VALID 1 1 }  { m_axi_tb1_AWREADY READY 0 1 }  { m_axi_tb1_AWADDR ADDR 1 64 }  { m_axi_tb1_AWID ID 1 1 }  { m_axi_tb1_AWLEN SIZE 1 8 }  { m_axi_tb1_AWSIZE BURST 1 3 }  { m_axi_tb1_AWBURST LOCK 1 2 }  { m_axi_tb1_AWLOCK CACHE 1 2 }  { m_axi_tb1_AWCACHE PROT 1 4 }  { m_axi_tb1_AWPROT QOS 1 3 }  { m_axi_tb1_AWQOS REGION 1 4 }  { m_axi_tb1_AWREGION USER 1 4 }  { m_axi_tb1_AWUSER DATA 1 1 }  { m_axi_tb1_WVALID VALID 1 1 }  { m_axi_tb1_WREADY READY 0 1 }  { m_axi_tb1_WDATA FIFONUM 1 32 }  { m_axi_tb1_WSTRB STRB 1 4 }  { m_axi_tb1_WLAST LAST 1 1 }  { m_axi_tb1_WID ID 1 1 }  { m_axi_tb1_WUSER DATA 1 1 }  { m_axi_tb1_ARVALID VALID 1 1 }  { m_axi_tb1_ARREADY READY 0 1 }  { m_axi_tb1_ARADDR ADDR 1 64 }  { m_axi_tb1_ARID ID 1 1 }  { m_axi_tb1_ARLEN SIZE 1 8 }  { m_axi_tb1_ARSIZE BURST 1 3 }  { m_axi_tb1_ARBURST LOCK 1 2 }  { m_axi_tb1_ARLOCK CACHE 1 2 }  { m_axi_tb1_ARCACHE PROT 1 4 }  { m_axi_tb1_ARPROT QOS 1 3 }  { m_axi_tb1_ARQOS REGION 1 4 }  { m_axi_tb1_ARREGION USER 1 4 }  { m_axi_tb1_ARUSER DATA 1 1 }  { m_axi_tb1_RVALID VALID 0 1 }  { m_axi_tb1_RREADY READY 1 1 }  { m_axi_tb1_RDATA FIFONUM 0 32 }  { m_axi_tb1_RLAST LAST 0 1 }  { m_axi_tb1_RID ID 0 1 }  { m_axi_tb1_RUSER DATA 0 1 }  { m_axi_tb1_RRESP RESP 0 2 }  { m_axi_tb1_BVALID VALID 0 1 }  { m_axi_tb1_BREADY READY 1 1 }  { m_axi_tb1_BRESP RESP 0 2 }  { m_axi_tb1_BID ID 0 1 }  { m_axi_tb1_BUSER DATA 0 1 } } }
	tb2 { m_axi {  { m_axi_tb2_AWVALID VALID 1 1 }  { m_axi_tb2_AWREADY READY 0 1 }  { m_axi_tb2_AWADDR ADDR 1 64 }  { m_axi_tb2_AWID ID 1 1 }  { m_axi_tb2_AWLEN SIZE 1 8 }  { m_axi_tb2_AWSIZE BURST 1 3 }  { m_axi_tb2_AWBURST LOCK 1 2 }  { m_axi_tb2_AWLOCK CACHE 1 2 }  { m_axi_tb2_AWCACHE PROT 1 4 }  { m_axi_tb2_AWPROT QOS 1 3 }  { m_axi_tb2_AWQOS REGION 1 4 }  { m_axi_tb2_AWREGION USER 1 4 }  { m_axi_tb2_AWUSER DATA 1 1 }  { m_axi_tb2_WVALID VALID 1 1 }  { m_axi_tb2_WREADY READY 0 1 }  { m_axi_tb2_WDATA FIFONUM 1 32 }  { m_axi_tb2_WSTRB STRB 1 4 }  { m_axi_tb2_WLAST LAST 1 1 }  { m_axi_tb2_WID ID 1 1 }  { m_axi_tb2_WUSER DATA 1 1 }  { m_axi_tb2_ARVALID VALID 1 1 }  { m_axi_tb2_ARREADY READY 0 1 }  { m_axi_tb2_ARADDR ADDR 1 64 }  { m_axi_tb2_ARID ID 1 1 }  { m_axi_tb2_ARLEN SIZE 1 8 }  { m_axi_tb2_ARSIZE BURST 1 3 }  { m_axi_tb2_ARBURST LOCK 1 2 }  { m_axi_tb2_ARLOCK CACHE 1 2 }  { m_axi_tb2_ARCACHE PROT 1 4 }  { m_axi_tb2_ARPROT QOS 1 3 }  { m_axi_tb2_ARQOS REGION 1 4 }  { m_axi_tb2_ARREGION USER 1 4 }  { m_axi_tb2_ARUSER DATA 1 1 }  { m_axi_tb2_RVALID VALID 0 1 }  { m_axi_tb2_RREADY READY 1 1 }  { m_axi_tb2_RDATA FIFONUM 0 32 }  { m_axi_tb2_RLAST LAST 0 1 }  { m_axi_tb2_RID ID 0 1 }  { m_axi_tb2_RUSER DATA 0 1 }  { m_axi_tb2_RRESP RESP 0 2 }  { m_axi_tb2_BVALID VALID 0 1 }  { m_axi_tb2_BREADY READY 1 1 }  { m_axi_tb2_BRESP RESP 0 2 }  { m_axi_tb2_BID ID 0 1 }  { m_axi_tb2_BUSER DATA 0 1 } } }
	tx0 { m_axi {  { m_axi_tx0_AWVALID VALID 1 1 }  { m_axi_tx0_AWREADY READY 0 1 }  { m_axi_tx0_AWADDR ADDR 1 64 }  { m_axi_tx0_AWID ID 1 1 }  { m_axi_tx0_AWLEN SIZE 1 8 }  { m_axi_tx0_AWSIZE BURST 1 3 }  { m_axi_tx0_AWBURST LOCK 1 2 }  { m_axi_tx0_AWLOCK CACHE 1 2 }  { m_axi_tx0_AWCACHE PROT 1 4 }  { m_axi_tx0_AWPROT QOS 1 3 }  { m_axi_tx0_AWQOS REGION 1 4 }  { m_axi_tx0_AWREGION USER 1 4 }  { m_axi_tx0_AWUSER DATA 1 1 }  { m_axi_tx0_WVALID VALID 1 1 }  { m_axi_tx0_WREADY READY 0 1 }  { m_axi_tx0_WDATA FIFONUM 1 32 }  { m_axi_tx0_WSTRB STRB 1 4 }  { m_axi_tx0_WLAST LAST 1 1 }  { m_axi_tx0_WID ID 1 1 }  { m_axi_tx0_WUSER DATA 1 1 }  { m_axi_tx0_ARVALID VALID 1 1 }  { m_axi_tx0_ARREADY READY 0 1 }  { m_axi_tx0_ARADDR ADDR 1 64 }  { m_axi_tx0_ARID ID 1 1 }  { m_axi_tx0_ARLEN SIZE 1 8 }  { m_axi_tx0_ARSIZE BURST 1 3 }  { m_axi_tx0_ARBURST LOCK 1 2 }  { m_axi_tx0_ARLOCK CACHE 1 2 }  { m_axi_tx0_ARCACHE PROT 1 4 }  { m_axi_tx0_ARPROT QOS 1 3 }  { m_axi_tx0_ARQOS REGION 1 4 }  { m_axi_tx0_ARREGION USER 1 4 }  { m_axi_tx0_ARUSER DATA 1 1 }  { m_axi_tx0_RVALID VALID 0 1 }  { m_axi_tx0_RREADY READY 1 1 }  { m_axi_tx0_RDATA FIFONUM 0 32 }  { m_axi_tx0_RLAST LAST 0 1 }  { m_axi_tx0_RID ID 0 1 }  { m_axi_tx0_RUSER DATA 0 1 }  { m_axi_tx0_RRESP RESP 0 2 }  { m_axi_tx0_BVALID VALID 0 1 }  { m_axi_tx0_BREADY READY 1 1 }  { m_axi_tx0_BRESP RESP 0 2 }  { m_axi_tx0_BID ID 0 1 }  { m_axi_tx0_BUSER DATA 0 1 } } }
	tx1 { m_axi {  { m_axi_tx1_AWVALID VALID 1 1 }  { m_axi_tx1_AWREADY READY 0 1 }  { m_axi_tx1_AWADDR ADDR 1 64 }  { m_axi_tx1_AWID ID 1 1 }  { m_axi_tx1_AWLEN SIZE 1 8 }  { m_axi_tx1_AWSIZE BURST 1 3 }  { m_axi_tx1_AWBURST LOCK 1 2 }  { m_axi_tx1_AWLOCK CACHE 1 2 }  { m_axi_tx1_AWCACHE PROT 1 4 }  { m_axi_tx1_AWPROT QOS 1 3 }  { m_axi_tx1_AWQOS REGION 1 4 }  { m_axi_tx1_AWREGION USER 1 4 }  { m_axi_tx1_AWUSER DATA 1 1 }  { m_axi_tx1_WVALID VALID 1 1 }  { m_axi_tx1_WREADY READY 0 1 }  { m_axi_tx1_WDATA FIFONUM 1 32 }  { m_axi_tx1_WSTRB STRB 1 4 }  { m_axi_tx1_WLAST LAST 1 1 }  { m_axi_tx1_WID ID 1 1 }  { m_axi_tx1_WUSER DATA 1 1 }  { m_axi_tx1_ARVALID VALID 1 1 }  { m_axi_tx1_ARREADY READY 0 1 }  { m_axi_tx1_ARADDR ADDR 1 64 }  { m_axi_tx1_ARID ID 1 1 }  { m_axi_tx1_ARLEN SIZE 1 8 }  { m_axi_tx1_ARSIZE BURST 1 3 }  { m_axi_tx1_ARBURST LOCK 1 2 }  { m_axi_tx1_ARLOCK CACHE 1 2 }  { m_axi_tx1_ARCACHE PROT 1 4 }  { m_axi_tx1_ARPROT QOS 1 3 }  { m_axi_tx1_ARQOS REGION 1 4 }  { m_axi_tx1_ARREGION USER 1 4 }  { m_axi_tx1_ARUSER DATA 1 1 }  { m_axi_tx1_RVALID VALID 0 1 }  { m_axi_tx1_RREADY READY 1 1 }  { m_axi_tx1_RDATA FIFONUM 0 32 }  { m_axi_tx1_RLAST LAST 0 1 }  { m_axi_tx1_RID ID 0 1 }  { m_axi_tx1_RUSER DATA 0 1 }  { m_axi_tx1_RRESP RESP 0 2 }  { m_axi_tx1_BVALID VALID 0 1 }  { m_axi_tx1_BREADY READY 1 1 }  { m_axi_tx1_BRESP RESP 0 2 }  { m_axi_tx1_BID ID 0 1 }  { m_axi_tx1_BUSER DATA 0 1 } } }
	tx2 { m_axi {  { m_axi_tx2_AWVALID VALID 1 1 }  { m_axi_tx2_AWREADY READY 0 1 }  { m_axi_tx2_AWADDR ADDR 1 64 }  { m_axi_tx2_AWID ID 1 1 }  { m_axi_tx2_AWLEN SIZE 1 8 }  { m_axi_tx2_AWSIZE BURST 1 3 }  { m_axi_tx2_AWBURST LOCK 1 2 }  { m_axi_tx2_AWLOCK CACHE 1 2 }  { m_axi_tx2_AWCACHE PROT 1 4 }  { m_axi_tx2_AWPROT QOS 1 3 }  { m_axi_tx2_AWQOS REGION 1 4 }  { m_axi_tx2_AWREGION USER 1 4 }  { m_axi_tx2_AWUSER DATA 1 1 }  { m_axi_tx2_WVALID VALID 1 1 }  { m_axi_tx2_WREADY READY 0 1 }  { m_axi_tx2_WDATA FIFONUM 1 32 }  { m_axi_tx2_WSTRB STRB 1 4 }  { m_axi_tx2_WLAST LAST 1 1 }  { m_axi_tx2_WID ID 1 1 }  { m_axi_tx2_WUSER DATA 1 1 }  { m_axi_tx2_ARVALID VALID 1 1 }  { m_axi_tx2_ARREADY READY 0 1 }  { m_axi_tx2_ARADDR ADDR 1 64 }  { m_axi_tx2_ARID ID 1 1 }  { m_axi_tx2_ARLEN SIZE 1 8 }  { m_axi_tx2_ARSIZE BURST 1 3 }  { m_axi_tx2_ARBURST LOCK 1 2 }  { m_axi_tx2_ARLOCK CACHE 1 2 }  { m_axi_tx2_ARCACHE PROT 1 4 }  { m_axi_tx2_ARPROT QOS 1 3 }  { m_axi_tx2_ARQOS REGION 1 4 }  { m_axi_tx2_ARREGION USER 1 4 }  { m_axi_tx2_ARUSER DATA 1 1 }  { m_axi_tx2_RVALID VALID 0 1 }  { m_axi_tx2_RREADY READY 1 1 }  { m_axi_tx2_RDATA FIFONUM 0 32 }  { m_axi_tx2_RLAST LAST 0 1 }  { m_axi_tx2_RID ID 0 1 }  { m_axi_tx2_RUSER DATA 0 1 }  { m_axi_tx2_RRESP RESP 0 2 }  { m_axi_tx2_BVALID VALID 0 1 }  { m_axi_tx2_BREADY READY 1 1 }  { m_axi_tx2_BRESP RESP 0 2 }  { m_axi_tx2_BID ID 0 1 }  { m_axi_tx2_BUSER DATA 0 1 } } }
	ta0 { m_axi {  { m_axi_ta0_AWVALID VALID 1 1 }  { m_axi_ta0_AWREADY READY 0 1 }  { m_axi_ta0_AWADDR ADDR 1 64 }  { m_axi_ta0_AWID ID 1 1 }  { m_axi_ta0_AWLEN SIZE 1 8 }  { m_axi_ta0_AWSIZE BURST 1 3 }  { m_axi_ta0_AWBURST LOCK 1 2 }  { m_axi_ta0_AWLOCK CACHE 1 2 }  { m_axi_ta0_AWCACHE PROT 1 4 }  { m_axi_ta0_AWPROT QOS 1 3 }  { m_axi_ta0_AWQOS REGION 1 4 }  { m_axi_ta0_AWREGION USER 1 4 }  { m_axi_ta0_AWUSER DATA 1 1 }  { m_axi_ta0_WVALID VALID 1 1 }  { m_axi_ta0_WREADY READY 0 1 }  { m_axi_ta0_WDATA FIFONUM 1 32 }  { m_axi_ta0_WSTRB STRB 1 4 }  { m_axi_ta0_WLAST LAST 1 1 }  { m_axi_ta0_WID ID 1 1 }  { m_axi_ta0_WUSER DATA 1 1 }  { m_axi_ta0_ARVALID VALID 1 1 }  { m_axi_ta0_ARREADY READY 0 1 }  { m_axi_ta0_ARADDR ADDR 1 64 }  { m_axi_ta0_ARID ID 1 1 }  { m_axi_ta0_ARLEN SIZE 1 8 }  { m_axi_ta0_ARSIZE BURST 1 3 }  { m_axi_ta0_ARBURST LOCK 1 2 }  { m_axi_ta0_ARLOCK CACHE 1 2 }  { m_axi_ta0_ARCACHE PROT 1 4 }  { m_axi_ta0_ARPROT QOS 1 3 }  { m_axi_ta0_ARQOS REGION 1 4 }  { m_axi_ta0_ARREGION USER 1 4 }  { m_axi_ta0_ARUSER DATA 1 1 }  { m_axi_ta0_RVALID VALID 0 1 }  { m_axi_ta0_RREADY READY 1 1 }  { m_axi_ta0_RDATA FIFONUM 0 32 }  { m_axi_ta0_RLAST LAST 0 1 }  { m_axi_ta0_RID ID 0 1 }  { m_axi_ta0_RUSER DATA 0 1 }  { m_axi_ta0_RRESP RESP 0 2 }  { m_axi_ta0_BVALID VALID 0 1 }  { m_axi_ta0_BREADY READY 1 1 }  { m_axi_ta0_BRESP RESP 0 2 }  { m_axi_ta0_BID ID 0 1 }  { m_axi_ta0_BUSER DATA 0 1 } } }
	tw0 { m_axi {  { m_axi_tw0_AWVALID VALID 1 1 }  { m_axi_tw0_AWREADY READY 0 1 }  { m_axi_tw0_AWADDR ADDR 1 64 }  { m_axi_tw0_AWID ID 1 1 }  { m_axi_tw0_AWLEN SIZE 1 8 }  { m_axi_tw0_AWSIZE BURST 1 3 }  { m_axi_tw0_AWBURST LOCK 1 2 }  { m_axi_tw0_AWLOCK CACHE 1 2 }  { m_axi_tw0_AWCACHE PROT 1 4 }  { m_axi_tw0_AWPROT QOS 1 3 }  { m_axi_tw0_AWQOS REGION 1 4 }  { m_axi_tw0_AWREGION USER 1 4 }  { m_axi_tw0_AWUSER DATA 1 1 }  { m_axi_tw0_WVALID VALID 1 1 }  { m_axi_tw0_WREADY READY 0 1 }  { m_axi_tw0_WDATA FIFONUM 1 32 }  { m_axi_tw0_WSTRB STRB 1 4 }  { m_axi_tw0_WLAST LAST 1 1 }  { m_axi_tw0_WID ID 1 1 }  { m_axi_tw0_WUSER DATA 1 1 }  { m_axi_tw0_ARVALID VALID 1 1 }  { m_axi_tw0_ARREADY READY 0 1 }  { m_axi_tw0_ARADDR ADDR 1 64 }  { m_axi_tw0_ARID ID 1 1 }  { m_axi_tw0_ARLEN SIZE 1 8 }  { m_axi_tw0_ARSIZE BURST 1 3 }  { m_axi_tw0_ARBURST LOCK 1 2 }  { m_axi_tw0_ARLOCK CACHE 1 2 }  { m_axi_tw0_ARCACHE PROT 1 4 }  { m_axi_tw0_ARPROT QOS 1 3 }  { m_axi_tw0_ARQOS REGION 1 4 }  { m_axi_tw0_ARREGION USER 1 4 }  { m_axi_tw0_ARUSER DATA 1 1 }  { m_axi_tw0_RVALID VALID 0 1 }  { m_axi_tw0_RREADY READY 1 1 }  { m_axi_tw0_RDATA FIFONUM 0 32 }  { m_axi_tw0_RLAST LAST 0 1 }  { m_axi_tw0_RID ID 0 1 }  { m_axi_tw0_RUSER DATA 0 1 }  { m_axi_tw0_RRESP RESP 0 2 }  { m_axi_tw0_BVALID VALID 0 1 }  { m_axi_tw0_BREADY READY 1 1 }  { m_axi_tw0_BRESP RESP 0 2 }  { m_axi_tw0_BID ID 0 1 }  { m_axi_tw0_BUSER DATA 0 1 } } }
	active_count { ap_none {  { active_count in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	pivot_eps { ap_none {  { pivot_eps in_data 0 32 } } }
	status { ap_vld {  { status out_data 1 32 }  { status_ap_vld out_vld 1 1 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
	divisions { ap_vld {  { divisions out_data 1 64 }  { divisions_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict tu0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tu1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tu2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tu3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tu4 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tb0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tb1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tb2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tx0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tx1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tx2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict ta0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict tw0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ tu0 1 }
	{ tu1 1 }
	{ tu2 1 }
	{ tu3 1 }
	{ tu4 1 }
	{ tb0 1 }
	{ tb1 1 }
	{ tb2 1 }
	{ tx0 1 }
	{ tx1 1 }
	{ tx2 1 }
	{ ta0 1 }
	{ tw0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ tu0 1 }
	{ tu1 1 }
	{ tu2 1 }
	{ tu3 1 }
	{ tu4 1 }
	{ tb0 1 }
	{ tb1 1 }
	{ tb2 1 }
	{ tx0 1 }
	{ tx1 1 }
	{ tx2 1 }
	{ ta0 1 }
	{ tw0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
