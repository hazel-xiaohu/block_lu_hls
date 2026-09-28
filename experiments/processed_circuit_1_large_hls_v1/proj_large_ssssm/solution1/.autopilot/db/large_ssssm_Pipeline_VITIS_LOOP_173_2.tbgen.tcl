set moduleName large_ssssm_Pipeline_VITIS_LOOP_173_2
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
set C_modelName {large_ssssm_Pipeline_VITIS_LOOP_173_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln173 int 32 regular  }
	{ sw1 int 32 regular {axi_master 1}  }
	{ sw0 int 32 regular {axi_master 1}  }
	{ ss1 int 32 regular {axi_master 0}  }
	{ sext_ln173_1 int 62 regular  }
	{ zext_ln173_1 int 32 regular  }
	{ work int 64 regular  }
	{ mark int 64 regular  }
	{ add_ln173_2 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln173", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sw1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "mark","offset": { "type": "dynamic","port_name": "mark","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sw0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "work","offset": { "type": "dynamic","port_name": "work","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "ss1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "s_idx","offset": { "type": "dynamic","port_name": "s_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln173_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln173_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mark", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln173_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 150
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ss1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ss1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ss1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ss1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ss1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ss1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ss1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_ss1_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ss1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ss1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ss1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ss1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ss1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ss1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ss1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ss1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_ss1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ss1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_ss1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ss1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ss1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ss1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ss1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ss1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ss1_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_sw0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sw0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_sw0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_sw0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_sw0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_sw0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_sw0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_sw0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_sw0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_sw0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sw0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_sw0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_sw0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_sw0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_sw1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_sw1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_sw1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_sw1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_sw1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_sw1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_sw1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_sw1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_sw1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_sw1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_sw1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_sw1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_sw1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_sw1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_sw1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_sw1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_sw1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_sw1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_sw1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_sw1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_sw1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_sw1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_sw1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_sw1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_sw1_BUSER sc_in sc_lv 1 signal 1 } 
	{ zext_ln173 sc_in sc_lv 32 signal 0 } 
	{ sext_ln173_1 sc_in sc_lv 62 signal 4 } 
	{ zext_ln173_1 sc_in sc_lv 32 signal 5 } 
	{ work sc_in sc_lv 64 signal 6 } 
	{ mark sc_in sc_lv 64 signal 7 } 
	{ add_ln173_2 sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ss1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ss1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ss1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ss1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ss1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "AWID" }} , 
 	{ "name": "m_axi_ss1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ss1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ss1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ss1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ss1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ss1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "RUSER" }} , 
 	{ "name": "m_axi_ss1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "RRESP" }} , 
 	{ "name": "m_axi_ss1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BVALID" }} , 
 	{ "name": "m_axi_ss1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BREADY" }} , 
 	{ "name": "m_axi_ss1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ss1", "role": "BRESP" }} , 
 	{ "name": "m_axi_ss1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BID" }} , 
 	{ "name": "m_axi_ss1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ss1", "role": "BUSER" }} , 
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
 	{ "name": "zext_ln173", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln173", "role": "default" }} , 
 	{ "name": "sext_ln173_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln173_1", "role": "default" }} , 
 	{ "name": "zext_ln173_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln173_1", "role": "default" }} , 
 	{ "name": "work", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "work", "role": "default" }} , 
 	{ "name": "mark", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mark", "role": "default" }} , 
 	{ "name": "add_ln173_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln173_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_ssssm_Pipeline_VITIS_LOOP_173_2 {
		zext_ln173 {Type I LastRead 0 FirstWrite -1}
		sw1 {Type O LastRead 6 FirstWrite 5}
		sw0 {Type O LastRead 6 FirstWrite 5}
		ss1 {Type I LastRead 2 FirstWrite -1}
		sext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln173_1 {Type I LastRead 0 FirstWrite -1}
		work {Type I LastRead 0 FirstWrite -1}
		mark {Type I LastRead 0 FirstWrite -1}
		add_ln173_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln173 { ap_none {  { zext_ln173 in_data 0 32 } } }
	 { m_axi {  { m_axi_sw1_AWVALID VALID 1 1 }  { m_axi_sw1_AWREADY READY 0 1 }  { m_axi_sw1_AWADDR ADDR 1 64 }  { m_axi_sw1_AWID ID 1 1 }  { m_axi_sw1_AWLEN SIZE 1 32 }  { m_axi_sw1_AWSIZE BURST 1 3 }  { m_axi_sw1_AWBURST LOCK 1 2 }  { m_axi_sw1_AWLOCK CACHE 1 2 }  { m_axi_sw1_AWCACHE PROT 1 4 }  { m_axi_sw1_AWPROT QOS 1 3 }  { m_axi_sw1_AWQOS REGION 1 4 }  { m_axi_sw1_AWREGION USER 1 4 }  { m_axi_sw1_AWUSER DATA 1 1 }  { m_axi_sw1_WVALID VALID 1 1 }  { m_axi_sw1_WREADY READY 0 1 }  { m_axi_sw1_WDATA FIFONUM 1 32 }  { m_axi_sw1_WSTRB STRB 1 4 }  { m_axi_sw1_WLAST LAST 1 1 }  { m_axi_sw1_WID ID 1 1 }  { m_axi_sw1_WUSER DATA 1 1 }  { m_axi_sw1_ARVALID VALID 1 1 }  { m_axi_sw1_ARREADY READY 0 1 }  { m_axi_sw1_ARADDR ADDR 1 64 }  { m_axi_sw1_ARID ID 1 1 }  { m_axi_sw1_ARLEN SIZE 1 32 }  { m_axi_sw1_ARSIZE BURST 1 3 }  { m_axi_sw1_ARBURST LOCK 1 2 }  { m_axi_sw1_ARLOCK CACHE 1 2 }  { m_axi_sw1_ARCACHE PROT 1 4 }  { m_axi_sw1_ARPROT QOS 1 3 }  { m_axi_sw1_ARQOS REGION 1 4 }  { m_axi_sw1_ARREGION USER 1 4 }  { m_axi_sw1_ARUSER DATA 1 1 }  { m_axi_sw1_RVALID VALID 0 1 }  { m_axi_sw1_RREADY READY 1 1 }  { m_axi_sw1_RDATA FIFONUM 0 32 }  { m_axi_sw1_RLAST LAST 0 1 }  { m_axi_sw1_RID ID 0 1 }  { m_axi_sw1_RFIFONUM LEN 0 9 }  { m_axi_sw1_RUSER DATA 0 1 }  { m_axi_sw1_RRESP RESP 0 2 }  { m_axi_sw1_BVALID VALID 0 1 }  { m_axi_sw1_BREADY READY 1 1 }  { m_axi_sw1_BRESP RESP 0 2 }  { m_axi_sw1_BID ID 0 1 }  { m_axi_sw1_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_sw0_AWVALID VALID 1 1 }  { m_axi_sw0_AWREADY READY 0 1 }  { m_axi_sw0_AWADDR ADDR 1 64 }  { m_axi_sw0_AWID ID 1 1 }  { m_axi_sw0_AWLEN SIZE 1 32 }  { m_axi_sw0_AWSIZE BURST 1 3 }  { m_axi_sw0_AWBURST LOCK 1 2 }  { m_axi_sw0_AWLOCK CACHE 1 2 }  { m_axi_sw0_AWCACHE PROT 1 4 }  { m_axi_sw0_AWPROT QOS 1 3 }  { m_axi_sw0_AWQOS REGION 1 4 }  { m_axi_sw0_AWREGION USER 1 4 }  { m_axi_sw0_AWUSER DATA 1 1 }  { m_axi_sw0_WVALID VALID 1 1 }  { m_axi_sw0_WREADY READY 0 1 }  { m_axi_sw0_WDATA FIFONUM 1 32 }  { m_axi_sw0_WSTRB STRB 1 4 }  { m_axi_sw0_WLAST LAST 1 1 }  { m_axi_sw0_WID ID 1 1 }  { m_axi_sw0_WUSER DATA 1 1 }  { m_axi_sw0_ARVALID VALID 1 1 }  { m_axi_sw0_ARREADY READY 0 1 }  { m_axi_sw0_ARADDR ADDR 1 64 }  { m_axi_sw0_ARID ID 1 1 }  { m_axi_sw0_ARLEN SIZE 1 32 }  { m_axi_sw0_ARSIZE BURST 1 3 }  { m_axi_sw0_ARBURST LOCK 1 2 }  { m_axi_sw0_ARLOCK CACHE 1 2 }  { m_axi_sw0_ARCACHE PROT 1 4 }  { m_axi_sw0_ARPROT QOS 1 3 }  { m_axi_sw0_ARQOS REGION 1 4 }  { m_axi_sw0_ARREGION USER 1 4 }  { m_axi_sw0_ARUSER DATA 1 1 }  { m_axi_sw0_RVALID VALID 0 1 }  { m_axi_sw0_RREADY READY 1 1 }  { m_axi_sw0_RDATA FIFONUM 0 32 }  { m_axi_sw0_RLAST LAST 0 1 }  { m_axi_sw0_RID ID 0 1 }  { m_axi_sw0_RFIFONUM LEN 0 9 }  { m_axi_sw0_RUSER DATA 0 1 }  { m_axi_sw0_RRESP RESP 0 2 }  { m_axi_sw0_BVALID VALID 0 1 }  { m_axi_sw0_BREADY READY 1 1 }  { m_axi_sw0_BRESP RESP 0 2 }  { m_axi_sw0_BID ID 0 1 }  { m_axi_sw0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_ss1_AWVALID VALID 1 1 }  { m_axi_ss1_AWREADY READY 0 1 }  { m_axi_ss1_AWADDR ADDR 1 64 }  { m_axi_ss1_AWID ID 1 1 }  { m_axi_ss1_AWLEN SIZE 1 32 }  { m_axi_ss1_AWSIZE BURST 1 3 }  { m_axi_ss1_AWBURST LOCK 1 2 }  { m_axi_ss1_AWLOCK CACHE 1 2 }  { m_axi_ss1_AWCACHE PROT 1 4 }  { m_axi_ss1_AWPROT QOS 1 3 }  { m_axi_ss1_AWQOS REGION 1 4 }  { m_axi_ss1_AWREGION USER 1 4 }  { m_axi_ss1_AWUSER DATA 1 1 }  { m_axi_ss1_WVALID VALID 1 1 }  { m_axi_ss1_WREADY READY 0 1 }  { m_axi_ss1_WDATA FIFONUM 1 32 }  { m_axi_ss1_WSTRB STRB 1 4 }  { m_axi_ss1_WLAST LAST 1 1 }  { m_axi_ss1_WID ID 1 1 }  { m_axi_ss1_WUSER DATA 1 1 }  { m_axi_ss1_ARVALID VALID 1 1 }  { m_axi_ss1_ARREADY READY 0 1 }  { m_axi_ss1_ARADDR ADDR 1 64 }  { m_axi_ss1_ARID ID 1 1 }  { m_axi_ss1_ARLEN SIZE 1 32 }  { m_axi_ss1_ARSIZE BURST 1 3 }  { m_axi_ss1_ARBURST LOCK 1 2 }  { m_axi_ss1_ARLOCK CACHE 1 2 }  { m_axi_ss1_ARCACHE PROT 1 4 }  { m_axi_ss1_ARPROT QOS 1 3 }  { m_axi_ss1_ARQOS REGION 1 4 }  { m_axi_ss1_ARREGION USER 1 4 }  { m_axi_ss1_ARUSER DATA 1 1 }  { m_axi_ss1_RVALID VALID 0 1 }  { m_axi_ss1_RREADY READY 1 1 }  { m_axi_ss1_RDATA FIFONUM 0 32 }  { m_axi_ss1_RLAST LAST 0 1 }  { m_axi_ss1_RID ID 0 1 }  { m_axi_ss1_RFIFONUM LEN 0 9 }  { m_axi_ss1_RUSER DATA 0 1 }  { m_axi_ss1_RRESP RESP 0 2 }  { m_axi_ss1_BVALID VALID 0 1 }  { m_axi_ss1_BREADY READY 1 1 }  { m_axi_ss1_BRESP RESP 0 2 }  { m_axi_ss1_BID ID 0 1 }  { m_axi_ss1_BUSER DATA 0 1 } } }
	sext_ln173_1 { ap_none {  { sext_ln173_1 in_data 0 62 } } }
	zext_ln173_1 { ap_none {  { zext_ln173_1 in_data 0 32 } } }
	work { ap_none {  { work in_data 0 64 } } }
	mark { ap_none {  { mark in_data 0 64 } } }
	add_ln173_2 { ap_none {  { add_ln173_2 in_data 0 32 } } }
}
