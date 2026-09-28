set moduleName large_gessm_v2_Pipeline_VITIS_LOOP_249_2
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
set C_modelName {large_gessm_v2_Pipeline_VITIS_LOOP_249_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2gl2 int 32 regular {axi_master 0}  }
	{ v2gl1 int 32 regular {axi_master 0}  }
	{ sext_ln249_1 int 62 regular  }
	{ sext_ln249 int 62 regular  }
	{ trunc_ln249_2 int 14 regular  }
	{ li int 32 regular {array 8192 { 0 } 0 1 }  }
	{ lv float 32 regular {array 8192 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2gl2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_val","offset": { "type": "dynamic","port_name": "l_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2gl1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "l_idx","offset": { "type": "dynamic","port_name": "l_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln249_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln249", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln249_2", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "li", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lv", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v2gl1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2gl1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_AWLEN sc_out sc_lv 32 signal 1 } 
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
	{ m_axi_v2gl1_ARLEN sc_out sc_lv 32 signal 1 } 
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
	{ m_axi_v2gl1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v2gl1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2gl1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2gl1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2gl2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl2_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2gl2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2gl2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2gl2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2gl2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2gl2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_v2gl2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2gl2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2gl2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2gl2_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln249_1 sc_in sc_lv 62 signal 2 } 
	{ sext_ln249 sc_in sc_lv 62 signal 3 } 
	{ trunc_ln249_2 sc_in sc_lv 14 signal 4 } 
	{ li_address0 sc_out sc_lv 13 signal 5 } 
	{ li_ce0 sc_out sc_logic 1 signal 5 } 
	{ li_we0 sc_out sc_logic 1 signal 5 } 
	{ li_d0 sc_out sc_lv 32 signal 5 } 
	{ lv_address0 sc_out sc_lv 13 signal 6 } 
	{ lv_ce0 sc_out sc_logic 1 signal 6 } 
	{ lv_we0 sc_out sc_logic 1 signal 6 } 
	{ lv_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v2gl1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2gl1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2gl1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2gl1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2gl1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v2gl1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v2gl1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2gl1", "role": "RFIFONUM" }} , 
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
 	{ "name": "m_axi_v2gl2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v2gl2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2gl2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v2gl2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2gl2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2gl2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2gl2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2gl2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2gl2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2gl2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2gl2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2gl2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BID" }} , 
 	{ "name": "m_axi_v2gl2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2gl2", "role": "BUSER" }} , 
 	{ "name": "sext_ln249_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln249_1", "role": "default" }} , 
 	{ "name": "sext_ln249", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln249", "role": "default" }} , 
 	{ "name": "trunc_ln249_2", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln249_2", "role": "default" }} , 
 	{ "name": "li_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "li", "role": "address0" }} , 
 	{ "name": "li_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "li", "role": "ce0" }} , 
 	{ "name": "li_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "li", "role": "we0" }} , 
 	{ "name": "li_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "li", "role": "d0" }} , 
 	{ "name": "lv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "lv", "role": "address0" }} , 
 	{ "name": "lv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lv", "role": "ce0" }} , 
 	{ "name": "lv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lv", "role": "we0" }} , 
 	{ "name": "lv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lv", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_gessm_v2_Pipeline_VITIS_LOOP_249_2 {
		v2gl2 {Type I LastRead 1 FirstWrite -1}
		v2gl1 {Type I LastRead 1 FirstWrite -1}
		sext_ln249_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln249 {Type I LastRead 0 FirstWrite -1}
		trunc_ln249_2 {Type I LastRead 0 FirstWrite -1}
		li {Type O LastRead -1 FirstWrite 2}
		lv {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_v2gl2_AWVALID VALID 1 1 }  { m_axi_v2gl2_AWREADY READY 0 1 }  { m_axi_v2gl2_AWADDR ADDR 1 64 }  { m_axi_v2gl2_AWID ID 1 1 }  { m_axi_v2gl2_AWLEN SIZE 1 32 }  { m_axi_v2gl2_AWSIZE BURST 1 3 }  { m_axi_v2gl2_AWBURST LOCK 1 2 }  { m_axi_v2gl2_AWLOCK CACHE 1 2 }  { m_axi_v2gl2_AWCACHE PROT 1 4 }  { m_axi_v2gl2_AWPROT QOS 1 3 }  { m_axi_v2gl2_AWQOS REGION 1 4 }  { m_axi_v2gl2_AWREGION USER 1 4 }  { m_axi_v2gl2_AWUSER DATA 1 1 }  { m_axi_v2gl2_WVALID VALID 1 1 }  { m_axi_v2gl2_WREADY READY 0 1 }  { m_axi_v2gl2_WDATA FIFONUM 1 32 }  { m_axi_v2gl2_WSTRB STRB 1 4 }  { m_axi_v2gl2_WLAST LAST 1 1 }  { m_axi_v2gl2_WID ID 1 1 }  { m_axi_v2gl2_WUSER DATA 1 1 }  { m_axi_v2gl2_ARVALID VALID 1 1 }  { m_axi_v2gl2_ARREADY READY 0 1 }  { m_axi_v2gl2_ARADDR ADDR 1 64 }  { m_axi_v2gl2_ARID ID 1 1 }  { m_axi_v2gl2_ARLEN SIZE 1 32 }  { m_axi_v2gl2_ARSIZE BURST 1 3 }  { m_axi_v2gl2_ARBURST LOCK 1 2 }  { m_axi_v2gl2_ARLOCK CACHE 1 2 }  { m_axi_v2gl2_ARCACHE PROT 1 4 }  { m_axi_v2gl2_ARPROT QOS 1 3 }  { m_axi_v2gl2_ARQOS REGION 1 4 }  { m_axi_v2gl2_ARREGION USER 1 4 }  { m_axi_v2gl2_ARUSER DATA 1 1 }  { m_axi_v2gl2_RVALID VALID 0 1 }  { m_axi_v2gl2_RREADY READY 1 1 }  { m_axi_v2gl2_RDATA FIFONUM 0 32 }  { m_axi_v2gl2_RLAST LAST 0 1 }  { m_axi_v2gl2_RID ID 0 1 }  { m_axi_v2gl2_RFIFONUM LEN 0 9 }  { m_axi_v2gl2_RUSER DATA 0 1 }  { m_axi_v2gl2_RRESP RESP 0 2 }  { m_axi_v2gl2_BVALID VALID 0 1 }  { m_axi_v2gl2_BREADY READY 1 1 }  { m_axi_v2gl2_BRESP RESP 0 2 }  { m_axi_v2gl2_BID ID 0 1 }  { m_axi_v2gl2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v2gl1_AWVALID VALID 1 1 }  { m_axi_v2gl1_AWREADY READY 0 1 }  { m_axi_v2gl1_AWADDR ADDR 1 64 }  { m_axi_v2gl1_AWID ID 1 1 }  { m_axi_v2gl1_AWLEN SIZE 1 32 }  { m_axi_v2gl1_AWSIZE BURST 1 3 }  { m_axi_v2gl1_AWBURST LOCK 1 2 }  { m_axi_v2gl1_AWLOCK CACHE 1 2 }  { m_axi_v2gl1_AWCACHE PROT 1 4 }  { m_axi_v2gl1_AWPROT QOS 1 3 }  { m_axi_v2gl1_AWQOS REGION 1 4 }  { m_axi_v2gl1_AWREGION USER 1 4 }  { m_axi_v2gl1_AWUSER DATA 1 1 }  { m_axi_v2gl1_WVALID VALID 1 1 }  { m_axi_v2gl1_WREADY READY 0 1 }  { m_axi_v2gl1_WDATA FIFONUM 1 32 }  { m_axi_v2gl1_WSTRB STRB 1 4 }  { m_axi_v2gl1_WLAST LAST 1 1 }  { m_axi_v2gl1_WID ID 1 1 }  { m_axi_v2gl1_WUSER DATA 1 1 }  { m_axi_v2gl1_ARVALID VALID 1 1 }  { m_axi_v2gl1_ARREADY READY 0 1 }  { m_axi_v2gl1_ARADDR ADDR 1 64 }  { m_axi_v2gl1_ARID ID 1 1 }  { m_axi_v2gl1_ARLEN SIZE 1 32 }  { m_axi_v2gl1_ARSIZE BURST 1 3 }  { m_axi_v2gl1_ARBURST LOCK 1 2 }  { m_axi_v2gl1_ARLOCK CACHE 1 2 }  { m_axi_v2gl1_ARCACHE PROT 1 4 }  { m_axi_v2gl1_ARPROT QOS 1 3 }  { m_axi_v2gl1_ARQOS REGION 1 4 }  { m_axi_v2gl1_ARREGION USER 1 4 }  { m_axi_v2gl1_ARUSER DATA 1 1 }  { m_axi_v2gl1_RVALID VALID 0 1 }  { m_axi_v2gl1_RREADY READY 1 1 }  { m_axi_v2gl1_RDATA FIFONUM 0 32 }  { m_axi_v2gl1_RLAST LAST 0 1 }  { m_axi_v2gl1_RID ID 0 1 }  { m_axi_v2gl1_RFIFONUM LEN 0 9 }  { m_axi_v2gl1_RUSER DATA 0 1 }  { m_axi_v2gl1_RRESP RESP 0 2 }  { m_axi_v2gl1_BVALID VALID 0 1 }  { m_axi_v2gl1_BREADY READY 1 1 }  { m_axi_v2gl1_BRESP RESP 0 2 }  { m_axi_v2gl1_BID ID 0 1 }  { m_axi_v2gl1_BUSER DATA 0 1 } } }
	sext_ln249_1 { ap_none {  { sext_ln249_1 in_data 0 62 } } }
	sext_ln249 { ap_none {  { sext_ln249 in_data 0 62 } } }
	trunc_ln249_2 { ap_none {  { trunc_ln249_2 in_data 0 14 } } }
	li { ap_memory {  { li_address0 mem_address 1 13 }  { li_ce0 mem_ce 1 1 }  { li_we0 mem_we 1 1 }  { li_d0 mem_din 1 32 } } }
	lv { ap_memory {  { lv_address0 mem_address 1 13 }  { lv_ce0 mem_ce 1 1 }  { lv_we0 mem_we 1 1 }  { lv_d0 mem_din 1 32 } } }
}
