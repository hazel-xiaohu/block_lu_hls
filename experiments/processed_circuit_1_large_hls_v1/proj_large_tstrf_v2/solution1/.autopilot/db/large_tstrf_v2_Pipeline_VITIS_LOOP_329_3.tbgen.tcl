set moduleName large_tstrf_v2_Pipeline_VITIS_LOOP_329_3
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
set C_modelName {large_tstrf_v2_Pipeline_VITIS_LOOP_329_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2tu3 int 32 regular {axi_master 0}  }
	{ v2tu2 int 32 regular {axi_master 0}  }
	{ v2tu1 int 32 regular {axi_master 0}  }
	{ sext_ln329_1 int 62 regular  }
	{ sext_ln329 int 62 regular  }
	{ trunc_ln329_2 int 14 regular  }
	{ ur int 32 regular {array 8192 { 0 } 0 1 }  }
	{ u_csr_val int 64 regular  }
	{ uv float 32 regular {array 8192 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2tu3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csc_to_csr","offset": { "type": "dynamic","port_name": "u_csc_to_csr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2tu2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_csr_val","offset": { "type": "dynamic","port_name": "u_csr_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v2tu1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "u_row_idx","offset": { "type": "dynamic","port_name": "u_row_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln329_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln329", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln329_2", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "ur", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_csr_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "uv", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 156
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_v2tu1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2tu1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tu1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tu1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tu1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tu1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v2tu1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v2tu1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tu1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v2tu1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v2tu1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v2tu1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_v2tu1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v2tu1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v2tu1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tu1_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v2tu3_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2tu3_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu3_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu3_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu3_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu3_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_v2tu3_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_v2tu3_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu3_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_v2tu3_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_v2tu3_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_v2tu3_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_v2tu3_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_v2tu3_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_v2tu3_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu3_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_v2tu2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2tu2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tu2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tu2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tu2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tu2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v2tu2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v2tu2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tu2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v2tu2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v2tu2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v2tu2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v2tu2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v2tu2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v2tu2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v2tu2_BUSER sc_in sc_lv 1 signal 1 } 
	{ sext_ln329_1 sc_in sc_lv 62 signal 3 } 
	{ sext_ln329 sc_in sc_lv 62 signal 4 } 
	{ trunc_ln329_2 sc_in sc_lv 14 signal 5 } 
	{ ur_address0 sc_out sc_lv 13 signal 6 } 
	{ ur_ce0 sc_out sc_logic 1 signal 6 } 
	{ ur_we0 sc_out sc_logic 1 signal 6 } 
	{ ur_d0 sc_out sc_lv 32 signal 6 } 
	{ u_csr_val sc_in sc_lv 64 signal 7 } 
	{ uv_address0 sc_out sc_lv 13 signal 8 } 
	{ uv_ce0 sc_out sc_logic 1 signal 8 } 
	{ uv_we0 sc_out sc_logic 1 signal 8 } 
	{ uv_d0 sc_out sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_v2tu1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tu1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tu1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tu1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tu1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tu1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tu1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tu1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tu1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tu1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tu1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tu1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tu1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tu1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tu1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tu1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tu1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tu1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tu1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "WID" }} , 
 	{ "name": "m_axi_v2tu1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tu1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tu1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tu1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tu1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tu1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tu1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tu1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tu1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tu1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tu1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tu1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tu1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tu1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tu1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tu1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tu1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tu1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tu1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "RID" }} , 
 	{ "name": "m_axi_v2tu1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tu1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tu1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tu1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tu1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tu1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tu1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tu1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "BID" }} , 
 	{ "name": "m_axi_v2tu1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu1", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2tu3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tu3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tu3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tu3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tu3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tu3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tu3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tu3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tu3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tu3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tu3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tu3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tu3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tu3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tu3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tu3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu3", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tu3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tu3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tu3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "WID" }} , 
 	{ "name": "m_axi_v2tu3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tu3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tu3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tu3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tu3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tu3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tu3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tu3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tu3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tu3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tu3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tu3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tu3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tu3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tu3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tu3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tu3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu3", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tu3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tu3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "RID" }} , 
 	{ "name": "m_axi_v2tu3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tu3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tu3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tu3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tu3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tu3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tu3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu3", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tu3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "BID" }} , 
 	{ "name": "m_axi_v2tu3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu3", "role": "BUSER" }} , 
 	{ "name": "m_axi_v2tu2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v2tu2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v2tu2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v2tu2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWID" }} , 
 	{ "name": "m_axi_v2tu2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v2tu2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v2tu2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v2tu2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v2tu2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v2tu2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v2tu2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v2tu2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v2tu2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v2tu2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v2tu2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v2tu2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v2tu2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v2tu2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v2tu2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "WID" }} , 
 	{ "name": "m_axi_v2tu2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v2tu2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v2tu2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v2tu2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v2tu2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARID" }} , 
 	{ "name": "m_axi_v2tu2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v2tu2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v2tu2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v2tu2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v2tu2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v2tu2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v2tu2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v2tu2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v2tu2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v2tu2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v2tu2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v2tu2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2tu2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v2tu2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v2tu2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "RID" }} , 
 	{ "name": "m_axi_v2tu2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v2tu2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v2tu2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v2tu2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v2tu2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v2tu2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v2tu2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v2tu2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v2tu2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "BID" }} , 
 	{ "name": "m_axi_v2tu2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v2tu2", "role": "BUSER" }} , 
 	{ "name": "sext_ln329_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln329_1", "role": "default" }} , 
 	{ "name": "sext_ln329", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln329", "role": "default" }} , 
 	{ "name": "trunc_ln329_2", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln329_2", "role": "default" }} , 
 	{ "name": "ur_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ur", "role": "address0" }} , 
 	{ "name": "ur_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ur", "role": "ce0" }} , 
 	{ "name": "ur_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ur", "role": "we0" }} , 
 	{ "name": "ur_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ur", "role": "d0" }} , 
 	{ "name": "u_csr_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_csr_val", "role": "default" }} , 
 	{ "name": "uv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "uv", "role": "address0" }} , 
 	{ "name": "uv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uv", "role": "ce0" }} , 
 	{ "name": "uv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uv", "role": "we0" }} , 
 	{ "name": "uv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uv", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "large_tstrf_v2_Pipeline_VITIS_LOOP_329_3",
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
			{"Name" : "v2tu3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2tu3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2tu2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2tu2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v2tu2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v2tu1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v2tu1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln329_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln329", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln329_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ur", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_csr_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "uv", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_329_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_tstrf_v2_Pipeline_VITIS_LOOP_329_3 {
		v2tu3 {Type I LastRead 1 FirstWrite -1}
		v2tu2 {Type I LastRead 10 FirstWrite -1}
		v2tu1 {Type I LastRead 1 FirstWrite -1}
		sext_ln329_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln329 {Type I LastRead 0 FirstWrite -1}
		trunc_ln329_2 {Type I LastRead 0 FirstWrite -1}
		ur {Type O LastRead -1 FirstWrite 2}
		u_csr_val {Type I LastRead 0 FirstWrite -1}
		uv {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_v2tu3_AWVALID VALID 1 1 }  { m_axi_v2tu3_AWREADY READY 0 1 }  { m_axi_v2tu3_AWADDR ADDR 1 64 }  { m_axi_v2tu3_AWID ID 1 1 }  { m_axi_v2tu3_AWLEN SIZE 1 32 }  { m_axi_v2tu3_AWSIZE BURST 1 3 }  { m_axi_v2tu3_AWBURST LOCK 1 2 }  { m_axi_v2tu3_AWLOCK CACHE 1 2 }  { m_axi_v2tu3_AWCACHE PROT 1 4 }  { m_axi_v2tu3_AWPROT QOS 1 3 }  { m_axi_v2tu3_AWQOS REGION 1 4 }  { m_axi_v2tu3_AWREGION USER 1 4 }  { m_axi_v2tu3_AWUSER DATA 1 1 }  { m_axi_v2tu3_WVALID VALID 1 1 }  { m_axi_v2tu3_WREADY READY 0 1 }  { m_axi_v2tu3_WDATA FIFONUM 1 32 }  { m_axi_v2tu3_WSTRB STRB 1 4 }  { m_axi_v2tu3_WLAST LAST 1 1 }  { m_axi_v2tu3_WID ID 1 1 }  { m_axi_v2tu3_WUSER DATA 1 1 }  { m_axi_v2tu3_ARVALID VALID 1 1 }  { m_axi_v2tu3_ARREADY READY 0 1 }  { m_axi_v2tu3_ARADDR ADDR 1 64 }  { m_axi_v2tu3_ARID ID 1 1 }  { m_axi_v2tu3_ARLEN SIZE 1 32 }  { m_axi_v2tu3_ARSIZE BURST 1 3 }  { m_axi_v2tu3_ARBURST LOCK 1 2 }  { m_axi_v2tu3_ARLOCK CACHE 1 2 }  { m_axi_v2tu3_ARCACHE PROT 1 4 }  { m_axi_v2tu3_ARPROT QOS 1 3 }  { m_axi_v2tu3_ARQOS REGION 1 4 }  { m_axi_v2tu3_ARREGION USER 1 4 }  { m_axi_v2tu3_ARUSER DATA 1 1 }  { m_axi_v2tu3_RVALID VALID 0 1 }  { m_axi_v2tu3_RREADY READY 1 1 }  { m_axi_v2tu3_RDATA FIFONUM 0 32 }  { m_axi_v2tu3_RLAST LAST 0 1 }  { m_axi_v2tu3_RID ID 0 1 }  { m_axi_v2tu3_RFIFONUM LEN 0 9 }  { m_axi_v2tu3_RUSER DATA 0 1 }  { m_axi_v2tu3_RRESP RESP 0 2 }  { m_axi_v2tu3_BVALID VALID 0 1 }  { m_axi_v2tu3_BREADY READY 1 1 }  { m_axi_v2tu3_BRESP RESP 0 2 }  { m_axi_v2tu3_BID ID 0 1 }  { m_axi_v2tu3_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v2tu2_AWVALID VALID 1 1 }  { m_axi_v2tu2_AWREADY READY 0 1 }  { m_axi_v2tu2_AWADDR ADDR 1 64 }  { m_axi_v2tu2_AWID ID 1 1 }  { m_axi_v2tu2_AWLEN SIZE 1 32 }  { m_axi_v2tu2_AWSIZE BURST 1 3 }  { m_axi_v2tu2_AWBURST LOCK 1 2 }  { m_axi_v2tu2_AWLOCK CACHE 1 2 }  { m_axi_v2tu2_AWCACHE PROT 1 4 }  { m_axi_v2tu2_AWPROT QOS 1 3 }  { m_axi_v2tu2_AWQOS REGION 1 4 }  { m_axi_v2tu2_AWREGION USER 1 4 }  { m_axi_v2tu2_AWUSER DATA 1 1 }  { m_axi_v2tu2_WVALID VALID 1 1 }  { m_axi_v2tu2_WREADY READY 0 1 }  { m_axi_v2tu2_WDATA FIFONUM 1 32 }  { m_axi_v2tu2_WSTRB STRB 1 4 }  { m_axi_v2tu2_WLAST LAST 1 1 }  { m_axi_v2tu2_WID ID 1 1 }  { m_axi_v2tu2_WUSER DATA 1 1 }  { m_axi_v2tu2_ARVALID VALID 1 1 }  { m_axi_v2tu2_ARREADY READY 0 1 }  { m_axi_v2tu2_ARADDR ADDR 1 64 }  { m_axi_v2tu2_ARID ID 1 1 }  { m_axi_v2tu2_ARLEN SIZE 1 32 }  { m_axi_v2tu2_ARSIZE BURST 1 3 }  { m_axi_v2tu2_ARBURST LOCK 1 2 }  { m_axi_v2tu2_ARLOCK CACHE 1 2 }  { m_axi_v2tu2_ARCACHE PROT 1 4 }  { m_axi_v2tu2_ARPROT QOS 1 3 }  { m_axi_v2tu2_ARQOS REGION 1 4 }  { m_axi_v2tu2_ARREGION USER 1 4 }  { m_axi_v2tu2_ARUSER DATA 1 1 }  { m_axi_v2tu2_RVALID VALID 0 1 }  { m_axi_v2tu2_RREADY READY 1 1 }  { m_axi_v2tu2_RDATA FIFONUM 0 32 }  { m_axi_v2tu2_RLAST LAST 0 1 }  { m_axi_v2tu2_RID ID 0 1 }  { m_axi_v2tu2_RFIFONUM LEN 0 9 }  { m_axi_v2tu2_RUSER DATA 0 1 }  { m_axi_v2tu2_RRESP RESP 0 2 }  { m_axi_v2tu2_BVALID VALID 0 1 }  { m_axi_v2tu2_BREADY READY 1 1 }  { m_axi_v2tu2_BRESP RESP 0 2 }  { m_axi_v2tu2_BID ID 0 1 }  { m_axi_v2tu2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v2tu1_AWVALID VALID 1 1 }  { m_axi_v2tu1_AWREADY READY 0 1 }  { m_axi_v2tu1_AWADDR ADDR 1 64 }  { m_axi_v2tu1_AWID ID 1 1 }  { m_axi_v2tu1_AWLEN SIZE 1 32 }  { m_axi_v2tu1_AWSIZE BURST 1 3 }  { m_axi_v2tu1_AWBURST LOCK 1 2 }  { m_axi_v2tu1_AWLOCK CACHE 1 2 }  { m_axi_v2tu1_AWCACHE PROT 1 4 }  { m_axi_v2tu1_AWPROT QOS 1 3 }  { m_axi_v2tu1_AWQOS REGION 1 4 }  { m_axi_v2tu1_AWREGION USER 1 4 }  { m_axi_v2tu1_AWUSER DATA 1 1 }  { m_axi_v2tu1_WVALID VALID 1 1 }  { m_axi_v2tu1_WREADY READY 0 1 }  { m_axi_v2tu1_WDATA FIFONUM 1 32 }  { m_axi_v2tu1_WSTRB STRB 1 4 }  { m_axi_v2tu1_WLAST LAST 1 1 }  { m_axi_v2tu1_WID ID 1 1 }  { m_axi_v2tu1_WUSER DATA 1 1 }  { m_axi_v2tu1_ARVALID VALID 1 1 }  { m_axi_v2tu1_ARREADY READY 0 1 }  { m_axi_v2tu1_ARADDR ADDR 1 64 }  { m_axi_v2tu1_ARID ID 1 1 }  { m_axi_v2tu1_ARLEN SIZE 1 32 }  { m_axi_v2tu1_ARSIZE BURST 1 3 }  { m_axi_v2tu1_ARBURST LOCK 1 2 }  { m_axi_v2tu1_ARLOCK CACHE 1 2 }  { m_axi_v2tu1_ARCACHE PROT 1 4 }  { m_axi_v2tu1_ARPROT QOS 1 3 }  { m_axi_v2tu1_ARQOS REGION 1 4 }  { m_axi_v2tu1_ARREGION USER 1 4 }  { m_axi_v2tu1_ARUSER DATA 1 1 }  { m_axi_v2tu1_RVALID VALID 0 1 }  { m_axi_v2tu1_RREADY READY 1 1 }  { m_axi_v2tu1_RDATA FIFONUM 0 32 }  { m_axi_v2tu1_RLAST LAST 0 1 }  { m_axi_v2tu1_RID ID 0 1 }  { m_axi_v2tu1_RFIFONUM LEN 0 9 }  { m_axi_v2tu1_RUSER DATA 0 1 }  { m_axi_v2tu1_RRESP RESP 0 2 }  { m_axi_v2tu1_BVALID VALID 0 1 }  { m_axi_v2tu1_BREADY READY 1 1 }  { m_axi_v2tu1_BRESP RESP 0 2 }  { m_axi_v2tu1_BID ID 0 1 }  { m_axi_v2tu1_BUSER DATA 0 1 } } }
	sext_ln329_1 { ap_none {  { sext_ln329_1 in_data 0 62 } } }
	sext_ln329 { ap_none {  { sext_ln329 in_data 0 62 } } }
	trunc_ln329_2 { ap_none {  { trunc_ln329_2 in_data 0 14 } } }
	ur { ap_memory {  { ur_address0 mem_address 1 13 }  { ur_ce0 mem_ce 1 1 }  { ur_we0 mem_we 1 1 }  { ur_d0 mem_din 1 32 } } }
	u_csr_val { ap_none {  { u_csr_val in_data 0 64 } } }
	uv { ap_memory {  { uv_address0 mem_address 1 13 }  { uv_ce0 mem_ce 1 1 }  { uv_we0 mem_we 1 1 }  { uv_d0 mem_din 1 32 } } }
}
