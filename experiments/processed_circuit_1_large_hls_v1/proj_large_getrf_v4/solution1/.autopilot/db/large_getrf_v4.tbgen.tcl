set moduleName large_getrf_v4
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
set C_modelName {large_getrf_v4}
set C_modelType { void 0 }
set C_modelArgList {
	{ v4a0 int 32 regular {axi_master 0}  }
	{ v4a1 int 32 regular {axi_master 0}  }
	{ v4a2 int 32 regular {axi_master 0}  }
	{ v4l0 int 32 regular {axi_master 0}  }
	{ v4l1 int 32 regular {axi_master 0}  }
	{ v4l2 int 32 regular {axi_master 1}  }
	{ v4u0 int 32 regular {axi_master 0}  }
	{ v4u1 int 32 regular {axi_master 0}  }
	{ v4u2 int 32 regular {axi_master 2}  }
	{ v4u3 int 32 regular {axi_master 0}  }
	{ a_ptr int 64 regular {axi_slave 0}  }
	{ a_idx int 64 regular {axi_slave 0}  }
	{ a_val int 64 regular {axi_slave 0}  }
	{ l_ptr int 64 regular {axi_slave 0}  }
	{ l_idx int 64 regular {axi_slave 0}  }
	{ l_val int 64 regular {axi_slave 0}  }
	{ u_ptr int 64 regular {axi_slave 0}  }
	{ u_idx int 64 regular {axi_slave 0}  }
	{ u_val int 64 regular {axi_slave 0}  }
	{ u_diag_pos int 64 regular {axi_slave 0}  }
	{ n int 32 regular {axi_slave 0}  }
	{ pivot_eps float 32 regular {axi_slave 0}  }
	{ status int 32 regular {pointer 1}  }
	{ muladds int 64 regular {pointer 1}  }
	{ divisions int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v4a0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_ptr","offset": { "type": "dynamic","port_name": "a_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4a1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_idx","offset": { "type": "dynamic","port_name": "a_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4a2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_val","offset": { "type": "dynamic","port_name": "a_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4l0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_ptr","offset": { "type": "dynamic","port_name": "l_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4l1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_idx","offset": { "type": "dynamic","port_name": "l_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4l2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "l_val","offset": { "type": "dynamic","port_name": "l_val","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "v4u0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_ptr","offset": { "type": "dynamic","port_name": "u_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4u1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_idx","offset": { "type": "dynamic","port_name": "u_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4u2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "u_val","offset": { "type": "dynamic","port_name": "u_val","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "v4u3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_diag_pos","offset": { "type": "dynamic","port_name": "u_diag_pos","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "a_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "a_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "a_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "l_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "l_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "l_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "u_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "u_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "u_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "u_diag_pos", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "n", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "pivot_eps", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "divisions", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 476
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_v4a0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v4a0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_v4a0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4a0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4a0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4a0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4a0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v4a0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v4a0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_v4a0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4a0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4a0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4a0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4a0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4a0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4a0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v4a0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4a0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4a0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v4a0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4a0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4a0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v4a0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4a0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4a1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4a1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_v4a1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4a1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4a1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_v4a1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v4a1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4a1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4a1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v4a2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_v4a2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v4a2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v4a2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_v4a2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v4a2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v4a2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v4a2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4l0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_v4l0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_v4l0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_v4l0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_v4l0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_v4l0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_v4l0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_v4l0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_v4l0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_v4l0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_v4l0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_v4l0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_v4l0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_v4l0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_v4l0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_v4l0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_v4l0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_v4l0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_v4l0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_v4l0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_v4l0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_v4l0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_v4l0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_v4l0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_v4l1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_v4l1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_v4l1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_v4l1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_v4l1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_v4l1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_v4l1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_v4l1_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_v4l1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_v4l1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_v4l1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_v4l1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_v4l1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_v4l1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_v4l1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_v4l1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_v4l1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_v4l1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_v4l1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_v4l1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_v4l1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_v4l1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_v4l1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_v4l1_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_v4l2_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_v4l2_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_v4l2_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_v4l2_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_v4l2_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_v4l2_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_v4l2_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_v4l2_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_v4l2_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_v4l2_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_v4l2_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_v4l2_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_v4l2_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_v4l2_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_v4l2_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_v4l2_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_v4l2_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_v4l2_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_v4l2_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_v4l2_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_v4l2_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_v4l2_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_v4l2_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_v4l2_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_v4u0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_v4u0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_v4u0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_v4u0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_v4u0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_v4u0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_v4u0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_v4u0_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_v4u0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_v4u0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_v4u0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_v4u0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_v4u0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_v4u0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_v4u0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_v4u0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_v4u0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_v4u0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_v4u0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_v4u0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_v4u0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_v4u0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_v4u0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_v4u0_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_v4u1_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_v4u1_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_v4u1_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_v4u1_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_v4u1_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_v4u1_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_v4u1_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_v4u1_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_v4u1_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_v4u1_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_v4u1_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_v4u1_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_v4u1_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_v4u1_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_v4u1_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_v4u1_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_v4u1_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_v4u1_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_v4u1_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_v4u1_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_v4u1_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_v4u1_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_v4u1_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_v4u1_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_v4u2_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_v4u2_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_v4u2_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_v4u2_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_v4u2_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_v4u2_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_v4u2_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_v4u2_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_v4u2_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_v4u2_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_v4u2_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_v4u2_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_v4u2_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_v4u2_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_v4u2_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_v4u2_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_v4u2_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_v4u2_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_v4u2_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_v4u2_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_v4u2_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_v4u2_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_v4u2_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_v4u2_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_v4u3_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_v4u3_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_v4u3_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_v4u3_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_v4u3_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_v4u3_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_v4u3_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_v4u3_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_v4u3_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_v4u3_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_v4u3_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_v4u3_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_v4u3_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_v4u3_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_v4u3_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_v4u3_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_v4u3_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_v4u3_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_v4u3_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_v4u3_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_v4u3_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_v4u3_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_v4u3_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_v4u3_BUSER sc_in sc_lv 1 signal 9 } 
	{ status sc_out sc_lv 32 signal 22 } 
	{ status_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ muladds sc_out sc_lv 64 signal 23 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ divisions sc_out sc_lv 64 signal 24 } 
	{ divisions_ap_vld sc_out sc_logic 1 outvld 24 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"large_getrf_v4","role":"start","value":"0","valid_bit":"0"},{"name":"large_getrf_v4","role":"continue","value":"0","valid_bit":"4"},{"name":"large_getrf_v4","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a_ptr","role":"data","value":"16"},{"name":"a_idx","role":"data","value":"28"},{"name":"a_val","role":"data","value":"40"},{"name":"l_ptr","role":"data","value":"52"},{"name":"l_idx","role":"data","value":"64"},{"name":"l_val","role":"data","value":"76"},{"name":"u_ptr","role":"data","value":"88"},{"name":"u_idx","role":"data","value":"100"},{"name":"u_val","role":"data","value":"112"},{"name":"u_diag_pos","role":"data","value":"124"},{"name":"n","role":"data","value":"136"},{"name":"pivot_eps","role":"data","value":"144"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"large_getrf_v4","role":"start","value":"0","valid_bit":"0"},{"name":"large_getrf_v4","role":"done","value":"0","valid_bit":"1"},{"name":"large_getrf_v4","role":"idle","value":"0","valid_bit":"2"},{"name":"large_getrf_v4","role":"ready","value":"0","valid_bit":"3"},{"name":"large_getrf_v4","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_v4a0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4a0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4a0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4a0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "AWID" }} , 
 	{ "name": "m_axi_v4a0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4a0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4a0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4a0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4a0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4a0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4a0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4a0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4a0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4a0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4a0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4a0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4a0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4a0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4a0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "WID" }} , 
 	{ "name": "m_axi_v4a0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4a0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4a0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4a0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4a0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "ARID" }} , 
 	{ "name": "m_axi_v4a0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4a0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4a0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4a0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4a0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4a0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4a0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4a0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4a0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4a0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4a0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4a0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4a0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4a0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "RID" }} , 
 	{ "name": "m_axi_v4a0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4a0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4a0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4a0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4a0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4a0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "BID" }} , 
 	{ "name": "m_axi_v4a0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4a1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4a1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4a1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4a1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWID" }} , 
 	{ "name": "m_axi_v4a1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4a1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4a1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4a1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4a1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4a1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4a1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4a1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4a1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4a1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4a1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4a1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4a1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4a1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4a1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WID" }} , 
 	{ "name": "m_axi_v4a1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4a1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4a1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4a1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4a1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARID" }} , 
 	{ "name": "m_axi_v4a1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4a1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4a1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4a1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4a1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4a1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4a1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4a1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4a1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4a1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4a1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4a1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4a1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4a1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RID" }} , 
 	{ "name": "m_axi_v4a1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4a1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4a1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4a1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4a1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4a1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BID" }} , 
 	{ "name": "m_axi_v4a1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4a2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4a2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4a2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4a2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWID" }} , 
 	{ "name": "m_axi_v4a2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4a2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4a2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4a2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4a2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4a2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4a2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4a2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4a2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4a2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4a2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4a2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4a2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4a2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4a2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WID" }} , 
 	{ "name": "m_axi_v4a2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4a2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4a2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4a2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4a2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARID" }} , 
 	{ "name": "m_axi_v4a2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4a2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4a2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4a2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4a2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4a2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4a2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4a2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4a2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4a2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4a2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4a2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4a2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4a2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4a2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RID" }} , 
 	{ "name": "m_axi_v4a2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4a2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4a2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4a2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4a2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4a2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BID" }} , 
 	{ "name": "m_axi_v4a2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4l0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4l0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4l0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4l0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "AWID" }} , 
 	{ "name": "m_axi_v4l0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4l0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4l0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4l0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4l0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4l0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4l0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4l0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4l0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4l0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4l0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4l0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4l0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4l0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4l0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "WID" }} , 
 	{ "name": "m_axi_v4l0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4l0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4l0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4l0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4l0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "ARID" }} , 
 	{ "name": "m_axi_v4l0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4l0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4l0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4l0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4l0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4l0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4l0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4l0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4l0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4l0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4l0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4l0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4l0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4l0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "RID" }} , 
 	{ "name": "m_axi_v4l0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4l0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4l0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4l0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4l0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4l0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "BID" }} , 
 	{ "name": "m_axi_v4l0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4l1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4l1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4l1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4l1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "AWID" }} , 
 	{ "name": "m_axi_v4l1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4l1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4l1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4l1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4l1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4l1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4l1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4l1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4l1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4l1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4l1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4l1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4l1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4l1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4l1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "WID" }} , 
 	{ "name": "m_axi_v4l1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4l1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4l1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4l1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4l1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "ARID" }} , 
 	{ "name": "m_axi_v4l1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4l1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4l1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4l1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4l1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4l1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4l1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4l1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4l1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4l1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4l1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4l1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4l1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4l1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "RID" }} , 
 	{ "name": "m_axi_v4l1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4l1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4l1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4l1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4l1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4l1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "BID" }} , 
 	{ "name": "m_axi_v4l1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4l2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4l2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4l2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4l2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "AWID" }} , 
 	{ "name": "m_axi_v4l2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4l2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4l2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4l2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4l2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4l2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4l2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4l2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4l2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4l2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4l2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4l2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4l2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4l2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4l2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "WID" }} , 
 	{ "name": "m_axi_v4l2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4l2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4l2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4l2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4l2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4l2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "ARID" }} , 
 	{ "name": "m_axi_v4l2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4l2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4l2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4l2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4l2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4l2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4l2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4l2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4l2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4l2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4l2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4l2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4l2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4l2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4l2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4l2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4l2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4l2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "RID" }} , 
 	{ "name": "m_axi_v4l2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4l2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4l2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4l2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4l2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4l2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4l2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "BID" }} , 
 	{ "name": "m_axi_v4l2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4l2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4u0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4u0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4u0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4u0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "AWID" }} , 
 	{ "name": "m_axi_v4u0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4u0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4u0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4u0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4u0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4u0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4u0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4u0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4u0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4u0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4u0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4u0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u0", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4u0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4u0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4u0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "WID" }} , 
 	{ "name": "m_axi_v4u0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4u0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4u0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4u0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4u0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "ARID" }} , 
 	{ "name": "m_axi_v4u0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4u0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4u0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4u0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4u0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4u0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4u0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4u0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4u0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4u0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4u0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4u0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u0", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4u0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4u0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "RID" }} , 
 	{ "name": "m_axi_v4u0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4u0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4u0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4u0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4u0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u0", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4u0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "BID" }} , 
 	{ "name": "m_axi_v4u0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u0", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4u1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4u1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4u1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4u1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWID" }} , 
 	{ "name": "m_axi_v4u1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4u1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4u1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4u1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4u1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4u1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4u1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4u1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4u1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4u1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4u1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4u1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4u1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4u1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4u1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "WID" }} , 
 	{ "name": "m_axi_v4u1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4u1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4u1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4u1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4u1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "ARID" }} , 
 	{ "name": "m_axi_v4u1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4u1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4u1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4u1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4u1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4u1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4u1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4u1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4u1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4u1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4u1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4u1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4u1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4u1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "RID" }} , 
 	{ "name": "m_axi_v4u1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4u1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4u1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4u1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4u1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4u1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "BID" }} , 
 	{ "name": "m_axi_v4u1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4u2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4u2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4u2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4u2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "AWID" }} , 
 	{ "name": "m_axi_v4u2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4u2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4u2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4u2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4u2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4u2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4u2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4u2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4u2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4u2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4u2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4u2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4u2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4u2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4u2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "WID" }} , 
 	{ "name": "m_axi_v4u2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4u2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4u2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4u2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4u2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "ARID" }} , 
 	{ "name": "m_axi_v4u2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4u2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4u2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4u2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4u2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4u2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4u2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4u2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4u2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4u2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4u2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4u2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4u2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4u2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RID" }} , 
 	{ "name": "m_axi_v4u2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4u2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4u2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4u2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4u2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4u2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BID" }} , 
 	{ "name": "m_axi_v4u2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4u3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4u3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4u3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4u3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "AWID" }} , 
 	{ "name": "m_axi_v4u3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4u3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4u3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4u3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4u3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4u3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4u3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4u3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4u3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4u3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4u3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4u3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u3", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4u3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4u3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4u3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "WID" }} , 
 	{ "name": "m_axi_v4u3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4u3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4u3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4u3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4u3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "ARID" }} , 
 	{ "name": "m_axi_v4u3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "v4u3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4u3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4u3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4u3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4u3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4u3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4u3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4u3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4u3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4u3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4u3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4u3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4u3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4u3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u3", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4u3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4u3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "RID" }} , 
 	{ "name": "m_axi_v4u3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4u3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4u3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4u3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4u3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u3", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4u3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "BID" }} , 
 	{ "name": "m_axi_v4u3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u3", "role": "BUSER" }} , 
 	{ "name": "status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "default" }} , 
 	{ "name": "status_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "ap_vld" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }} , 
 	{ "name": "divisions", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "divisions", "role": "default" }} , 
 	{ "name": "divisions_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "divisions", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "18", "20", "22", "28", "30", "35", "44", "52", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "large_getrf_v4",
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
			{"Name" : "v4a0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4a0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4a0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4a1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374", "Port" : "v4a1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "v4a2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374", "Port" : "v4a2", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "v4l0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4l0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4l0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4l1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4l1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4l1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346", "Port" : "v4l1", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "v4l2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v4l2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v4l2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "v4l2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "v4u0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4u0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4u1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360", "Port" : "v4u1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "28", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401", "Port" : "v4u1", "Inst_start_state" : "79", "Inst_end_state" : "80"},
					{"ID" : "52", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507", "Port" : "v4u1", "Inst_start_state" : "115", "Inst_end_state" : "116"}]},
			{"Name" : "v4u2", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "v4u2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4u2_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "v4u2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "v4u2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401", "Port" : "v4u2", "Inst_start_state" : "79", "Inst_end_state" : "80"},
					{"ID" : "52", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507", "Port" : "v4u2", "Inst_start_state" : "115", "Inst_end_state" : "116"}]},
			{"Name" : "v4u3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4u3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "a_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_diag_pos", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "pivot_eps", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435", "Port" : "muladds", "Inst_start_state" : "94", "Inst_end_state" : "97"},
					{"ID" : "44", "SubInstance" : "grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471", "Port" : "muladds", "Inst_start_state" : "94", "Inst_end_state" : "99"}]},
			{"Name" : "divisions", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "148", "FirstState" : "ap_ST_fsm_state94", "LastState" : ["ap_ST_fsm_state96"], "QuitState" : ["ap_ST_fsm_state94"], "PreState" : ["ap_ST_fsm_state93"], "PostState" : ["ap_ST_fsm_state97", "ap_ST_fsm_state99"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_84_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "148", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state98"], "QuitState" : ["ap_ST_fsm_state81", "ap_ST_fsm_state93"], "PreState" : ["ap_ST_fsm_state38", "ap_ST_fsm_state80", "ap_ST_fsm_state71", "ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state107", "ap_ST_fsm_state148"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_68_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "148", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state107"], "QuitState" : ["ap_ST_fsm_state29", "ap_ST_fsm_state93"], "PreState" : ["ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state108", "ap_ST_fsm_state148"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_51_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "148", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state148"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.work_bank_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.work_bank_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.work_bank_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.work_bank_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pattern_bank_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pattern_bank_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pattern_bank_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pattern_bank_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.worktag_bank_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.worktag_bank_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.worktag_bank_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.worktag_bank_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inv_diag_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_idx_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_val_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_47_1_fu_1332", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_47_1",
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
			{"Name" : "select_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "inv_diag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_47_1_fu_1332.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_53_3",
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
			{"Name" : "zext_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "v4l1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4l1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln53_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln53_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_57_4",
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
			{"Name" : "zext_ln57", "Type" : "None", "Direction" : "I"},
			{"Name" : "v4u1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln57_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln57_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_61_5",
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
			{"Name" : "zext_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "v4a2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4a2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4a2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4a1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4a1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4a1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln61_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.fadd_32ns_32ns_32_6_no_dsp_1_U29", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.mux_42_32_1_1_U30", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.mux_42_32_1_1_U31", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.mux_42_32_1_1_U32", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_80_7",
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
			{"Name" : "v4u2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4u1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln80_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln80", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln80_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_idx", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_val", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414", "Parent" : "0", "Child" : ["31", "32", "33", "34"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_98_11",
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
			{"Name" : "indvars_iv110", "Type" : "None", "Direction" : "I"},
			{"Name" : "conflict", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conflict_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_11", "PipelineType" : "NotSupport"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.mux_42_1_1_1_U63", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.mux_42_32_1_1_U64", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.mux_42_32_1_1_U65", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_107_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vs", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "lik", "Type" : "None", "Direction" : "I"},
			{"Name" : "js", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.fsub_32ns_32ns_32_8_full_dsp_1_U79", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.fmul_32ns_32ns_32_5_max_dsp_1_U80", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.mux_42_1_1_1_U81", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.mux_42_32_1_1_U82", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.mux_42_32_1_1_U83", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.mux_42_32_1_1_U84", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.mux_42_32_1_1_U85", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_101_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vs", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "lik", "Type" : "None", "Direction" : "I"},
			{"Name" : "js", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.fsub_32ns_32ns_32_8_full_dsp_1_U113", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.mux_42_1_1_1_U115", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.mux_42_32_1_1_U116", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.mux_42_32_1_1_U117", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.mux_42_32_1_1_U118", "Parent" : "44"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.mux_42_32_1_1_U119", "Parent" : "44"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507", "Parent" : "0", "Child" : ["53", "54", "55"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_116_14",
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
			{"Name" : "zext_ln57", "Type" : "None", "Direction" : "I"},
			{"Name" : "v4u2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v4u2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "v4u1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4u1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln57_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln116", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln57_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_116_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.mux_42_32_1_1_U145", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.mux_42_32_1_1_U146", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4a0_m_axi_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4a1_m_axi_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4a2_m_axi_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4l0_m_axi_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4l1_m_axi_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4l2_m_axi_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4u0_m_axi_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4u1_m_axi_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4u2_m_axi_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v4u3_m_axi_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_1_U163", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U164", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U165", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U166", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U167", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U168", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U169", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U170", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U171", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U172", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4 {
		v4a0 {Type I LastRead 12 FirstWrite -1}
		v4a1 {Type I LastRead 7 FirstWrite -1}
		v4a2 {Type I LastRead 16 FirstWrite -1}
		v4l0 {Type I LastRead 12 FirstWrite -1}
		v4l1 {Type I LastRead 35 FirstWrite -1}
		v4l2 {Type O LastRead 65 FirstWrite 38}
		v4u0 {Type I LastRead 68 FirstWrite -1}
		v4u1 {Type I LastRead 70 FirstWrite -1}
		v4u2 {Type IO LastRead 70 FirstWrite -1}
		v4u3 {Type I LastRead 46 FirstWrite -1}
		a_ptr {Type I LastRead 0 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		l_ptr {Type I LastRead 0 FirstWrite -1}
		l_idx {Type I LastRead 0 FirstWrite -1}
		l_val {Type I LastRead 0 FirstWrite -1}
		u_ptr {Type I LastRead 0 FirstWrite -1}
		u_idx {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 0 FirstWrite -1}
		u_diag_pos {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		pivot_eps {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 0}
		muladds {Type O LastRead -1 FirstWrite 0}
		divisions {Type O LastRead -1 FirstWrite 0}}
	large_getrf_v4_Pipeline_VITIS_LOOP_47_1 {
		select_ln47 {Type I LastRead 0 FirstWrite -1}
		inv_diag {Type O LastRead -1 FirstWrite 0}
		worktag_bank {Type O LastRead -1 FirstWrite 0}
		worktag_bank_3 {Type O LastRead -1 FirstWrite 0}
		worktag_bank_2 {Type O LastRead -1 FirstWrite 0}
		worktag_bank_1 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_3 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_2 {Type O LastRead -1 FirstWrite 0}
		pattern_bank_1 {Type O LastRead -1 FirstWrite 0}
		pattern_bank {Type O LastRead -1 FirstWrite 0}}
	large_getrf_v4_Pipeline_VITIS_LOOP_53_3 {
		zext_ln53 {Type I LastRead 0 FirstWrite -1}
		v4l1 {Type I LastRead 2 FirstWrite -1}
		sext_ln53_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln53_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		pattern_bank_3 {Type O LastRead -1 FirstWrite 3}
		pattern_bank_2 {Type O LastRead -1 FirstWrite 3}
		pattern_bank_1 {Type O LastRead -1 FirstWrite 3}
		pattern_bank {Type O LastRead -1 FirstWrite 3}}
	large_getrf_v4_Pipeline_VITIS_LOOP_57_4 {
		zext_ln57 {Type I LastRead 0 FirstWrite -1}
		v4u1 {Type I LastRead 2 FirstWrite -1}
		sext_ln57_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln57_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		pattern_bank_3 {Type O LastRead -1 FirstWrite 3}
		pattern_bank_2 {Type O LastRead -1 FirstWrite 3}
		pattern_bank_1 {Type O LastRead -1 FirstWrite 3}
		pattern_bank {Type O LastRead -1 FirstWrite 3}}
	large_getrf_v4_Pipeline_VITIS_LOOP_61_5 {
		zext_ln61 {Type I LastRead 0 FirstWrite -1}
		v4a2 {Type I LastRead 16 FirstWrite -1}
		v4a1 {Type I LastRead 7 FirstWrite -1}
		zext_ln61_1 {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_1 {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_2 {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_3 {Type IO LastRead 8 FirstWrite 9}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 15 FirstWrite 14}
		work_bank_1 {Type IO LastRead 15 FirstWrite 14}
		work_bank_2 {Type IO LastRead 15 FirstWrite 14}
		work_bank_3 {Type IO LastRead 15 FirstWrite 14}
		pattern_bank {Type I LastRead 7 FirstWrite -1}
		pattern_bank_1 {Type I LastRead 7 FirstWrite -1}
		pattern_bank_2 {Type I LastRead 7 FirstWrite -1}
		pattern_bank_3 {Type I LastRead 7 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	large_getrf_v4_Pipeline_VITIS_LOOP_80_7 {
		v4u2 {Type I LastRead 1 FirstWrite -1}
		v4u1 {Type I LastRead 1 FirstWrite -1}
		sext_ln80_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln80 {Type I LastRead 0 FirstWrite -1}
		trunc_ln80_2 {Type I LastRead 0 FirstWrite -1}
		row_idx {Type O LastRead -1 FirstWrite 2}
		row_val {Type O LastRead -1 FirstWrite 2}}
	large_getrf_v4_Pipeline_VITIS_LOOP_98_11 {
		indvars_iv110 {Type I LastRead 0 FirstWrite -1}
		conflict {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		valid_1 {Type I LastRead 0 FirstWrite -1}
		valid_2 {Type I LastRead 0 FirstWrite -1}
		js {Type I LastRead 0 FirstWrite -1}
		js_2 {Type I LastRead 0 FirstWrite -1}
		js_4 {Type I LastRead 0 FirstWrite -1}
		js_6 {Type I LastRead 0 FirstWrite -1}
		a_cast {Type I LastRead 0 FirstWrite -1}
		tmp_10 {Type I LastRead 0 FirstWrite -1}
		conflict_1_out {Type O LastRead -1 FirstWrite 0}}
	large_getrf_v4_Pipeline_VITIS_LOOP_107_13 {
		empty_51 {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		valid_1 {Type I LastRead 0 FirstWrite -1}
		valid_2 {Type I LastRead 0 FirstWrite -1}
		muladds {Type O LastRead -1 FirstWrite 1}
		vs {Type I LastRead 0 FirstWrite -1}
		vs_2 {Type I LastRead 0 FirstWrite -1}
		vs_4 {Type I LastRead 0 FirstWrite -1}
		vs_6 {Type I LastRead 0 FirstWrite -1}
		lik {Type I LastRead 0 FirstWrite -1}
		js {Type I LastRead 0 FirstWrite -1}
		js_2 {Type I LastRead 0 FirstWrite -1}
		js_4 {Type I LastRead 0 FirstWrite -1}
		js_6 {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_1 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_2 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_3 {Type IO LastRead 1 FirstWrite 3}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 5 FirstWrite 4}
		work_bank_1 {Type IO LastRead 5 FirstWrite 4}
		work_bank_2 {Type IO LastRead 5 FirstWrite 4}
		work_bank_3 {Type IO LastRead 5 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 3}}
	large_getrf_v4_Pipeline_VITIS_LOOP_101_12 {
		empty_52 {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		valid_1 {Type I LastRead 0 FirstWrite -1}
		valid_2 {Type I LastRead 0 FirstWrite -1}
		muladds {Type O LastRead -1 FirstWrite 1}
		vs {Type I LastRead 0 FirstWrite -1}
		vs_2 {Type I LastRead 0 FirstWrite -1}
		vs_4 {Type I LastRead 0 FirstWrite -1}
		vs_6 {Type I LastRead 0 FirstWrite -1}
		lik {Type I LastRead 0 FirstWrite -1}
		js {Type I LastRead 0 FirstWrite -1}
		js_2 {Type I LastRead 0 FirstWrite -1}
		js_4 {Type I LastRead 0 FirstWrite -1}
		js_6 {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_1 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_2 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_3 {Type IO LastRead 1 FirstWrite 3}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 5 FirstWrite 4}
		work_bank_1 {Type IO LastRead 5 FirstWrite 4}
		work_bank_2 {Type IO LastRead 5 FirstWrite 4}
		work_bank_3 {Type IO LastRead 5 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 3}}
	large_getrf_v4_Pipeline_VITIS_LOOP_116_14 {
		zext_ln57 {Type I LastRead 0 FirstWrite -1}
		v4u2 {Type O LastRead -1 FirstWrite 7}
		v4u1 {Type I LastRead 2 FirstWrite -1}
		sext_ln57_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln116 {Type I LastRead 0 FirstWrite -1}
		zext_ln57_1 {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 3 FirstWrite 4}
		worktag_bank_1 {Type IO LastRead 3 FirstWrite 4}
		worktag_bank_2 {Type IO LastRead 3 FirstWrite 4}
		worktag_bank_3 {Type IO LastRead 3 FirstWrite 4}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 5 FirstWrite 4}
		work_bank_1 {Type IO LastRead 5 FirstWrite 4}
		work_bank_2 {Type IO LastRead 5 FirstWrite 4}
		work_bank_3 {Type IO LastRead 5 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v4a0 { m_axi {  { m_axi_v4a0_AWVALID VALID 1 1 }  { m_axi_v4a0_AWREADY READY 0 1 }  { m_axi_v4a0_AWADDR ADDR 1 64 }  { m_axi_v4a0_AWID ID 1 1 }  { m_axi_v4a0_AWLEN SIZE 1 8 }  { m_axi_v4a0_AWSIZE BURST 1 3 }  { m_axi_v4a0_AWBURST LOCK 1 2 }  { m_axi_v4a0_AWLOCK CACHE 1 2 }  { m_axi_v4a0_AWCACHE PROT 1 4 }  { m_axi_v4a0_AWPROT QOS 1 3 }  { m_axi_v4a0_AWQOS REGION 1 4 }  { m_axi_v4a0_AWREGION USER 1 4 }  { m_axi_v4a0_AWUSER DATA 1 1 }  { m_axi_v4a0_WVALID VALID 1 1 }  { m_axi_v4a0_WREADY READY 0 1 }  { m_axi_v4a0_WDATA FIFONUM 1 32 }  { m_axi_v4a0_WSTRB STRB 1 4 }  { m_axi_v4a0_WLAST LAST 1 1 }  { m_axi_v4a0_WID ID 1 1 }  { m_axi_v4a0_WUSER DATA 1 1 }  { m_axi_v4a0_ARVALID VALID 1 1 }  { m_axi_v4a0_ARREADY READY 0 1 }  { m_axi_v4a0_ARADDR ADDR 1 64 }  { m_axi_v4a0_ARID ID 1 1 }  { m_axi_v4a0_ARLEN SIZE 1 8 }  { m_axi_v4a0_ARSIZE BURST 1 3 }  { m_axi_v4a0_ARBURST LOCK 1 2 }  { m_axi_v4a0_ARLOCK CACHE 1 2 }  { m_axi_v4a0_ARCACHE PROT 1 4 }  { m_axi_v4a0_ARPROT QOS 1 3 }  { m_axi_v4a0_ARQOS REGION 1 4 }  { m_axi_v4a0_ARREGION USER 1 4 }  { m_axi_v4a0_ARUSER DATA 1 1 }  { m_axi_v4a0_RVALID VALID 0 1 }  { m_axi_v4a0_RREADY READY 1 1 }  { m_axi_v4a0_RDATA FIFONUM 0 32 }  { m_axi_v4a0_RLAST LAST 0 1 }  { m_axi_v4a0_RID ID 0 1 }  { m_axi_v4a0_RUSER DATA 0 1 }  { m_axi_v4a0_RRESP RESP 0 2 }  { m_axi_v4a0_BVALID VALID 0 1 }  { m_axi_v4a0_BREADY READY 1 1 }  { m_axi_v4a0_BRESP RESP 0 2 }  { m_axi_v4a0_BID ID 0 1 }  { m_axi_v4a0_BUSER DATA 0 1 } } }
	v4a1 { m_axi {  { m_axi_v4a1_AWVALID VALID 1 1 }  { m_axi_v4a1_AWREADY READY 0 1 }  { m_axi_v4a1_AWADDR ADDR 1 64 }  { m_axi_v4a1_AWID ID 1 1 }  { m_axi_v4a1_AWLEN SIZE 1 8 }  { m_axi_v4a1_AWSIZE BURST 1 3 }  { m_axi_v4a1_AWBURST LOCK 1 2 }  { m_axi_v4a1_AWLOCK CACHE 1 2 }  { m_axi_v4a1_AWCACHE PROT 1 4 }  { m_axi_v4a1_AWPROT QOS 1 3 }  { m_axi_v4a1_AWQOS REGION 1 4 }  { m_axi_v4a1_AWREGION USER 1 4 }  { m_axi_v4a1_AWUSER DATA 1 1 }  { m_axi_v4a1_WVALID VALID 1 1 }  { m_axi_v4a1_WREADY READY 0 1 }  { m_axi_v4a1_WDATA FIFONUM 1 32 }  { m_axi_v4a1_WSTRB STRB 1 4 }  { m_axi_v4a1_WLAST LAST 1 1 }  { m_axi_v4a1_WID ID 1 1 }  { m_axi_v4a1_WUSER DATA 1 1 }  { m_axi_v4a1_ARVALID VALID 1 1 }  { m_axi_v4a1_ARREADY READY 0 1 }  { m_axi_v4a1_ARADDR ADDR 1 64 }  { m_axi_v4a1_ARID ID 1 1 }  { m_axi_v4a1_ARLEN SIZE 1 8 }  { m_axi_v4a1_ARSIZE BURST 1 3 }  { m_axi_v4a1_ARBURST LOCK 1 2 }  { m_axi_v4a1_ARLOCK CACHE 1 2 }  { m_axi_v4a1_ARCACHE PROT 1 4 }  { m_axi_v4a1_ARPROT QOS 1 3 }  { m_axi_v4a1_ARQOS REGION 1 4 }  { m_axi_v4a1_ARREGION USER 1 4 }  { m_axi_v4a1_ARUSER DATA 1 1 }  { m_axi_v4a1_RVALID VALID 0 1 }  { m_axi_v4a1_RREADY READY 1 1 }  { m_axi_v4a1_RDATA FIFONUM 0 32 }  { m_axi_v4a1_RLAST LAST 0 1 }  { m_axi_v4a1_RID ID 0 1 }  { m_axi_v4a1_RUSER DATA 0 1 }  { m_axi_v4a1_RRESP RESP 0 2 }  { m_axi_v4a1_BVALID VALID 0 1 }  { m_axi_v4a1_BREADY READY 1 1 }  { m_axi_v4a1_BRESP RESP 0 2 }  { m_axi_v4a1_BID ID 0 1 }  { m_axi_v4a1_BUSER DATA 0 1 } } }
	v4a2 { m_axi {  { m_axi_v4a2_AWVALID VALID 1 1 }  { m_axi_v4a2_AWREADY READY 0 1 }  { m_axi_v4a2_AWADDR ADDR 1 64 }  { m_axi_v4a2_AWID ID 1 1 }  { m_axi_v4a2_AWLEN SIZE 1 8 }  { m_axi_v4a2_AWSIZE BURST 1 3 }  { m_axi_v4a2_AWBURST LOCK 1 2 }  { m_axi_v4a2_AWLOCK CACHE 1 2 }  { m_axi_v4a2_AWCACHE PROT 1 4 }  { m_axi_v4a2_AWPROT QOS 1 3 }  { m_axi_v4a2_AWQOS REGION 1 4 }  { m_axi_v4a2_AWREGION USER 1 4 }  { m_axi_v4a2_AWUSER DATA 1 1 }  { m_axi_v4a2_WVALID VALID 1 1 }  { m_axi_v4a2_WREADY READY 0 1 }  { m_axi_v4a2_WDATA FIFONUM 1 32 }  { m_axi_v4a2_WSTRB STRB 1 4 }  { m_axi_v4a2_WLAST LAST 1 1 }  { m_axi_v4a2_WID ID 1 1 }  { m_axi_v4a2_WUSER DATA 1 1 }  { m_axi_v4a2_ARVALID VALID 1 1 }  { m_axi_v4a2_ARREADY READY 0 1 }  { m_axi_v4a2_ARADDR ADDR 1 64 }  { m_axi_v4a2_ARID ID 1 1 }  { m_axi_v4a2_ARLEN SIZE 1 8 }  { m_axi_v4a2_ARSIZE BURST 1 3 }  { m_axi_v4a2_ARBURST LOCK 1 2 }  { m_axi_v4a2_ARLOCK CACHE 1 2 }  { m_axi_v4a2_ARCACHE PROT 1 4 }  { m_axi_v4a2_ARPROT QOS 1 3 }  { m_axi_v4a2_ARQOS REGION 1 4 }  { m_axi_v4a2_ARREGION USER 1 4 }  { m_axi_v4a2_ARUSER DATA 1 1 }  { m_axi_v4a2_RVALID VALID 0 1 }  { m_axi_v4a2_RREADY READY 1 1 }  { m_axi_v4a2_RDATA FIFONUM 0 32 }  { m_axi_v4a2_RLAST LAST 0 1 }  { m_axi_v4a2_RID ID 0 1 }  { m_axi_v4a2_RUSER DATA 0 1 }  { m_axi_v4a2_RRESP RESP 0 2 }  { m_axi_v4a2_BVALID VALID 0 1 }  { m_axi_v4a2_BREADY READY 1 1 }  { m_axi_v4a2_BRESP RESP 0 2 }  { m_axi_v4a2_BID ID 0 1 }  { m_axi_v4a2_BUSER DATA 0 1 } } }
	v4l0 { m_axi {  { m_axi_v4l0_AWVALID VALID 1 1 }  { m_axi_v4l0_AWREADY READY 0 1 }  { m_axi_v4l0_AWADDR ADDR 1 64 }  { m_axi_v4l0_AWID ID 1 1 }  { m_axi_v4l0_AWLEN SIZE 1 8 }  { m_axi_v4l0_AWSIZE BURST 1 3 }  { m_axi_v4l0_AWBURST LOCK 1 2 }  { m_axi_v4l0_AWLOCK CACHE 1 2 }  { m_axi_v4l0_AWCACHE PROT 1 4 }  { m_axi_v4l0_AWPROT QOS 1 3 }  { m_axi_v4l0_AWQOS REGION 1 4 }  { m_axi_v4l0_AWREGION USER 1 4 }  { m_axi_v4l0_AWUSER DATA 1 1 }  { m_axi_v4l0_WVALID VALID 1 1 }  { m_axi_v4l0_WREADY READY 0 1 }  { m_axi_v4l0_WDATA FIFONUM 1 32 }  { m_axi_v4l0_WSTRB STRB 1 4 }  { m_axi_v4l0_WLAST LAST 1 1 }  { m_axi_v4l0_WID ID 1 1 }  { m_axi_v4l0_WUSER DATA 1 1 }  { m_axi_v4l0_ARVALID VALID 1 1 }  { m_axi_v4l0_ARREADY READY 0 1 }  { m_axi_v4l0_ARADDR ADDR 1 64 }  { m_axi_v4l0_ARID ID 1 1 }  { m_axi_v4l0_ARLEN SIZE 1 8 }  { m_axi_v4l0_ARSIZE BURST 1 3 }  { m_axi_v4l0_ARBURST LOCK 1 2 }  { m_axi_v4l0_ARLOCK CACHE 1 2 }  { m_axi_v4l0_ARCACHE PROT 1 4 }  { m_axi_v4l0_ARPROT QOS 1 3 }  { m_axi_v4l0_ARQOS REGION 1 4 }  { m_axi_v4l0_ARREGION USER 1 4 }  { m_axi_v4l0_ARUSER DATA 1 1 }  { m_axi_v4l0_RVALID VALID 0 1 }  { m_axi_v4l0_RREADY READY 1 1 }  { m_axi_v4l0_RDATA FIFONUM 0 32 }  { m_axi_v4l0_RLAST LAST 0 1 }  { m_axi_v4l0_RID ID 0 1 }  { m_axi_v4l0_RUSER DATA 0 1 }  { m_axi_v4l0_RRESP RESP 0 2 }  { m_axi_v4l0_BVALID VALID 0 1 }  { m_axi_v4l0_BREADY READY 1 1 }  { m_axi_v4l0_BRESP RESP 0 2 }  { m_axi_v4l0_BID ID 0 1 }  { m_axi_v4l0_BUSER DATA 0 1 } } }
	v4l1 { m_axi {  { m_axi_v4l1_AWVALID VALID 1 1 }  { m_axi_v4l1_AWREADY READY 0 1 }  { m_axi_v4l1_AWADDR ADDR 1 64 }  { m_axi_v4l1_AWID ID 1 1 }  { m_axi_v4l1_AWLEN SIZE 1 8 }  { m_axi_v4l1_AWSIZE BURST 1 3 }  { m_axi_v4l1_AWBURST LOCK 1 2 }  { m_axi_v4l1_AWLOCK CACHE 1 2 }  { m_axi_v4l1_AWCACHE PROT 1 4 }  { m_axi_v4l1_AWPROT QOS 1 3 }  { m_axi_v4l1_AWQOS REGION 1 4 }  { m_axi_v4l1_AWREGION USER 1 4 }  { m_axi_v4l1_AWUSER DATA 1 1 }  { m_axi_v4l1_WVALID VALID 1 1 }  { m_axi_v4l1_WREADY READY 0 1 }  { m_axi_v4l1_WDATA FIFONUM 1 32 }  { m_axi_v4l1_WSTRB STRB 1 4 }  { m_axi_v4l1_WLAST LAST 1 1 }  { m_axi_v4l1_WID ID 1 1 }  { m_axi_v4l1_WUSER DATA 1 1 }  { m_axi_v4l1_ARVALID VALID 1 1 }  { m_axi_v4l1_ARREADY READY 0 1 }  { m_axi_v4l1_ARADDR ADDR 1 64 }  { m_axi_v4l1_ARID ID 1 1 }  { m_axi_v4l1_ARLEN SIZE 1 8 }  { m_axi_v4l1_ARSIZE BURST 1 3 }  { m_axi_v4l1_ARBURST LOCK 1 2 }  { m_axi_v4l1_ARLOCK CACHE 1 2 }  { m_axi_v4l1_ARCACHE PROT 1 4 }  { m_axi_v4l1_ARPROT QOS 1 3 }  { m_axi_v4l1_ARQOS REGION 1 4 }  { m_axi_v4l1_ARREGION USER 1 4 }  { m_axi_v4l1_ARUSER DATA 1 1 }  { m_axi_v4l1_RVALID VALID 0 1 }  { m_axi_v4l1_RREADY READY 1 1 }  { m_axi_v4l1_RDATA FIFONUM 0 32 }  { m_axi_v4l1_RLAST LAST 0 1 }  { m_axi_v4l1_RID ID 0 1 }  { m_axi_v4l1_RUSER DATA 0 1 }  { m_axi_v4l1_RRESP RESP 0 2 }  { m_axi_v4l1_BVALID VALID 0 1 }  { m_axi_v4l1_BREADY READY 1 1 }  { m_axi_v4l1_BRESP RESP 0 2 }  { m_axi_v4l1_BID ID 0 1 }  { m_axi_v4l1_BUSER DATA 0 1 } } }
	v4l2 { m_axi {  { m_axi_v4l2_AWVALID VALID 1 1 }  { m_axi_v4l2_AWREADY READY 0 1 }  { m_axi_v4l2_AWADDR ADDR 1 64 }  { m_axi_v4l2_AWID ID 1 1 }  { m_axi_v4l2_AWLEN SIZE 1 8 }  { m_axi_v4l2_AWSIZE BURST 1 3 }  { m_axi_v4l2_AWBURST LOCK 1 2 }  { m_axi_v4l2_AWLOCK CACHE 1 2 }  { m_axi_v4l2_AWCACHE PROT 1 4 }  { m_axi_v4l2_AWPROT QOS 1 3 }  { m_axi_v4l2_AWQOS REGION 1 4 }  { m_axi_v4l2_AWREGION USER 1 4 }  { m_axi_v4l2_AWUSER DATA 1 1 }  { m_axi_v4l2_WVALID VALID 1 1 }  { m_axi_v4l2_WREADY READY 0 1 }  { m_axi_v4l2_WDATA FIFONUM 1 32 }  { m_axi_v4l2_WSTRB STRB 1 4 }  { m_axi_v4l2_WLAST LAST 1 1 }  { m_axi_v4l2_WID ID 1 1 }  { m_axi_v4l2_WUSER DATA 1 1 }  { m_axi_v4l2_ARVALID VALID 1 1 }  { m_axi_v4l2_ARREADY READY 0 1 }  { m_axi_v4l2_ARADDR ADDR 1 64 }  { m_axi_v4l2_ARID ID 1 1 }  { m_axi_v4l2_ARLEN SIZE 1 8 }  { m_axi_v4l2_ARSIZE BURST 1 3 }  { m_axi_v4l2_ARBURST LOCK 1 2 }  { m_axi_v4l2_ARLOCK CACHE 1 2 }  { m_axi_v4l2_ARCACHE PROT 1 4 }  { m_axi_v4l2_ARPROT QOS 1 3 }  { m_axi_v4l2_ARQOS REGION 1 4 }  { m_axi_v4l2_ARREGION USER 1 4 }  { m_axi_v4l2_ARUSER DATA 1 1 }  { m_axi_v4l2_RVALID VALID 0 1 }  { m_axi_v4l2_RREADY READY 1 1 }  { m_axi_v4l2_RDATA FIFONUM 0 32 }  { m_axi_v4l2_RLAST LAST 0 1 }  { m_axi_v4l2_RID ID 0 1 }  { m_axi_v4l2_RUSER DATA 0 1 }  { m_axi_v4l2_RRESP RESP 0 2 }  { m_axi_v4l2_BVALID VALID 0 1 }  { m_axi_v4l2_BREADY READY 1 1 }  { m_axi_v4l2_BRESP RESP 0 2 }  { m_axi_v4l2_BID ID 0 1 }  { m_axi_v4l2_BUSER DATA 0 1 } } }
	v4u0 { m_axi {  { m_axi_v4u0_AWVALID VALID 1 1 }  { m_axi_v4u0_AWREADY READY 0 1 }  { m_axi_v4u0_AWADDR ADDR 1 64 }  { m_axi_v4u0_AWID ID 1 1 }  { m_axi_v4u0_AWLEN SIZE 1 8 }  { m_axi_v4u0_AWSIZE BURST 1 3 }  { m_axi_v4u0_AWBURST LOCK 1 2 }  { m_axi_v4u0_AWLOCK CACHE 1 2 }  { m_axi_v4u0_AWCACHE PROT 1 4 }  { m_axi_v4u0_AWPROT QOS 1 3 }  { m_axi_v4u0_AWQOS REGION 1 4 }  { m_axi_v4u0_AWREGION USER 1 4 }  { m_axi_v4u0_AWUSER DATA 1 1 }  { m_axi_v4u0_WVALID VALID 1 1 }  { m_axi_v4u0_WREADY READY 0 1 }  { m_axi_v4u0_WDATA FIFONUM 1 32 }  { m_axi_v4u0_WSTRB STRB 1 4 }  { m_axi_v4u0_WLAST LAST 1 1 }  { m_axi_v4u0_WID ID 1 1 }  { m_axi_v4u0_WUSER DATA 1 1 }  { m_axi_v4u0_ARVALID VALID 1 1 }  { m_axi_v4u0_ARREADY READY 0 1 }  { m_axi_v4u0_ARADDR ADDR 1 64 }  { m_axi_v4u0_ARID ID 1 1 }  { m_axi_v4u0_ARLEN SIZE 1 8 }  { m_axi_v4u0_ARSIZE BURST 1 3 }  { m_axi_v4u0_ARBURST LOCK 1 2 }  { m_axi_v4u0_ARLOCK CACHE 1 2 }  { m_axi_v4u0_ARCACHE PROT 1 4 }  { m_axi_v4u0_ARPROT QOS 1 3 }  { m_axi_v4u0_ARQOS REGION 1 4 }  { m_axi_v4u0_ARREGION USER 1 4 }  { m_axi_v4u0_ARUSER DATA 1 1 }  { m_axi_v4u0_RVALID VALID 0 1 }  { m_axi_v4u0_RREADY READY 1 1 }  { m_axi_v4u0_RDATA FIFONUM 0 32 }  { m_axi_v4u0_RLAST LAST 0 1 }  { m_axi_v4u0_RID ID 0 1 }  { m_axi_v4u0_RUSER DATA 0 1 }  { m_axi_v4u0_RRESP RESP 0 2 }  { m_axi_v4u0_BVALID VALID 0 1 }  { m_axi_v4u0_BREADY READY 1 1 }  { m_axi_v4u0_BRESP RESP 0 2 }  { m_axi_v4u0_BID ID 0 1 }  { m_axi_v4u0_BUSER DATA 0 1 } } }
	v4u1 { m_axi {  { m_axi_v4u1_AWVALID VALID 1 1 }  { m_axi_v4u1_AWREADY READY 0 1 }  { m_axi_v4u1_AWADDR ADDR 1 64 }  { m_axi_v4u1_AWID ID 1 1 }  { m_axi_v4u1_AWLEN SIZE 1 8 }  { m_axi_v4u1_AWSIZE BURST 1 3 }  { m_axi_v4u1_AWBURST LOCK 1 2 }  { m_axi_v4u1_AWLOCK CACHE 1 2 }  { m_axi_v4u1_AWCACHE PROT 1 4 }  { m_axi_v4u1_AWPROT QOS 1 3 }  { m_axi_v4u1_AWQOS REGION 1 4 }  { m_axi_v4u1_AWREGION USER 1 4 }  { m_axi_v4u1_AWUSER DATA 1 1 }  { m_axi_v4u1_WVALID VALID 1 1 }  { m_axi_v4u1_WREADY READY 0 1 }  { m_axi_v4u1_WDATA FIFONUM 1 32 }  { m_axi_v4u1_WSTRB STRB 1 4 }  { m_axi_v4u1_WLAST LAST 1 1 }  { m_axi_v4u1_WID ID 1 1 }  { m_axi_v4u1_WUSER DATA 1 1 }  { m_axi_v4u1_ARVALID VALID 1 1 }  { m_axi_v4u1_ARREADY READY 0 1 }  { m_axi_v4u1_ARADDR ADDR 1 64 }  { m_axi_v4u1_ARID ID 1 1 }  { m_axi_v4u1_ARLEN SIZE 1 8 }  { m_axi_v4u1_ARSIZE BURST 1 3 }  { m_axi_v4u1_ARBURST LOCK 1 2 }  { m_axi_v4u1_ARLOCK CACHE 1 2 }  { m_axi_v4u1_ARCACHE PROT 1 4 }  { m_axi_v4u1_ARPROT QOS 1 3 }  { m_axi_v4u1_ARQOS REGION 1 4 }  { m_axi_v4u1_ARREGION USER 1 4 }  { m_axi_v4u1_ARUSER DATA 1 1 }  { m_axi_v4u1_RVALID VALID 0 1 }  { m_axi_v4u1_RREADY READY 1 1 }  { m_axi_v4u1_RDATA FIFONUM 0 32 }  { m_axi_v4u1_RLAST LAST 0 1 }  { m_axi_v4u1_RID ID 0 1 }  { m_axi_v4u1_RUSER DATA 0 1 }  { m_axi_v4u1_RRESP RESP 0 2 }  { m_axi_v4u1_BVALID VALID 0 1 }  { m_axi_v4u1_BREADY READY 1 1 }  { m_axi_v4u1_BRESP RESP 0 2 }  { m_axi_v4u1_BID ID 0 1 }  { m_axi_v4u1_BUSER DATA 0 1 } } }
	v4u2 { m_axi {  { m_axi_v4u2_AWVALID VALID 1 1 }  { m_axi_v4u2_AWREADY READY 0 1 }  { m_axi_v4u2_AWADDR ADDR 1 64 }  { m_axi_v4u2_AWID ID 1 1 }  { m_axi_v4u2_AWLEN SIZE 1 8 }  { m_axi_v4u2_AWSIZE BURST 1 3 }  { m_axi_v4u2_AWBURST LOCK 1 2 }  { m_axi_v4u2_AWLOCK CACHE 1 2 }  { m_axi_v4u2_AWCACHE PROT 1 4 }  { m_axi_v4u2_AWPROT QOS 1 3 }  { m_axi_v4u2_AWQOS REGION 1 4 }  { m_axi_v4u2_AWREGION USER 1 4 }  { m_axi_v4u2_AWUSER DATA 1 1 }  { m_axi_v4u2_WVALID VALID 1 1 }  { m_axi_v4u2_WREADY READY 0 1 }  { m_axi_v4u2_WDATA FIFONUM 1 32 }  { m_axi_v4u2_WSTRB STRB 1 4 }  { m_axi_v4u2_WLAST LAST 1 1 }  { m_axi_v4u2_WID ID 1 1 }  { m_axi_v4u2_WUSER DATA 1 1 }  { m_axi_v4u2_ARVALID VALID 1 1 }  { m_axi_v4u2_ARREADY READY 0 1 }  { m_axi_v4u2_ARADDR ADDR 1 64 }  { m_axi_v4u2_ARID ID 1 1 }  { m_axi_v4u2_ARLEN SIZE 1 8 }  { m_axi_v4u2_ARSIZE BURST 1 3 }  { m_axi_v4u2_ARBURST LOCK 1 2 }  { m_axi_v4u2_ARLOCK CACHE 1 2 }  { m_axi_v4u2_ARCACHE PROT 1 4 }  { m_axi_v4u2_ARPROT QOS 1 3 }  { m_axi_v4u2_ARQOS REGION 1 4 }  { m_axi_v4u2_ARREGION USER 1 4 }  { m_axi_v4u2_ARUSER DATA 1 1 }  { m_axi_v4u2_RVALID VALID 0 1 }  { m_axi_v4u2_RREADY READY 1 1 }  { m_axi_v4u2_RDATA FIFONUM 0 32 }  { m_axi_v4u2_RLAST LAST 0 1 }  { m_axi_v4u2_RID ID 0 1 }  { m_axi_v4u2_RUSER DATA 0 1 }  { m_axi_v4u2_RRESP RESP 0 2 }  { m_axi_v4u2_BVALID VALID 0 1 }  { m_axi_v4u2_BREADY READY 1 1 }  { m_axi_v4u2_BRESP RESP 0 2 }  { m_axi_v4u2_BID ID 0 1 }  { m_axi_v4u2_BUSER DATA 0 1 } } }
	v4u3 { m_axi {  { m_axi_v4u3_AWVALID VALID 1 1 }  { m_axi_v4u3_AWREADY READY 0 1 }  { m_axi_v4u3_AWADDR ADDR 1 64 }  { m_axi_v4u3_AWID ID 1 1 }  { m_axi_v4u3_AWLEN SIZE 1 8 }  { m_axi_v4u3_AWSIZE BURST 1 3 }  { m_axi_v4u3_AWBURST LOCK 1 2 }  { m_axi_v4u3_AWLOCK CACHE 1 2 }  { m_axi_v4u3_AWCACHE PROT 1 4 }  { m_axi_v4u3_AWPROT QOS 1 3 }  { m_axi_v4u3_AWQOS REGION 1 4 }  { m_axi_v4u3_AWREGION USER 1 4 }  { m_axi_v4u3_AWUSER DATA 1 1 }  { m_axi_v4u3_WVALID VALID 1 1 }  { m_axi_v4u3_WREADY READY 0 1 }  { m_axi_v4u3_WDATA FIFONUM 1 32 }  { m_axi_v4u3_WSTRB STRB 1 4 }  { m_axi_v4u3_WLAST LAST 1 1 }  { m_axi_v4u3_WID ID 1 1 }  { m_axi_v4u3_WUSER DATA 1 1 }  { m_axi_v4u3_ARVALID VALID 1 1 }  { m_axi_v4u3_ARREADY READY 0 1 }  { m_axi_v4u3_ARADDR ADDR 1 64 }  { m_axi_v4u3_ARID ID 1 1 }  { m_axi_v4u3_ARLEN SIZE 1 8 }  { m_axi_v4u3_ARSIZE BURST 1 3 }  { m_axi_v4u3_ARBURST LOCK 1 2 }  { m_axi_v4u3_ARLOCK CACHE 1 2 }  { m_axi_v4u3_ARCACHE PROT 1 4 }  { m_axi_v4u3_ARPROT QOS 1 3 }  { m_axi_v4u3_ARQOS REGION 1 4 }  { m_axi_v4u3_ARREGION USER 1 4 }  { m_axi_v4u3_ARUSER DATA 1 1 }  { m_axi_v4u3_RVALID VALID 0 1 }  { m_axi_v4u3_RREADY READY 1 1 }  { m_axi_v4u3_RDATA FIFONUM 0 32 }  { m_axi_v4u3_RLAST LAST 0 1 }  { m_axi_v4u3_RID ID 0 1 }  { m_axi_v4u3_RUSER DATA 0 1 }  { m_axi_v4u3_RRESP RESP 0 2 }  { m_axi_v4u3_BVALID VALID 0 1 }  { m_axi_v4u3_BREADY READY 1 1 }  { m_axi_v4u3_BRESP RESP 0 2 }  { m_axi_v4u3_BID ID 0 1 }  { m_axi_v4u3_BUSER DATA 0 1 } } }
	status { ap_vld {  { status out_data 1 32 }  { status_ap_vld out_vld 1 1 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
	divisions { ap_vld {  { divisions out_data 1 64 }  { divisions_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict v4a0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4a1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4a2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4l0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4l1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4l2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict v4u0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4u1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict v4u2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict v4u3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ v4a0 1 }
	{ v4a1 1 }
	{ v4a2 1 }
	{ v4l0 1 }
	{ v4l1 1 }
	{ v4l2 1 }
	{ v4u0 1 }
	{ v4u1 1 }
	{ v4u2 1 }
	{ v4u3 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ v4a0 1 }
	{ v4a1 1 }
	{ v4a2 1 }
	{ v4l0 1 }
	{ v4l1 1 }
	{ v4l2 1 }
	{ v4u0 1 }
	{ v4u1 1 }
	{ v4u2 1 }
	{ v4u3 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
