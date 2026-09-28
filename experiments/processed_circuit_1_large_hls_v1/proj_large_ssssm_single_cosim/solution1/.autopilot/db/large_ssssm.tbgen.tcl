set moduleName large_ssssm
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
set C_modelName {large_ssssm}
set C_modelType { void 0 }
set C_modelArgList {
	{ sa0 int 32 regular {axi_master 0}  }
	{ sa1 int 32 regular {axi_master 0}  }
	{ sa2 int 32 regular {axi_master 0}  }
	{ sl0 int 32 regular {axi_master 0}  }
	{ sl1 int 32 regular {axi_master 0}  }
	{ sl2 int 32 regular {axi_master 0}  }
	{ su0 int 32 regular {axi_master 0}  }
	{ su1 int 32 regular {axi_master 0}  }
	{ su2 int 32 regular {axi_master 0}  }
	{ ss0 int 32 regular {axi_master 0}  }
	{ ss1 int 32 regular {axi_master 0}  }
	{ ss2 int 32 regular {axi_master 1}  }
	{ sw0 int 32 regular {axi_master 2}  }
	{ sw1 int 32 regular {axi_master 2}  }
	{ a_ptr int 64 regular {axi_slave 0}  }
	{ a_idx int 64 regular {axi_slave 0}  }
	{ a_val int 64 regular {axi_slave 0}  }
	{ l_ptr int 64 regular {axi_slave 0}  }
	{ l_idx int 64 regular {axi_slave 0}  }
	{ l_val int 64 regular {axi_slave 0}  }
	{ u_ptr int 64 regular {axi_slave 0}  }
	{ u_idx int 64 regular {axi_slave 0}  }
	{ u_val int 64 regular {axi_slave 0}  }
	{ s_ptr int 64 regular {axi_slave 0}  }
	{ s_idx int 64 regular {axi_slave 0}  }
	{ s_val int 64 regular {axi_slave 0}  }
	{ work int 64 regular {axi_slave 0}  }
	{ mark int 64 regular {axi_slave 0}  }
	{ rows int 32 regular  }
	{ status int 32 regular {pointer 1}  }
	{ muladds int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sa0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_ptr","offset": { "type": "dynamic","port_name": "a_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sa1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_idx","offset": { "type": "dynamic","port_name": "a_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sa2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_val","offset": { "type": "dynamic","port_name": "a_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sl0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_ptr","offset": { "type": "dynamic","port_name": "l_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sl1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_idx","offset": { "type": "dynamic","port_name": "l_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sl2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_val","offset": { "type": "dynamic","port_name": "l_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "su0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_ptr","offset": { "type": "dynamic","port_name": "u_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "su1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_idx","offset": { "type": "dynamic","port_name": "u_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "su2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_val","offset": { "type": "dynamic","port_name": "u_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ss0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "s_ptr","offset": { "type": "dynamic","port_name": "s_ptr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ss1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "s_idx","offset": { "type": "dynamic","port_name": "s_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ss2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "s_val","offset": { "type": "dynamic","port_name": "s_val","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sw1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "mark","offset": { "type": "dynamic","port_name": "mark","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "a_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "a_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "a_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "l_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "l_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "l_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "u_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "u_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "u_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "s_ptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "s_idx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "s_val", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "work", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "mark", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":172}, "offset_end" : {"in":183}} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 655
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_sa0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_sa0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_sa0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_sa0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_sa0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_sa0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_sa0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_sa0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_sa0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_sa0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_sa0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_sa0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_sa0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_sa0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_sa0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sa0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_sa0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_sa0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_sa0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_sa0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_sa0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_sa0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_sa0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_sa0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_sa1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_sa1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_sa1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_sa1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_sa1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_sa1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_sa1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_sa1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_sa1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_sa1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_sa1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_sa1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_sa1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_sa1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_sa1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sa1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_sa1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_sa1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_sa1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_sa1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_sa1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_sa1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_sa1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_sa1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_sa2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sa2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_sa2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sa2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sa2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sa2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sa2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_sa2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sa2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_sa2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sa2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sa2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sa2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sa2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sa2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sa2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_sa2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sa2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sa2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sa2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sa2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sa2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sa2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sa2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sl0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_sl0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_sl0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_sl0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_sl0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_sl0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_sl0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_sl0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_sl0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_sl0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_sl0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_sl0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_sl0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_sl0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_sl0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sl0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_sl0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_sl0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_sl0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_sl0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_sl0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_sl0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_sl0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_sl0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_sl1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sl1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_sl1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sl1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sl1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sl1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sl1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_sl1_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sl1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_sl1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sl1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sl1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sl1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sl1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sl1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sl1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_sl1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sl1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_sl1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sl1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sl1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sl1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sl1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sl1_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_sl2_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_sl2_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_sl2_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_sl2_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_sl2_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_sl2_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_sl2_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_sl2_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_sl2_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_sl2_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_sl2_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_sl2_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_sl2_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_sl2_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_sl2_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_sl2_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_sl2_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_sl2_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_sl2_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_sl2_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_sl2_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_sl2_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_sl2_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_sl2_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_su0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_su0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_su0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_su0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_su0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_su0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_su0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_su0_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_su0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_su0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_su0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_su0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_su0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_su0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_su0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_su0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_su0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_su0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_su0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_su0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_su0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_su0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_su0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_su0_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_su1_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_su1_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_su1_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_su1_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_su1_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_su1_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_su1_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_su1_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_su1_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_su1_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_su1_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_su1_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_su1_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_su1_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_su1_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_su1_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_su1_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_su1_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_su1_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_su1_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_su1_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_su1_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_su1_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_su1_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_su2_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_su2_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_su2_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_su2_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_su2_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_su2_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_su2_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_su2_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_su2_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_su2_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_su2_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_su2_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_su2_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_su2_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_su2_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_su2_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_su2_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_su2_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_su2_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_su2_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_su2_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_su2_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_su2_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_su2_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_ss0_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_ss0_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_ss0_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_ss0_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_ss0_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_ss0_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_ss0_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_ss0_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_ss0_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_ss0_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_ss0_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_ss0_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_ss0_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_ss0_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_ss0_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_ss0_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_ss0_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_ss0_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_ss0_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_ss0_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_ss0_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_ss0_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_ss0_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_ss0_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_ss1_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_ss1_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_ss1_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_ss1_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_ss1_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_ss1_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_ss1_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_ss1_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_ss1_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_ss1_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_ss1_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_ss1_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_ss1_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_ss1_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_ss1_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_ss1_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_ss1_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_ss1_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_ss1_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_ss1_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_ss1_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_ss1_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_ss1_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_ss1_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_ss2_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_ss2_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_ss2_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_ss2_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_ss2_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_ss2_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_ss2_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_ss2_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_ss2_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_ss2_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_ss2_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_ss2_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_ss2_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_ss2_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_ss2_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_ss2_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_ss2_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_ss2_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_ss2_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_ss2_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_ss2_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_ss2_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_ss2_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_ss2_BUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_sw0_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_sw0_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_AWLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_sw0_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_sw0_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_sw0_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_sw0_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_sw0_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_WDATA sc_out sc_lv 32 signal 12 } 
	{ m_axi_sw0_WSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_sw0_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_ARLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_sw0_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_sw0_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_sw0_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_sw0_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_sw0_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_sw0_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_sw0_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_RDATA sc_in sc_lv 32 signal 12 } 
	{ m_axi_sw0_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_sw0_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_sw0_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_sw0_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_sw0_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_sw0_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_sw0_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_sw0_BUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_sw1_AWVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_AWREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_AWADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_sw1_AWID sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_AWLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_sw1_AWSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_sw1_AWBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_sw1_AWLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_sw1_AWCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_AWPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_sw1_AWQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_AWREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_AWUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_WVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_WREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_WDATA sc_out sc_lv 32 signal 13 } 
	{ m_axi_sw1_WSTRB sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_WLAST sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_WID sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_WUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_ARVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_ARREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_ARADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_sw1_ARID sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_ARLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_sw1_ARSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_sw1_ARBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_sw1_ARLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_sw1_ARCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_ARPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_sw1_ARQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_ARREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_sw1_ARUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_sw1_RVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_RREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_RDATA sc_in sc_lv 32 signal 13 } 
	{ m_axi_sw1_RLAST sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_RID sc_in sc_lv 1 signal 13 } 
	{ m_axi_sw1_RUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_sw1_RRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_sw1_BVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_sw1_BREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_sw1_BRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_sw1_BID sc_in sc_lv 1 signal 13 } 
	{ m_axi_sw1_BUSER sc_in sc_lv 1 signal 13 } 
	{ rows sc_in sc_lv 32 signal 28 } 
	{ status sc_out sc_lv 32 signal 29 } 
	{ status_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ muladds sc_out sc_lv 64 signal 30 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 30 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"large_ssssm","role":"start","value":"0","valid_bit":"0"},{"name":"large_ssssm","role":"continue","value":"0","valid_bit":"4"},{"name":"large_ssssm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a_ptr","role":"data","value":"16"},{"name":"a_idx","role":"data","value":"28"},{"name":"a_val","role":"data","value":"40"},{"name":"l_ptr","role":"data","value":"52"},{"name":"l_idx","role":"data","value":"64"},{"name":"l_val","role":"data","value":"76"},{"name":"u_ptr","role":"data","value":"88"},{"name":"u_idx","role":"data","value":"100"},{"name":"u_val","role":"data","value":"112"},{"name":"s_ptr","role":"data","value":"124"},{"name":"s_idx","role":"data","value":"136"},{"name":"s_val","role":"data","value":"148"},{"name":"work","role":"data","value":"160"},{"name":"mark","role":"data","value":"172"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"large_ssssm","role":"start","value":"0","valid_bit":"0"},{"name":"large_ssssm","role":"done","value":"0","valid_bit":"1"},{"name":"large_ssssm","role":"idle","value":"0","valid_bit":"2"},{"name":"large_ssssm","role":"ready","value":"0","valid_bit":"3"},{"name":"large_ssssm","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_sa0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sa0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sa0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sa0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "AWID" }} , 
 	{ "name": "m_axi_sa0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sa0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sa0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sa0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sa0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sa0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sa0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sa0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sa0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sa0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "WVALID" }} , 
 	{ "name": "m_axi_sa0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "WREADY" }} , 
 	{ "name": "m_axi_sa0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa0", "role": "WDATA" }} , 
 	{ "name": "m_axi_sa0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sa0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "WLAST" }} , 
 	{ "name": "m_axi_sa0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "WID" }} , 
 	{ "name": "m_axi_sa0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "WUSER" }} , 
 	{ "name": "m_axi_sa0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sa0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sa0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sa0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "ARID" }} , 
 	{ "name": "m_axi_sa0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sa0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sa0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sa0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sa0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sa0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sa0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sa0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sa0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sa0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "RVALID" }} , 
 	{ "name": "m_axi_sa0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "RREADY" }} , 
 	{ "name": "m_axi_sa0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa0", "role": "RDATA" }} , 
 	{ "name": "m_axi_sa0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "RLAST" }} , 
 	{ "name": "m_axi_sa0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "RID" }} , 
 	{ "name": "m_axi_sa0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "RUSER" }} , 
 	{ "name": "m_axi_sa0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "RRESP" }} , 
 	{ "name": "m_axi_sa0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "BVALID" }} , 
 	{ "name": "m_axi_sa0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "BREADY" }} , 
 	{ "name": "m_axi_sa0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa0", "role": "BRESP" }} , 
 	{ "name": "m_axi_sa0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "BID" }} , 
 	{ "name": "m_axi_sa0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa0", "role": "BUSER" }} , 
 	{ "name": "m_axi_sa1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sa1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sa1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sa1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "AWID" }} , 
 	{ "name": "m_axi_sa1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sa1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sa1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sa1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sa1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sa1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sa1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sa1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sa1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sa1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "WVALID" }} , 
 	{ "name": "m_axi_sa1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "WREADY" }} , 
 	{ "name": "m_axi_sa1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa1", "role": "WDATA" }} , 
 	{ "name": "m_axi_sa1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sa1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "WLAST" }} , 
 	{ "name": "m_axi_sa1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "WID" }} , 
 	{ "name": "m_axi_sa1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "WUSER" }} , 
 	{ "name": "m_axi_sa1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sa1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sa1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sa1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "ARID" }} , 
 	{ "name": "m_axi_sa1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sa1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sa1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sa1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sa1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sa1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sa1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sa1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sa1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sa1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "RVALID" }} , 
 	{ "name": "m_axi_sa1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "RREADY" }} , 
 	{ "name": "m_axi_sa1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa1", "role": "RDATA" }} , 
 	{ "name": "m_axi_sa1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "RLAST" }} , 
 	{ "name": "m_axi_sa1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "RID" }} , 
 	{ "name": "m_axi_sa1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "RUSER" }} , 
 	{ "name": "m_axi_sa1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "RRESP" }} , 
 	{ "name": "m_axi_sa1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "BVALID" }} , 
 	{ "name": "m_axi_sa1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "BREADY" }} , 
 	{ "name": "m_axi_sa1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa1", "role": "BRESP" }} , 
 	{ "name": "m_axi_sa1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "BID" }} , 
 	{ "name": "m_axi_sa1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa1", "role": "BUSER" }} , 
 	{ "name": "m_axi_sa2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sa2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sa2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sa2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "AWID" }} , 
 	{ "name": "m_axi_sa2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sa2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sa2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sa2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sa2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sa2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sa2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sa2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sa2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sa2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "WVALID" }} , 
 	{ "name": "m_axi_sa2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "WREADY" }} , 
 	{ "name": "m_axi_sa2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa2", "role": "WDATA" }} , 
 	{ "name": "m_axi_sa2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sa2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "WLAST" }} , 
 	{ "name": "m_axi_sa2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "WID" }} , 
 	{ "name": "m_axi_sa2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "WUSER" }} , 
 	{ "name": "m_axi_sa2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sa2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sa2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sa2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sa2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "ARID" }} , 
 	{ "name": "m_axi_sa2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sa2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sa2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sa2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sa2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sa2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sa2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sa2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sa2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sa2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sa2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sa2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sa2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "RVALID" }} , 
 	{ "name": "m_axi_sa2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "RREADY" }} , 
 	{ "name": "m_axi_sa2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sa2", "role": "RDATA" }} , 
 	{ "name": "m_axi_sa2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "RLAST" }} , 
 	{ "name": "m_axi_sa2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "RID" }} , 
 	{ "name": "m_axi_sa2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "RUSER" }} , 
 	{ "name": "m_axi_sa2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "RRESP" }} , 
 	{ "name": "m_axi_sa2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "BVALID" }} , 
 	{ "name": "m_axi_sa2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "BREADY" }} , 
 	{ "name": "m_axi_sa2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sa2", "role": "BRESP" }} , 
 	{ "name": "m_axi_sa2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "BID" }} , 
 	{ "name": "m_axi_sa2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sa2", "role": "BUSER" }} , 
 	{ "name": "m_axi_sl0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sl0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sl0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sl0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "AWID" }} , 
 	{ "name": "m_axi_sl0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sl0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sl0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sl0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sl0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sl0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sl0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sl0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sl0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sl0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "WVALID" }} , 
 	{ "name": "m_axi_sl0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "WREADY" }} , 
 	{ "name": "m_axi_sl0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl0", "role": "WDATA" }} , 
 	{ "name": "m_axi_sl0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sl0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "WLAST" }} , 
 	{ "name": "m_axi_sl0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "WID" }} , 
 	{ "name": "m_axi_sl0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "WUSER" }} , 
 	{ "name": "m_axi_sl0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sl0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sl0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sl0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "ARID" }} , 
 	{ "name": "m_axi_sl0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sl0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sl0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sl0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sl0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sl0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sl0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sl0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sl0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sl0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "RVALID" }} , 
 	{ "name": "m_axi_sl0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "RREADY" }} , 
 	{ "name": "m_axi_sl0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl0", "role": "RDATA" }} , 
 	{ "name": "m_axi_sl0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "RLAST" }} , 
 	{ "name": "m_axi_sl0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "RID" }} , 
 	{ "name": "m_axi_sl0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "RUSER" }} , 
 	{ "name": "m_axi_sl0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "RRESP" }} , 
 	{ "name": "m_axi_sl0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "BVALID" }} , 
 	{ "name": "m_axi_sl0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "BREADY" }} , 
 	{ "name": "m_axi_sl0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl0", "role": "BRESP" }} , 
 	{ "name": "m_axi_sl0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "BID" }} , 
 	{ "name": "m_axi_sl0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl0", "role": "BUSER" }} , 
 	{ "name": "m_axi_sl1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sl1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sl1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sl1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "AWID" }} , 
 	{ "name": "m_axi_sl1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sl1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sl1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sl1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sl1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sl1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sl1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sl1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sl1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sl1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "WVALID" }} , 
 	{ "name": "m_axi_sl1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "WREADY" }} , 
 	{ "name": "m_axi_sl1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl1", "role": "WDATA" }} , 
 	{ "name": "m_axi_sl1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sl1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "WLAST" }} , 
 	{ "name": "m_axi_sl1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "WID" }} , 
 	{ "name": "m_axi_sl1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "WUSER" }} , 
 	{ "name": "m_axi_sl1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sl1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sl1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sl1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "ARID" }} , 
 	{ "name": "m_axi_sl1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sl1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sl1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sl1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sl1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sl1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sl1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sl1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sl1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sl1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "RVALID" }} , 
 	{ "name": "m_axi_sl1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "RREADY" }} , 
 	{ "name": "m_axi_sl1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl1", "role": "RDATA" }} , 
 	{ "name": "m_axi_sl1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "RLAST" }} , 
 	{ "name": "m_axi_sl1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "RID" }} , 
 	{ "name": "m_axi_sl1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "RUSER" }} , 
 	{ "name": "m_axi_sl1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "RRESP" }} , 
 	{ "name": "m_axi_sl1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "BVALID" }} , 
 	{ "name": "m_axi_sl1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "BREADY" }} , 
 	{ "name": "m_axi_sl1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl1", "role": "BRESP" }} , 
 	{ "name": "m_axi_sl1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "BID" }} , 
 	{ "name": "m_axi_sl1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl1", "role": "BUSER" }} , 
 	{ "name": "m_axi_sl2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sl2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sl2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sl2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "AWID" }} , 
 	{ "name": "m_axi_sl2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sl2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sl2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sl2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sl2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sl2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sl2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sl2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sl2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sl2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "WVALID" }} , 
 	{ "name": "m_axi_sl2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "WREADY" }} , 
 	{ "name": "m_axi_sl2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl2", "role": "WDATA" }} , 
 	{ "name": "m_axi_sl2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sl2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "WLAST" }} , 
 	{ "name": "m_axi_sl2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "WID" }} , 
 	{ "name": "m_axi_sl2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "WUSER" }} , 
 	{ "name": "m_axi_sl2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sl2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sl2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sl2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sl2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "ARID" }} , 
 	{ "name": "m_axi_sl2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sl2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sl2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sl2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sl2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sl2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sl2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sl2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sl2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sl2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sl2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sl2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sl2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "RVALID" }} , 
 	{ "name": "m_axi_sl2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "RREADY" }} , 
 	{ "name": "m_axi_sl2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sl2", "role": "RDATA" }} , 
 	{ "name": "m_axi_sl2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "RLAST" }} , 
 	{ "name": "m_axi_sl2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "RID" }} , 
 	{ "name": "m_axi_sl2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "RUSER" }} , 
 	{ "name": "m_axi_sl2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "RRESP" }} , 
 	{ "name": "m_axi_sl2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "BVALID" }} , 
 	{ "name": "m_axi_sl2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "BREADY" }} , 
 	{ "name": "m_axi_sl2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sl2", "role": "BRESP" }} , 
 	{ "name": "m_axi_sl2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "BID" }} , 
 	{ "name": "m_axi_sl2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sl2", "role": "BUSER" }} , 
 	{ "name": "m_axi_su0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_su0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_su0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_su0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "AWID" }} , 
 	{ "name": "m_axi_su0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_su0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_su0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_su0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_su0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_su0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_su0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_su0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_su0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_su0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "WVALID" }} , 
 	{ "name": "m_axi_su0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "WREADY" }} , 
 	{ "name": "m_axi_su0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su0", "role": "WDATA" }} , 
 	{ "name": "m_axi_su0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_su0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "WLAST" }} , 
 	{ "name": "m_axi_su0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "WID" }} , 
 	{ "name": "m_axi_su0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "WUSER" }} , 
 	{ "name": "m_axi_su0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_su0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_su0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_su0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "ARID" }} , 
 	{ "name": "m_axi_su0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_su0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_su0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_su0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_su0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_su0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_su0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_su0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_su0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_su0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "RVALID" }} , 
 	{ "name": "m_axi_su0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "RREADY" }} , 
 	{ "name": "m_axi_su0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su0", "role": "RDATA" }} , 
 	{ "name": "m_axi_su0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "RLAST" }} , 
 	{ "name": "m_axi_su0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "RID" }} , 
 	{ "name": "m_axi_su0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "RUSER" }} , 
 	{ "name": "m_axi_su0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "RRESP" }} , 
 	{ "name": "m_axi_su0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "BVALID" }} , 
 	{ "name": "m_axi_su0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "BREADY" }} , 
 	{ "name": "m_axi_su0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su0", "role": "BRESP" }} , 
 	{ "name": "m_axi_su0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "BID" }} , 
 	{ "name": "m_axi_su0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su0", "role": "BUSER" }} , 
 	{ "name": "m_axi_su1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_su1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_su1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_su1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWID" }} , 
 	{ "name": "m_axi_su1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_su1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_su1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_su1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_su1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_su1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_su1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_su1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_su1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_su1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "WVALID" }} , 
 	{ "name": "m_axi_su1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "WREADY" }} , 
 	{ "name": "m_axi_su1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su1", "role": "WDATA" }} , 
 	{ "name": "m_axi_su1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_su1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "WLAST" }} , 
 	{ "name": "m_axi_su1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "WID" }} , 
 	{ "name": "m_axi_su1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "WUSER" }} , 
 	{ "name": "m_axi_su1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_su1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_su1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_su1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "ARID" }} , 
 	{ "name": "m_axi_su1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_su1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_su1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_su1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_su1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_su1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_su1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_su1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_su1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_su1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RVALID" }} , 
 	{ "name": "m_axi_su1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RREADY" }} , 
 	{ "name": "m_axi_su1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su1", "role": "RDATA" }} , 
 	{ "name": "m_axi_su1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RLAST" }} , 
 	{ "name": "m_axi_su1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RID" }} , 
 	{ "name": "m_axi_su1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RUSER" }} , 
 	{ "name": "m_axi_su1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "RRESP" }} , 
 	{ "name": "m_axi_su1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BVALID" }} , 
 	{ "name": "m_axi_su1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BREADY" }} , 
 	{ "name": "m_axi_su1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "BRESP" }} , 
 	{ "name": "m_axi_su1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BID" }} , 
 	{ "name": "m_axi_su1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BUSER" }} , 
 	{ "name": "m_axi_su2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_su2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_su2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_su2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWID" }} , 
 	{ "name": "m_axi_su2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_su2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_su2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_su2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_su2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_su2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_su2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_su2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_su2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_su2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "WVALID" }} , 
 	{ "name": "m_axi_su2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "WREADY" }} , 
 	{ "name": "m_axi_su2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su2", "role": "WDATA" }} , 
 	{ "name": "m_axi_su2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_su2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "WLAST" }} , 
 	{ "name": "m_axi_su2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "WID" }} , 
 	{ "name": "m_axi_su2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "WUSER" }} , 
 	{ "name": "m_axi_su2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_su2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_su2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_su2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "ARID" }} , 
 	{ "name": "m_axi_su2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "su2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_su2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_su2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_su2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_su2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_su2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "su2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_su2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_su2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "su2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_su2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_su2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RVALID" }} , 
 	{ "name": "m_axi_su2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RREADY" }} , 
 	{ "name": "m_axi_su2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su2", "role": "RDATA" }} , 
 	{ "name": "m_axi_su2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RLAST" }} , 
 	{ "name": "m_axi_su2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RID" }} , 
 	{ "name": "m_axi_su2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RUSER" }} , 
 	{ "name": "m_axi_su2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "RRESP" }} , 
 	{ "name": "m_axi_su2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BVALID" }} , 
 	{ "name": "m_axi_su2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BREADY" }} , 
 	{ "name": "m_axi_su2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "BRESP" }} , 
 	{ "name": "m_axi_su2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BID" }} , 
 	{ "name": "m_axi_su2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BUSER" }} , 
 	{ "name": "m_axi_ss0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ss0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ss0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ss0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "AWID" }} , 
 	{ "name": "m_axi_ss0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ss0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ss0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ss0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ss0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ss0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ss0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ss0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ss0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ss0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "WVALID" }} , 
 	{ "name": "m_axi_ss0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "WREADY" }} , 
 	{ "name": "m_axi_ss0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss0", "role": "WDATA" }} , 
 	{ "name": "m_axi_ss0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ss0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "WLAST" }} , 
 	{ "name": "m_axi_ss0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "WID" }} , 
 	{ "name": "m_axi_ss0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "WUSER" }} , 
 	{ "name": "m_axi_ss0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ss0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ss0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ss0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "ARID" }} , 
 	{ "name": "m_axi_ss0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ss0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ss0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ss0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ss0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ss0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ss0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ss0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ss0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ss0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "RVALID" }} , 
 	{ "name": "m_axi_ss0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "RREADY" }} , 
 	{ "name": "m_axi_ss0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss0", "role": "RDATA" }} , 
 	{ "name": "m_axi_ss0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "RLAST" }} , 
 	{ "name": "m_axi_ss0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "RID" }} , 
 	{ "name": "m_axi_ss0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "RUSER" }} , 
 	{ "name": "m_axi_ss0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "RRESP" }} , 
 	{ "name": "m_axi_ss0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "BVALID" }} , 
 	{ "name": "m_axi_ss0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "BREADY" }} , 
 	{ "name": "m_axi_ss0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss0", "role": "BRESP" }} , 
 	{ "name": "m_axi_ss0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "BID" }} , 
 	{ "name": "m_axi_ss0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss0", "role": "BUSER" }} , 
 	{ "name": "m_axi_ss1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ss1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ss1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ss1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWID" }} , 
 	{ "name": "m_axi_ss1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ss1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ss1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ss1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ss1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ss1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ss1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ss1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ss1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ss1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "WVALID" }} , 
 	{ "name": "m_axi_ss1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "WREADY" }} , 
 	{ "name": "m_axi_ss1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss1", "role": "WDATA" }} , 
 	{ "name": "m_axi_ss1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ss1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "WLAST" }} , 
 	{ "name": "m_axi_ss1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "WID" }} , 
 	{ "name": "m_axi_ss1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "WUSER" }} , 
 	{ "name": "m_axi_ss1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ss1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ss1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ss1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "ARID" }} , 
 	{ "name": "m_axi_ss1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ss1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ss1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ss1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ss1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ss1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ss1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ss1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ss1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ss1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RVALID" }} , 
 	{ "name": "m_axi_ss1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RREADY" }} , 
 	{ "name": "m_axi_ss1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss1", "role": "RDATA" }} , 
 	{ "name": "m_axi_ss1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RLAST" }} , 
 	{ "name": "m_axi_ss1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RID" }} , 
 	{ "name": "m_axi_ss1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RUSER" }} , 
 	{ "name": "m_axi_ss1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "RRESP" }} , 
 	{ "name": "m_axi_ss1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BVALID" }} , 
 	{ "name": "m_axi_ss1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BREADY" }} , 
 	{ "name": "m_axi_ss1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "BRESP" }} , 
 	{ "name": "m_axi_ss1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BID" }} , 
 	{ "name": "m_axi_ss1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BUSER" }} , 
 	{ "name": "m_axi_ss2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ss2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ss2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ss2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "AWID" }} , 
 	{ "name": "m_axi_ss2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ss2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ss2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ss2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ss2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ss2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ss2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ss2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ss2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ss2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "WVALID" }} , 
 	{ "name": "m_axi_ss2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "WREADY" }} , 
 	{ "name": "m_axi_ss2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss2", "role": "WDATA" }} , 
 	{ "name": "m_axi_ss2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ss2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "WLAST" }} , 
 	{ "name": "m_axi_ss2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "WID" }} , 
 	{ "name": "m_axi_ss2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "WUSER" }} , 
 	{ "name": "m_axi_ss2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ss2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ss2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ss2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "ARID" }} , 
 	{ "name": "m_axi_ss2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ss2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ss2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ss2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ss2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ss2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ss2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ss2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ss2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ss2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ss2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ss2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "RVALID" }} , 
 	{ "name": "m_axi_ss2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "RREADY" }} , 
 	{ "name": "m_axi_ss2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss2", "role": "RDATA" }} , 
 	{ "name": "m_axi_ss2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "RLAST" }} , 
 	{ "name": "m_axi_ss2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "RID" }} , 
 	{ "name": "m_axi_ss2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "RUSER" }} , 
 	{ "name": "m_axi_ss2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "RRESP" }} , 
 	{ "name": "m_axi_ss2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "BVALID" }} , 
 	{ "name": "m_axi_ss2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "BREADY" }} , 
 	{ "name": "m_axi_ss2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss2", "role": "BRESP" }} , 
 	{ "name": "m_axi_ss2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "BID" }} , 
 	{ "name": "m_axi_ss2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss2", "role": "BUSER" }} , 
 	{ "name": "m_axi_sw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWID" }} , 
 	{ "name": "m_axi_sw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sw0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sw0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sw0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sw0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sw0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sw0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sw0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sw0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sw0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sw0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "WVALID" }} , 
 	{ "name": "m_axi_sw0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "WREADY" }} , 
 	{ "name": "m_axi_sw0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw0", "role": "WDATA" }} , 
 	{ "name": "m_axi_sw0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sw0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "WLAST" }} , 
 	{ "name": "m_axi_sw0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "WID" }} , 
 	{ "name": "m_axi_sw0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "WUSER" }} , 
 	{ "name": "m_axi_sw0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sw0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sw0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sw0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "ARID" }} , 
 	{ "name": "m_axi_sw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sw0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sw0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sw0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sw0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sw0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sw0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sw0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sw0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sw0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sw0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RVALID" }} , 
 	{ "name": "m_axi_sw0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RREADY" }} , 
 	{ "name": "m_axi_sw0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw0", "role": "RDATA" }} , 
 	{ "name": "m_axi_sw0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RLAST" }} , 
 	{ "name": "m_axi_sw0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RID" }} , 
 	{ "name": "m_axi_sw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_sw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_sw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_sw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_sw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_sw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BID" }} , 
 	{ "name": "m_axi_sw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BUSER" }} , 
 	{ "name": "m_axi_sw1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sw1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sw1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sw1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWID" }} , 
 	{ "name": "m_axi_sw1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sw1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sw1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sw1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sw1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sw1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sw1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sw1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sw1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sw1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sw1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "WVALID" }} , 
 	{ "name": "m_axi_sw1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "WREADY" }} , 
 	{ "name": "m_axi_sw1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw1", "role": "WDATA" }} , 
 	{ "name": "m_axi_sw1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sw1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "WLAST" }} , 
 	{ "name": "m_axi_sw1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "WID" }} , 
 	{ "name": "m_axi_sw1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "WUSER" }} , 
 	{ "name": "m_axi_sw1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sw1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sw1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sw1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "ARID" }} , 
 	{ "name": "m_axi_sw1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sw1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sw1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sw1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sw1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sw1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sw1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sw1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sw1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sw1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sw1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sw1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sw1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RVALID" }} , 
 	{ "name": "m_axi_sw1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RREADY" }} , 
 	{ "name": "m_axi_sw1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw1", "role": "RDATA" }} , 
 	{ "name": "m_axi_sw1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RLAST" }} , 
 	{ "name": "m_axi_sw1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RID" }} , 
 	{ "name": "m_axi_sw1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RUSER" }} , 
 	{ "name": "m_axi_sw1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "RRESP" }} , 
 	{ "name": "m_axi_sw1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BVALID" }} , 
 	{ "name": "m_axi_sw1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BREADY" }} , 
 	{ "name": "m_axi_sw1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "BRESP" }} , 
 	{ "name": "m_axi_sw1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BID" }} , 
 	{ "name": "m_axi_sw1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BUSER" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "status", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "default" }} , 
 	{ "name": "status_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "ap_vld" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "large_ssssm",
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
			{"Name" : "sa0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sa0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sa0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sa1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442", "Port" : "sa1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "sa2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442", "Port" : "sa2", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "sl0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sl0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sl0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sl1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sl1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sl1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sl2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sl2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sl2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "su0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "su0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "su0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "su1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Port" : "su1", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "su2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Port" : "su2", "Inst_start_state" : "53", "Inst_end_state" : "54"}]},
			{"Name" : "ss0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ss0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ss0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ss1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ss1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_173_2_fu_426", "Port" : "ss1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "7", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_189_6_fu_485", "Port" : "ss1", "Inst_start_state" : "63", "Inst_end_state" : "64"}]},
			{"Name" : "ss2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ss2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ss2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_189_6_fu_485", "Port" : "ss2", "Inst_start_state" : "63", "Inst_end_state" : "64"}]},
			{"Name" : "sw0", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_173_2_fu_426", "Port" : "sw0", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "5", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Port" : "sw0", "Inst_start_state" : "53", "Inst_end_state" : "54"},
					{"ID" : "3", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442", "Port" : "sw0", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "7", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_189_6_fu_485", "Port" : "sw0", "Inst_start_state" : "63", "Inst_end_state" : "64"}]},
			{"Name" : "sw1", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_173_2_fu_426", "Port" : "sw1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "5", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Port" : "sw1", "Inst_start_state" : "53", "Inst_end_state" : "54"},
					{"ID" : "3", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442", "Port" : "sw1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "a_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Port" : "muladds", "Inst_start_state" : "53", "Inst_end_state" : "54"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "69", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state55"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state56"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "69", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state69"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_173_2_fu_426", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "large_ssssm_Pipeline_VITIS_LOOP_173_2",
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
			{"Name" : "zext_ln173", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "sw1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "sw1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "sw0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ss1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ss1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln173_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln173_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln173_2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_173_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_173_2_fu_426.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "large_ssssm_Pipeline_VITIS_LOOP_176_3",
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
			{"Name" : "zext_ln176", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sw1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sw1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "sw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "sa2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sa2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sa2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sa1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sa1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sa1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln176_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln172_3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage19", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage19_subdone", "QuitState" : "ap_ST_fsm_pp0_stage19", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage19_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_176_3_fu_442.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "large_ssssm_Pipeline_VITIS_LOOP_183_5",
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
			{"Name" : "zext_ln183_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sw1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sw1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sw0", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "sw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "su2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "su2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "su2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "su1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "su1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "su1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln183_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "lv", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln172_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_183_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state48", "ap_ST_fsm_state49"]}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_183_5_fu_461.fmul_32ns_32ns_32_5_max_dsp_1_U23", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_189_6_fu_485", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "large_ssssm_Pipeline_VITIS_LOOP_189_6",
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
			{"Name" : "zext_ln173", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sw0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sw0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ss2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ss2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "ss1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ss1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln189", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln173_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln173_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "work", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_large_ssssm_Pipeline_VITIS_LOOP_189_6_fu_485.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sa0_m_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sa1_m_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sa2_m_axi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sl0_m_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sl1_m_axi_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sl2_m_axi_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ss0_m_axi_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ss1_m_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ss2_m_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.su0_m_axi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.su1_m_axi_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.su2_m_axi_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sw0_m_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sw1_m_axi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_8_full_dsp_1_U48", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_ssssm {
		sa0 {Type I LastRead 10 FirstWrite -1}
		sa1 {Type I LastRead 9 FirstWrite -1}
		sa2 {Type I LastRead 27 FirstWrite -1}
		sl0 {Type I LastRead 31 FirstWrite -1}
		sl1 {Type I LastRead 41 FirstWrite -1}
		sl2 {Type I LastRead 41 FirstWrite -1}
		su0 {Type I LastRead 51 FirstWrite -1}
		su1 {Type I LastRead 9 FirstWrite -1}
		su2 {Type I LastRead 27 FirstWrite -1}
		ss0 {Type I LastRead 10 FirstWrite -1}
		ss1 {Type I LastRead 34 FirstWrite -1}
		ss2 {Type O LastRead 43 FirstWrite 12}
		sw0 {Type IO LastRead 42 FirstWrite -1}
		sw1 {Type IO LastRead 18 FirstWrite -1}
		a_ptr {Type I LastRead 0 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		l_ptr {Type I LastRead 0 FirstWrite -1}
		l_idx {Type I LastRead 0 FirstWrite -1}
		l_val {Type I LastRead 0 FirstWrite -1}
		u_ptr {Type I LastRead 0 FirstWrite -1}
		u_idx {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 0 FirstWrite -1}
		s_ptr {Type I LastRead 0 FirstWrite -1}
		s_idx {Type I LastRead 0 FirstWrite -1}
		s_val {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		status {Type O LastRead -1 FirstWrite 0}
		muladds {Type O LastRead -1 FirstWrite 0}}
	large_ssssm_Pipeline_VITIS_LOOP_173_2 {
		zext_ln173 {Type I LastRead 0 FirstWrite -1}
		sw1 {Type O LastRead 6 FirstWrite 5}
		sw0 {Type O LastRead 6 FirstWrite 5}
		ss1 {Type I LastRead 2 FirstWrite -1}
		sext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		add_ln173_2 {Type I LastRead 0 FirstWrite -1}}
	large_ssssm_Pipeline_VITIS_LOOP_176_3 {
		zext_ln176 {Type I LastRead 0 FirstWrite -1}
		sw1 {Type I LastRead 18 FirstWrite -1}
		sw0 {Type IO LastRead 37 FirstWrite 36}
		sa2 {Type I LastRead 27 FirstWrite -1}
		sa1 {Type I LastRead 9 FirstWrite -1}
		zext_ln176_1 {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		add_ln172_3 {Type I LastRead 0 FirstWrite -1}}
	large_ssssm_Pipeline_VITIS_LOOP_183_5 {
		zext_ln183_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sw1 {Type I LastRead 18 FirstWrite -1}
		sw0 {Type IO LastRead 42 FirstWrite 41}
		su2 {Type I LastRead 27 FirstWrite -1}
		su1 {Type I LastRead 9 FirstWrite -1}
		zext_ln183_2 {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 0 FirstWrite -1}
		lv {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		muladds {Type O LastRead -1 FirstWrite 19}
		u_idx {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		add_ln172_3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 2}}
	large_ssssm_Pipeline_VITIS_LOOP_189_6 {
		zext_ln173 {Type I LastRead 0 FirstWrite -1}
		sw0 {Type I LastRead 11 FirstWrite -1}
		ss2 {Type O LastRead -1 FirstWrite 12}
		ss1 {Type I LastRead 2 FirstWrite -1}
		sext_ln189 {Type I LastRead 0 FirstWrite -1}
		sext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sa0 { m_axi {  { m_axi_sa0_AWVALID VALID 1 1 }  { m_axi_sa0_AWREADY READY 0 1 }  { m_axi_sa0_AWADDR ADDR 1 64 }  { m_axi_sa0_AWID ID 1 1 }  { m_axi_sa0_AWLEN SIZE 1 8 }  { m_axi_sa0_AWSIZE BURST 1 3 }  { m_axi_sa0_AWBURST LOCK 1 2 }  { m_axi_sa0_AWLOCK CACHE 1 2 }  { m_axi_sa0_AWCACHE PROT 1 4 }  { m_axi_sa0_AWPROT QOS 1 3 }  { m_axi_sa0_AWQOS REGION 1 4 }  { m_axi_sa0_AWREGION USER 1 4 }  { m_axi_sa0_AWUSER DATA 1 1 }  { m_axi_sa0_WVALID VALID 1 1 }  { m_axi_sa0_WREADY READY 0 1 }  { m_axi_sa0_WDATA FIFONUM 1 32 }  { m_axi_sa0_WSTRB STRB 1 4 }  { m_axi_sa0_WLAST LAST 1 1 }  { m_axi_sa0_WID ID 1 1 }  { m_axi_sa0_WUSER DATA 1 1 }  { m_axi_sa0_ARVALID VALID 1 1 }  { m_axi_sa0_ARREADY READY 0 1 }  { m_axi_sa0_ARADDR ADDR 1 64 }  { m_axi_sa0_ARID ID 1 1 }  { m_axi_sa0_ARLEN SIZE 1 8 }  { m_axi_sa0_ARSIZE BURST 1 3 }  { m_axi_sa0_ARBURST LOCK 1 2 }  { m_axi_sa0_ARLOCK CACHE 1 2 }  { m_axi_sa0_ARCACHE PROT 1 4 }  { m_axi_sa0_ARPROT QOS 1 3 }  { m_axi_sa0_ARQOS REGION 1 4 }  { m_axi_sa0_ARREGION USER 1 4 }  { m_axi_sa0_ARUSER DATA 1 1 }  { m_axi_sa0_RVALID VALID 0 1 }  { m_axi_sa0_RREADY READY 1 1 }  { m_axi_sa0_RDATA FIFONUM 0 32 }  { m_axi_sa0_RLAST LAST 0 1 }  { m_axi_sa0_RID ID 0 1 }  { m_axi_sa0_RUSER DATA 0 1 }  { m_axi_sa0_RRESP RESP 0 2 }  { m_axi_sa0_BVALID VALID 0 1 }  { m_axi_sa0_BREADY READY 1 1 }  { m_axi_sa0_BRESP RESP 0 2 }  { m_axi_sa0_BID ID 0 1 }  { m_axi_sa0_BUSER DATA 0 1 } } }
	sa1 { m_axi {  { m_axi_sa1_AWVALID VALID 1 1 }  { m_axi_sa1_AWREADY READY 0 1 }  { m_axi_sa1_AWADDR ADDR 1 64 }  { m_axi_sa1_AWID ID 1 1 }  { m_axi_sa1_AWLEN SIZE 1 8 }  { m_axi_sa1_AWSIZE BURST 1 3 }  { m_axi_sa1_AWBURST LOCK 1 2 }  { m_axi_sa1_AWLOCK CACHE 1 2 }  { m_axi_sa1_AWCACHE PROT 1 4 }  { m_axi_sa1_AWPROT QOS 1 3 }  { m_axi_sa1_AWQOS REGION 1 4 }  { m_axi_sa1_AWREGION USER 1 4 }  { m_axi_sa1_AWUSER DATA 1 1 }  { m_axi_sa1_WVALID VALID 1 1 }  { m_axi_sa1_WREADY READY 0 1 }  { m_axi_sa1_WDATA FIFONUM 1 32 }  { m_axi_sa1_WSTRB STRB 1 4 }  { m_axi_sa1_WLAST LAST 1 1 }  { m_axi_sa1_WID ID 1 1 }  { m_axi_sa1_WUSER DATA 1 1 }  { m_axi_sa1_ARVALID VALID 1 1 }  { m_axi_sa1_ARREADY READY 0 1 }  { m_axi_sa1_ARADDR ADDR 1 64 }  { m_axi_sa1_ARID ID 1 1 }  { m_axi_sa1_ARLEN SIZE 1 8 }  { m_axi_sa1_ARSIZE BURST 1 3 }  { m_axi_sa1_ARBURST LOCK 1 2 }  { m_axi_sa1_ARLOCK CACHE 1 2 }  { m_axi_sa1_ARCACHE PROT 1 4 }  { m_axi_sa1_ARPROT QOS 1 3 }  { m_axi_sa1_ARQOS REGION 1 4 }  { m_axi_sa1_ARREGION USER 1 4 }  { m_axi_sa1_ARUSER DATA 1 1 }  { m_axi_sa1_RVALID VALID 0 1 }  { m_axi_sa1_RREADY READY 1 1 }  { m_axi_sa1_RDATA FIFONUM 0 32 }  { m_axi_sa1_RLAST LAST 0 1 }  { m_axi_sa1_RID ID 0 1 }  { m_axi_sa1_RUSER DATA 0 1 }  { m_axi_sa1_RRESP RESP 0 2 }  { m_axi_sa1_BVALID VALID 0 1 }  { m_axi_sa1_BREADY READY 1 1 }  { m_axi_sa1_BRESP RESP 0 2 }  { m_axi_sa1_BID ID 0 1 }  { m_axi_sa1_BUSER DATA 0 1 } } }
	sa2 { m_axi {  { m_axi_sa2_AWVALID VALID 1 1 }  { m_axi_sa2_AWREADY READY 0 1 }  { m_axi_sa2_AWADDR ADDR 1 64 }  { m_axi_sa2_AWID ID 1 1 }  { m_axi_sa2_AWLEN SIZE 1 8 }  { m_axi_sa2_AWSIZE BURST 1 3 }  { m_axi_sa2_AWBURST LOCK 1 2 }  { m_axi_sa2_AWLOCK CACHE 1 2 }  { m_axi_sa2_AWCACHE PROT 1 4 }  { m_axi_sa2_AWPROT QOS 1 3 }  { m_axi_sa2_AWQOS REGION 1 4 }  { m_axi_sa2_AWREGION USER 1 4 }  { m_axi_sa2_AWUSER DATA 1 1 }  { m_axi_sa2_WVALID VALID 1 1 }  { m_axi_sa2_WREADY READY 0 1 }  { m_axi_sa2_WDATA FIFONUM 1 32 }  { m_axi_sa2_WSTRB STRB 1 4 }  { m_axi_sa2_WLAST LAST 1 1 }  { m_axi_sa2_WID ID 1 1 }  { m_axi_sa2_WUSER DATA 1 1 }  { m_axi_sa2_ARVALID VALID 1 1 }  { m_axi_sa2_ARREADY READY 0 1 }  { m_axi_sa2_ARADDR ADDR 1 64 }  { m_axi_sa2_ARID ID 1 1 }  { m_axi_sa2_ARLEN SIZE 1 8 }  { m_axi_sa2_ARSIZE BURST 1 3 }  { m_axi_sa2_ARBURST LOCK 1 2 }  { m_axi_sa2_ARLOCK CACHE 1 2 }  { m_axi_sa2_ARCACHE PROT 1 4 }  { m_axi_sa2_ARPROT QOS 1 3 }  { m_axi_sa2_ARQOS REGION 1 4 }  { m_axi_sa2_ARREGION USER 1 4 }  { m_axi_sa2_ARUSER DATA 1 1 }  { m_axi_sa2_RVALID VALID 0 1 }  { m_axi_sa2_RREADY READY 1 1 }  { m_axi_sa2_RDATA FIFONUM 0 32 }  { m_axi_sa2_RLAST LAST 0 1 }  { m_axi_sa2_RID ID 0 1 }  { m_axi_sa2_RUSER DATA 0 1 }  { m_axi_sa2_RRESP RESP 0 2 }  { m_axi_sa2_BVALID VALID 0 1 }  { m_axi_sa2_BREADY READY 1 1 }  { m_axi_sa2_BRESP RESP 0 2 }  { m_axi_sa2_BID ID 0 1 }  { m_axi_sa2_BUSER DATA 0 1 } } }
	sl0 { m_axi {  { m_axi_sl0_AWVALID VALID 1 1 }  { m_axi_sl0_AWREADY READY 0 1 }  { m_axi_sl0_AWADDR ADDR 1 64 }  { m_axi_sl0_AWID ID 1 1 }  { m_axi_sl0_AWLEN SIZE 1 8 }  { m_axi_sl0_AWSIZE BURST 1 3 }  { m_axi_sl0_AWBURST LOCK 1 2 }  { m_axi_sl0_AWLOCK CACHE 1 2 }  { m_axi_sl0_AWCACHE PROT 1 4 }  { m_axi_sl0_AWPROT QOS 1 3 }  { m_axi_sl0_AWQOS REGION 1 4 }  { m_axi_sl0_AWREGION USER 1 4 }  { m_axi_sl0_AWUSER DATA 1 1 }  { m_axi_sl0_WVALID VALID 1 1 }  { m_axi_sl0_WREADY READY 0 1 }  { m_axi_sl0_WDATA FIFONUM 1 32 }  { m_axi_sl0_WSTRB STRB 1 4 }  { m_axi_sl0_WLAST LAST 1 1 }  { m_axi_sl0_WID ID 1 1 }  { m_axi_sl0_WUSER DATA 1 1 }  { m_axi_sl0_ARVALID VALID 1 1 }  { m_axi_sl0_ARREADY READY 0 1 }  { m_axi_sl0_ARADDR ADDR 1 64 }  { m_axi_sl0_ARID ID 1 1 }  { m_axi_sl0_ARLEN SIZE 1 8 }  { m_axi_sl0_ARSIZE BURST 1 3 }  { m_axi_sl0_ARBURST LOCK 1 2 }  { m_axi_sl0_ARLOCK CACHE 1 2 }  { m_axi_sl0_ARCACHE PROT 1 4 }  { m_axi_sl0_ARPROT QOS 1 3 }  { m_axi_sl0_ARQOS REGION 1 4 }  { m_axi_sl0_ARREGION USER 1 4 }  { m_axi_sl0_ARUSER DATA 1 1 }  { m_axi_sl0_RVALID VALID 0 1 }  { m_axi_sl0_RREADY READY 1 1 }  { m_axi_sl0_RDATA FIFONUM 0 32 }  { m_axi_sl0_RLAST LAST 0 1 }  { m_axi_sl0_RID ID 0 1 }  { m_axi_sl0_RUSER DATA 0 1 }  { m_axi_sl0_RRESP RESP 0 2 }  { m_axi_sl0_BVALID VALID 0 1 }  { m_axi_sl0_BREADY READY 1 1 }  { m_axi_sl0_BRESP RESP 0 2 }  { m_axi_sl0_BID ID 0 1 }  { m_axi_sl0_BUSER DATA 0 1 } } }
	sl1 { m_axi {  { m_axi_sl1_AWVALID VALID 1 1 }  { m_axi_sl1_AWREADY READY 0 1 }  { m_axi_sl1_AWADDR ADDR 1 64 }  { m_axi_sl1_AWID ID 1 1 }  { m_axi_sl1_AWLEN SIZE 1 8 }  { m_axi_sl1_AWSIZE BURST 1 3 }  { m_axi_sl1_AWBURST LOCK 1 2 }  { m_axi_sl1_AWLOCK CACHE 1 2 }  { m_axi_sl1_AWCACHE PROT 1 4 }  { m_axi_sl1_AWPROT QOS 1 3 }  { m_axi_sl1_AWQOS REGION 1 4 }  { m_axi_sl1_AWREGION USER 1 4 }  { m_axi_sl1_AWUSER DATA 1 1 }  { m_axi_sl1_WVALID VALID 1 1 }  { m_axi_sl1_WREADY READY 0 1 }  { m_axi_sl1_WDATA FIFONUM 1 32 }  { m_axi_sl1_WSTRB STRB 1 4 }  { m_axi_sl1_WLAST LAST 1 1 }  { m_axi_sl1_WID ID 1 1 }  { m_axi_sl1_WUSER DATA 1 1 }  { m_axi_sl1_ARVALID VALID 1 1 }  { m_axi_sl1_ARREADY READY 0 1 }  { m_axi_sl1_ARADDR ADDR 1 64 }  { m_axi_sl1_ARID ID 1 1 }  { m_axi_sl1_ARLEN SIZE 1 8 }  { m_axi_sl1_ARSIZE BURST 1 3 }  { m_axi_sl1_ARBURST LOCK 1 2 }  { m_axi_sl1_ARLOCK CACHE 1 2 }  { m_axi_sl1_ARCACHE PROT 1 4 }  { m_axi_sl1_ARPROT QOS 1 3 }  { m_axi_sl1_ARQOS REGION 1 4 }  { m_axi_sl1_ARREGION USER 1 4 }  { m_axi_sl1_ARUSER DATA 1 1 }  { m_axi_sl1_RVALID VALID 0 1 }  { m_axi_sl1_RREADY READY 1 1 }  { m_axi_sl1_RDATA FIFONUM 0 32 }  { m_axi_sl1_RLAST LAST 0 1 }  { m_axi_sl1_RID ID 0 1 }  { m_axi_sl1_RUSER DATA 0 1 }  { m_axi_sl1_RRESP RESP 0 2 }  { m_axi_sl1_BVALID VALID 0 1 }  { m_axi_sl1_BREADY READY 1 1 }  { m_axi_sl1_BRESP RESP 0 2 }  { m_axi_sl1_BID ID 0 1 }  { m_axi_sl1_BUSER DATA 0 1 } } }
	sl2 { m_axi {  { m_axi_sl2_AWVALID VALID 1 1 }  { m_axi_sl2_AWREADY READY 0 1 }  { m_axi_sl2_AWADDR ADDR 1 64 }  { m_axi_sl2_AWID ID 1 1 }  { m_axi_sl2_AWLEN SIZE 1 8 }  { m_axi_sl2_AWSIZE BURST 1 3 }  { m_axi_sl2_AWBURST LOCK 1 2 }  { m_axi_sl2_AWLOCK CACHE 1 2 }  { m_axi_sl2_AWCACHE PROT 1 4 }  { m_axi_sl2_AWPROT QOS 1 3 }  { m_axi_sl2_AWQOS REGION 1 4 }  { m_axi_sl2_AWREGION USER 1 4 }  { m_axi_sl2_AWUSER DATA 1 1 }  { m_axi_sl2_WVALID VALID 1 1 }  { m_axi_sl2_WREADY READY 0 1 }  { m_axi_sl2_WDATA FIFONUM 1 32 }  { m_axi_sl2_WSTRB STRB 1 4 }  { m_axi_sl2_WLAST LAST 1 1 }  { m_axi_sl2_WID ID 1 1 }  { m_axi_sl2_WUSER DATA 1 1 }  { m_axi_sl2_ARVALID VALID 1 1 }  { m_axi_sl2_ARREADY READY 0 1 }  { m_axi_sl2_ARADDR ADDR 1 64 }  { m_axi_sl2_ARID ID 1 1 }  { m_axi_sl2_ARLEN SIZE 1 8 }  { m_axi_sl2_ARSIZE BURST 1 3 }  { m_axi_sl2_ARBURST LOCK 1 2 }  { m_axi_sl2_ARLOCK CACHE 1 2 }  { m_axi_sl2_ARCACHE PROT 1 4 }  { m_axi_sl2_ARPROT QOS 1 3 }  { m_axi_sl2_ARQOS REGION 1 4 }  { m_axi_sl2_ARREGION USER 1 4 }  { m_axi_sl2_ARUSER DATA 1 1 }  { m_axi_sl2_RVALID VALID 0 1 }  { m_axi_sl2_RREADY READY 1 1 }  { m_axi_sl2_RDATA FIFONUM 0 32 }  { m_axi_sl2_RLAST LAST 0 1 }  { m_axi_sl2_RID ID 0 1 }  { m_axi_sl2_RUSER DATA 0 1 }  { m_axi_sl2_RRESP RESP 0 2 }  { m_axi_sl2_BVALID VALID 0 1 }  { m_axi_sl2_BREADY READY 1 1 }  { m_axi_sl2_BRESP RESP 0 2 }  { m_axi_sl2_BID ID 0 1 }  { m_axi_sl2_BUSER DATA 0 1 } } }
	su0 { m_axi {  { m_axi_su0_AWVALID VALID 1 1 }  { m_axi_su0_AWREADY READY 0 1 }  { m_axi_su0_AWADDR ADDR 1 64 }  { m_axi_su0_AWID ID 1 1 }  { m_axi_su0_AWLEN SIZE 1 8 }  { m_axi_su0_AWSIZE BURST 1 3 }  { m_axi_su0_AWBURST LOCK 1 2 }  { m_axi_su0_AWLOCK CACHE 1 2 }  { m_axi_su0_AWCACHE PROT 1 4 }  { m_axi_su0_AWPROT QOS 1 3 }  { m_axi_su0_AWQOS REGION 1 4 }  { m_axi_su0_AWREGION USER 1 4 }  { m_axi_su0_AWUSER DATA 1 1 }  { m_axi_su0_WVALID VALID 1 1 }  { m_axi_su0_WREADY READY 0 1 }  { m_axi_su0_WDATA FIFONUM 1 32 }  { m_axi_su0_WSTRB STRB 1 4 }  { m_axi_su0_WLAST LAST 1 1 }  { m_axi_su0_WID ID 1 1 }  { m_axi_su0_WUSER DATA 1 1 }  { m_axi_su0_ARVALID VALID 1 1 }  { m_axi_su0_ARREADY READY 0 1 }  { m_axi_su0_ARADDR ADDR 1 64 }  { m_axi_su0_ARID ID 1 1 }  { m_axi_su0_ARLEN SIZE 1 8 }  { m_axi_su0_ARSIZE BURST 1 3 }  { m_axi_su0_ARBURST LOCK 1 2 }  { m_axi_su0_ARLOCK CACHE 1 2 }  { m_axi_su0_ARCACHE PROT 1 4 }  { m_axi_su0_ARPROT QOS 1 3 }  { m_axi_su0_ARQOS REGION 1 4 }  { m_axi_su0_ARREGION USER 1 4 }  { m_axi_su0_ARUSER DATA 1 1 }  { m_axi_su0_RVALID VALID 0 1 }  { m_axi_su0_RREADY READY 1 1 }  { m_axi_su0_RDATA FIFONUM 0 32 }  { m_axi_su0_RLAST LAST 0 1 }  { m_axi_su0_RID ID 0 1 }  { m_axi_su0_RUSER DATA 0 1 }  { m_axi_su0_RRESP RESP 0 2 }  { m_axi_su0_BVALID VALID 0 1 }  { m_axi_su0_BREADY READY 1 1 }  { m_axi_su0_BRESP RESP 0 2 }  { m_axi_su0_BID ID 0 1 }  { m_axi_su0_BUSER DATA 0 1 } } }
	su1 { m_axi {  { m_axi_su1_AWVALID VALID 1 1 }  { m_axi_su1_AWREADY READY 0 1 }  { m_axi_su1_AWADDR ADDR 1 64 }  { m_axi_su1_AWID ID 1 1 }  { m_axi_su1_AWLEN SIZE 1 8 }  { m_axi_su1_AWSIZE BURST 1 3 }  { m_axi_su1_AWBURST LOCK 1 2 }  { m_axi_su1_AWLOCK CACHE 1 2 }  { m_axi_su1_AWCACHE PROT 1 4 }  { m_axi_su1_AWPROT QOS 1 3 }  { m_axi_su1_AWQOS REGION 1 4 }  { m_axi_su1_AWREGION USER 1 4 }  { m_axi_su1_AWUSER DATA 1 1 }  { m_axi_su1_WVALID VALID 1 1 }  { m_axi_su1_WREADY READY 0 1 }  { m_axi_su1_WDATA FIFONUM 1 32 }  { m_axi_su1_WSTRB STRB 1 4 }  { m_axi_su1_WLAST LAST 1 1 }  { m_axi_su1_WID ID 1 1 }  { m_axi_su1_WUSER DATA 1 1 }  { m_axi_su1_ARVALID VALID 1 1 }  { m_axi_su1_ARREADY READY 0 1 }  { m_axi_su1_ARADDR ADDR 1 64 }  { m_axi_su1_ARID ID 1 1 }  { m_axi_su1_ARLEN SIZE 1 8 }  { m_axi_su1_ARSIZE BURST 1 3 }  { m_axi_su1_ARBURST LOCK 1 2 }  { m_axi_su1_ARLOCK CACHE 1 2 }  { m_axi_su1_ARCACHE PROT 1 4 }  { m_axi_su1_ARPROT QOS 1 3 }  { m_axi_su1_ARQOS REGION 1 4 }  { m_axi_su1_ARREGION USER 1 4 }  { m_axi_su1_ARUSER DATA 1 1 }  { m_axi_su1_RVALID VALID 0 1 }  { m_axi_su1_RREADY READY 1 1 }  { m_axi_su1_RDATA FIFONUM 0 32 }  { m_axi_su1_RLAST LAST 0 1 }  { m_axi_su1_RID ID 0 1 }  { m_axi_su1_RUSER DATA 0 1 }  { m_axi_su1_RRESP RESP 0 2 }  { m_axi_su1_BVALID VALID 0 1 }  { m_axi_su1_BREADY READY 1 1 }  { m_axi_su1_BRESP RESP 0 2 }  { m_axi_su1_BID ID 0 1 }  { m_axi_su1_BUSER DATA 0 1 } } }
	su2 { m_axi {  { m_axi_su2_AWVALID VALID 1 1 }  { m_axi_su2_AWREADY READY 0 1 }  { m_axi_su2_AWADDR ADDR 1 64 }  { m_axi_su2_AWID ID 1 1 }  { m_axi_su2_AWLEN SIZE 1 8 }  { m_axi_su2_AWSIZE BURST 1 3 }  { m_axi_su2_AWBURST LOCK 1 2 }  { m_axi_su2_AWLOCK CACHE 1 2 }  { m_axi_su2_AWCACHE PROT 1 4 }  { m_axi_su2_AWPROT QOS 1 3 }  { m_axi_su2_AWQOS REGION 1 4 }  { m_axi_su2_AWREGION USER 1 4 }  { m_axi_su2_AWUSER DATA 1 1 }  { m_axi_su2_WVALID VALID 1 1 }  { m_axi_su2_WREADY READY 0 1 }  { m_axi_su2_WDATA FIFONUM 1 32 }  { m_axi_su2_WSTRB STRB 1 4 }  { m_axi_su2_WLAST LAST 1 1 }  { m_axi_su2_WID ID 1 1 }  { m_axi_su2_WUSER DATA 1 1 }  { m_axi_su2_ARVALID VALID 1 1 }  { m_axi_su2_ARREADY READY 0 1 }  { m_axi_su2_ARADDR ADDR 1 64 }  { m_axi_su2_ARID ID 1 1 }  { m_axi_su2_ARLEN SIZE 1 8 }  { m_axi_su2_ARSIZE BURST 1 3 }  { m_axi_su2_ARBURST LOCK 1 2 }  { m_axi_su2_ARLOCK CACHE 1 2 }  { m_axi_su2_ARCACHE PROT 1 4 }  { m_axi_su2_ARPROT QOS 1 3 }  { m_axi_su2_ARQOS REGION 1 4 }  { m_axi_su2_ARREGION USER 1 4 }  { m_axi_su2_ARUSER DATA 1 1 }  { m_axi_su2_RVALID VALID 0 1 }  { m_axi_su2_RREADY READY 1 1 }  { m_axi_su2_RDATA FIFONUM 0 32 }  { m_axi_su2_RLAST LAST 0 1 }  { m_axi_su2_RID ID 0 1 }  { m_axi_su2_RUSER DATA 0 1 }  { m_axi_su2_RRESP RESP 0 2 }  { m_axi_su2_BVALID VALID 0 1 }  { m_axi_su2_BREADY READY 1 1 }  { m_axi_su2_BRESP RESP 0 2 }  { m_axi_su2_BID ID 0 1 }  { m_axi_su2_BUSER DATA 0 1 } } }
	ss0 { m_axi {  { m_axi_ss0_AWVALID VALID 1 1 }  { m_axi_ss0_AWREADY READY 0 1 }  { m_axi_ss0_AWADDR ADDR 1 64 }  { m_axi_ss0_AWID ID 1 1 }  { m_axi_ss0_AWLEN SIZE 1 8 }  { m_axi_ss0_AWSIZE BURST 1 3 }  { m_axi_ss0_AWBURST LOCK 1 2 }  { m_axi_ss0_AWLOCK CACHE 1 2 }  { m_axi_ss0_AWCACHE PROT 1 4 }  { m_axi_ss0_AWPROT QOS 1 3 }  { m_axi_ss0_AWQOS REGION 1 4 }  { m_axi_ss0_AWREGION USER 1 4 }  { m_axi_ss0_AWUSER DATA 1 1 }  { m_axi_ss0_WVALID VALID 1 1 }  { m_axi_ss0_WREADY READY 0 1 }  { m_axi_ss0_WDATA FIFONUM 1 32 }  { m_axi_ss0_WSTRB STRB 1 4 }  { m_axi_ss0_WLAST LAST 1 1 }  { m_axi_ss0_WID ID 1 1 }  { m_axi_ss0_WUSER DATA 1 1 }  { m_axi_ss0_ARVALID VALID 1 1 }  { m_axi_ss0_ARREADY READY 0 1 }  { m_axi_ss0_ARADDR ADDR 1 64 }  { m_axi_ss0_ARID ID 1 1 }  { m_axi_ss0_ARLEN SIZE 1 8 }  { m_axi_ss0_ARSIZE BURST 1 3 }  { m_axi_ss0_ARBURST LOCK 1 2 }  { m_axi_ss0_ARLOCK CACHE 1 2 }  { m_axi_ss0_ARCACHE PROT 1 4 }  { m_axi_ss0_ARPROT QOS 1 3 }  { m_axi_ss0_ARQOS REGION 1 4 }  { m_axi_ss0_ARREGION USER 1 4 }  { m_axi_ss0_ARUSER DATA 1 1 }  { m_axi_ss0_RVALID VALID 0 1 }  { m_axi_ss0_RREADY READY 1 1 }  { m_axi_ss0_RDATA FIFONUM 0 32 }  { m_axi_ss0_RLAST LAST 0 1 }  { m_axi_ss0_RID ID 0 1 }  { m_axi_ss0_RUSER DATA 0 1 }  { m_axi_ss0_RRESP RESP 0 2 }  { m_axi_ss0_BVALID VALID 0 1 }  { m_axi_ss0_BREADY READY 1 1 }  { m_axi_ss0_BRESP RESP 0 2 }  { m_axi_ss0_BID ID 0 1 }  { m_axi_ss0_BUSER DATA 0 1 } } }
	ss1 { m_axi {  { m_axi_ss1_AWVALID VALID 1 1 }  { m_axi_ss1_AWREADY READY 0 1 }  { m_axi_ss1_AWADDR ADDR 1 64 }  { m_axi_ss1_AWID ID 1 1 }  { m_axi_ss1_AWLEN SIZE 1 8 }  { m_axi_ss1_AWSIZE BURST 1 3 }  { m_axi_ss1_AWBURST LOCK 1 2 }  { m_axi_ss1_AWLOCK CACHE 1 2 }  { m_axi_ss1_AWCACHE PROT 1 4 }  { m_axi_ss1_AWPROT QOS 1 3 }  { m_axi_ss1_AWQOS REGION 1 4 }  { m_axi_ss1_AWREGION USER 1 4 }  { m_axi_ss1_AWUSER DATA 1 1 }  { m_axi_ss1_WVALID VALID 1 1 }  { m_axi_ss1_WREADY READY 0 1 }  { m_axi_ss1_WDATA FIFONUM 1 32 }  { m_axi_ss1_WSTRB STRB 1 4 }  { m_axi_ss1_WLAST LAST 1 1 }  { m_axi_ss1_WID ID 1 1 }  { m_axi_ss1_WUSER DATA 1 1 }  { m_axi_ss1_ARVALID VALID 1 1 }  { m_axi_ss1_ARREADY READY 0 1 }  { m_axi_ss1_ARADDR ADDR 1 64 }  { m_axi_ss1_ARID ID 1 1 }  { m_axi_ss1_ARLEN SIZE 1 8 }  { m_axi_ss1_ARSIZE BURST 1 3 }  { m_axi_ss1_ARBURST LOCK 1 2 }  { m_axi_ss1_ARLOCK CACHE 1 2 }  { m_axi_ss1_ARCACHE PROT 1 4 }  { m_axi_ss1_ARPROT QOS 1 3 }  { m_axi_ss1_ARQOS REGION 1 4 }  { m_axi_ss1_ARREGION USER 1 4 }  { m_axi_ss1_ARUSER DATA 1 1 }  { m_axi_ss1_RVALID VALID 0 1 }  { m_axi_ss1_RREADY READY 1 1 }  { m_axi_ss1_RDATA FIFONUM 0 32 }  { m_axi_ss1_RLAST LAST 0 1 }  { m_axi_ss1_RID ID 0 1 }  { m_axi_ss1_RUSER DATA 0 1 }  { m_axi_ss1_RRESP RESP 0 2 }  { m_axi_ss1_BVALID VALID 0 1 }  { m_axi_ss1_BREADY READY 1 1 }  { m_axi_ss1_BRESP RESP 0 2 }  { m_axi_ss1_BID ID 0 1 }  { m_axi_ss1_BUSER DATA 0 1 } } }
	ss2 { m_axi {  { m_axi_ss2_AWVALID VALID 1 1 }  { m_axi_ss2_AWREADY READY 0 1 }  { m_axi_ss2_AWADDR ADDR 1 64 }  { m_axi_ss2_AWID ID 1 1 }  { m_axi_ss2_AWLEN SIZE 1 8 }  { m_axi_ss2_AWSIZE BURST 1 3 }  { m_axi_ss2_AWBURST LOCK 1 2 }  { m_axi_ss2_AWLOCK CACHE 1 2 }  { m_axi_ss2_AWCACHE PROT 1 4 }  { m_axi_ss2_AWPROT QOS 1 3 }  { m_axi_ss2_AWQOS REGION 1 4 }  { m_axi_ss2_AWREGION USER 1 4 }  { m_axi_ss2_AWUSER DATA 1 1 }  { m_axi_ss2_WVALID VALID 1 1 }  { m_axi_ss2_WREADY READY 0 1 }  { m_axi_ss2_WDATA FIFONUM 1 32 }  { m_axi_ss2_WSTRB STRB 1 4 }  { m_axi_ss2_WLAST LAST 1 1 }  { m_axi_ss2_WID ID 1 1 }  { m_axi_ss2_WUSER DATA 1 1 }  { m_axi_ss2_ARVALID VALID 1 1 }  { m_axi_ss2_ARREADY READY 0 1 }  { m_axi_ss2_ARADDR ADDR 1 64 }  { m_axi_ss2_ARID ID 1 1 }  { m_axi_ss2_ARLEN SIZE 1 8 }  { m_axi_ss2_ARSIZE BURST 1 3 }  { m_axi_ss2_ARBURST LOCK 1 2 }  { m_axi_ss2_ARLOCK CACHE 1 2 }  { m_axi_ss2_ARCACHE PROT 1 4 }  { m_axi_ss2_ARPROT QOS 1 3 }  { m_axi_ss2_ARQOS REGION 1 4 }  { m_axi_ss2_ARREGION USER 1 4 }  { m_axi_ss2_ARUSER DATA 1 1 }  { m_axi_ss2_RVALID VALID 0 1 }  { m_axi_ss2_RREADY READY 1 1 }  { m_axi_ss2_RDATA FIFONUM 0 32 }  { m_axi_ss2_RLAST LAST 0 1 }  { m_axi_ss2_RID ID 0 1 }  { m_axi_ss2_RUSER DATA 0 1 }  { m_axi_ss2_RRESP RESP 0 2 }  { m_axi_ss2_BVALID VALID 0 1 }  { m_axi_ss2_BREADY READY 1 1 }  { m_axi_ss2_BRESP RESP 0 2 }  { m_axi_ss2_BID ID 0 1 }  { m_axi_ss2_BUSER DATA 0 1 } } }
	sw0 { m_axi {  { m_axi_sw0_AWVALID VALID 1 1 }  { m_axi_sw0_AWREADY READY 0 1 }  { m_axi_sw0_AWADDR ADDR 1 64 }  { m_axi_sw0_AWID ID 1 1 }  { m_axi_sw0_AWLEN SIZE 1 8 }  { m_axi_sw0_AWSIZE BURST 1 3 }  { m_axi_sw0_AWBURST LOCK 1 2 }  { m_axi_sw0_AWLOCK CACHE 1 2 }  { m_axi_sw0_AWCACHE PROT 1 4 }  { m_axi_sw0_AWPROT QOS 1 3 }  { m_axi_sw0_AWQOS REGION 1 4 }  { m_axi_sw0_AWREGION USER 1 4 }  { m_axi_sw0_AWUSER DATA 1 1 }  { m_axi_sw0_WVALID VALID 1 1 }  { m_axi_sw0_WREADY READY 0 1 }  { m_axi_sw0_WDATA FIFONUM 1 32 }  { m_axi_sw0_WSTRB STRB 1 4 }  { m_axi_sw0_WLAST LAST 1 1 }  { m_axi_sw0_WID ID 1 1 }  { m_axi_sw0_WUSER DATA 1 1 }  { m_axi_sw0_ARVALID VALID 1 1 }  { m_axi_sw0_ARREADY READY 0 1 }  { m_axi_sw0_ARADDR ADDR 1 64 }  { m_axi_sw0_ARID ID 1 1 }  { m_axi_sw0_ARLEN SIZE 1 8 }  { m_axi_sw0_ARSIZE BURST 1 3 }  { m_axi_sw0_ARBURST LOCK 1 2 }  { m_axi_sw0_ARLOCK CACHE 1 2 }  { m_axi_sw0_ARCACHE PROT 1 4 }  { m_axi_sw0_ARPROT QOS 1 3 }  { m_axi_sw0_ARQOS REGION 1 4 }  { m_axi_sw0_ARREGION USER 1 4 }  { m_axi_sw0_ARUSER DATA 1 1 }  { m_axi_sw0_RVALID VALID 0 1 }  { m_axi_sw0_RREADY READY 1 1 }  { m_axi_sw0_RDATA FIFONUM 0 32 }  { m_axi_sw0_RLAST LAST 0 1 }  { m_axi_sw0_RID ID 0 1 }  { m_axi_sw0_RUSER DATA 0 1 }  { m_axi_sw0_RRESP RESP 0 2 }  { m_axi_sw0_BVALID VALID 0 1 }  { m_axi_sw0_BREADY READY 1 1 }  { m_axi_sw0_BRESP RESP 0 2 }  { m_axi_sw0_BID ID 0 1 }  { m_axi_sw0_BUSER DATA 0 1 } } }
	sw1 { m_axi {  { m_axi_sw1_AWVALID VALID 1 1 }  { m_axi_sw1_AWREADY READY 0 1 }  { m_axi_sw1_AWADDR ADDR 1 64 }  { m_axi_sw1_AWID ID 1 1 }  { m_axi_sw1_AWLEN SIZE 1 8 }  { m_axi_sw1_AWSIZE BURST 1 3 }  { m_axi_sw1_AWBURST LOCK 1 2 }  { m_axi_sw1_AWLOCK CACHE 1 2 }  { m_axi_sw1_AWCACHE PROT 1 4 }  { m_axi_sw1_AWPROT QOS 1 3 }  { m_axi_sw1_AWQOS REGION 1 4 }  { m_axi_sw1_AWREGION USER 1 4 }  { m_axi_sw1_AWUSER DATA 1 1 }  { m_axi_sw1_WVALID VALID 1 1 }  { m_axi_sw1_WREADY READY 0 1 }  { m_axi_sw1_WDATA FIFONUM 1 32 }  { m_axi_sw1_WSTRB STRB 1 4 }  { m_axi_sw1_WLAST LAST 1 1 }  { m_axi_sw1_WID ID 1 1 }  { m_axi_sw1_WUSER DATA 1 1 }  { m_axi_sw1_ARVALID VALID 1 1 }  { m_axi_sw1_ARREADY READY 0 1 }  { m_axi_sw1_ARADDR ADDR 1 64 }  { m_axi_sw1_ARID ID 1 1 }  { m_axi_sw1_ARLEN SIZE 1 8 }  { m_axi_sw1_ARSIZE BURST 1 3 }  { m_axi_sw1_ARBURST LOCK 1 2 }  { m_axi_sw1_ARLOCK CACHE 1 2 }  { m_axi_sw1_ARCACHE PROT 1 4 }  { m_axi_sw1_ARPROT QOS 1 3 }  { m_axi_sw1_ARQOS REGION 1 4 }  { m_axi_sw1_ARREGION USER 1 4 }  { m_axi_sw1_ARUSER DATA 1 1 }  { m_axi_sw1_RVALID VALID 0 1 }  { m_axi_sw1_RREADY READY 1 1 }  { m_axi_sw1_RDATA FIFONUM 0 32 }  { m_axi_sw1_RLAST LAST 0 1 }  { m_axi_sw1_RID ID 0 1 }  { m_axi_sw1_RUSER DATA 0 1 }  { m_axi_sw1_RRESP RESP 0 2 }  { m_axi_sw1_BVALID VALID 0 1 }  { m_axi_sw1_BREADY READY 1 1 }  { m_axi_sw1_BRESP RESP 0 2 }  { m_axi_sw1_BID ID 0 1 }  { m_axi_sw1_BUSER DATA 0 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	status { ap_vld {  { status out_data 1 32 }  { status_ap_vld out_vld 1 1 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict sa0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict sa1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict sa2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict sl0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict sl1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict sl2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict su0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict su1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict su2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ss0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ss1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ss2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict sw0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict sw1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ sa0 1 }
	{ sa1 1 }
	{ sa2 1 }
	{ sl0 1 }
	{ sl1 1 }
	{ sl2 1 }
	{ su0 1 }
	{ su1 1 }
	{ su2 1 }
	{ ss0 1 }
	{ ss1 1 }
	{ ss2 1 }
	{ sw0 1 }
	{ sw1 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ sa0 1 }
	{ sa1 1 }
	{ sa2 1 }
	{ sl0 1 }
	{ sl1 1 }
	{ sl2 1 }
	{ su0 1 }
	{ su1 1 }
	{ su2 1 }
	{ ss0 1 }
	{ ss1 1 }
	{ ss2 1 }
	{ sw0 1 }
	{ sw1 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
