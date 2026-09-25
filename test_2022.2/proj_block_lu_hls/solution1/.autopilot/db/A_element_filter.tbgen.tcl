set moduleName A_element_filter
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
set C_modelName {A_element_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ aval int 32 regular {axi_master 0}  }
	{ A_val int 64 regular  }
	{ acid int 32 regular {axi_master 0}  }
	{ A_cid int 64 regular  }
	{ p_A_reader_rs int 64 regular {fifo 0 volatile }  }
	{ brnum int 32 regular  }
	{ p_B_keep_col11 int 2831 regular {fifo 0 volatile }  }
	{ p_A_element_as int 98 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "aval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A_val","offset": { "type": "dynamic","port_name": "A_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "acid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_A_reader_rs", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "brnum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_B_keep_col11", "interface" : "fifo", "bitwidth" : 2831, "direction" : "READONLY"} , 
 	{ "Name" : "p_A_element_as", "interface" : "fifo", "bitwidth" : 98, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_aval_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_aval_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_aval_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_aval_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_aval_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aval_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aval_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_BUSER sc_in sc_lv 1 signal 0 } 
	{ A_val sc_in sc_lv 64 signal 1 } 
	{ m_axi_acid_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_acid_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_acid_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_acid_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_acid_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_acid_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_acid_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_BUSER sc_in sc_lv 1 signal 2 } 
	{ A_cid sc_in sc_lv 64 signal 3 } 
	{ p_A_reader_rs_dout sc_in sc_lv 64 signal 4 } 
	{ p_A_reader_rs_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ p_A_reader_rs_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ p_A_reader_rs_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_A_reader_rs_read sc_out sc_logic 1 signal 4 } 
	{ brnum sc_in sc_lv 32 signal 5 } 
	{ p_B_keep_col11_dout sc_in sc_lv 2831 signal 6 } 
	{ p_B_keep_col11_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ p_B_keep_col11_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ p_B_keep_col11_empty_n sc_in sc_logic 1 signal 6 } 
	{ p_B_keep_col11_read sc_out sc_logic 1 signal 6 } 
	{ p_A_element_as_din sc_out sc_lv 98 signal 7 } 
	{ p_A_element_as_num_data_valid sc_in sc_lv 9 signal 7 } 
	{ p_A_element_as_fifo_cap sc_in sc_lv 9 signal 7 } 
	{ p_A_element_as_full_n sc_in sc_logic 1 signal 7 } 
	{ p_A_element_as_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_aval_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWVALID" }} , 
 	{ "name": "m_axi_aval_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWREADY" }} , 
 	{ "name": "m_axi_aval_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "AWADDR" }} , 
 	{ "name": "m_axi_aval_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWID" }} , 
 	{ "name": "m_axi_aval_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "AWLEN" }} , 
 	{ "name": "m_axi_aval_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_aval_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "AWBURST" }} , 
 	{ "name": "m_axi_aval_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_aval_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_aval_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "AWPROT" }} , 
 	{ "name": "m_axi_aval_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWQOS" }} , 
 	{ "name": "m_axi_aval_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "AWREGION" }} , 
 	{ "name": "m_axi_aval_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "AWUSER" }} , 
 	{ "name": "m_axi_aval_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WVALID" }} , 
 	{ "name": "m_axi_aval_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WREADY" }} , 
 	{ "name": "m_axi_aval_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "WDATA" }} , 
 	{ "name": "m_axi_aval_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "WSTRB" }} , 
 	{ "name": "m_axi_aval_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WLAST" }} , 
 	{ "name": "m_axi_aval_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WID" }} , 
 	{ "name": "m_axi_aval_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "WUSER" }} , 
 	{ "name": "m_axi_aval_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARVALID" }} , 
 	{ "name": "m_axi_aval_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARREADY" }} , 
 	{ "name": "m_axi_aval_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "ARADDR" }} , 
 	{ "name": "m_axi_aval_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARID" }} , 
 	{ "name": "m_axi_aval_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "ARLEN" }} , 
 	{ "name": "m_axi_aval_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_aval_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "ARBURST" }} , 
 	{ "name": "m_axi_aval_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_aval_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_aval_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "ARPROT" }} , 
 	{ "name": "m_axi_aval_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARQOS" }} , 
 	{ "name": "m_axi_aval_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "ARREGION" }} , 
 	{ "name": "m_axi_aval_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "ARUSER" }} , 
 	{ "name": "m_axi_aval_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RVALID" }} , 
 	{ "name": "m_axi_aval_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RREADY" }} , 
 	{ "name": "m_axi_aval_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "RDATA" }} , 
 	{ "name": "m_axi_aval_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RLAST" }} , 
 	{ "name": "m_axi_aval_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RID" }} , 
 	{ "name": "m_axi_aval_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "aval", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_aval_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "RUSER" }} , 
 	{ "name": "m_axi_aval_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "RRESP" }} , 
 	{ "name": "m_axi_aval_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BVALID" }} , 
 	{ "name": "m_axi_aval_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BREADY" }} , 
 	{ "name": "m_axi_aval_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "BRESP" }} , 
 	{ "name": "m_axi_aval_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BID" }} , 
 	{ "name": "m_axi_aval_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "BUSER" }} , 
 	{ "name": "A_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_val", "role": "default" }} , 
 	{ "name": "m_axi_acid_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWVALID" }} , 
 	{ "name": "m_axi_acid_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWREADY" }} , 
 	{ "name": "m_axi_acid_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "AWADDR" }} , 
 	{ "name": "m_axi_acid_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWID" }} , 
 	{ "name": "m_axi_acid_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "AWLEN" }} , 
 	{ "name": "m_axi_acid_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_acid_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "AWBURST" }} , 
 	{ "name": "m_axi_acid_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_acid_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_acid_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "AWPROT" }} , 
 	{ "name": "m_axi_acid_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWQOS" }} , 
 	{ "name": "m_axi_acid_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "AWREGION" }} , 
 	{ "name": "m_axi_acid_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "AWUSER" }} , 
 	{ "name": "m_axi_acid_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WVALID" }} , 
 	{ "name": "m_axi_acid_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WREADY" }} , 
 	{ "name": "m_axi_acid_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "WDATA" }} , 
 	{ "name": "m_axi_acid_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "WSTRB" }} , 
 	{ "name": "m_axi_acid_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WLAST" }} , 
 	{ "name": "m_axi_acid_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WID" }} , 
 	{ "name": "m_axi_acid_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "WUSER" }} , 
 	{ "name": "m_axi_acid_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARVALID" }} , 
 	{ "name": "m_axi_acid_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARREADY" }} , 
 	{ "name": "m_axi_acid_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "ARADDR" }} , 
 	{ "name": "m_axi_acid_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARID" }} , 
 	{ "name": "m_axi_acid_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "ARLEN" }} , 
 	{ "name": "m_axi_acid_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_acid_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "ARBURST" }} , 
 	{ "name": "m_axi_acid_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_acid_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_acid_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "ARPROT" }} , 
 	{ "name": "m_axi_acid_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARQOS" }} , 
 	{ "name": "m_axi_acid_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "ARREGION" }} , 
 	{ "name": "m_axi_acid_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "ARUSER" }} , 
 	{ "name": "m_axi_acid_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RVALID" }} , 
 	{ "name": "m_axi_acid_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RREADY" }} , 
 	{ "name": "m_axi_acid_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "RDATA" }} , 
 	{ "name": "m_axi_acid_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RLAST" }} , 
 	{ "name": "m_axi_acid_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RID" }} , 
 	{ "name": "m_axi_acid_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "acid", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_acid_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "RUSER" }} , 
 	{ "name": "m_axi_acid_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "RRESP" }} , 
 	{ "name": "m_axi_acid_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BVALID" }} , 
 	{ "name": "m_axi_acid_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BREADY" }} , 
 	{ "name": "m_axi_acid_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "BRESP" }} , 
 	{ "name": "m_axi_acid_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BID" }} , 
 	{ "name": "m_axi_acid_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "BUSER" }} , 
 	{ "name": "A_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_cid", "role": "default" }} , 
 	{ "name": "p_A_reader_rs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "dout" }} , 
 	{ "name": "p_A_reader_rs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "num_data_valid" }} , 
 	{ "name": "p_A_reader_rs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "fifo_cap" }} , 
 	{ "name": "p_A_reader_rs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "empty_n" }} , 
 	{ "name": "p_A_reader_rs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "read" }} , 
 	{ "name": "brnum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brnum", "role": "default" }} , 
 	{ "name": "p_B_keep_col11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2831, "type": "signal", "bundle":{"name": "p_B_keep_col11", "role": "dout" }} , 
 	{ "name": "p_B_keep_col11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_B_keep_col11", "role": "num_data_valid" }} , 
 	{ "name": "p_B_keep_col11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_B_keep_col11", "role": "fifo_cap" }} , 
 	{ "name": "p_B_keep_col11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_B_keep_col11", "role": "empty_n" }} , 
 	{ "name": "p_B_keep_col11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_B_keep_col11", "role": "read" }} , 
 	{ "name": "p_A_element_as_din", "direction": "out", "datatype": "sc_lv", "bitwidth":98, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "din" }} , 
 	{ "name": "p_A_element_as_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "num_data_valid" }} , 
 	{ "name": "p_A_element_as_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "fifo_cap" }} , 
 	{ "name": "p_A_element_as_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "full_n" }} , 
 	{ "name": "p_A_element_as_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_element_filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "aval", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aval_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_filter_Pipeline_VITIS_LOOP_64_2_fu_150", "Port" : "aval", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "A_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "acid", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "acid_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_filter_Pipeline_VITIS_LOOP_64_2_fu_150", "Port" : "acid", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "A_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_A_reader_rs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_A_reader_rs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "brnum", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_B_keep_col11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_B_keep_col11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_filter_Pipeline_VITIS_LOOP_64_2_fu_150", "Port" : "p_A_element_as", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_element_filter_Pipeline_VITIS_LOOP_64_2_fu_150", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "A_element_filter_Pipeline_VITIS_LOOP_64_2",
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
			{"Name" : "aval", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aval_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln64_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "acid", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "acid_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln64", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_rlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "brnum", "Type" : "None", "Direction" : "I"},
			{"Name" : "keep_col_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_rid", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_element_filter_Pipeline_VITIS_LOOP_64_2_fu_150.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	A_element_filter {
		aval {Type I LastRead 2 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 2 FirstWrite -1}
		A_cid {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type I LastRead 1 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		p_B_keep_col11 {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 2}}
	A_element_filter_Pipeline_VITIS_LOOP_64_2 {
		aval {Type I LastRead 2 FirstWrite -1}
		sext_ln64_1 {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 1 FirstWrite -1}
		sext_ln64 {Type I LastRead 0 FirstWrite -1}
		row_rlen {Type I LastRead 0 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		keep_col_V {Type I LastRead 0 FirstWrite -1}
		row_rid {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_aval_AWVALID VALID 1 1 }  { m_axi_aval_AWREADY READY 0 1 }  { m_axi_aval_AWADDR ADDR 1 64 }  { m_axi_aval_AWID ID 1 1 }  { m_axi_aval_AWLEN SIZE 1 32 }  { m_axi_aval_AWSIZE BURST 1 3 }  { m_axi_aval_AWBURST LOCK 1 2 }  { m_axi_aval_AWLOCK CACHE 1 2 }  { m_axi_aval_AWCACHE PROT 1 4 }  { m_axi_aval_AWPROT QOS 1 3 }  { m_axi_aval_AWQOS REGION 1 4 }  { m_axi_aval_AWREGION USER 1 4 }  { m_axi_aval_AWUSER DATA 1 1 }  { m_axi_aval_WVALID VALID 1 1 }  { m_axi_aval_WREADY READY 0 1 }  { m_axi_aval_WDATA FIFONUM 1 32 }  { m_axi_aval_WSTRB STRB 1 4 }  { m_axi_aval_WLAST LAST 1 1 }  { m_axi_aval_WID ID 1 1 }  { m_axi_aval_WUSER DATA 1 1 }  { m_axi_aval_ARVALID VALID 1 1 }  { m_axi_aval_ARREADY READY 0 1 }  { m_axi_aval_ARADDR ADDR 1 64 }  { m_axi_aval_ARID ID 1 1 }  { m_axi_aval_ARLEN SIZE 1 32 }  { m_axi_aval_ARSIZE BURST 1 3 }  { m_axi_aval_ARBURST LOCK 1 2 }  { m_axi_aval_ARLOCK CACHE 1 2 }  { m_axi_aval_ARCACHE PROT 1 4 }  { m_axi_aval_ARPROT QOS 1 3 }  { m_axi_aval_ARQOS REGION 1 4 }  { m_axi_aval_ARREGION USER 1 4 }  { m_axi_aval_ARUSER DATA 1 1 }  { m_axi_aval_RVALID VALID 0 1 }  { m_axi_aval_RREADY READY 1 1 }  { m_axi_aval_RDATA FIFONUM 0 32 }  { m_axi_aval_RLAST LAST 0 1 }  { m_axi_aval_RID ID 0 1 }  { m_axi_aval_RFIFONUM LEN 0 9 }  { m_axi_aval_RUSER DATA 0 1 }  { m_axi_aval_RRESP RESP 0 2 }  { m_axi_aval_BVALID VALID 0 1 }  { m_axi_aval_BREADY READY 1 1 }  { m_axi_aval_BRESP RESP 0 2 }  { m_axi_aval_BID ID 0 1 }  { m_axi_aval_BUSER DATA 0 1 } } }
	A_val { ap_none {  { A_val in_data 0 64 } } }
	 { m_axi {  { m_axi_acid_AWVALID VALID 1 1 }  { m_axi_acid_AWREADY READY 0 1 }  { m_axi_acid_AWADDR ADDR 1 64 }  { m_axi_acid_AWID ID 1 1 }  { m_axi_acid_AWLEN SIZE 1 32 }  { m_axi_acid_AWSIZE BURST 1 3 }  { m_axi_acid_AWBURST LOCK 1 2 }  { m_axi_acid_AWLOCK CACHE 1 2 }  { m_axi_acid_AWCACHE PROT 1 4 }  { m_axi_acid_AWPROT QOS 1 3 }  { m_axi_acid_AWQOS REGION 1 4 }  { m_axi_acid_AWREGION USER 1 4 }  { m_axi_acid_AWUSER DATA 1 1 }  { m_axi_acid_WVALID VALID 1 1 }  { m_axi_acid_WREADY READY 0 1 }  { m_axi_acid_WDATA FIFONUM 1 32 }  { m_axi_acid_WSTRB STRB 1 4 }  { m_axi_acid_WLAST LAST 1 1 }  { m_axi_acid_WID ID 1 1 }  { m_axi_acid_WUSER DATA 1 1 }  { m_axi_acid_ARVALID VALID 1 1 }  { m_axi_acid_ARREADY READY 0 1 }  { m_axi_acid_ARADDR ADDR 1 64 }  { m_axi_acid_ARID ID 1 1 }  { m_axi_acid_ARLEN SIZE 1 32 }  { m_axi_acid_ARSIZE BURST 1 3 }  { m_axi_acid_ARBURST LOCK 1 2 }  { m_axi_acid_ARLOCK CACHE 1 2 }  { m_axi_acid_ARCACHE PROT 1 4 }  { m_axi_acid_ARPROT QOS 1 3 }  { m_axi_acid_ARQOS REGION 1 4 }  { m_axi_acid_ARREGION USER 1 4 }  { m_axi_acid_ARUSER DATA 1 1 }  { m_axi_acid_RVALID VALID 0 1 }  { m_axi_acid_RREADY READY 1 1 }  { m_axi_acid_RDATA FIFONUM 0 32 }  { m_axi_acid_RLAST LAST 0 1 }  { m_axi_acid_RID ID 0 1 }  { m_axi_acid_RFIFONUM LEN 0 9 }  { m_axi_acid_RUSER DATA 0 1 }  { m_axi_acid_RRESP RESP 0 2 }  { m_axi_acid_BVALID VALID 0 1 }  { m_axi_acid_BREADY READY 1 1 }  { m_axi_acid_BRESP RESP 0 2 }  { m_axi_acid_BID ID 0 1 }  { m_axi_acid_BUSER DATA 0 1 } } }
	A_cid { ap_none {  { A_cid in_data 0 64 } } }
	p_A_reader_rs { ap_fifo {  { p_A_reader_rs_dout fifo_port_we 0 64 }  { p_A_reader_rs_num_data_valid fifo_status_num_data_valid 0 8 }  { p_A_reader_rs_fifo_cap fifo_update 0 8 }  { p_A_reader_rs_empty_n fifo_status 0 1 }  { p_A_reader_rs_read fifo_data 1 1 } } }
	brnum { ap_none {  { brnum in_data 0 32 } } }
	p_B_keep_col11 { ap_fifo {  { p_B_keep_col11_dout fifo_port_we 0 2831 }  { p_B_keep_col11_num_data_valid fifo_status_num_data_valid 0 2 }  { p_B_keep_col11_fifo_cap fifo_update 0 2 }  { p_B_keep_col11_empty_n fifo_status 0 1 }  { p_B_keep_col11_read fifo_data 1 1 } } }
	p_A_element_as { ap_fifo {  { p_A_element_as_din fifo_port_we 1 98 }  { p_A_element_as_num_data_valid fifo_status_num_data_valid 0 9 }  { p_A_element_as_fifo_cap fifo_update 0 9 }  { p_A_element_as_full_n fifo_status 0 1 }  { p_A_element_as_write fifo_data 1 1 } } }
}
