set moduleName schedule_access_77
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
set C_modelName {schedule_access.77}
set C_modelType { void 0 }
set C_modelArgList {
	{ cscheduler int 68 regular {fifo 0 volatile }  }
	{ cresponse2 int 6 regular {fifo 0 volatile }  }
	{ coff4 int 128 regular {fifo 1 volatile }  }
	{ bc2 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ c_req int 209 regular {fifo 1 volatile }  }
	{ c_hit2 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bc2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port2","offset": { "type": "dynamic","port_name": "B_cid_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
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
	{ cresponse2_dout sc_in sc_lv 6 signal 1 } 
	{ cresponse2_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ cresponse2_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ cresponse2_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresponse2_read sc_out sc_logic 1 signal 1 } 
	{ coff4_din sc_out sc_lv 128 signal 2 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ coff4_full_n sc_in sc_logic 1 signal 2 } 
	{ coff4_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_bc2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bc2_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bc2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bc2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bc2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_BUSER sc_in sc_lv 1 signal 3 } 
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
 	{ "name": "cresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse2", "role": "dout" }} , 
 	{ "name": "cresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse2", "role": "num_data_valid" }} , 
 	{ "name": "cresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse2", "role": "fifo_cap" }} , 
 	{ "name": "cresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "empty_n" }} , 
 	{ "name": "cresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "read" }} , 
 	{ "name": "coff4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "din" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "full_n" }} , 
 	{ "name": "coff4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "write" }} , 
 	{ "name": "m_axi_bc2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWID" }} , 
 	{ "name": "m_axi_bc2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WID" }} , 
 	{ "name": "m_axi_bc2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARID" }} , 
 	{ "name": "m_axi_bc2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RID" }} , 
 	{ "name": "m_axi_bc2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BID" }} , 
 	{ "name": "m_axi_bc2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BUSER" }} , 
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
		"CDFG" : "schedule_access_77",
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
			{"Name" : "cresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "schedule_access_77_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	schedule_access_77 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc2 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_77_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_23 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_15 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln28 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_10 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_27_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_23_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_27_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cscheduler { ap_fifo {  { cscheduler_dout fifo_port_we 0 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_empty_n fifo_status 0 1 }  { cscheduler_read fifo_data 1 1 } } }
	cresponse2 { ap_fifo {  { cresponse2_dout fifo_port_we 0 6 }  { cresponse2_num_data_valid fifo_status_num_data_valid 0 7 }  { cresponse2_fifo_cap fifo_update 0 7 }  { cresponse2_empty_n fifo_status 0 1 }  { cresponse2_read fifo_data 1 1 } } }
	coff4 { ap_fifo {  { coff4_din fifo_port_we 1 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_full_n fifo_status 0 1 }  { coff4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bc2_AWVALID VALID 1 1 }  { m_axi_bc2_AWREADY READY 0 1 }  { m_axi_bc2_AWADDR ADDR 1 64 }  { m_axi_bc2_AWID ID 1 1 }  { m_axi_bc2_AWLEN SIZE 1 32 }  { m_axi_bc2_AWSIZE BURST 1 3 }  { m_axi_bc2_AWBURST LOCK 1 2 }  { m_axi_bc2_AWLOCK CACHE 1 2 }  { m_axi_bc2_AWCACHE PROT 1 4 }  { m_axi_bc2_AWPROT QOS 1 3 }  { m_axi_bc2_AWQOS REGION 1 4 }  { m_axi_bc2_AWREGION USER 1 4 }  { m_axi_bc2_AWUSER DATA 1 1 }  { m_axi_bc2_WVALID VALID 1 1 }  { m_axi_bc2_WREADY READY 0 1 }  { m_axi_bc2_WDATA FIFONUM 1 128 }  { m_axi_bc2_WSTRB STRB 1 16 }  { m_axi_bc2_WLAST LAST 1 1 }  { m_axi_bc2_WID ID 1 1 }  { m_axi_bc2_WUSER DATA 1 1 }  { m_axi_bc2_ARVALID VALID 1 1 }  { m_axi_bc2_ARREADY READY 0 1 }  { m_axi_bc2_ARADDR ADDR 1 64 }  { m_axi_bc2_ARID ID 1 1 }  { m_axi_bc2_ARLEN SIZE 1 32 }  { m_axi_bc2_ARSIZE BURST 1 3 }  { m_axi_bc2_ARBURST LOCK 1 2 }  { m_axi_bc2_ARLOCK CACHE 1 2 }  { m_axi_bc2_ARCACHE PROT 1 4 }  { m_axi_bc2_ARPROT QOS 1 3 }  { m_axi_bc2_ARQOS REGION 1 4 }  { m_axi_bc2_ARREGION USER 1 4 }  { m_axi_bc2_ARUSER DATA 1 1 }  { m_axi_bc2_RVALID VALID 0 1 }  { m_axi_bc2_RREADY READY 1 1 }  { m_axi_bc2_RDATA FIFONUM 0 128 }  { m_axi_bc2_RLAST LAST 0 1 }  { m_axi_bc2_RID ID 0 1 }  { m_axi_bc2_RFIFONUM LEN 0 9 }  { m_axi_bc2_RUSER DATA 0 1 }  { m_axi_bc2_RRESP RESP 0 2 }  { m_axi_bc2_BVALID VALID 0 1 }  { m_axi_bc2_BREADY READY 1 1 }  { m_axi_bc2_BRESP RESP 0 2 }  { m_axi_bc2_BID ID 0 1 }  { m_axi_bc2_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	c_req { ap_fifo {  { c_req_din fifo_port_we 1 209 }  { c_req_num_data_valid fifo_status_num_data_valid 0 7 }  { c_req_fifo_cap fifo_update 0 7 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_data 1 1 } } }
	c_hit2 { ap_fifo {  { c_hit2_din fifo_port_we 1 1 }  { c_hit2_num_data_valid fifo_status_num_data_valid 0 5 }  { c_hit2_fifo_cap fifo_update 0 5 }  { c_hit2_full_n fifo_status 0 1 }  { c_hit2_write fifo_data 1 1 } } }
}
set moduleName schedule_access_77
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
set C_modelName {schedule_access.77}
set C_modelType { void 0 }
set C_modelArgList {
	{ cscheduler int 68 regular {fifo 0 volatile }  }
	{ cresponse2 int 6 regular {fifo 0 volatile }  }
	{ coff4 int 128 regular {fifo 1 volatile }  }
	{ bc2 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ c_req int 209 regular {fifo 1 volatile }  }
	{ c_hit2 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "cresponse2", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bc2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port2","offset": { "type": "dynamic","port_name": "B_cid_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
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
	{ cresponse2_dout sc_in sc_lv 6 signal 1 } 
	{ cresponse2_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ cresponse2_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ cresponse2_empty_n sc_in sc_logic 1 signal 1 } 
	{ cresponse2_read sc_out sc_logic 1 signal 1 } 
	{ coff4_din sc_out sc_lv 128 signal 2 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ coff4_full_n sc_in sc_logic 1 signal 2 } 
	{ coff4_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_bc2_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc2_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc2_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bc2_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bc2_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bc2_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bc2_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bc2_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bc2_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bc2_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bc2_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bc2_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bc2_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc2_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bc2_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bc2_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bc2_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bc2_BUSER sc_in sc_lv 1 signal 3 } 
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
 	{ "name": "cresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cresponse2", "role": "dout" }} , 
 	{ "name": "cresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse2", "role": "num_data_valid" }} , 
 	{ "name": "cresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "cresponse2", "role": "fifo_cap" }} , 
 	{ "name": "cresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "empty_n" }} , 
 	{ "name": "cresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cresponse2", "role": "read" }} , 
 	{ "name": "coff4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "din" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "full_n" }} , 
 	{ "name": "coff4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "write" }} , 
 	{ "name": "m_axi_bc2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bc2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bc2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bc2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWID" }} , 
 	{ "name": "m_axi_bc2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bc2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bc2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bc2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bc2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bc2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bc2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bc2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bc2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bc2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WVALID" }} , 
 	{ "name": "m_axi_bc2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WREADY" }} , 
 	{ "name": "m_axi_bc2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "WDATA" }} , 
 	{ "name": "m_axi_bc2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bc2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bc2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WLAST" }} , 
 	{ "name": "m_axi_bc2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WID" }} , 
 	{ "name": "m_axi_bc2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "WUSER" }} , 
 	{ "name": "m_axi_bc2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bc2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bc2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bc2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bc2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARID" }} , 
 	{ "name": "m_axi_bc2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bc2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bc2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bc2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bc2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bc2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bc2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bc2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bc2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bc2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bc2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bc2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bc2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RVALID" }} , 
 	{ "name": "m_axi_bc2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RREADY" }} , 
 	{ "name": "m_axi_bc2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bc2", "role": "RDATA" }} , 
 	{ "name": "m_axi_bc2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RLAST" }} , 
 	{ "name": "m_axi_bc2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RID" }} , 
 	{ "name": "m_axi_bc2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bc2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bc2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "RUSER" }} , 
 	{ "name": "m_axi_bc2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "RRESP" }} , 
 	{ "name": "m_axi_bc2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BVALID" }} , 
 	{ "name": "m_axi_bc2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BREADY" }} , 
 	{ "name": "m_axi_bc2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bc2", "role": "BRESP" }} , 
 	{ "name": "m_axi_bc2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BID" }} , 
 	{ "name": "m_axi_bc2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bc2", "role": "BUSER" }} , 
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
		"CDFG" : "schedule_access_77",
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
			{"Name" : "cresponse2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cresponse2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "coff4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bc2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "c_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "schedule_access_77_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bc2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bc2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "coff4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "coff4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_77_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	schedule_access_77 {
		cscheduler {Type I LastRead 1 FirstWrite -1}
		cresponse2 {Type I LastRead 3 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		bc2 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 1}
		c_hit2 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_77_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bc2 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_23 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_15 {Type I LastRead 0 FirstWrite -1}
		coff4 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln28 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_10 {Type I LastRead 0 FirstWrite -1}
		c_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_27_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_14_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_23_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_27_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cscheduler { ap_fifo {  { cscheduler_dout fifo_port_we 0 68 }  { cscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { cscheduler_fifo_cap fifo_update 0 7 }  { cscheduler_empty_n fifo_status 0 1 }  { cscheduler_read fifo_data 1 1 } } }
	cresponse2 { ap_fifo {  { cresponse2_dout fifo_port_we 0 6 }  { cresponse2_num_data_valid fifo_status_num_data_valid 0 7 }  { cresponse2_fifo_cap fifo_update 0 7 }  { cresponse2_empty_n fifo_status 0 1 }  { cresponse2_read fifo_data 1 1 } } }
	coff4 { ap_fifo {  { coff4_din fifo_port_we 1 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_full_n fifo_status 0 1 }  { coff4_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bc2_AWVALID VALID 1 1 }  { m_axi_bc2_AWREADY READY 0 1 }  { m_axi_bc2_AWADDR ADDR 1 64 }  { m_axi_bc2_AWID ID 1 1 }  { m_axi_bc2_AWLEN SIZE 1 32 }  { m_axi_bc2_AWSIZE BURST 1 3 }  { m_axi_bc2_AWBURST LOCK 1 2 }  { m_axi_bc2_AWLOCK CACHE 1 2 }  { m_axi_bc2_AWCACHE PROT 1 4 }  { m_axi_bc2_AWPROT QOS 1 3 }  { m_axi_bc2_AWQOS REGION 1 4 }  { m_axi_bc2_AWREGION USER 1 4 }  { m_axi_bc2_AWUSER DATA 1 1 }  { m_axi_bc2_WVALID VALID 1 1 }  { m_axi_bc2_WREADY READY 0 1 }  { m_axi_bc2_WDATA FIFONUM 1 128 }  { m_axi_bc2_WSTRB STRB 1 16 }  { m_axi_bc2_WLAST LAST 1 1 }  { m_axi_bc2_WID ID 1 1 }  { m_axi_bc2_WUSER DATA 1 1 }  { m_axi_bc2_ARVALID VALID 1 1 }  { m_axi_bc2_ARREADY READY 0 1 }  { m_axi_bc2_ARADDR ADDR 1 64 }  { m_axi_bc2_ARID ID 1 1 }  { m_axi_bc2_ARLEN SIZE 1 32 }  { m_axi_bc2_ARSIZE BURST 1 3 }  { m_axi_bc2_ARBURST LOCK 1 2 }  { m_axi_bc2_ARLOCK CACHE 1 2 }  { m_axi_bc2_ARCACHE PROT 1 4 }  { m_axi_bc2_ARPROT QOS 1 3 }  { m_axi_bc2_ARQOS REGION 1 4 }  { m_axi_bc2_ARREGION USER 1 4 }  { m_axi_bc2_ARUSER DATA 1 1 }  { m_axi_bc2_RVALID VALID 0 1 }  { m_axi_bc2_RREADY READY 1 1 }  { m_axi_bc2_RDATA FIFONUM 0 128 }  { m_axi_bc2_RLAST LAST 0 1 }  { m_axi_bc2_RID ID 0 1 }  { m_axi_bc2_RFIFONUM LEN 0 9 }  { m_axi_bc2_RUSER DATA 0 1 }  { m_axi_bc2_RRESP RESP 0 2 }  { m_axi_bc2_BVALID VALID 0 1 }  { m_axi_bc2_BREADY READY 1 1 }  { m_axi_bc2_BRESP RESP 0 2 }  { m_axi_bc2_BID ID 0 1 }  { m_axi_bc2_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	c_req { ap_fifo {  { c_req_din fifo_port_we 1 209 }  { c_req_num_data_valid fifo_status_num_data_valid 0 7 }  { c_req_fifo_cap fifo_update 0 7 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_data 1 1 } } }
	c_hit2 { ap_fifo {  { c_hit2_din fifo_port_we 1 1 }  { c_hit2_num_data_valid fifo_status_num_data_valid 0 5 }  { c_hit2_fifo_cap fifo_update 0 5 }  { c_hit2_full_n fifo_status 0 1 }  { c_hit2_write fifo_data 1 1 } } }
}
