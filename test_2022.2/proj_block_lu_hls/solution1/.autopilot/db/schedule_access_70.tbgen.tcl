set moduleName schedule_access_70
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
set C_modelName {schedule_access.70}
set C_modelType { void 0 }
set C_modelArgList {
	{ cscheduler int 68 regular {fifo 0 volatile }  }
	{ cresponse1 int 6 regular {fifo 0 volatile }  }
	{ coff4 int 128 regular {fifo 1 volatile }  }
	{ bc1 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ c_req int 209 regular {fifo 1 volatile }  }
	{ c_hit2 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse1", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bc1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port1","offset": { "type": "dynamic","port_name": "B_cid_port1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_hit2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ cscheduler_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ cscheduler_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ cscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ cscheduler_read sc_out sc_logic 1 signal 0 } 
	{ cresponse1_dout sc_in sc_lv 6 signal 1 } 
	{ cresponse1_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ cresponse1_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ cresponse1_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresponse1_read sc_out sc_logic 1 signal 1 } 
	{ coff4_din sc_out sc_lv 128 signal 2 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ coff4_full_n sc_in sc_logic 1 signal 2 } 
	{ coff4_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_bc1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bc1_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bc1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bc1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bc1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ c_req_din sc_out sc_lv 209 signal 5 } 
	{ c_req_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ c_req_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ c_req_full_n sc_in sc_logic 1 signal 5 } 
	{ c_req_write sc_out sc_logic 1 signal 5 } 
	{ c_hit2_din sc_out sc_lv 1 signal 6 } 
	{ c_hit2_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ c_hit2_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ c_hit2_full_n sc_in sc_logic 1 signal 6 } 
	{ c_hit2_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "empty_n" }} , 
 	{ "name": "cscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "read" }} , 
 	{ "name": "cresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse1", "role": "dout" }} , 
 	{ "name": "cresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse1", "role": "num_data_valid" }} , 
 	{ "name": "cresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse1", "role": "fifo_cap" }} , 
 	{ "name": "cresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "empty_n" }} , 
 	{ "name": "cresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "read" }} , 
 	{ "name": "coff4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "din" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "full_n" }} , 
 	{ "name": "coff4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "write" }} , 
 	{ "name": "m_axi_bc1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWID" }} , 
 	{ "name": "m_axi_bc1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WID" }} , 
 	{ "name": "m_axi_bc1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARID" }} , 
 	{ "name": "m_axi_bc1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RID" }} , 
 	{ "name": "m_axi_bc1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BID" }} , 
 	{ "name": "m_axi_bc1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BUSER" }} , 
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "c_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "c_req", "role": "din" }} , 
 	{ "name": "c_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "num_data_valid" }} , 
 	{ "name": "c_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "fifo_cap" }} , 
 	{ "name": "c_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "full_n" }} , 
 	{ "name": "c_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "write" }} , 
 	{ "name": "c_hit2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "din" }} , 
 	{ "name": "c_hit2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "num_data_valid" }} , 
 	{ "name": "c_hit2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "fifo_cap" }} , 
 	{ "name": "c_hit2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "full_n" }} , 
 	{ "name": "c_hit2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "schedule_access_70",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresponse1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_105_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "schedule_access_70_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln32", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	schedule_access_70 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse1 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc1 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_70_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc1 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_33 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_19 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_13 {Type I LastRead 0 FirstWrite -1}
		trunc_ln32 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_14 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_39_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_18_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_18_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_33_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_39_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_39_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cscheduler { ap_fifo {  { cscheduler_dout fifo_port_we 0 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_empty_n fifo_status 0 1 }  { cscheduler_read fifo_data 1 1 } } }
	cresponse1 { ap_fifo {  { cresponse1_dout fifo_port_we 0 6 }  { cresponse1_num_data_valid fifo_status_num_data_valid 0 7 }  { cresponse1_fifo_cap fifo_update 0 7 }  { cresponse1_empty_n fifo_status 0 1 }  { cresponse1_read fifo_data 1 1 } } }
	coff4 { ap_fifo {  { coff4_din fifo_port_we 1 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_full_n fifo_status 0 1 }  { coff4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bc1_AWVALID VALID 1 1 }  { m_axi_bc1_AWREADY READY 0 1 }  { m_axi_bc1_AWADDR ADDR 1 64 }  { m_axi_bc1_AWID ID 1 1 }  { m_axi_bc1_AWLEN SIZE 1 32 }  { m_axi_bc1_AWSIZE BURST 1 3 }  { m_axi_bc1_AWBURST LOCK 1 2 }  { m_axi_bc1_AWLOCK CACHE 1 2 }  { m_axi_bc1_AWCACHE PROT 1 4 }  { m_axi_bc1_AWPROT QOS 1 3 }  { m_axi_bc1_AWQOS REGION 1 4 }  { m_axi_bc1_AWREGION USER 1 4 }  { m_axi_bc1_AWUSER DATA 1 1 }  { m_axi_bc1_WVALID VALID 1 1 }  { m_axi_bc1_WREADY READY 0 1 }  { m_axi_bc1_WDATA FIFONUM 1 128 }  { m_axi_bc1_WSTRB STRB 1 16 }  { m_axi_bc1_WLAST LAST 1 1 }  { m_axi_bc1_WID ID 1 1 }  { m_axi_bc1_WUSER DATA 1 1 }  { m_axi_bc1_ARVALID VALID 1 1 }  { m_axi_bc1_ARREADY READY 0 1 }  { m_axi_bc1_ARADDR ADDR 1 64 }  { m_axi_bc1_ARID ID 1 1 }  { m_axi_bc1_ARLEN SIZE 1 32 }  { m_axi_bc1_ARSIZE BURST 1 3 }  { m_axi_bc1_ARBURST LOCK 1 2 }  { m_axi_bc1_ARLOCK CACHE 1 2 }  { m_axi_bc1_ARCACHE PROT 1 4 }  { m_axi_bc1_ARPROT QOS 1 3 }  { m_axi_bc1_ARQOS REGION 1 4 }  { m_axi_bc1_ARREGION USER 1 4 }  { m_axi_bc1_ARUSER DATA 1 1 }  { m_axi_bc1_RVALID VALID 0 1 }  { m_axi_bc1_RREADY READY 1 1 }  { m_axi_bc1_RDATA FIFONUM 0 128 }  { m_axi_bc1_RLAST LAST 0 1 }  { m_axi_bc1_RID ID 0 1 }  { m_axi_bc1_RFIFONUM LEN 0 9 }  { m_axi_bc1_RUSER DATA 0 1 }  { m_axi_bc1_RRESP RESP 0 2 }  { m_axi_bc1_BVALID VALID 0 1 }  { m_axi_bc1_BREADY READY 1 1 }  { m_axi_bc1_BRESP RESP 0 2 }  { m_axi_bc1_BID ID 0 1 }  { m_axi_bc1_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	c_req { ap_fifo {  { c_req_din fifo_port_we 1 209 }  { c_req_num_data_valid fifo_status_num_data_valid 0 7 }  { c_req_fifo_cap fifo_update 0 7 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_data 1 1 } } }
	c_hit2 { ap_fifo {  { c_hit2_din fifo_port_we 1 1 }  { c_hit2_num_data_valid fifo_status_num_data_valid 0 5 }  { c_hit2_fifo_cap fifo_update 0 5 }  { c_hit2_full_n fifo_status 0 1 }  { c_hit2_write fifo_data 1 1 } } }
}
set moduleName schedule_access_70
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
set C_modelName {schedule_access.70}
set C_modelType { void 0 }
set C_modelArgList {
	{ cscheduler int 68 regular {fifo 0 volatile }  }
	{ cresponse1 int 6 regular {fifo 0 volatile }  }
	{ coff4 int 128 regular {fifo 1 volatile }  }
	{ bc1 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ c_req int 209 regular {fifo 1 volatile }  }
	{ c_hit2 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse1", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bc1", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port1","offset": { "type": "dynamic","port_name": "B_cid_port1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_hit2", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ cscheduler_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ cscheduler_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ cscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ cscheduler_read sc_out sc_logic 1 signal 0 } 
	{ cresponse1_dout sc_in sc_lv 6 signal 1 } 
	{ cresponse1_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ cresponse1_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ cresponse1_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresponse1_read sc_out sc_logic 1 signal 1 } 
	{ coff4_din sc_out sc_lv 128 signal 2 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ coff4_full_n sc_in sc_logic 1 signal 2 } 
	{ coff4_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_bc1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bc1_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bc1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bc1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bc1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc1_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ c_req_din sc_out sc_lv 209 signal 5 } 
	{ c_req_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ c_req_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ c_req_full_n sc_in sc_logic 1 signal 5 } 
	{ c_req_write sc_out sc_logic 1 signal 5 } 
	{ c_hit2_din sc_out sc_lv 1 signal 6 } 
	{ c_hit2_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ c_hit2_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ c_hit2_full_n sc_in sc_logic 1 signal 6 } 
	{ c_hit2_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "cscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "num_data_valid" }} , 
 	{ "name": "cscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cscheduler", "role": "fifo_cap" }} , 
 	{ "name": "cscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "empty_n" }} , 
 	{ "name": "cscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cscheduler", "role": "read" }} , 
 	{ "name": "cresponse1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse1", "role": "dout" }} , 
 	{ "name": "cresponse1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse1", "role": "num_data_valid" }} , 
 	{ "name": "cresponse1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse1", "role": "fifo_cap" }} , 
 	{ "name": "cresponse1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "empty_n" }} , 
 	{ "name": "cresponse1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse1", "role": "read" }} , 
 	{ "name": "coff4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "din" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "full_n" }} , 
 	{ "name": "coff4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "write" }} , 
 	{ "name": "m_axi_bc1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWID" }} , 
 	{ "name": "m_axi_bc1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WID" }} , 
 	{ "name": "m_axi_bc1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARID" }} , 
 	{ "name": "m_axi_bc1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc1", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RID" }} , 
 	{ "name": "m_axi_bc1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc1", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BID" }} , 
 	{ "name": "m_axi_bc1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc1", "role": "BUSER" }} , 
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "c_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "c_req", "role": "din" }} , 
 	{ "name": "c_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "num_data_valid" }} , 
 	{ "name": "c_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "fifo_cap" }} , 
 	{ "name": "c_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "full_n" }} , 
 	{ "name": "c_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "write" }} , 
 	{ "name": "c_hit2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "din" }} , 
 	{ "name": "c_hit2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "num_data_valid" }} , 
 	{ "name": "c_hit2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "c_hit2", "role": "fifo_cap" }} , 
 	{ "name": "c_hit2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "full_n" }} , 
 	{ "name": "c_hit2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_hit2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "schedule_access_70",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cresponse1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "c_hit2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_hit2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_105_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "schedule_access_70_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "bc1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln32", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_70_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	schedule_access_70 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse1 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc1 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_70_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc1 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_33 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_19 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_13 {Type I LastRead 0 FirstWrite -1}
		trunc_ln32 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_14 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_39_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_18_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_18_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_33_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_39_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_39_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cscheduler { ap_fifo {  { cscheduler_dout fifo_port_we 0 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_empty_n fifo_status 0 1 }  { cscheduler_read fifo_data 1 1 } } }
	cresponse1 { ap_fifo {  { cresponse1_dout fifo_port_we 0 6 }  { cresponse1_num_data_valid fifo_status_num_data_valid 0 7 }  { cresponse1_fifo_cap fifo_update 0 7 }  { cresponse1_empty_n fifo_status 0 1 }  { cresponse1_read fifo_data 1 1 } } }
	coff4 { ap_fifo {  { coff4_din fifo_port_we 1 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_full_n fifo_status 0 1 }  { coff4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bc1_AWVALID VALID 1 1 }  { m_axi_bc1_AWREADY READY 0 1 }  { m_axi_bc1_AWADDR ADDR 1 64 }  { m_axi_bc1_AWID ID 1 1 }  { m_axi_bc1_AWLEN SIZE 1 32 }  { m_axi_bc1_AWSIZE BURST 1 3 }  { m_axi_bc1_AWBURST LOCK 1 2 }  { m_axi_bc1_AWLOCK CACHE 1 2 }  { m_axi_bc1_AWCACHE PROT 1 4 }  { m_axi_bc1_AWPROT QOS 1 3 }  { m_axi_bc1_AWQOS REGION 1 4 }  { m_axi_bc1_AWREGION USER 1 4 }  { m_axi_bc1_AWUSER DATA 1 1 }  { m_axi_bc1_WVALID VALID 1 1 }  { m_axi_bc1_WREADY READY 0 1 }  { m_axi_bc1_WDATA FIFONUM 1 128 }  { m_axi_bc1_WSTRB STRB 1 16 }  { m_axi_bc1_WLAST LAST 1 1 }  { m_axi_bc1_WID ID 1 1 }  { m_axi_bc1_WUSER DATA 1 1 }  { m_axi_bc1_ARVALID VALID 1 1 }  { m_axi_bc1_ARREADY READY 0 1 }  { m_axi_bc1_ARADDR ADDR 1 64 }  { m_axi_bc1_ARID ID 1 1 }  { m_axi_bc1_ARLEN SIZE 1 32 }  { m_axi_bc1_ARSIZE BURST 1 3 }  { m_axi_bc1_ARBURST LOCK 1 2 }  { m_axi_bc1_ARLOCK CACHE 1 2 }  { m_axi_bc1_ARCACHE PROT 1 4 }  { m_axi_bc1_ARPROT QOS 1 3 }  { m_axi_bc1_ARQOS REGION 1 4 }  { m_axi_bc1_ARREGION USER 1 4 }  { m_axi_bc1_ARUSER DATA 1 1 }  { m_axi_bc1_RVALID VALID 0 1 }  { m_axi_bc1_RREADY READY 1 1 }  { m_axi_bc1_RDATA FIFONUM 0 128 }  { m_axi_bc1_RLAST LAST 0 1 }  { m_axi_bc1_RID ID 0 1 }  { m_axi_bc1_RFIFONUM LEN 0 9 }  { m_axi_bc1_RUSER DATA 0 1 }  { m_axi_bc1_RRESP RESP 0 2 }  { m_axi_bc1_BVALID VALID 0 1 }  { m_axi_bc1_BREADY READY 1 1 }  { m_axi_bc1_BRESP RESP 0 2 }  { m_axi_bc1_BID ID 0 1 }  { m_axi_bc1_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	c_req { ap_fifo {  { c_req_din fifo_port_we 1 209 }  { c_req_num_data_valid fifo_status_num_data_valid 0 7 }  { c_req_fifo_cap fifo_update 0 7 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_data 1 1 } } }
	c_hit2 { ap_fifo {  { c_hit2_din fifo_port_we 1 1 }  { c_hit2_num_data_valid fifo_status_num_data_valid 0 5 }  { c_hit2_fifo_cap fifo_update 0 5 }  { c_hit2_full_n fifo_status 0 1 }  { c_hit2_write fifo_data 1 1 } } }
}
