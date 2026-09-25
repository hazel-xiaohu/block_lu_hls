set moduleName A_element_filter
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 272
set C_modelName {A_element_filter}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ aval int 32 regular {axi_master 0}  }
	{ A_val int 64 regular  }
	{ acid int 32 regular {axi_master 0}  }
	{ A_cid int 64 regular  }
	{ p_A_reader_rs int 64 regular {fifo 0 volatile }  }
	{ brnum int 32 regular  }
	{ p_B_keep_col1 int 1024 regular {fifo 0 volatile }  }
	{ p_A_element_as int 98 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "aval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_val","offset": { "type": "dynamic","port_name": "A_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "acid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_A_reader_rs", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "brnum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_B_keep_col1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
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
	{ m_axi_aval_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_aval_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_aval_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_aval_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_aval_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_aval_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_aval_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_aval_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_aval_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_aval_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aval_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_aval_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_aval_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_aval_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_aval_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ A_val sc_in sc_lv 64 signal 1 } 
	{ m_axi_acid_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_acid_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_acid_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_acid_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_acid_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_acid_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_acid_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_acid_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_acid_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_acid_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_acid_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_acid_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_acid_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_acid_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_acid_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ A_cid sc_in sc_lv 64 signal 3 } 
	{ p_A_reader_rs_dout sc_in sc_lv 64 signal 4 } 
	{ p_A_reader_rs_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_A_reader_rs_read sc_out sc_logic 1 signal 4 } 
	{ p_A_reader_rs_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ p_A_reader_rs_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ brnum sc_in sc_lv 32 signal 5 } 
	{ p_B_keep_col1_dout sc_in sc_lv 1024 signal 6 } 
	{ p_B_keep_col1_empty_n sc_in sc_logic 1 signal 6 } 
	{ p_B_keep_col1_read sc_out sc_logic 1 signal 6 } 
	{ p_B_keep_col1_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ p_B_keep_col1_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ p_A_element_as_din sc_out sc_lv 98 signal 7 } 
	{ p_A_element_as_full_n sc_in sc_logic 1 signal 7 } 
	{ p_A_element_as_write sc_out sc_logic 1 signal 7 } 
	{ p_A_element_as_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ p_A_element_as_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_aval_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_aval_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_aval_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_aval_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_AWID" }} , 
 	{ "name": "m_axi_aval_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_aval_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_aval_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_aval_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_aval_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_aval_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_aval_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_aval_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_aval_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_aval_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_aval_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_aval_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_aval_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_aval_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_aval_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_WID" }} , 
 	{ "name": "m_axi_aval_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_aval_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_aval_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_aval_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aval", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_aval_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_ARID" }} , 
 	{ "name": "m_axi_aval_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_aval_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_aval_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_aval_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_aval_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_aval_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aval", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_aval_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_aval_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aval", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_aval_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_aval_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_aval_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_aval_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aval", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_aval_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_aval_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_RID" }} , 
 	{ "name": "m_axi_aval_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "aval", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_aval_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_aval_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_aval_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_aval_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_aval_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aval", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_aval_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_BID" }} , 
 	{ "name": "m_axi_aval_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aval", "role": "0_BUSER" }} , 
 	{ "name": "A_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_val", "role": "default" }} , 
 	{ "name": "m_axi_acid_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_acid_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_acid_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_acid_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_AWID" }} , 
 	{ "name": "m_axi_acid_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_acid_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_acid_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_acid_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_acid_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_acid_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_acid_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_acid_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_acid_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_acid_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_acid_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_acid_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_acid_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_acid_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_acid_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_WID" }} , 
 	{ "name": "m_axi_acid_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_acid_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_acid_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_acid_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acid", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_acid_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_ARID" }} , 
 	{ "name": "m_axi_acid_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_acid_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_acid_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_acid_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_acid_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_acid_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "acid", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_acid_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_acid_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "acid", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_acid_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_acid_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_acid_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_acid_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acid", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_acid_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_acid_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_RID" }} , 
 	{ "name": "m_axi_acid_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "acid", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_acid_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_acid_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_acid_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_acid_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_acid_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "acid", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_acid_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_BID" }} , 
 	{ "name": "m_axi_acid_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "acid", "role": "0_BUSER" }} , 
 	{ "name": "A_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_cid", "role": "default" }} , 
 	{ "name": "p_A_reader_rs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "dout" }} , 
 	{ "name": "p_A_reader_rs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "empty_n" }} , 
 	{ "name": "p_A_reader_rs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "read" }} , 
 	{ "name": "p_A_reader_rs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "num_data_valid" }} , 
 	{ "name": "p_A_reader_rs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_reader_rs", "role": "fifo_cap" }} , 
 	{ "name": "brnum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brnum", "role": "default" }} , 
 	{ "name": "p_B_keep_col1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "p_B_keep_col1", "role": "dout" }} , 
 	{ "name": "p_B_keep_col1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_B_keep_col1", "role": "empty_n" }} , 
 	{ "name": "p_B_keep_col1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_B_keep_col1", "role": "read" }} , 
 	{ "name": "p_B_keep_col1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_B_keep_col1", "role": "num_data_valid" }} , 
 	{ "name": "p_B_keep_col1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_B_keep_col1", "role": "fifo_cap" }} , 
 	{ "name": "p_A_element_as_din", "direction": "out", "datatype": "sc_lv", "bitwidth":98, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "din" }} , 
 	{ "name": "p_A_element_as_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "full_n" }} , 
 	{ "name": "p_A_element_as_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "write" }} , 
 	{ "name": "p_A_element_as_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "num_data_valid" }} , 
 	{ "name": "p_A_element_as_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	A_element_filter {
		aval {Type I LastRead 2 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 2 FirstWrite -1}
		A_cid {Type I LastRead 0 FirstWrite -1}
		p_A_reader_rs {Type I LastRead 1 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		p_B_keep_col1 {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 2}}
	A_element_filter_Pipeline_VITIS_LOOP_64_2 {
		row_rlen {Type I LastRead 0 FirstWrite -1}
		acid {Type I LastRead 1 FirstWrite -1}
		sext_ln64 {Type I LastRead 0 FirstWrite -1}
		aval {Type I LastRead 2 FirstWrite -1}
		sext_ln64_1 {Type I LastRead 0 FirstWrite -1}
		brnum {Type I LastRead 0 FirstWrite -1}
		keep_col {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_A_element_as {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_aval_0_AWVALID VALID 1 1 }  { m_axi_aval_0_AWREADY READY 0 1 }  { m_axi_aval_0_AWADDR ADDR 1 64 }  { m_axi_aval_0_AWID ID 1 1 }  { m_axi_aval_0_AWLEN SIZE 1 32 }  { m_axi_aval_0_AWSIZE BURST 1 3 }  { m_axi_aval_0_AWBURST LOCK 1 2 }  { m_axi_aval_0_AWLOCK CACHE 1 2 }  { m_axi_aval_0_AWCACHE PROT 1 4 }  { m_axi_aval_0_AWPROT QOS 1 3 }  { m_axi_aval_0_AWQOS REGION 1 4 }  { m_axi_aval_0_AWREGION USER 1 4 }  { m_axi_aval_0_AWUSER DATA 1 1 }  { m_axi_aval_0_WVALID VALID 1 1 }  { m_axi_aval_0_WREADY READY 0 1 }  { m_axi_aval_0_WDATA FIFONUM 1 32 }  { m_axi_aval_0_WSTRB STRB 1 4 }  { m_axi_aval_0_WLAST LAST 1 1 }  { m_axi_aval_0_WID ID 1 1 }  { m_axi_aval_0_WUSER DATA 1 1 }  { m_axi_aval_0_ARVALID VALID 1 1 }  { m_axi_aval_0_ARREADY READY 0 1 }  { m_axi_aval_0_ARADDR ADDR 1 64 }  { m_axi_aval_0_ARID ID 1 1 }  { m_axi_aval_0_ARLEN SIZE 1 32 }  { m_axi_aval_0_ARSIZE BURST 1 3 }  { m_axi_aval_0_ARBURST LOCK 1 2 }  { m_axi_aval_0_ARLOCK CACHE 1 2 }  { m_axi_aval_0_ARCACHE PROT 1 4 }  { m_axi_aval_0_ARPROT QOS 1 3 }  { m_axi_aval_0_ARQOS REGION 1 4 }  { m_axi_aval_0_ARREGION USER 1 4 }  { m_axi_aval_0_ARUSER DATA 1 1 }  { m_axi_aval_0_RVALID VALID 0 1 }  { m_axi_aval_0_RREADY READY 1 1 }  { m_axi_aval_0_RDATA FIFONUM 0 32 }  { m_axi_aval_0_RLAST LAST 0 1 }  { m_axi_aval_0_RID ID 0 1 }  { m_axi_aval_0_RFIFONUM LEN 0 9 }  { m_axi_aval_0_RUSER DATA 0 1 }  { m_axi_aval_0_RRESP RESP 0 2 }  { m_axi_aval_0_BVALID VALID 0 1 }  { m_axi_aval_0_BREADY READY 1 1 }  { m_axi_aval_0_BRESP RESP 0 2 }  { m_axi_aval_0_BID ID 0 1 }  { m_axi_aval_0_BUSER DATA 0 1 } } }
	A_val { ap_none {  { A_val in_data 0 64 } } }
	 { m_axi {  { m_axi_acid_0_AWVALID VALID 1 1 }  { m_axi_acid_0_AWREADY READY 0 1 }  { m_axi_acid_0_AWADDR ADDR 1 64 }  { m_axi_acid_0_AWID ID 1 1 }  { m_axi_acid_0_AWLEN SIZE 1 32 }  { m_axi_acid_0_AWSIZE BURST 1 3 }  { m_axi_acid_0_AWBURST LOCK 1 2 }  { m_axi_acid_0_AWLOCK CACHE 1 2 }  { m_axi_acid_0_AWCACHE PROT 1 4 }  { m_axi_acid_0_AWPROT QOS 1 3 }  { m_axi_acid_0_AWQOS REGION 1 4 }  { m_axi_acid_0_AWREGION USER 1 4 }  { m_axi_acid_0_AWUSER DATA 1 1 }  { m_axi_acid_0_WVALID VALID 1 1 }  { m_axi_acid_0_WREADY READY 0 1 }  { m_axi_acid_0_WDATA FIFONUM 1 32 }  { m_axi_acid_0_WSTRB STRB 1 4 }  { m_axi_acid_0_WLAST LAST 1 1 }  { m_axi_acid_0_WID ID 1 1 }  { m_axi_acid_0_WUSER DATA 1 1 }  { m_axi_acid_0_ARVALID VALID 1 1 }  { m_axi_acid_0_ARREADY READY 0 1 }  { m_axi_acid_0_ARADDR ADDR 1 64 }  { m_axi_acid_0_ARID ID 1 1 }  { m_axi_acid_0_ARLEN SIZE 1 32 }  { m_axi_acid_0_ARSIZE BURST 1 3 }  { m_axi_acid_0_ARBURST LOCK 1 2 }  { m_axi_acid_0_ARLOCK CACHE 1 2 }  { m_axi_acid_0_ARCACHE PROT 1 4 }  { m_axi_acid_0_ARPROT QOS 1 3 }  { m_axi_acid_0_ARQOS REGION 1 4 }  { m_axi_acid_0_ARREGION USER 1 4 }  { m_axi_acid_0_ARUSER DATA 1 1 }  { m_axi_acid_0_RVALID VALID 0 1 }  { m_axi_acid_0_RREADY READY 1 1 }  { m_axi_acid_0_RDATA FIFONUM 0 32 }  { m_axi_acid_0_RLAST LAST 0 1 }  { m_axi_acid_0_RID ID 0 1 }  { m_axi_acid_0_RFIFONUM LEN 0 9 }  { m_axi_acid_0_RUSER DATA 0 1 }  { m_axi_acid_0_RRESP RESP 0 2 }  { m_axi_acid_0_BVALID VALID 0 1 }  { m_axi_acid_0_BREADY READY 1 1 }  { m_axi_acid_0_BRESP RESP 0 2 }  { m_axi_acid_0_BID ID 0 1 }  { m_axi_acid_0_BUSER DATA 0 1 } } }
	A_cid { ap_none {  { A_cid in_data 0 64 } } }
	p_A_reader_rs { ap_fifo {  { p_A_reader_rs_dout fifo_data_out 0 64 }  { p_A_reader_rs_empty_n fifo_status_empty 0 1 }  { p_A_reader_rs_read fifo_data_in 1 1 }  { p_A_reader_rs_num_data_valid fifo_update 0 3 }  { p_A_reader_rs_fifo_cap fifo_data 0 3 } } }
	brnum { ap_none {  { brnum in_data 0 32 } } }
	p_B_keep_col1 { ap_fifo {  { p_B_keep_col1_dout fifo_data_out 0 1024 }  { p_B_keep_col1_empty_n fifo_status_empty 0 1 }  { p_B_keep_col1_read fifo_data_in 1 1 }  { p_B_keep_col1_num_data_valid fifo_update 0 2 }  { p_B_keep_col1_fifo_cap fifo_data 0 2 } } }
	p_A_element_as { ap_fifo {  { p_A_element_as_din fifo_data_out 1 98 }  { p_A_element_as_full_n fifo_status_empty 0 1 }  { p_A_element_as_write fifo_data_in 1 1 }  { p_A_element_as_num_data_valid fifo_update 0 3 }  { p_A_element_as_fifo_cap fifo_data 0 3 } } }
}
