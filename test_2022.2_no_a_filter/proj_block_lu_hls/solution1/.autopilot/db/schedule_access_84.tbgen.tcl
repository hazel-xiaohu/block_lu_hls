set moduleName schedule_access_84
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
set C_modelName {schedule_access.84}
set C_modelType { void 0 }
set C_modelArgList {
	{ vscheduler int 68 regular {fifo 0 volatile }  }
	{ vresponse3 int 6 regular {fifo 0 volatile }  }
	{ voff3 int 128 regular {fifo 1 volatile }  }
	{ bv3 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ v_req int 209 regular {fifo 1 volatile }  }
	{ v_hit1 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vscheduler", "interface" : "fifo", "bitwidth" : 68, "direction" : "READONLY"} , 
 	{ "Name" : "vresponse3", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "voff3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val_port3","offset": { "type": "dynamic","port_name": "B_val_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v_hit1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ vscheduler_dout sc_in sc_lv 68 signal 0 } 
	{ vscheduler_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ vscheduler_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ vscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ vscheduler_read sc_out sc_logic 1 signal 0 } 
	{ vresponse3_dout sc_in sc_lv 6 signal 1 } 
	{ vresponse3_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ vresponse3_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ vresponse3_empty_n sc_in sc_logic 1 signal 1 } 
	{ vresponse3_read sc_out sc_logic 1 signal 1 } 
	{ voff3_din sc_out sc_lv 128 signal 2 } 
	{ voff3_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ voff3_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ voff3_full_n sc_in sc_logic 1 signal 2 } 
	{ voff3_write sc_out sc_logic 1 signal 2 } 
	{ m_axi_bv3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bv3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bv3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bv3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bv3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bv3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bv3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bv3_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bv3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bv3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bv3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bv3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bv3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bv3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bv3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bv3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bv3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bv3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bv3_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bv3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bv3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bv3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bv3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bv3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bv3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bv3_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ v_req_din sc_out sc_lv 209 signal 5 } 
	{ v_req_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ v_req_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ v_req_full_n sc_in sc_logic 1 signal 5 } 
	{ v_req_write sc_out sc_logic 1 signal 5 } 
	{ v_hit1_din sc_out sc_lv 1 signal 6 } 
	{ v_hit1_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ v_hit1_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ v_hit1_full_n sc_in sc_logic 1 signal 6 } 
	{ v_hit1_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":68, "type": "signal", "bundle":{"name": "vscheduler", "role": "dout" }} , 
 	{ "name": "vscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "num_data_valid" }} , 
 	{ "name": "vscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vscheduler", "role": "fifo_cap" }} , 
 	{ "name": "vscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "empty_n" }} , 
 	{ "name": "vscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vscheduler", "role": "read" }} , 
 	{ "name": "vresponse3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vresponse3", "role": "dout" }} , 
 	{ "name": "vresponse3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse3", "role": "num_data_valid" }} , 
 	{ "name": "vresponse3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vresponse3", "role": "fifo_cap" }} , 
 	{ "name": "vresponse3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "empty_n" }} , 
 	{ "name": "vresponse3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vresponse3", "role": "read" }} , 
 	{ "name": "voff3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff3", "role": "din" }} , 
 	{ "name": "voff3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "num_data_valid" }} , 
 	{ "name": "voff3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "fifo_cap" }} , 
 	{ "name": "voff3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "full_n" }} , 
 	{ "name": "voff3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "write" }} , 
 	{ "name": "m_axi_bv3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bv3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bv3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bv3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWID" }} , 
 	{ "name": "m_axi_bv3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bv3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bv3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bv3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bv3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bv3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bv3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bv3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bv3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bv3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WVALID" }} , 
 	{ "name": "m_axi_bv3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WREADY" }} , 
 	{ "name": "m_axi_bv3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "WDATA" }} , 
 	{ "name": "m_axi_bv3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bv3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WLAST" }} , 
 	{ "name": "m_axi_bv3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WID" }} , 
 	{ "name": "m_axi_bv3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "WUSER" }} , 
 	{ "name": "m_axi_bv3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bv3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bv3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bv3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARID" }} , 
 	{ "name": "m_axi_bv3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bv3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bv3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bv3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bv3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bv3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bv3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bv3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bv3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bv3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RVALID" }} , 
 	{ "name": "m_axi_bv3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RREADY" }} , 
 	{ "name": "m_axi_bv3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "RDATA" }} , 
 	{ "name": "m_axi_bv3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RLAST" }} , 
 	{ "name": "m_axi_bv3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RID" }} , 
 	{ "name": "m_axi_bv3_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv3", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_bv3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "RUSER" }} , 
 	{ "name": "m_axi_bv3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "RRESP" }} , 
 	{ "name": "m_axi_bv3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BVALID" }} , 
 	{ "name": "m_axi_bv3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BREADY" }} , 
 	{ "name": "m_axi_bv3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "BRESP" }} , 
 	{ "name": "m_axi_bv3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BID" }} , 
 	{ "name": "m_axi_bv3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "BUSER" }} , 
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "v_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_req", "role": "din" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "v_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "full_n" }} , 
 	{ "name": "v_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "write" }} , 
 	{ "name": "v_hit1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "din" }} , 
 	{ "name": "v_hit1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit1", "role": "num_data_valid" }} , 
 	{ "name": "v_hit1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "v_hit1", "role": "fifo_cap" }} , 
 	{ "name": "v_hit1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "full_n" }} , 
 	{ "name": "v_hit1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_hit1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "schedule_access_84",
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
			{"Name" : "vscheduler", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vscheduler_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vresponse3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "vresponse3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "voff3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "bv3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "bv3_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "bv3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "off_pointer", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Port" : "v_req", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "v_hit1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "v_hit1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_105_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "schedule_access_84_Pipeline_VITIS_LOOP_112_4",
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
			{"Name" : "bv3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bv3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "ori_request_peID_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_request_brlen_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "voff3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "voff3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln92_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln26", "Type" : "None", "Direction" : "I"},
			{"Name" : "begin_block_idx_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_req", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "v_req_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "curr_request_data_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brlen_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_brid_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_target_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_write_idx_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "curr_request_peID_V_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_schedule_access_84_Pipeline_VITIS_LOOP_112_4_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	schedule_access_84 {
		vscheduler {Type I LastRead 1 FirstWrite -1}
		vresponse3 {Type I LastRead 3 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		bv3 {Type I LastRead 12 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 1}
		v_hit1 {Type O LastRead -1 FirstWrite 4}}
	schedule_access_84_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		bv3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_18 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID_V {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		curr_request_brlen_13 {Type I LastRead 0 FirstWrite -1}
		voff3 {Type O LastRead -1 FirstWrite 3}
		zext_ln92_7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln26 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx_8 {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_data_V_21_out {Type O LastRead -1 FirstWrite 2}
		curr_request_brlen_12_out {Type O LastRead -1 FirstWrite 1}
		curr_request_brid_12_out {Type O LastRead -1 FirstWrite 1}
		curr_request_target_V_18_out {Type O LastRead -1 FirstWrite 3}
		curr_request_write_idx_V_21_out {Type O LastRead -1 FirstWrite 1}
		curr_request_peID_V_21_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vscheduler { ap_fifo {  { vscheduler_dout fifo_port_we 0 68 }  { vscheduler_num_data_valid fifo_status_num_data_valid 0 7 }  { vscheduler_fifo_cap fifo_update 0 7 }  { vscheduler_empty_n fifo_status 0 1 }  { vscheduler_read fifo_data 1 1 } } }
	vresponse3 { ap_fifo {  { vresponse3_dout fifo_port_we 0 6 }  { vresponse3_num_data_valid fifo_status_num_data_valid 0 7 }  { vresponse3_fifo_cap fifo_update 0 7 }  { vresponse3_empty_n fifo_status 0 1 }  { vresponse3_read fifo_data 1 1 } } }
	voff3 { ap_fifo {  { voff3_din fifo_port_we 1 128 }  { voff3_num_data_valid fifo_status_num_data_valid 0 7 }  { voff3_fifo_cap fifo_update 0 7 }  { voff3_full_n fifo_status 0 1 }  { voff3_write fifo_data 1 1 } } }
	 { m_axi {  { m_axi_bv3_AWVALID VALID 1 1 }  { m_axi_bv3_AWREADY READY 0 1 }  { m_axi_bv3_AWADDR ADDR 1 64 }  { m_axi_bv3_AWID ID 1 1 }  { m_axi_bv3_AWLEN SIZE 1 32 }  { m_axi_bv3_AWSIZE BURST 1 3 }  { m_axi_bv3_AWBURST LOCK 1 2 }  { m_axi_bv3_AWLOCK CACHE 1 2 }  { m_axi_bv3_AWCACHE PROT 1 4 }  { m_axi_bv3_AWPROT QOS 1 3 }  { m_axi_bv3_AWQOS REGION 1 4 }  { m_axi_bv3_AWREGION USER 1 4 }  { m_axi_bv3_AWUSER DATA 1 1 }  { m_axi_bv3_WVALID VALID 1 1 }  { m_axi_bv3_WREADY READY 0 1 }  { m_axi_bv3_WDATA FIFONUM 1 128 }  { m_axi_bv3_WSTRB STRB 1 16 }  { m_axi_bv3_WLAST LAST 1 1 }  { m_axi_bv3_WID ID 1 1 }  { m_axi_bv3_WUSER DATA 1 1 }  { m_axi_bv3_ARVALID VALID 1 1 }  { m_axi_bv3_ARREADY READY 0 1 }  { m_axi_bv3_ARADDR ADDR 1 64 }  { m_axi_bv3_ARID ID 1 1 }  { m_axi_bv3_ARLEN SIZE 1 32 }  { m_axi_bv3_ARSIZE BURST 1 3 }  { m_axi_bv3_ARBURST LOCK 1 2 }  { m_axi_bv3_ARLOCK CACHE 1 2 }  { m_axi_bv3_ARCACHE PROT 1 4 }  { m_axi_bv3_ARPROT QOS 1 3 }  { m_axi_bv3_ARQOS REGION 1 4 }  { m_axi_bv3_ARREGION USER 1 4 }  { m_axi_bv3_ARUSER DATA 1 1 }  { m_axi_bv3_RVALID VALID 0 1 }  { m_axi_bv3_RREADY READY 1 1 }  { m_axi_bv3_RDATA FIFONUM 0 128 }  { m_axi_bv3_RLAST LAST 0 1 }  { m_axi_bv3_RID ID 0 1 }  { m_axi_bv3_RFIFONUM LEN 0 9 }  { m_axi_bv3_RUSER DATA 0 1 }  { m_axi_bv3_RRESP RESP 0 2 }  { m_axi_bv3_BVALID VALID 0 1 }  { m_axi_bv3_BREADY READY 1 1 }  { m_axi_bv3_BRESP RESP 0 2 }  { m_axi_bv3_BID ID 0 1 }  { m_axi_bv3_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	v_req { ap_fifo {  { v_req_din fifo_port_we 1 209 }  { v_req_num_data_valid fifo_status_num_data_valid 0 7 }  { v_req_fifo_cap fifo_update 0 7 }  { v_req_full_n fifo_status 0 1 }  { v_req_write fifo_data 1 1 } } }
	v_hit1 { ap_fifo {  { v_hit1_din fifo_port_we 1 1 }  { v_hit1_num_data_valid fifo_status_num_data_valid 0 5 }  { v_hit1_fifo_cap fifo_update 0 5 }  { v_hit1_full_n fifo_status 0 1 }  { v_hit1_write fifo_data 1 1 } } }
}
