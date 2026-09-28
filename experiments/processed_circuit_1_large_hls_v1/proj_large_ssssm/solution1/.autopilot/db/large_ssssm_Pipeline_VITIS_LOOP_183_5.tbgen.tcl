set moduleName large_ssssm_Pipeline_VITIS_LOOP_183_5
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
set C_modelName {large_ssssm_Pipeline_VITIS_LOOP_183_5}
set C_modelType { int 1 }
set C_modelArgList {
	{ zext_ln183_1 int 32 regular  }
	{ empty int 64 regular  }
	{ sw1 int 32 regular {axi_master 0}  }
	{ sw0 int 32 regular {axi_master 2}  }
	{ su2 int 32 regular {axi_master 0}  }
	{ su1 int 32 regular {axi_master 0}  }
	{ zext_ln183_2 int 32 regular  }
	{ u_val int 64 regular  }
	{ lv float 32 regular  }
	{ work int 64 regular  }
	{ muladds int 64 regular {pointer 1}  }
	{ u_idx int 64 regular  }
	{ mark int 64 regular  }
	{ add_ln172_3 int 33 regular  }
	{ p_out int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln183_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sw1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mark","offset": { "type": "dynamic","port_name": "mark","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "su2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_val","offset": { "type": "dynamic","port_name": "u_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "su1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_idx","offset": { "type": "dynamic","port_name": "u_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln183_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "lv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_idx", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mark", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln172_3", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 209
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln183_1 sc_in sc_lv 32 signal 0 } 
	{ empty sc_in sc_lv 64 signal 1 } 
	{ m_axi_sw1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sw1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sw1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_sw1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_sw1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sw1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sw1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw1_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_sw0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_sw0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_sw0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_sw0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_sw0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_sw0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_sw0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_sw0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_sw0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_sw0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_sw0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_sw0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_sw0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_sw0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_sw0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_sw0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_sw0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_sw0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_sw0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_sw0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_sw0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_sw0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_sw0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_sw0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_su2_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_su2_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_su2_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_su2_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_su2_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_su2_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_su2_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_su2_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_su2_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_su2_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_su2_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_su2_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_su2_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_su2_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_su2_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_su2_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_su2_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_su2_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_su2_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_su2_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_su2_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_su2_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_su2_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_su2_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_su2_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_su1_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_su1_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_su1_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_su1_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_su1_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_su1_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_su1_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_su1_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_su1_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_su1_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_su1_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_su1_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_su1_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_su1_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_su1_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_su1_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_su1_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_su1_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_su1_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_su1_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_su1_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_su1_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_su1_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_su1_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_su1_BUSER sc_in sc_lv 1 signal 5 } 
	{ zext_ln183_2 sc_in sc_lv 32 signal 6 } 
	{ u_val sc_in sc_lv 64 signal 7 } 
	{ lv sc_in sc_lv 32 signal 8 } 
	{ work sc_in sc_lv 64 signal 9 } 
	{ muladds sc_out sc_lv 64 signal 10 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ u_idx sc_in sc_lv 64 signal 11 } 
	{ mark sc_in sc_lv 64 signal 12 } 
	{ add_ln172_3 sc_in sc_lv 33 signal 13 } 
	{ p_out sc_out sc_lv 64 signal 14 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1151_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1151_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1151_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1151_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1151_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln183_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln183_1", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "m_axi_sw1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sw1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sw1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sw1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "AWID" }} , 
 	{ "name": "m_axi_sw1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_sw1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_sw1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sw1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_sw1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "RUSER" }} , 
 	{ "name": "m_axi_sw1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "RRESP" }} , 
 	{ "name": "m_axi_sw1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BVALID" }} , 
 	{ "name": "m_axi_sw1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BREADY" }} , 
 	{ "name": "m_axi_sw1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw1", "role": "BRESP" }} , 
 	{ "name": "m_axi_sw1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BID" }} , 
 	{ "name": "m_axi_sw1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "BUSER" }} , 
 	{ "name": "m_axi_sw0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sw0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sw0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sw0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sw0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "AWID" }} , 
 	{ "name": "m_axi_sw0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_sw0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_sw0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sw0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_sw0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "RUSER" }} , 
 	{ "name": "m_axi_sw0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "RRESP" }} , 
 	{ "name": "m_axi_sw0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BVALID" }} , 
 	{ "name": "m_axi_sw0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BREADY" }} , 
 	{ "name": "m_axi_sw0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sw0", "role": "BRESP" }} , 
 	{ "name": "m_axi_sw0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BID" }} , 
 	{ "name": "m_axi_sw0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "BUSER" }} , 
 	{ "name": "m_axi_su2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_su2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_su2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_su2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "AWID" }} , 
 	{ "name": "m_axi_su2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_su2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_su2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "su2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_su2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "RUSER" }} , 
 	{ "name": "m_axi_su2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "RRESP" }} , 
 	{ "name": "m_axi_su2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BVALID" }} , 
 	{ "name": "m_axi_su2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BREADY" }} , 
 	{ "name": "m_axi_su2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su2", "role": "BRESP" }} , 
 	{ "name": "m_axi_su2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BID" }} , 
 	{ "name": "m_axi_su2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su2", "role": "BUSER" }} , 
 	{ "name": "m_axi_su1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_su1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_su1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "su1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_su1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "AWID" }} , 
 	{ "name": "m_axi_su1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_su1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "su1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_su1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "su1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_su1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "RUSER" }} , 
 	{ "name": "m_axi_su1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "RRESP" }} , 
 	{ "name": "m_axi_su1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BVALID" }} , 
 	{ "name": "m_axi_su1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BREADY" }} , 
 	{ "name": "m_axi_su1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "su1", "role": "BRESP" }} , 
 	{ "name": "m_axi_su1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BID" }} , 
 	{ "name": "m_axi_su1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "su1", "role": "BUSER" }} , 
 	{ "name": "zext_ln183_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln183_2", "role": "default" }} , 
 	{ "name": "u_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_val", "role": "default" }} , 
 	{ "name": "lv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lv", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }} , 
 	{ "name": "u_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_idx", "role": "default" }} , 
 	{ "name": "mark", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mark", "role": "default" }} , 
 	{ "name": "add_ln172_3", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "add_ln172_3", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_1151_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1151_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1151_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1151_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1151_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1151_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1151_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1151_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1151_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1151_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	zext_ln183_1 { ap_none {  { zext_ln183_1 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 64 } } }
	 { m_axi {  { m_axi_sw1_AWVALID VALID 1 1 }  { m_axi_sw1_AWREADY READY 0 1 }  { m_axi_sw1_AWADDR ADDR 1 64 }  { m_axi_sw1_AWID ID 1 1 }  { m_axi_sw1_AWLEN SIZE 1 32 }  { m_axi_sw1_AWSIZE BURST 1 3 }  { m_axi_sw1_AWBURST LOCK 1 2 }  { m_axi_sw1_AWLOCK CACHE 1 2 }  { m_axi_sw1_AWCACHE PROT 1 4 }  { m_axi_sw1_AWPROT QOS 1 3 }  { m_axi_sw1_AWQOS REGION 1 4 }  { m_axi_sw1_AWREGION USER 1 4 }  { m_axi_sw1_AWUSER DATA 1 1 }  { m_axi_sw1_WVALID VALID 1 1 }  { m_axi_sw1_WREADY READY 0 1 }  { m_axi_sw1_WDATA FIFONUM 1 32 }  { m_axi_sw1_WSTRB STRB 1 4 }  { m_axi_sw1_WLAST LAST 1 1 }  { m_axi_sw1_WID ID 1 1 }  { m_axi_sw1_WUSER DATA 1 1 }  { m_axi_sw1_ARVALID VALID 1 1 }  { m_axi_sw1_ARREADY READY 0 1 }  { m_axi_sw1_ARADDR ADDR 1 64 }  { m_axi_sw1_ARID ID 1 1 }  { m_axi_sw1_ARLEN SIZE 1 32 }  { m_axi_sw1_ARSIZE BURST 1 3 }  { m_axi_sw1_ARBURST LOCK 1 2 }  { m_axi_sw1_ARLOCK CACHE 1 2 }  { m_axi_sw1_ARCACHE PROT 1 4 }  { m_axi_sw1_ARPROT QOS 1 3 }  { m_axi_sw1_ARQOS REGION 1 4 }  { m_axi_sw1_ARREGION USER 1 4 }  { m_axi_sw1_ARUSER DATA 1 1 }  { m_axi_sw1_RVALID VALID 0 1 }  { m_axi_sw1_RREADY READY 1 1 }  { m_axi_sw1_RDATA FIFONUM 0 32 }  { m_axi_sw1_RLAST LAST 0 1 }  { m_axi_sw1_RID ID 0 1 }  { m_axi_sw1_RFIFONUM LEN 0 9 }  { m_axi_sw1_RUSER DATA 0 1 }  { m_axi_sw1_RRESP RESP 0 2 }  { m_axi_sw1_BVALID VALID 0 1 }  { m_axi_sw1_BREADY READY 1 1 }  { m_axi_sw1_BRESP RESP 0 2 }  { m_axi_sw1_BID ID 0 1 }  { m_axi_sw1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_sw0_AWVALID VALID 1 1 }  { m_axi_sw0_AWREADY READY 0 1 }  { m_axi_sw0_AWADDR ADDR 1 64 }  { m_axi_sw0_AWID ID 1 1 }  { m_axi_sw0_AWLEN SIZE 1 32 }  { m_axi_sw0_AWSIZE BURST 1 3 }  { m_axi_sw0_AWBURST LOCK 1 2 }  { m_axi_sw0_AWLOCK CACHE 1 2 }  { m_axi_sw0_AWCACHE PROT 1 4 }  { m_axi_sw0_AWPROT QOS 1 3 }  { m_axi_sw0_AWQOS REGION 1 4 }  { m_axi_sw0_AWREGION USER 1 4 }  { m_axi_sw0_AWUSER DATA 1 1 }  { m_axi_sw0_WVALID VALID 1 1 }  { m_axi_sw0_WREADY READY 0 1 }  { m_axi_sw0_WDATA FIFONUM 1 32 }  { m_axi_sw0_WSTRB STRB 1 4 }  { m_axi_sw0_WLAST LAST 1 1 }  { m_axi_sw0_WID ID 1 1 }  { m_axi_sw0_WUSER DATA 1 1 }  { m_axi_sw0_ARVALID VALID 1 1 }  { m_axi_sw0_ARREADY READY 0 1 }  { m_axi_sw0_ARADDR ADDR 1 64 }  { m_axi_sw0_ARID ID 1 1 }  { m_axi_sw0_ARLEN SIZE 1 32 }  { m_axi_sw0_ARSIZE BURST 1 3 }  { m_axi_sw0_ARBURST LOCK 1 2 }  { m_axi_sw0_ARLOCK CACHE 1 2 }  { m_axi_sw0_ARCACHE PROT 1 4 }  { m_axi_sw0_ARPROT QOS 1 3 }  { m_axi_sw0_ARQOS REGION 1 4 }  { m_axi_sw0_ARREGION USER 1 4 }  { m_axi_sw0_ARUSER DATA 1 1 }  { m_axi_sw0_RVALID VALID 0 1 }  { m_axi_sw0_RREADY READY 1 1 }  { m_axi_sw0_RDATA FIFONUM 0 32 }  { m_axi_sw0_RLAST LAST 0 1 }  { m_axi_sw0_RID ID 0 1 }  { m_axi_sw0_RFIFONUM LEN 0 9 }  { m_axi_sw0_RUSER DATA 0 1 }  { m_axi_sw0_RRESP RESP 0 2 }  { m_axi_sw0_BVALID VALID 0 1 }  { m_axi_sw0_BREADY READY 1 1 }  { m_axi_sw0_BRESP RESP 0 2 }  { m_axi_sw0_BID ID 0 1 }  { m_axi_sw0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_su2_AWVALID VALID 1 1 }  { m_axi_su2_AWREADY READY 0 1 }  { m_axi_su2_AWADDR ADDR 1 64 }  { m_axi_su2_AWID ID 1 1 }  { m_axi_su2_AWLEN SIZE 1 32 }  { m_axi_su2_AWSIZE BURST 1 3 }  { m_axi_su2_AWBURST LOCK 1 2 }  { m_axi_su2_AWLOCK CACHE 1 2 }  { m_axi_su2_AWCACHE PROT 1 4 }  { m_axi_su2_AWPROT QOS 1 3 }  { m_axi_su2_AWQOS REGION 1 4 }  { m_axi_su2_AWREGION USER 1 4 }  { m_axi_su2_AWUSER DATA 1 1 }  { m_axi_su2_WVALID VALID 1 1 }  { m_axi_su2_WREADY READY 0 1 }  { m_axi_su2_WDATA FIFONUM 1 32 }  { m_axi_su2_WSTRB STRB 1 4 }  { m_axi_su2_WLAST LAST 1 1 }  { m_axi_su2_WID ID 1 1 }  { m_axi_su2_WUSER DATA 1 1 }  { m_axi_su2_ARVALID VALID 1 1 }  { m_axi_su2_ARREADY READY 0 1 }  { m_axi_su2_ARADDR ADDR 1 64 }  { m_axi_su2_ARID ID 1 1 }  { m_axi_su2_ARLEN SIZE 1 32 }  { m_axi_su2_ARSIZE BURST 1 3 }  { m_axi_su2_ARBURST LOCK 1 2 }  { m_axi_su2_ARLOCK CACHE 1 2 }  { m_axi_su2_ARCACHE PROT 1 4 }  { m_axi_su2_ARPROT QOS 1 3 }  { m_axi_su2_ARQOS REGION 1 4 }  { m_axi_su2_ARREGION USER 1 4 }  { m_axi_su2_ARUSER DATA 1 1 }  { m_axi_su2_RVALID VALID 0 1 }  { m_axi_su2_RREADY READY 1 1 }  { m_axi_su2_RDATA FIFONUM 0 32 }  { m_axi_su2_RLAST LAST 0 1 }  { m_axi_su2_RID ID 0 1 }  { m_axi_su2_RFIFONUM LEN 0 9 }  { m_axi_su2_RUSER DATA 0 1 }  { m_axi_su2_RRESP RESP 0 2 }  { m_axi_su2_BVALID VALID 0 1 }  { m_axi_su2_BREADY READY 1 1 }  { m_axi_su2_BRESP RESP 0 2 }  { m_axi_su2_BID ID 0 1 }  { m_axi_su2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_su1_AWVALID VALID 1 1 }  { m_axi_su1_AWREADY READY 0 1 }  { m_axi_su1_AWADDR ADDR 1 64 }  { m_axi_su1_AWID ID 1 1 }  { m_axi_su1_AWLEN SIZE 1 32 }  { m_axi_su1_AWSIZE BURST 1 3 }  { m_axi_su1_AWBURST LOCK 1 2 }  { m_axi_su1_AWLOCK CACHE 1 2 }  { m_axi_su1_AWCACHE PROT 1 4 }  { m_axi_su1_AWPROT QOS 1 3 }  { m_axi_su1_AWQOS REGION 1 4 }  { m_axi_su1_AWREGION USER 1 4 }  { m_axi_su1_AWUSER DATA 1 1 }  { m_axi_su1_WVALID VALID 1 1 }  { m_axi_su1_WREADY READY 0 1 }  { m_axi_su1_WDATA FIFONUM 1 32 }  { m_axi_su1_WSTRB STRB 1 4 }  { m_axi_su1_WLAST LAST 1 1 }  { m_axi_su1_WID ID 1 1 }  { m_axi_su1_WUSER DATA 1 1 }  { m_axi_su1_ARVALID VALID 1 1 }  { m_axi_su1_ARREADY READY 0 1 }  { m_axi_su1_ARADDR ADDR 1 64 }  { m_axi_su1_ARID ID 1 1 }  { m_axi_su1_ARLEN SIZE 1 32 }  { m_axi_su1_ARSIZE BURST 1 3 }  { m_axi_su1_ARBURST LOCK 1 2 }  { m_axi_su1_ARLOCK CACHE 1 2 }  { m_axi_su1_ARCACHE PROT 1 4 }  { m_axi_su1_ARPROT QOS 1 3 }  { m_axi_su1_ARQOS REGION 1 4 }  { m_axi_su1_ARREGION USER 1 4 }  { m_axi_su1_ARUSER DATA 1 1 }  { m_axi_su1_RVALID VALID 0 1 }  { m_axi_su1_RREADY READY 1 1 }  { m_axi_su1_RDATA FIFONUM 0 32 }  { m_axi_su1_RLAST LAST 0 1 }  { m_axi_su1_RID ID 0 1 }  { m_axi_su1_RFIFONUM LEN 0 9 }  { m_axi_su1_RUSER DATA 0 1 }  { m_axi_su1_RRESP RESP 0 2 }  { m_axi_su1_BVALID VALID 0 1 }  { m_axi_su1_BREADY READY 1 1 }  { m_axi_su1_BRESP RESP 0 2 }  { m_axi_su1_BID ID 0 1 }  { m_axi_su1_BUSER DATA 0 1 } } }
	zext_ln183_2 { ap_none {  { zext_ln183_2 in_data 0 32 } } }
	u_val { ap_none {  { u_val in_data 0 64 } } }
	lv { ap_none {  { lv in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
	u_idx { ap_none {  { u_idx in_data 0 64 } } }
	mark { ap_none {  { mark in_data 0 64 } } }
	add_ln172_3 { ap_none {  { add_ln172_3 in_data 0 33 } } }
	p_out { ap_vld {  { p_out out_data 1 64 }  { p_out_ap_vld out_vld 1 1 } } }
}
