set moduleName rschedule_access_96
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
set C_modelName {rschedule_access.96}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rscheduler int 398 regular {fifo 0 volatile }  }
	{ rresponse2 int 168 regular {fifo 0 volatile }  }
	{ roff int 160 regular {fifo 1 volatile }  }
	{ brcsr2 int 128 regular {axi_master 0}  }
	{ off_pointer int 64 regular  }
	{ r_req int 398 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rscheduler", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rresponse2", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "roff", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY"} , 
 	{ "Name" : "brcsr2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_rcsr2","offset": { "type": "dynamic","port_name": "B_rcsr2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "off_pointer", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "r_req", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rscheduler_dout sc_in sc_lv 398 signal 0 } 
	{ rscheduler_empty_n sc_in sc_logic 1 signal 0 } 
	{ rscheduler_read sc_out sc_logic 1 signal 0 } 
	{ rscheduler_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ rscheduler_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ rresponse2_dout sc_in sc_lv 168 signal 1 } 
	{ rresponse2_empty_n sc_in sc_logic 1 signal 1 } 
	{ rresponse2_read sc_out sc_logic 1 signal 1 } 
	{ rresponse2_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ rresponse2_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ roff_din sc_out sc_lv 160 signal 2 } 
	{ roff_full_n sc_in sc_logic 1 signal 2 } 
	{ roff_write sc_out sc_logic 1 signal 2 } 
	{ roff_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ roff_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ m_axi_brcsr2_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr2_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_brcsr2_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_brcsr2_0_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_brcsr2_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_brcsr2_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_brcsr2_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_brcsr2_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_brcsr2_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_brcsr2_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_brcsr2_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr2_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_brcsr2_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_brcsr2_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ off_pointer sc_in sc_lv 64 signal 4 } 
	{ r_req_din sc_out sc_lv 398 signal 5 } 
	{ r_req_full_n sc_in sc_logic 1 signal 5 } 
	{ r_req_write sc_out sc_logic 1 signal 5 } 
	{ r_req_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ r_req_fifo_cap sc_in sc_lv 3 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rscheduler_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rscheduler", "role": "dout" }} , 
 	{ "name": "rscheduler_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "empty_n" }} , 
 	{ "name": "rscheduler_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rscheduler", "role": "read" }} , 
 	{ "name": "rscheduler_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "num_data_valid" }} , 
 	{ "name": "rscheduler_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rscheduler", "role": "fifo_cap" }} , 
 	{ "name": "rresponse2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse2", "role": "dout" }} , 
 	{ "name": "rresponse2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "empty_n" }} , 
 	{ "name": "rresponse2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse2", "role": "read" }} , 
 	{ "name": "rresponse2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "num_data_valid" }} , 
 	{ "name": "rresponse2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "rresponse2", "role": "fifo_cap" }} , 
 	{ "name": "roff_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "roff", "role": "din" }} , 
 	{ "name": "roff_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "full_n" }} , 
 	{ "name": "roff_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roff", "role": "write" }} , 
 	{ "name": "roff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "num_data_valid" }} , 
 	{ "name": "roff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roff", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_brcsr2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_brcsr2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_brcsr2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_brcsr2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_brcsr2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_brcsr2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_brcsr2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_brcsr2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_brcsr2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_brcsr2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_brcsr2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_brcsr2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_brcsr2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_brcsr2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_brcsr2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_brcsr2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_brcsr2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_brcsr2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_brcsr2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WID" }} , 
 	{ "name": "m_axi_brcsr2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_brcsr2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_brcsr2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_brcsr2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_brcsr2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_brcsr2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_brcsr2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_brcsr2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_brcsr2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_brcsr2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_brcsr2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_brcsr2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_brcsr2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_brcsr2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_brcsr2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_brcsr2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_brcsr2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_brcsr2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_brcsr2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RID" }} , 
 	{ "name": "m_axi_brcsr2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_brcsr2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_brcsr2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_brcsr2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_brcsr2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_brcsr2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_BID" }} , 
 	{ "name": "m_axi_brcsr2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr2", "role": "0_BUSER" }} , 
 	{ "name": "off_pointer", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "off_pointer", "role": "default" }} , 
 	{ "name": "r_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "r_req", "role": "din" }} , 
 	{ "name": "r_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "full_n" }} , 
 	{ "name": "r_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_req", "role": "write" }} , 
 	{ "name": "r_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "num_data_valid" }} , 
 	{ "name": "r_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r_req", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	rschedule_access_96 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse2 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		brcsr2 {Type I LastRead 3 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_96_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		brcsr2 {Type I LastRead 1 FirstWrite -1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rscheduler { ap_fifo {  { rscheduler_dout fifo_data_out 0 398 }  { rscheduler_empty_n fifo_status_empty 0 1 }  { rscheduler_read fifo_data_in 1 1 }  { rscheduler_num_data_valid fifo_update 0 5 }  { rscheduler_fifo_cap fifo_data 0 5 } } }
	rresponse2 { ap_fifo {  { rresponse2_dout fifo_data_out 0 168 }  { rresponse2_empty_n fifo_status_empty 0 1 }  { rresponse2_read fifo_data_in 1 1 }  { rresponse2_num_data_valid fifo_update 0 5 }  { rresponse2_fifo_cap fifo_data 0 5 } } }
	roff { ap_fifo {  { roff_din fifo_data_out 1 160 }  { roff_full_n fifo_status_empty 0 1 }  { roff_write fifo_data_in 1 1 }  { roff_num_data_valid fifo_update 0 4 }  { roff_fifo_cap fifo_data 0 4 } } }
	 { m_axi {  { m_axi_brcsr2_0_AWVALID VALID 1 1 }  { m_axi_brcsr2_0_AWREADY READY 0 1 }  { m_axi_brcsr2_0_AWADDR ADDR 1 64 }  { m_axi_brcsr2_0_AWID ID 1 1 }  { m_axi_brcsr2_0_AWLEN SIZE 1 32 }  { m_axi_brcsr2_0_AWSIZE BURST 1 3 }  { m_axi_brcsr2_0_AWBURST LOCK 1 2 }  { m_axi_brcsr2_0_AWLOCK CACHE 1 2 }  { m_axi_brcsr2_0_AWCACHE PROT 1 4 }  { m_axi_brcsr2_0_AWPROT QOS 1 3 }  { m_axi_brcsr2_0_AWQOS REGION 1 4 }  { m_axi_brcsr2_0_AWREGION USER 1 4 }  { m_axi_brcsr2_0_AWUSER DATA 1 1 }  { m_axi_brcsr2_0_WVALID VALID 1 1 }  { m_axi_brcsr2_0_WREADY READY 0 1 }  { m_axi_brcsr2_0_WDATA FIFONUM 1 128 }  { m_axi_brcsr2_0_WSTRB STRB 1 16 }  { m_axi_brcsr2_0_WLAST LAST 1 1 }  { m_axi_brcsr2_0_WID ID 1 1 }  { m_axi_brcsr2_0_WUSER DATA 1 1 }  { m_axi_brcsr2_0_ARVALID VALID 1 1 }  { m_axi_brcsr2_0_ARREADY READY 0 1 }  { m_axi_brcsr2_0_ARADDR ADDR 1 64 }  { m_axi_brcsr2_0_ARID ID 1 1 }  { m_axi_brcsr2_0_ARLEN SIZE 1 32 }  { m_axi_brcsr2_0_ARSIZE BURST 1 3 }  { m_axi_brcsr2_0_ARBURST LOCK 1 2 }  { m_axi_brcsr2_0_ARLOCK CACHE 1 2 }  { m_axi_brcsr2_0_ARCACHE PROT 1 4 }  { m_axi_brcsr2_0_ARPROT QOS 1 3 }  { m_axi_brcsr2_0_ARQOS REGION 1 4 }  { m_axi_brcsr2_0_ARREGION USER 1 4 }  { m_axi_brcsr2_0_ARUSER DATA 1 1 }  { m_axi_brcsr2_0_RVALID VALID 0 1 }  { m_axi_brcsr2_0_RREADY READY 1 1 }  { m_axi_brcsr2_0_RDATA FIFONUM 0 128 }  { m_axi_brcsr2_0_RLAST LAST 0 1 }  { m_axi_brcsr2_0_RID ID 0 1 }  { m_axi_brcsr2_0_RFIFONUM LEN 0 9 }  { m_axi_brcsr2_0_RUSER DATA 0 1 }  { m_axi_brcsr2_0_RRESP RESP 0 2 }  { m_axi_brcsr2_0_BVALID VALID 0 1 }  { m_axi_brcsr2_0_BREADY READY 1 1 }  { m_axi_brcsr2_0_BRESP RESP 0 2 }  { m_axi_brcsr2_0_BID ID 0 1 }  { m_axi_brcsr2_0_BUSER DATA 0 1 } } }
	off_pointer { ap_none {  { off_pointer in_data 0 64 } } }
	r_req { ap_fifo {  { r_req_din fifo_data_out 1 398 }  { r_req_full_n fifo_status_empty 0 1 }  { r_req_write fifo_data_in 1 1 }  { r_req_num_data_valid fifo_update 0 3 }  { r_req_fifo_cap fifo_data 0 3 } } }
}
