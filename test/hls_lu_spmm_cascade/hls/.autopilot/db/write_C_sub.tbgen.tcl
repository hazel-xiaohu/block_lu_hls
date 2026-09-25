set moduleName write_C_sub
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
set C_modelName {write_C_sub}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ final_merger_3 int 66 regular {fifo 0 volatile }  }
	{ crcsr int 32 regular {axi_master 0}  }
	{ C_rcsr int 64 regular  }
	{ ccid int 32 regular {axi_master 0}  }
	{ C_cid int 64 regular  }
	{ cval int 32 regular {axi_master 2}  }
	{ C_val int 64 regular  }
	{ fnum int 32 regular {pointer 1}  }
	{ final_len_1 int 32 regular {fifo 0 volatile }  }
	{ final_len_2 int 32 regular {fifo 0 volatile }  }
	{ crum int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "final_merger_3", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "crcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "C_rcsr","offset": { "type": "dynamic","port_name": "C_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "C_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ccid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "C_cid","offset": { "type": "dynamic","port_name": "C_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "C_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "C_val","offset": { "type": "dynamic","port_name": "C_val","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "C_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fnum", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_len_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "crum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 166
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ final_merger_3_dout sc_in sc_lv 66 signal 0 } 
	{ final_merger_3_empty_n sc_in sc_logic 1 signal 0 } 
	{ final_merger_3_read sc_out sc_logic 1 signal 0 } 
	{ final_merger_3_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ final_merger_3_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ m_axi_crcsr_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_crcsr_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_crcsr_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_crcsr_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_crcsr_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_crcsr_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ C_rcsr sc_in sc_lv 64 signal 2 } 
	{ m_axi_ccid_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ccid_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ccid_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_ccid_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_ccid_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ccid_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ C_cid sc_in sc_lv 64 signal 4 } 
	{ m_axi_cval_0_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_cval_0_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_0_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_0_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_0_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_0_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_0_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_0_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_cval_0_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_0_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_0_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_0_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_0_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_0_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_0_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_0_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_cval_0_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_0_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_cval_0_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_0_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_cval_0_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_0_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_0_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_cval_0_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_0_BUSER sc_in sc_lv 1 signal 5 } 
	{ C_val sc_in sc_lv 64 signal 6 } 
	{ fnum sc_out sc_lv 32 signal 7 } 
	{ fnum_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ final_len_1_dout sc_in sc_lv 32 signal 8 } 
	{ final_len_1_empty_n sc_in sc_logic 1 signal 8 } 
	{ final_len_1_read sc_out sc_logic 1 signal 8 } 
	{ final_len_1_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ final_len_1_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ final_len_2_dout sc_in sc_lv 32 signal 9 } 
	{ final_len_2_empty_n sc_in sc_logic 1 signal 9 } 
	{ final_len_2_read sc_out sc_logic 1 signal 9 } 
	{ final_len_2_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ final_len_2_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ crum sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "final_merger_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "final_merger_3", "role": "dout" }} , 
 	{ "name": "final_merger_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "empty_n" }} , 
 	{ "name": "final_merger_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "read" }} , 
 	{ "name": "final_merger_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_crcsr_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_crcsr_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_crcsr_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_crcsr_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWID" }} , 
 	{ "name": "m_axi_crcsr_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_crcsr_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_crcsr_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_crcsr_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_crcsr_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_crcsr_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_crcsr_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_crcsr_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_crcsr_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_crcsr_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_crcsr_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_crcsr_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_crcsr_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_crcsr_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_crcsr_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WID" }} , 
 	{ "name": "m_axi_crcsr_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_crcsr_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_crcsr_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_crcsr_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_crcsr_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARID" }} , 
 	{ "name": "m_axi_crcsr_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_crcsr_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_crcsr_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_crcsr_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_crcsr_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_crcsr_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_crcsr_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_crcsr_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_crcsr_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_crcsr_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_crcsr_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_crcsr_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_crcsr_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_crcsr_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RID" }} , 
 	{ "name": "m_axi_crcsr_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_crcsr_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_crcsr_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_crcsr_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_crcsr_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_crcsr_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_crcsr_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_BID" }} , 
 	{ "name": "m_axi_crcsr_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "0_BUSER" }} , 
 	{ "name": "C_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_rcsr", "role": "default" }} , 
 	{ "name": "m_axi_ccid_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_ccid_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_ccid_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_ccid_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWID" }} , 
 	{ "name": "m_axi_ccid_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_ccid_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_ccid_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_ccid_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_ccid_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_ccid_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_ccid_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_ccid_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_ccid_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_ccid_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_ccid_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_ccid_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_ccid_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_ccid_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_ccid_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_WID" }} , 
 	{ "name": "m_axi_ccid_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_ccid_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_ccid_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_ccid_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_ccid_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARID" }} , 
 	{ "name": "m_axi_ccid_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_ccid_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_ccid_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_ccid_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_ccid_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_ccid_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_ccid_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_ccid_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_ccid_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_ccid_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_ccid_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_ccid_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_ccid_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_ccid_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_RID" }} , 
 	{ "name": "m_axi_ccid_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ccid", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_ccid_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_ccid_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_ccid_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_ccid_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_ccid_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_ccid_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_BID" }} , 
 	{ "name": "m_axi_ccid_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "0_BUSER" }} , 
 	{ "name": "C_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_cid", "role": "default" }} , 
 	{ "name": "m_axi_cval_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_cval_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_cval_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_cval_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_AWID" }} , 
 	{ "name": "m_axi_cval_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_cval_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_cval_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_cval_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_cval_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_cval_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_cval_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_cval_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_cval_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_cval_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_cval_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_cval_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_cval_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_cval_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_cval_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_WID" }} , 
 	{ "name": "m_axi_cval_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_cval_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_cval_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_cval_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_cval_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_ARID" }} , 
 	{ "name": "m_axi_cval_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_cval_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_cval_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_cval_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_cval_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_cval_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_cval_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_cval_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_cval_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_cval_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_cval_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_cval_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_cval_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_cval_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_RID" }} , 
 	{ "name": "m_axi_cval_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cval", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_cval_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_cval_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_cval_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_cval_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_cval_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_cval_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_BID" }} , 
 	{ "name": "m_axi_cval_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "0_BUSER" }} , 
 	{ "name": "C_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_val", "role": "default" }} , 
 	{ "name": "fnum", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fnum", "role": "default" }} , 
 	{ "name": "fnum_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fnum", "role": "ap_vld" }} , 
 	{ "name": "final_len_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_1", "role": "dout" }} , 
 	{ "name": "final_len_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_1", "role": "empty_n" }} , 
 	{ "name": "final_len_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_1", "role": "read" }} , 
 	{ "name": "final_len_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_1", "role": "num_data_valid" }} , 
 	{ "name": "final_len_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_1", "role": "fifo_cap" }} , 
 	{ "name": "final_len_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_2", "role": "dout" }} , 
 	{ "name": "final_len_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_2", "role": "empty_n" }} , 
 	{ "name": "final_len_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_2", "role": "read" }} , 
 	{ "name": "final_len_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_2", "role": "num_data_valid" }} , 
 	{ "name": "final_len_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "final_len_2", "role": "fifo_cap" }} , 
 	{ "name": "crum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crum", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	write_C_sub {
		final_merger_3 {Type I LastRead 12 FirstWrite -1}
		crcsr {Type I LastRead 11 FirstWrite -1}
		C_rcsr {Type I LastRead 0 FirstWrite -1}
		ccid {Type I LastRead 32 FirstWrite -1}
		C_cid {Type I LastRead 0 FirstWrite -1}
		cval {Type IO LastRead 52 FirstWrite 51}
		C_val {Type I LastRead 0 FirstWrite -1}
		fnum {Type O LastRead -1 FirstWrite 10}
		final_len_1 {Type I LastRead 10 FirstWrite -1}
		final_len_2 {Type I LastRead 10 FirstWrite -1}
		crum {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	final_merger_3 { ap_fifo {  { final_merger_3_dout fifo_data_out 0 66 }  { final_merger_3_empty_n fifo_status_empty 0 1 }  { final_merger_3_read fifo_data_in 1 1 }  { final_merger_3_num_data_valid fifo_update 0 11 }  { final_merger_3_fifo_cap fifo_data 0 11 } } }
	 { m_axi {  { m_axi_crcsr_0_AWVALID VALID 1 1 }  { m_axi_crcsr_0_AWREADY READY 0 1 }  { m_axi_crcsr_0_AWADDR ADDR 1 64 }  { m_axi_crcsr_0_AWID ID 1 1 }  { m_axi_crcsr_0_AWLEN SIZE 1 32 }  { m_axi_crcsr_0_AWSIZE BURST 1 3 }  { m_axi_crcsr_0_AWBURST LOCK 1 2 }  { m_axi_crcsr_0_AWLOCK CACHE 1 2 }  { m_axi_crcsr_0_AWCACHE PROT 1 4 }  { m_axi_crcsr_0_AWPROT QOS 1 3 }  { m_axi_crcsr_0_AWQOS REGION 1 4 }  { m_axi_crcsr_0_AWREGION USER 1 4 }  { m_axi_crcsr_0_AWUSER DATA 1 1 }  { m_axi_crcsr_0_WVALID VALID 1 1 }  { m_axi_crcsr_0_WREADY READY 0 1 }  { m_axi_crcsr_0_WDATA FIFONUM 1 32 }  { m_axi_crcsr_0_WSTRB STRB 1 4 }  { m_axi_crcsr_0_WLAST LAST 1 1 }  { m_axi_crcsr_0_WID ID 1 1 }  { m_axi_crcsr_0_WUSER DATA 1 1 }  { m_axi_crcsr_0_ARVALID VALID 1 1 }  { m_axi_crcsr_0_ARREADY READY 0 1 }  { m_axi_crcsr_0_ARADDR ADDR 1 64 }  { m_axi_crcsr_0_ARID ID 1 1 }  { m_axi_crcsr_0_ARLEN SIZE 1 32 }  { m_axi_crcsr_0_ARSIZE BURST 1 3 }  { m_axi_crcsr_0_ARBURST LOCK 1 2 }  { m_axi_crcsr_0_ARLOCK CACHE 1 2 }  { m_axi_crcsr_0_ARCACHE PROT 1 4 }  { m_axi_crcsr_0_ARPROT QOS 1 3 }  { m_axi_crcsr_0_ARQOS REGION 1 4 }  { m_axi_crcsr_0_ARREGION USER 1 4 }  { m_axi_crcsr_0_ARUSER DATA 1 1 }  { m_axi_crcsr_0_RVALID VALID 0 1 }  { m_axi_crcsr_0_RREADY READY 1 1 }  { m_axi_crcsr_0_RDATA FIFONUM 0 32 }  { m_axi_crcsr_0_RLAST LAST 0 1 }  { m_axi_crcsr_0_RID ID 0 1 }  { m_axi_crcsr_0_RFIFONUM LEN 0 9 }  { m_axi_crcsr_0_RUSER DATA 0 1 }  { m_axi_crcsr_0_RRESP RESP 0 2 }  { m_axi_crcsr_0_BVALID VALID 0 1 }  { m_axi_crcsr_0_BREADY READY 1 1 }  { m_axi_crcsr_0_BRESP RESP 0 2 }  { m_axi_crcsr_0_BID ID 0 1 }  { m_axi_crcsr_0_BUSER DATA 0 1 } } }
	C_rcsr { ap_none {  { C_rcsr in_data 0 64 } } }
	 { m_axi {  { m_axi_ccid_0_AWVALID VALID 1 1 }  { m_axi_ccid_0_AWREADY READY 0 1 }  { m_axi_ccid_0_AWADDR ADDR 1 64 }  { m_axi_ccid_0_AWID ID 1 1 }  { m_axi_ccid_0_AWLEN SIZE 1 32 }  { m_axi_ccid_0_AWSIZE BURST 1 3 }  { m_axi_ccid_0_AWBURST LOCK 1 2 }  { m_axi_ccid_0_AWLOCK CACHE 1 2 }  { m_axi_ccid_0_AWCACHE PROT 1 4 }  { m_axi_ccid_0_AWPROT QOS 1 3 }  { m_axi_ccid_0_AWQOS REGION 1 4 }  { m_axi_ccid_0_AWREGION USER 1 4 }  { m_axi_ccid_0_AWUSER DATA 1 1 }  { m_axi_ccid_0_WVALID VALID 1 1 }  { m_axi_ccid_0_WREADY READY 0 1 }  { m_axi_ccid_0_WDATA FIFONUM 1 32 }  { m_axi_ccid_0_WSTRB STRB 1 4 }  { m_axi_ccid_0_WLAST LAST 1 1 }  { m_axi_ccid_0_WID ID 1 1 }  { m_axi_ccid_0_WUSER DATA 1 1 }  { m_axi_ccid_0_ARVALID VALID 1 1 }  { m_axi_ccid_0_ARREADY READY 0 1 }  { m_axi_ccid_0_ARADDR ADDR 1 64 }  { m_axi_ccid_0_ARID ID 1 1 }  { m_axi_ccid_0_ARLEN SIZE 1 32 }  { m_axi_ccid_0_ARSIZE BURST 1 3 }  { m_axi_ccid_0_ARBURST LOCK 1 2 }  { m_axi_ccid_0_ARLOCK CACHE 1 2 }  { m_axi_ccid_0_ARCACHE PROT 1 4 }  { m_axi_ccid_0_ARPROT QOS 1 3 }  { m_axi_ccid_0_ARQOS REGION 1 4 }  { m_axi_ccid_0_ARREGION USER 1 4 }  { m_axi_ccid_0_ARUSER DATA 1 1 }  { m_axi_ccid_0_RVALID VALID 0 1 }  { m_axi_ccid_0_RREADY READY 1 1 }  { m_axi_ccid_0_RDATA FIFONUM 0 32 }  { m_axi_ccid_0_RLAST LAST 0 1 }  { m_axi_ccid_0_RID ID 0 1 }  { m_axi_ccid_0_RFIFONUM LEN 0 9 }  { m_axi_ccid_0_RUSER DATA 0 1 }  { m_axi_ccid_0_RRESP RESP 0 2 }  { m_axi_ccid_0_BVALID VALID 0 1 }  { m_axi_ccid_0_BREADY READY 1 1 }  { m_axi_ccid_0_BRESP RESP 0 2 }  { m_axi_ccid_0_BID ID 0 1 }  { m_axi_ccid_0_BUSER DATA 0 1 } } }
	C_cid { ap_none {  { C_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_cval_0_AWVALID VALID 1 1 }  { m_axi_cval_0_AWREADY READY 0 1 }  { m_axi_cval_0_AWADDR ADDR 1 64 }  { m_axi_cval_0_AWID ID 1 1 }  { m_axi_cval_0_AWLEN SIZE 1 32 }  { m_axi_cval_0_AWSIZE BURST 1 3 }  { m_axi_cval_0_AWBURST LOCK 1 2 }  { m_axi_cval_0_AWLOCK CACHE 1 2 }  { m_axi_cval_0_AWCACHE PROT 1 4 }  { m_axi_cval_0_AWPROT QOS 1 3 }  { m_axi_cval_0_AWQOS REGION 1 4 }  { m_axi_cval_0_AWREGION USER 1 4 }  { m_axi_cval_0_AWUSER DATA 1 1 }  { m_axi_cval_0_WVALID VALID 1 1 }  { m_axi_cval_0_WREADY READY 0 1 }  { m_axi_cval_0_WDATA FIFONUM 1 32 }  { m_axi_cval_0_WSTRB STRB 1 4 }  { m_axi_cval_0_WLAST LAST 1 1 }  { m_axi_cval_0_WID ID 1 1 }  { m_axi_cval_0_WUSER DATA 1 1 }  { m_axi_cval_0_ARVALID VALID 1 1 }  { m_axi_cval_0_ARREADY READY 0 1 }  { m_axi_cval_0_ARADDR ADDR 1 64 }  { m_axi_cval_0_ARID ID 1 1 }  { m_axi_cval_0_ARLEN SIZE 1 32 }  { m_axi_cval_0_ARSIZE BURST 1 3 }  { m_axi_cval_0_ARBURST LOCK 1 2 }  { m_axi_cval_0_ARLOCK CACHE 1 2 }  { m_axi_cval_0_ARCACHE PROT 1 4 }  { m_axi_cval_0_ARPROT QOS 1 3 }  { m_axi_cval_0_ARQOS REGION 1 4 }  { m_axi_cval_0_ARREGION USER 1 4 }  { m_axi_cval_0_ARUSER DATA 1 1 }  { m_axi_cval_0_RVALID VALID 0 1 }  { m_axi_cval_0_RREADY READY 1 1 }  { m_axi_cval_0_RDATA FIFONUM 0 32 }  { m_axi_cval_0_RLAST LAST 0 1 }  { m_axi_cval_0_RID ID 0 1 }  { m_axi_cval_0_RFIFONUM LEN 0 9 }  { m_axi_cval_0_RUSER DATA 0 1 }  { m_axi_cval_0_RRESP RESP 0 2 }  { m_axi_cval_0_BVALID VALID 0 1 }  { m_axi_cval_0_BREADY READY 1 1 }  { m_axi_cval_0_BRESP RESP 0 2 }  { m_axi_cval_0_BID ID 0 1 }  { m_axi_cval_0_BUSER DATA 0 1 } } }
	C_val { ap_none {  { C_val in_data 0 64 } } }
	fnum { ap_vld {  { fnum out_data 1 32 }  { fnum_ap_vld out_vld 1 1 } } }
	final_len_1 { ap_fifo {  { final_len_1_dout fifo_data_out 0 32 }  { final_len_1_empty_n fifo_status_empty 0 1 }  { final_len_1_read fifo_data_in 1 1 }  { final_len_1_num_data_valid fifo_update 0 5 }  { final_len_1_fifo_cap fifo_data 0 5 } } }
	final_len_2 { ap_fifo {  { final_len_2_dout fifo_data_out 0 32 }  { final_len_2_empty_n fifo_status_empty 0 1 }  { final_len_2_read fifo_data_in 1 1 }  { final_len_2_num_data_valid fifo_update 0 5 }  { final_len_2_fifo_cap fifo_data 0 5 } } }
	crum { ap_none {  { crum in_data 0 32 } } }
}
