set moduleName large_getrf_v4_Pipeline_VITIS_LOOP_80_7
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
set C_modelName {large_getrf_v4_Pipeline_VITIS_LOOP_80_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ v4u2 int 32 regular {axi_master 0}  }
	{ v4u1 int 32 regular {axi_master 0}  }
	{ sext_ln80_1 int 62 regular  }
	{ sext_ln80 int 62 regular  }
	{ trunc_ln80_2 int 14 regular  }
	{ row_idx int 32 regular {array 8192 { 0 } 0 1 }  }
	{ row_val float 32 regular {array 8192 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v4u2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_val","offset": { "type": "dynamic","port_name": "u_val","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "v4u1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_idx","offset": { "type": "dynamic","port_name": "u_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln80_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln80", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln80_2", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "row_idx", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v4u1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4u1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4u1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4u1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4u1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4u1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4u1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4u1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4u1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4u1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4u1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4u1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4u1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4u1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4u1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4u1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v4u1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4u1_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v4u1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4u1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4u1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4u1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4u1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4u1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4u1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4u2_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v4u2_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v4u2_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4u2_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4u2_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4u2_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4u2_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v4u2_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v4u2_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v4u2_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4u2_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4u2_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v4u2_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v4u2_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v4u2_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v4u2_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v4u2_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4u2_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_v4u2_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4u2_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v4u2_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v4u2_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v4u2_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v4u2_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v4u2_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln80_1 sc_in sc_lv 62 signal 2 } 
	{ sext_ln80 sc_in sc_lv 62 signal 3 } 
	{ trunc_ln80_2 sc_in sc_lv 14 signal 4 } 
	{ row_idx_address0 sc_out sc_lv 13 signal 5 } 
	{ row_idx_ce0 sc_out sc_logic 1 signal 5 } 
	{ row_idx_we0 sc_out sc_logic 1 signal 5 } 
	{ row_idx_d0 sc_out sc_lv 32 signal 5 } 
	{ row_val_address0 sc_out sc_lv 13 signal 6 } 
	{ row_val_ce0 sc_out sc_logic 1 signal 6 } 
	{ row_val_we0 sc_out sc_logic 1 signal 6 } 
	{ row_val_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v4u1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4u1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4u1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4u1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4u1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u1", "role": "AWID" }} , 
 	{ "name": "m_axi_v4u1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v4u1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v4u1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v4u1", "role": "RFIFONUM" }} , 
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
 	{ "name": "m_axi_v4u2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_v4u2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4u2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_v4u2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v4u2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v4u2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4u2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4u2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4u2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4u2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4u2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4u2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BID" }} , 
 	{ "name": "m_axi_v4u2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4u2", "role": "BUSER" }} , 
 	{ "name": "sext_ln80_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln80_1", "role": "default" }} , 
 	{ "name": "sext_ln80", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln80", "role": "default" }} , 
 	{ "name": "trunc_ln80_2", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln80_2", "role": "default" }} , 
 	{ "name": "row_idx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_idx", "role": "address0" }} , 
 	{ "name": "row_idx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_idx", "role": "ce0" }} , 
 	{ "name": "row_idx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_idx", "role": "we0" }} , 
 	{ "name": "row_idx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_idx", "role": "d0" }} , 
 	{ "name": "row_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_val", "role": "address0" }} , 
 	{ "name": "row_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_val", "role": "ce0" }} , 
 	{ "name": "row_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_val", "role": "we0" }} , 
 	{ "name": "row_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_val", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4_Pipeline_VITIS_LOOP_80_7 {
		v4u2 {Type I LastRead 1 FirstWrite -1}
		v4u1 {Type I LastRead 1 FirstWrite -1}
		sext_ln80_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln80 {Type I LastRead 0 FirstWrite -1}
		trunc_ln80_2 {Type I LastRead 0 FirstWrite -1}
		row_idx {Type O LastRead -1 FirstWrite 2}
		row_val {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_v4u2_AWVALID VALID 1 1 }  { m_axi_v4u2_AWREADY READY 0 1 }  { m_axi_v4u2_AWADDR ADDR 1 64 }  { m_axi_v4u2_AWID ID 1 1 }  { m_axi_v4u2_AWLEN SIZE 1 32 }  { m_axi_v4u2_AWSIZE BURST 1 3 }  { m_axi_v4u2_AWBURST LOCK 1 2 }  { m_axi_v4u2_AWLOCK CACHE 1 2 }  { m_axi_v4u2_AWCACHE PROT 1 4 }  { m_axi_v4u2_AWPROT QOS 1 3 }  { m_axi_v4u2_AWQOS REGION 1 4 }  { m_axi_v4u2_AWREGION USER 1 4 }  { m_axi_v4u2_AWUSER DATA 1 1 }  { m_axi_v4u2_WVALID VALID 1 1 }  { m_axi_v4u2_WREADY READY 0 1 }  { m_axi_v4u2_WDATA FIFONUM 1 32 }  { m_axi_v4u2_WSTRB STRB 1 4 }  { m_axi_v4u2_WLAST LAST 1 1 }  { m_axi_v4u2_WID ID 1 1 }  { m_axi_v4u2_WUSER DATA 1 1 }  { m_axi_v4u2_ARVALID VALID 1 1 }  { m_axi_v4u2_ARREADY READY 0 1 }  { m_axi_v4u2_ARADDR ADDR 1 64 }  { m_axi_v4u2_ARID ID 1 1 }  { m_axi_v4u2_ARLEN SIZE 1 32 }  { m_axi_v4u2_ARSIZE BURST 1 3 }  { m_axi_v4u2_ARBURST LOCK 1 2 }  { m_axi_v4u2_ARLOCK CACHE 1 2 }  { m_axi_v4u2_ARCACHE PROT 1 4 }  { m_axi_v4u2_ARPROT QOS 1 3 }  { m_axi_v4u2_ARQOS REGION 1 4 }  { m_axi_v4u2_ARREGION USER 1 4 }  { m_axi_v4u2_ARUSER DATA 1 1 }  { m_axi_v4u2_RVALID VALID 0 1 }  { m_axi_v4u2_RREADY READY 1 1 }  { m_axi_v4u2_RDATA FIFONUM 0 32 }  { m_axi_v4u2_RLAST LAST 0 1 }  { m_axi_v4u2_RID ID 0 1 }  { m_axi_v4u2_RFIFONUM LEN 0 9 }  { m_axi_v4u2_RUSER DATA 0 1 }  { m_axi_v4u2_RRESP RESP 0 2 }  { m_axi_v4u2_BVALID VALID 0 1 }  { m_axi_v4u2_BREADY READY 1 1 }  { m_axi_v4u2_BRESP RESP 0 2 }  { m_axi_v4u2_BID ID 0 1 }  { m_axi_v4u2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v4u1_AWVALID VALID 1 1 }  { m_axi_v4u1_AWREADY READY 0 1 }  { m_axi_v4u1_AWADDR ADDR 1 64 }  { m_axi_v4u1_AWID ID 1 1 }  { m_axi_v4u1_AWLEN SIZE 1 32 }  { m_axi_v4u1_AWSIZE BURST 1 3 }  { m_axi_v4u1_AWBURST LOCK 1 2 }  { m_axi_v4u1_AWLOCK CACHE 1 2 }  { m_axi_v4u1_AWCACHE PROT 1 4 }  { m_axi_v4u1_AWPROT QOS 1 3 }  { m_axi_v4u1_AWQOS REGION 1 4 }  { m_axi_v4u1_AWREGION USER 1 4 }  { m_axi_v4u1_AWUSER DATA 1 1 }  { m_axi_v4u1_WVALID VALID 1 1 }  { m_axi_v4u1_WREADY READY 0 1 }  { m_axi_v4u1_WDATA FIFONUM 1 32 }  { m_axi_v4u1_WSTRB STRB 1 4 }  { m_axi_v4u1_WLAST LAST 1 1 }  { m_axi_v4u1_WID ID 1 1 }  { m_axi_v4u1_WUSER DATA 1 1 }  { m_axi_v4u1_ARVALID VALID 1 1 }  { m_axi_v4u1_ARREADY READY 0 1 }  { m_axi_v4u1_ARADDR ADDR 1 64 }  { m_axi_v4u1_ARID ID 1 1 }  { m_axi_v4u1_ARLEN SIZE 1 32 }  { m_axi_v4u1_ARSIZE BURST 1 3 }  { m_axi_v4u1_ARBURST LOCK 1 2 }  { m_axi_v4u1_ARLOCK CACHE 1 2 }  { m_axi_v4u1_ARCACHE PROT 1 4 }  { m_axi_v4u1_ARPROT QOS 1 3 }  { m_axi_v4u1_ARQOS REGION 1 4 }  { m_axi_v4u1_ARREGION USER 1 4 }  { m_axi_v4u1_ARUSER DATA 1 1 }  { m_axi_v4u1_RVALID VALID 0 1 }  { m_axi_v4u1_RREADY READY 1 1 }  { m_axi_v4u1_RDATA FIFONUM 0 32 }  { m_axi_v4u1_RLAST LAST 0 1 }  { m_axi_v4u1_RID ID 0 1 }  { m_axi_v4u1_RFIFONUM LEN 0 9 }  { m_axi_v4u1_RUSER DATA 0 1 }  { m_axi_v4u1_RRESP RESP 0 2 }  { m_axi_v4u1_BVALID VALID 0 1 }  { m_axi_v4u1_BREADY READY 1 1 }  { m_axi_v4u1_BRESP RESP 0 2 }  { m_axi_v4u1_BID ID 0 1 }  { m_axi_v4u1_BUSER DATA 0 1 } } }
	sext_ln80_1 { ap_none {  { sext_ln80_1 in_data 0 62 } } }
	sext_ln80 { ap_none {  { sext_ln80 in_data 0 62 } } }
	trunc_ln80_2 { ap_none {  { trunc_ln80_2 in_data 0 14 } } }
	row_idx { ap_memory {  { row_idx_address0 mem_address 1 13 }  { row_idx_ce0 mem_ce 1 1 }  { row_idx_we0 mem_we 1 1 }  { row_idx_d0 mem_din 1 32 } } }
	row_val { ap_memory {  { row_val_address0 mem_address 1 13 }  { row_val_ce0 mem_ce 1 1 }  { row_val_we0 mem_we 1 1 }  { row_val_d0 mem_din 1 32 } } }
}
