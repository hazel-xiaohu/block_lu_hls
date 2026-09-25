set moduleName schedule_access_103
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
set C_modelName {schedule_access.103}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cscheduler int 68 regular {fifo 0 volatile }  }
	{ cresponse3 int 6 regular {fifo 0 volatile }  }
	{ coff int 128 regular {fifo 1 volatile }  }
	{ bc3 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ c_req int 225 regular {fifo 1 volatile }  }
	{ c_hit int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "coff", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bc3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_cid_port3","offset": { "type": "dynamic","port_name": "B_cid_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_req", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_hit", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cscheduler_dout sc_in sc_lv 68 signal 0 } 
	{ cscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ cscheduler_read sc_out sc_logic 1 signal 0 } 
	{ cscheduler_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cscheduler_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cresponse3_dout sc_in sc_lv 6 signal 1 } 
	{ cresponse3_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresponse3_read sc_out sc_logic 1 signal 1 } 
	{ cresponse3_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cresponse3_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ coff_din sc_out sc_lv 128 signal 2 } 
	{ coff_full_n sc_in sc_logic 1 signal 2 } 
	{ coff_write sc_out sc_logic 1 signal 2 } 
	{ coff_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ coff_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ m_axi_bc3_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc3_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc3_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc3_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc3_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bc3_0_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bc3_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc3_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc3_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc3_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc3_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc3_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bc3_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bc3_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc3_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc3_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc3_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ c_req_din sc_out sc_lv 225 signal 5 } 
	{ c_req_full_n sc_in sc_logic 1 signal 5 } 
	{ c_req_write sc_out sc_logic 1 signal 5 } 
	{ c_req_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ c_req_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ c_hit_din sc_out sc_lv 1 signal 6 } 
	{ c_hit_full_n sc_in sc_logic 1 signal 6 } 
	{ c_hit_write sc_out sc_logic 1 signal 6 } 
	{ c_hit_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ c_hit_fifo_cap sc_in sc_lv 5 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "cscheduler", "role": "dout" }} , 
 	{ "name": "cscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "empty_n" }} , 
 	{ "name": "cscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "read" }} , 
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cresponse3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse3", "role": "dout" }} , 
 	{ "name": "cresponse3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "empty_n" }} , 
 	{ "name": "cresponse3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse3", "role": "read" }} , 
 	{ "name": "cresponse3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse3", "role": "num_data_valid" }} , 
 	{ "name": "cresponse3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cresponse3", "role": "fifo_cap" }} , 
 	{ "name": "coff_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff", "role": "din" }} , 
 	{ "name": "coff_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "full_n" }} , 
 	{ "name": "coff_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff", "role": "write" }} , 
 	{ "name": "coff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "num_data_valid" }} , 
 	{ "name": "coff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coff", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_bc3_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bc3_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bc3_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bc3_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bc3_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bc3_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bc3_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bc3_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bc3_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bc3_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bc3_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bc3_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bc3_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bc3_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bc3_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bc3_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bc3_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc3", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bc3_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bc3_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_WID" }} , 
 	{ "name": "m_axi_bc3_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bc3_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bc3_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bc3_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bc3_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bc3_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bc3_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bc3_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bc3_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bc3_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bc3_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bc3_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bc3_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bc3_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bc3_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bc3_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bc3_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc3", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bc3_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bc3_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_RID" }} , 
 	{ "name": "m_axi_bc3_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc3", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bc3_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bc3_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bc3_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bc3_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bc3_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc3", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bc3_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_BID" }} , 
 	{ "name": "m_axi_bc3_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc3", "role": "0_BUSER" }} , 
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "c_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "c_req", "role": "din" }} , 
 	{ "name": "c_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "full_n" }} , 
 	{ "name": "c_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "write" }} , 
 	{ "name": "c_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_req", "role": "num_data_valid" }} , 
 	{ "name": "c_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_req", "role": "fifo_cap" }} , 
 	{ "name": "c_hit_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "din" }} , 
 	{ "name": "c_hit_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "full_n" }} , 
 	{ "name": "c_hit_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit", "role": "write" }} , 
 	{ "name": "c_hit_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit", "role": "num_data_valid" }} , 
 	{ "name": "c_hit_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	schedule_access_103 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse3 {Type I LastRead 3 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc3 {Type I LastRead 5 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit {Type O LastRead -1 FirstWrite 4}}
	schedule_access_103_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}
		bc3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln31 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}
	schedule_access_103_Pipeline_VITIS_LOOP_105_3 {
		select_ln105 {Type I LastRead 0 FirstWrite -1}
		bc3 {Type I LastRead 2 FirstWrite -1}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		coff {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cscheduler { ap_fifo {  { cscheduler_dout fifo_data_out 0 68 }  { cscheduler_empty_n fifo_status_empty 0 1 }  { cscheduler_read fifo_data_in 1 1 }  { cscheduler_num_data_valid fifo_update 0 3 }  { cscheduler_fifo_cap fifo_data 0 3 } } }
	cresponse3 { ap_fifo {  { cresponse3_dout fifo_data_out 0 6 }  { cresponse3_empty_n fifo_status_empty 0 1 }  { cresponse3_read fifo_data_in 1 1 }  { cresponse3_num_data_valid fifo_update 0 3 }  { cresponse3_fifo_cap fifo_data 0 3 } } }
	coff { ap_fifo {  { coff_din fifo_data_out 1 128 }  { coff_full_n fifo_status_empty 0 1 }  { coff_write fifo_data_in 1 1 }  { coff_num_data_valid fifo_update 0 4 }  { coff_fifo_cap fifo_data 0 4 } } }
	 { m_axi {  { m_axi_bc3_0_AWVALID VALID 1 1 }  { m_axi_bc3_0_AWREADY READY 0 1 }  { m_axi_bc3_0_AWADDR ADDR 1 64 }  { m_axi_bc3_0_AWID ID 1 1 }  { m_axi_bc3_0_AWLEN SIZE 1 32 }  { m_axi_bc3_0_AWSIZE BURST 1 3 }  { m_axi_bc3_0_AWBURST LOCK 1 2 }  { m_axi_bc3_0_AWLOCK CACHE 1 2 }  { m_axi_bc3_0_AWCACHE PROT 1 4 }  { m_axi_bc3_0_AWPROT QOS 1 3 }  { m_axi_bc3_0_AWQOS REGION 1 4 }  { m_axi_bc3_0_AWREGION USER 1 4 }  { m_axi_bc3_0_AWUSER DATA 1 1 }  { m_axi_bc3_0_WVALID VALID 1 1 }  { m_axi_bc3_0_WREADY READY 0 1 }  { m_axi_bc3_0_WDATA FIFONUM 1 128 }  { m_axi_bc3_0_WSTRB STRB 1 16 }  { m_axi_bc3_0_WLAST LAST 1 1 }  { m_axi_bc3_0_WID ID 1 1 }  { m_axi_bc3_0_WUSER DATA 1 1 }  { m_axi_bc3_0_ARVALID VALID 1 1 }  { m_axi_bc3_0_ARREADY READY 0 1 }  { m_axi_bc3_0_ARADDR ADDR 1 64 }  { m_axi_bc3_0_ARID ID 1 1 }  { m_axi_bc3_0_ARLEN SIZE 1 32 }  { m_axi_bc3_0_ARSIZE BURST 1 3 }  { m_axi_bc3_0_ARBURST LOCK 1 2 }  { m_axi_bc3_0_ARLOCK CACHE 1 2 }  { m_axi_bc3_0_ARCACHE PROT 1 4 }  { m_axi_bc3_0_ARPROT QOS 1 3 }  { m_axi_bc3_0_ARQOS REGION 1 4 }  { m_axi_bc3_0_ARREGION USER 1 4 }  { m_axi_bc3_0_ARUSER DATA 1 1 }  { m_axi_bc3_0_RVALID VALID 0 1 }  { m_axi_bc3_0_RREADY READY 1 1 }  { m_axi_bc3_0_RDATA FIFONUM 0 128 }  { m_axi_bc3_0_RLAST LAST 0 1 }  { m_axi_bc3_0_RID ID 0 1 }  { m_axi_bc3_0_RFIFONUM LEN 0 9 }  { m_axi_bc3_0_RUSER DATA 0 1 }  { m_axi_bc3_0_RRESP RESP 0 2 }  { m_axi_bc3_0_BVALID VALID 0 1 }  { m_axi_bc3_0_BREADY READY 1 1 }  { m_axi_bc3_0_BRESP RESP 0 2 }  { m_axi_bc3_0_BID ID 0 1 }  { m_axi_bc3_0_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	c_req { ap_fifo {  { c_req_din fifo_data_out 1 225 }  { c_req_full_n fifo_status_empty 0 1 }  { c_req_write fifo_data_in 1 1 }  { c_req_num_data_valid fifo_update 0 3 }  { c_req_fifo_cap fifo_data 0 3 } } }
	c_hit { ap_fifo {  { c_hit_din fifo_data_out 1 1 }  { c_hit_full_n fifo_status_empty 0 1 }  { c_hit_write fifo_data_in 1 1 }  { c_hit_num_data_valid fifo_update 0 5 }  { c_hit_fifo_cap fifo_data 0 5 } } }
}
