set moduleName write_C_sub
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
set C_modelName {write_C_sub}
set C_modelType { void 0 }
set C_modelArgList {
	{ final_merger_3 int 66 regular {fifo 0 volatile }  }
	{ crcsr int 32 regular {axi_master 0}  }
	{ C_rcsr int 64 regular  }
	{ ccid int 32 regular {axi_master 0}  }
	{ C_cid int 64 regular  }
	{ cval int 32 regular {axi_master 2}  }
	{ C_val int 64 regular  }
	{ fnum int 32 regular {pointer 1}  }
	{ final_len_126 int 32 regular {fifo 0 volatile }  }
	{ final_len_227 int 32 regular {fifo 0 volatile }  }
	{ crum int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "final_merger_3", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "crcsr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "C_rcsr","offset": { "type": "dynamic","port_name": "C_rcsr","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "C_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ccid", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "C_cid","offset": { "type": "dynamic","port_name": "C_cid","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "C_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cval", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "C_val","offset": { "type": "dynamic","port_name": "C_val","bundle": "control"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "C_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fnum", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_len_126", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_len_227", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
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
	{ final_merger_3_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ final_merger_3_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ final_merger_3_empty_n sc_in sc_logic 1 signal 0 } 
	{ final_merger_3_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_crcsr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_crcsr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_crcsr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_crcsr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_crcsr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_crcsr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_crcsr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_crcsr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_crcsr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_crcsr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_crcsr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_crcsr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_crcsr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_crcsr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_crcsr_BUSER sc_in sc_lv 1 signal 1 } 
	{ C_rcsr sc_in sc_lv 64 signal 2 } 
	{ m_axi_ccid_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ccid_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ccid_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ccid_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ccid_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ccid_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ccid_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ccid_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_ccid_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_ccid_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ccid_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ccid_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ccid_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ccid_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ccid_BUSER sc_in sc_lv 1 signal 3 } 
	{ C_cid sc_in sc_lv 64 signal 4 } 
	{ m_axi_cval_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_cval_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_cval_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_cval_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_cval_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_cval_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_cval_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_cval_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_cval_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_cval_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_cval_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_cval_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_cval_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_cval_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_cval_BUSER sc_in sc_lv 1 signal 5 } 
	{ C_val sc_in sc_lv 64 signal 6 } 
	{ fnum sc_out sc_lv 32 signal 7 } 
	{ fnum_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ final_len_126_dout sc_in sc_lv 32 signal 8 } 
	{ final_len_126_num_data_valid sc_in sc_lv 13 signal 8 } 
	{ final_len_126_fifo_cap sc_in sc_lv 13 signal 8 } 
	{ final_len_126_empty_n sc_in sc_logic 1 signal 8 } 
	{ final_len_126_read sc_out sc_logic 1 signal 8 } 
	{ final_len_227_dout sc_in sc_lv 32 signal 9 } 
	{ final_len_227_num_data_valid sc_in sc_lv 13 signal 9 } 
	{ final_len_227_fifo_cap sc_in sc_lv 13 signal 9 } 
	{ final_len_227_empty_n sc_in sc_logic 1 signal 9 } 
	{ final_len_227_read sc_out sc_logic 1 signal 9 } 
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
 	{ "name": "final_merger_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "num_data_valid" }} , 
 	{ "name": "final_merger_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "final_merger_3", "role": "fifo_cap" }} , 
 	{ "name": "final_merger_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "empty_n" }} , 
 	{ "name": "final_merger_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_merger_3", "role": "read" }} , 
 	{ "name": "m_axi_crcsr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_crcsr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_crcsr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_crcsr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWID" }} , 
 	{ "name": "m_axi_crcsr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_crcsr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_crcsr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_crcsr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_crcsr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_crcsr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_crcsr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_crcsr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_crcsr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_crcsr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WVALID" }} , 
 	{ "name": "m_axi_crcsr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WREADY" }} , 
 	{ "name": "m_axi_crcsr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "WDATA" }} , 
 	{ "name": "m_axi_crcsr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_crcsr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WLAST" }} , 
 	{ "name": "m_axi_crcsr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WID" }} , 
 	{ "name": "m_axi_crcsr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "WUSER" }} , 
 	{ "name": "m_axi_crcsr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_crcsr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_crcsr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "crcsr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_crcsr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARID" }} , 
 	{ "name": "m_axi_crcsr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_crcsr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_crcsr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_crcsr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_crcsr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_crcsr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crcsr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_crcsr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_crcsr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "crcsr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_crcsr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_crcsr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RVALID" }} , 
 	{ "name": "m_axi_crcsr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RREADY" }} , 
 	{ "name": "m_axi_crcsr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crcsr", "role": "RDATA" }} , 
 	{ "name": "m_axi_crcsr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RLAST" }} , 
 	{ "name": "m_axi_crcsr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RID" }} , 
 	{ "name": "m_axi_crcsr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "crcsr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_crcsr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "RUSER" }} , 
 	{ "name": "m_axi_crcsr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "RRESP" }} , 
 	{ "name": "m_axi_crcsr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BVALID" }} , 
 	{ "name": "m_axi_crcsr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BREADY" }} , 
 	{ "name": "m_axi_crcsr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "crcsr", "role": "BRESP" }} , 
 	{ "name": "m_axi_crcsr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BID" }} , 
 	{ "name": "m_axi_crcsr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "crcsr", "role": "BUSER" }} , 
 	{ "name": "C_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_rcsr", "role": "default" }} , 
 	{ "name": "m_axi_ccid_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ccid_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ccid_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ccid_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWID" }} , 
 	{ "name": "m_axi_ccid_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ccid_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ccid_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ccid_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ccid_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ccid_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ccid_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ccid_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ccid_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ccid_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WVALID" }} , 
 	{ "name": "m_axi_ccid_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WREADY" }} , 
 	{ "name": "m_axi_ccid_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "WDATA" }} , 
 	{ "name": "m_axi_ccid_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ccid_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WLAST" }} , 
 	{ "name": "m_axi_ccid_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WID" }} , 
 	{ "name": "m_axi_ccid_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "WUSER" }} , 
 	{ "name": "m_axi_ccid_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ccid_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ccid_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ccid", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ccid_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARID" }} , 
 	{ "name": "m_axi_ccid_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ccid_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ccid_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ccid_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ccid_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ccid_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ccid", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ccid_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ccid_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ccid", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ccid_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ccid_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RVALID" }} , 
 	{ "name": "m_axi_ccid_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RREADY" }} , 
 	{ "name": "m_axi_ccid_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ccid", "role": "RDATA" }} , 
 	{ "name": "m_axi_ccid_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RLAST" }} , 
 	{ "name": "m_axi_ccid_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RID" }} , 
 	{ "name": "m_axi_ccid_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ccid", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ccid_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "RUSER" }} , 
 	{ "name": "m_axi_ccid_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "RRESP" }} , 
 	{ "name": "m_axi_ccid_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BVALID" }} , 
 	{ "name": "m_axi_ccid_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BREADY" }} , 
 	{ "name": "m_axi_ccid_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ccid", "role": "BRESP" }} , 
 	{ "name": "m_axi_ccid_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BID" }} , 
 	{ "name": "m_axi_ccid_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ccid", "role": "BUSER" }} , 
 	{ "name": "C_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_cid", "role": "default" }} , 
 	{ "name": "m_axi_cval_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWVALID" }} , 
 	{ "name": "m_axi_cval_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWREADY" }} , 
 	{ "name": "m_axi_cval_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "AWADDR" }} , 
 	{ "name": "m_axi_cval_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWID" }} , 
 	{ "name": "m_axi_cval_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "AWLEN" }} , 
 	{ "name": "m_axi_cval_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_cval_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "AWBURST" }} , 
 	{ "name": "m_axi_cval_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_cval_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_cval_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "AWPROT" }} , 
 	{ "name": "m_axi_cval_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWQOS" }} , 
 	{ "name": "m_axi_cval_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "AWREGION" }} , 
 	{ "name": "m_axi_cval_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "AWUSER" }} , 
 	{ "name": "m_axi_cval_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WVALID" }} , 
 	{ "name": "m_axi_cval_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WREADY" }} , 
 	{ "name": "m_axi_cval_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "WDATA" }} , 
 	{ "name": "m_axi_cval_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "WSTRB" }} , 
 	{ "name": "m_axi_cval_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WLAST" }} , 
 	{ "name": "m_axi_cval_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WID" }} , 
 	{ "name": "m_axi_cval_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "WUSER" }} , 
 	{ "name": "m_axi_cval_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARVALID" }} , 
 	{ "name": "m_axi_cval_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARREADY" }} , 
 	{ "name": "m_axi_cval_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cval", "role": "ARADDR" }} , 
 	{ "name": "m_axi_cval_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARID" }} , 
 	{ "name": "m_axi_cval_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "ARLEN" }} , 
 	{ "name": "m_axi_cval_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_cval_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "ARBURST" }} , 
 	{ "name": "m_axi_cval_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_cval_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_cval_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cval", "role": "ARPROT" }} , 
 	{ "name": "m_axi_cval_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARQOS" }} , 
 	{ "name": "m_axi_cval_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cval", "role": "ARREGION" }} , 
 	{ "name": "m_axi_cval_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "ARUSER" }} , 
 	{ "name": "m_axi_cval_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RVALID" }} , 
 	{ "name": "m_axi_cval_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RREADY" }} , 
 	{ "name": "m_axi_cval_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cval", "role": "RDATA" }} , 
 	{ "name": "m_axi_cval_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RLAST" }} , 
 	{ "name": "m_axi_cval_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RID" }} , 
 	{ "name": "m_axi_cval_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cval", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_cval_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "RUSER" }} , 
 	{ "name": "m_axi_cval_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "RRESP" }} , 
 	{ "name": "m_axi_cval_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BVALID" }} , 
 	{ "name": "m_axi_cval_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BREADY" }} , 
 	{ "name": "m_axi_cval_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cval", "role": "BRESP" }} , 
 	{ "name": "m_axi_cval_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BID" }} , 
 	{ "name": "m_axi_cval_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cval", "role": "BUSER" }} , 
 	{ "name": "C_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C_val", "role": "default" }} , 
 	{ "name": "fnum", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fnum", "role": "default" }} , 
 	{ "name": "fnum_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fnum", "role": "ap_vld" }} , 
 	{ "name": "final_len_126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_126", "role": "dout" }} , 
 	{ "name": "final_len_126_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_126", "role": "num_data_valid" }} , 
 	{ "name": "final_len_126_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_126", "role": "fifo_cap" }} , 
 	{ "name": "final_len_126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_126", "role": "empty_n" }} , 
 	{ "name": "final_len_126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_126", "role": "read" }} , 
 	{ "name": "final_len_227_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_len_227", "role": "dout" }} , 
 	{ "name": "final_len_227_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_227", "role": "num_data_valid" }} , 
 	{ "name": "final_len_227_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "final_len_227", "role": "fifo_cap" }} , 
 	{ "name": "final_len_227_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_227", "role": "empty_n" }} , 
 	{ "name": "final_len_227_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_len_227", "role": "read" }} , 
 	{ "name": "crum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "crum", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "write_C_sub",
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
			{"Name" : "final_merger_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_merger_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crcsr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "crcsr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "crcsr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "C_rcsr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ccid", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ccid_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ccid_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "C_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "cval", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "cval_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "cval_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "cval_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "cval_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "cval_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "C_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "fnum", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "final_len_126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2050", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_len_126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "final_len_227", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2050", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "final_len_227_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "crum", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_987_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "53", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state13", "ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state45", "ap_ST_fsm_state23", "ap_ST_fsm_state44"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_984_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "53", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_977_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "53", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_8_full_dsp_1_U2110", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_C_sub {
		final_merger_3 {Type I LastRead 11 FirstWrite -1}
		crcsr {Type I LastRead 10 FirstWrite -1}
		C_rcsr {Type I LastRead 0 FirstWrite -1}
		ccid {Type I LastRead 20 FirstWrite -1}
		C_cid {Type I LastRead 0 FirstWrite -1}
		cval {Type IO LastRead 39 FirstWrite 38}
		C_val {Type I LastRead 0 FirstWrite -1}
		fnum {Type O LastRead -1 FirstWrite 9}
		final_len_126 {Type I LastRead 9 FirstWrite -1}
		final_len_227 {Type I LastRead 9 FirstWrite -1}
		crum {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	final_merger_3 { ap_fifo {  { final_merger_3_dout fifo_port_we 0 66 }  { final_merger_3_num_data_valid fifo_status_num_data_valid 0 11 }  { final_merger_3_fifo_cap fifo_update 0 11 }  { final_merger_3_empty_n fifo_status 0 1 }  { final_merger_3_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_crcsr_AWVALID VALID 1 1 }  { m_axi_crcsr_AWREADY READY 0 1 }  { m_axi_crcsr_AWADDR ADDR 1 64 }  { m_axi_crcsr_AWID ID 1 1 }  { m_axi_crcsr_AWLEN SIZE 1 32 }  { m_axi_crcsr_AWSIZE BURST 1 3 }  { m_axi_crcsr_AWBURST LOCK 1 2 }  { m_axi_crcsr_AWLOCK CACHE 1 2 }  { m_axi_crcsr_AWCACHE PROT 1 4 }  { m_axi_crcsr_AWPROT QOS 1 3 }  { m_axi_crcsr_AWQOS REGION 1 4 }  { m_axi_crcsr_AWREGION USER 1 4 }  { m_axi_crcsr_AWUSER DATA 1 1 }  { m_axi_crcsr_WVALID VALID 1 1 }  { m_axi_crcsr_WREADY READY 0 1 }  { m_axi_crcsr_WDATA FIFONUM 1 32 }  { m_axi_crcsr_WSTRB STRB 1 4 }  { m_axi_crcsr_WLAST LAST 1 1 }  { m_axi_crcsr_WID ID 1 1 }  { m_axi_crcsr_WUSER DATA 1 1 }  { m_axi_crcsr_ARVALID VALID 1 1 }  { m_axi_crcsr_ARREADY READY 0 1 }  { m_axi_crcsr_ARADDR ADDR 1 64 }  { m_axi_crcsr_ARID ID 1 1 }  { m_axi_crcsr_ARLEN SIZE 1 32 }  { m_axi_crcsr_ARSIZE BURST 1 3 }  { m_axi_crcsr_ARBURST LOCK 1 2 }  { m_axi_crcsr_ARLOCK CACHE 1 2 }  { m_axi_crcsr_ARCACHE PROT 1 4 }  { m_axi_crcsr_ARPROT QOS 1 3 }  { m_axi_crcsr_ARQOS REGION 1 4 }  { m_axi_crcsr_ARREGION USER 1 4 }  { m_axi_crcsr_ARUSER DATA 1 1 }  { m_axi_crcsr_RVALID VALID 0 1 }  { m_axi_crcsr_RREADY READY 1 1 }  { m_axi_crcsr_RDATA FIFONUM 0 32 }  { m_axi_crcsr_RLAST LAST 0 1 }  { m_axi_crcsr_RID ID 0 1 }  { m_axi_crcsr_RFIFONUM LEN 0 9 }  { m_axi_crcsr_RUSER DATA 0 1 }  { m_axi_crcsr_RRESP RESP 0 2 }  { m_axi_crcsr_BVALID VALID 0 1 }  { m_axi_crcsr_BREADY READY 1 1 }  { m_axi_crcsr_BRESP RESP 0 2 }  { m_axi_crcsr_BID ID 0 1 }  { m_axi_crcsr_BUSER DATA 0 1 } } }
	C_rcsr { ap_none {  { C_rcsr in_data 0 64 } } }
	 { m_axi {  { m_axi_ccid_AWVALID VALID 1 1 }  { m_axi_ccid_AWREADY READY 0 1 }  { m_axi_ccid_AWADDR ADDR 1 64 }  { m_axi_ccid_AWID ID 1 1 }  { m_axi_ccid_AWLEN SIZE 1 32 }  { m_axi_ccid_AWSIZE BURST 1 3 }  { m_axi_ccid_AWBURST LOCK 1 2 }  { m_axi_ccid_AWLOCK CACHE 1 2 }  { m_axi_ccid_AWCACHE PROT 1 4 }  { m_axi_ccid_AWPROT QOS 1 3 }  { m_axi_ccid_AWQOS REGION 1 4 }  { m_axi_ccid_AWREGION USER 1 4 }  { m_axi_ccid_AWUSER DATA 1 1 }  { m_axi_ccid_WVALID VALID 1 1 }  { m_axi_ccid_WREADY READY 0 1 }  { m_axi_ccid_WDATA FIFONUM 1 32 }  { m_axi_ccid_WSTRB STRB 1 4 }  { m_axi_ccid_WLAST LAST 1 1 }  { m_axi_ccid_WID ID 1 1 }  { m_axi_ccid_WUSER DATA 1 1 }  { m_axi_ccid_ARVALID VALID 1 1 }  { m_axi_ccid_ARREADY READY 0 1 }  { m_axi_ccid_ARADDR ADDR 1 64 }  { m_axi_ccid_ARID ID 1 1 }  { m_axi_ccid_ARLEN SIZE 1 32 }  { m_axi_ccid_ARSIZE BURST 1 3 }  { m_axi_ccid_ARBURST LOCK 1 2 }  { m_axi_ccid_ARLOCK CACHE 1 2 }  { m_axi_ccid_ARCACHE PROT 1 4 }  { m_axi_ccid_ARPROT QOS 1 3 }  { m_axi_ccid_ARQOS REGION 1 4 }  { m_axi_ccid_ARREGION USER 1 4 }  { m_axi_ccid_ARUSER DATA 1 1 }  { m_axi_ccid_RVALID VALID 0 1 }  { m_axi_ccid_RREADY READY 1 1 }  { m_axi_ccid_RDATA FIFONUM 0 32 }  { m_axi_ccid_RLAST LAST 0 1 }  { m_axi_ccid_RID ID 0 1 }  { m_axi_ccid_RFIFONUM LEN 0 9 }  { m_axi_ccid_RUSER DATA 0 1 }  { m_axi_ccid_RRESP RESP 0 2 }  { m_axi_ccid_BVALID VALID 0 1 }  { m_axi_ccid_BREADY READY 1 1 }  { m_axi_ccid_BRESP RESP 0 2 }  { m_axi_ccid_BID ID 0 1 }  { m_axi_ccid_BUSER DATA 0 1 } } }
	C_cid { ap_none {  { C_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_cval_AWVALID VALID 1 1 }  { m_axi_cval_AWREADY READY 0 1 }  { m_axi_cval_AWADDR ADDR 1 64 }  { m_axi_cval_AWID ID 1 1 }  { m_axi_cval_AWLEN SIZE 1 32 }  { m_axi_cval_AWSIZE BURST 1 3 }  { m_axi_cval_AWBURST LOCK 1 2 }  { m_axi_cval_AWLOCK CACHE 1 2 }  { m_axi_cval_AWCACHE PROT 1 4 }  { m_axi_cval_AWPROT QOS 1 3 }  { m_axi_cval_AWQOS REGION 1 4 }  { m_axi_cval_AWREGION USER 1 4 }  { m_axi_cval_AWUSER DATA 1 1 }  { m_axi_cval_WVALID VALID 1 1 }  { m_axi_cval_WREADY READY 0 1 }  { m_axi_cval_WDATA FIFONUM 1 32 }  { m_axi_cval_WSTRB STRB 1 4 }  { m_axi_cval_WLAST LAST 1 1 }  { m_axi_cval_WID ID 1 1 }  { m_axi_cval_WUSER DATA 1 1 }  { m_axi_cval_ARVALID VALID 1 1 }  { m_axi_cval_ARREADY READY 0 1 }  { m_axi_cval_ARADDR ADDR 1 64 }  { m_axi_cval_ARID ID 1 1 }  { m_axi_cval_ARLEN SIZE 1 32 }  { m_axi_cval_ARSIZE BURST 1 3 }  { m_axi_cval_ARBURST LOCK 1 2 }  { m_axi_cval_ARLOCK CACHE 1 2 }  { m_axi_cval_ARCACHE PROT 1 4 }  { m_axi_cval_ARPROT QOS 1 3 }  { m_axi_cval_ARQOS REGION 1 4 }  { m_axi_cval_ARREGION USER 1 4 }  { m_axi_cval_ARUSER DATA 1 1 }  { m_axi_cval_RVALID VALID 0 1 }  { m_axi_cval_RREADY READY 1 1 }  { m_axi_cval_RDATA FIFONUM 0 32 }  { m_axi_cval_RLAST LAST 0 1 }  { m_axi_cval_RID ID 0 1 }  { m_axi_cval_RFIFONUM LEN 0 9 }  { m_axi_cval_RUSER DATA 0 1 }  { m_axi_cval_RRESP RESP 0 2 }  { m_axi_cval_BVALID VALID 0 1 }  { m_axi_cval_BREADY READY 1 1 }  { m_axi_cval_BRESP RESP 0 2 }  { m_axi_cval_BID ID 0 1 }  { m_axi_cval_BUSER DATA 0 1 } } }
	C_val { ap_none {  { C_val in_data 0 64 } } }
	fnum { ap_vld {  { fnum out_data 1 32 }  { fnum_ap_vld out_vld 1 1 } } }
	final_len_126 { ap_fifo {  { final_len_126_dout fifo_port_we 0 32 }  { final_len_126_num_data_valid fifo_status_num_data_valid 0 13 }  { final_len_126_fifo_cap fifo_update 0 13 }  { final_len_126_empty_n fifo_status 0 1 }  { final_len_126_read fifo_data 1 1 } } }
	final_len_227 { ap_fifo {  { final_len_227_dout fifo_port_we 0 32 }  { final_len_227_num_data_valid fifo_status_num_data_valid 0 13 }  { final_len_227_fifo_cap fifo_update 0 13 }  { final_len_227_empty_n fifo_status 0 1 }  { final_len_227_read fifo_data 1 1 } } }
	crum { ap_none {  { crum in_data 0 32 } } }
}
