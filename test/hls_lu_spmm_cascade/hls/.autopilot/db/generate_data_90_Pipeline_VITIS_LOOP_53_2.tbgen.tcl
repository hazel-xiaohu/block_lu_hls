set moduleName generate_data_90_Pipeline_VITIS_LOOP_53_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {generate_data.90_Pipeline_VITIS_LOOP_53_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tmp_254 int 30 regular  }
	{ begin_block_idx int 30 regular  }
	{ add_ln53 int 31 regular  }
	{ bcid2 int 128 regular {axi_master 0}  }
	{ sext_ln53 int 60 regular  }
	{ bval2 int 128 regular {axi_master 0}  }
	{ sext_ln53_3 int 60 regular  }
	{ trunc_ln55_3 int 2 regular  }
	{ empty int 2 regular  }
	{ vblock2d int 134 regular {fifo 1 volatile }  }
	{ cblock2d int 134 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tmp_254", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln53", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "bcid2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_cid2","offset": { "type": "dynamic","port_name": "B_cid2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln53", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "bval2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_val2","offset": { "type": "dynamic","port_name": "B_val2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln53_3", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln55_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "vblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cblock2d", "interface" : "fifo", "bitwidth" : 134, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bcid2_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_WDATA sc_out sc_lv 128 signal 3 } 
	{ m_axi_bcid2_0_WSTRB sc_out sc_lv 16 signal 3 } 
	{ m_axi_bcid2_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_bcid2_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_bcid2_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_bcid2_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_bcid2_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_RDATA sc_in sc_lv 128 signal 3 } 
	{ m_axi_bcid2_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_bcid2_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_bcid2_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_bcid2_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_bcid2_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_bval2_0_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_bval2_0_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_bval2_0_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_bval2_0_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_bval2_0_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_WDATA sc_out sc_lv 128 signal 5 } 
	{ m_axi_bval2_0_WSTRB sc_out sc_lv 16 signal 5 } 
	{ m_axi_bval2_0_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_bval2_0_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_bval2_0_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_bval2_0_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_bval2_0_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_bval2_0_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_RDATA sc_in sc_lv 128 signal 5 } 
	{ m_axi_bval2_0_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_bval2_0_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_bval2_0_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_bval2_0_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_bval2_0_BUSER sc_in sc_lv 1 signal 5 } 
	{ vblock2d_din sc_out sc_lv 134 signal 9 } 
	{ vblock2d_full_n sc_in sc_logic 1 signal 9 } 
	{ vblock2d_write sc_out sc_logic 1 signal 9 } 
	{ vblock2d_num_data_valid sc_in sc_lv 8 signal 9 } 
	{ vblock2d_fifo_cap sc_in sc_lv 8 signal 9 } 
	{ cblock2d_din sc_out sc_lv 134 signal 10 } 
	{ cblock2d_full_n sc_in sc_logic 1 signal 10 } 
	{ cblock2d_write sc_out sc_logic 1 signal 10 } 
	{ cblock2d_num_data_valid sc_in sc_lv 8 signal 10 } 
	{ cblock2d_fifo_cap sc_in sc_lv 8 signal 10 } 
	{ tmp_254 sc_in sc_lv 30 signal 0 } 
	{ begin_block_idx sc_in sc_lv 30 signal 1 } 
	{ add_ln53 sc_in sc_lv 31 signal 2 } 
	{ sext_ln53 sc_in sc_lv 60 signal 4 } 
	{ sext_ln53_3 sc_in sc_lv 60 signal 6 } 
	{ trunc_ln55_3 sc_in sc_lv 2 signal 7 } 
	{ empty sc_in sc_lv 2 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_bcid2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bcid2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bcid2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bcid2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bcid2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bcid2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bcid2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bcid2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bcid2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bcid2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bcid2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bcid2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bcid2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bcid2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bcid2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bcid2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bcid2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bcid2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bcid2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WID" }} , 
 	{ "name": "m_axi_bcid2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bcid2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bcid2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bcid2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bcid2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bcid2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bcid2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bcid2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bcid2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bcid2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bcid2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bcid2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bcid2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bcid2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bcid2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bcid2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bcid2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bcid2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bcid2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RID" }} , 
 	{ "name": "m_axi_bcid2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bcid2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bcid2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bcid2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bcid2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bcid2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bcid2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bcid2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_BID" }} , 
 	{ "name": "m_axi_bcid2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bcid2", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_bval2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bval2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bval2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bval2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bval2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bval2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bval2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bval2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bval2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bval2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bval2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bval2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bval2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bval2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bval2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bval2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bval2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bval2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bval2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bval2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_WID" }} , 
 	{ "name": "m_axi_bval2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bval2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bval2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bval2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bval2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bval2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bval2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bval2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bval2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bval2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bval2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bval2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bval2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bval2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bval2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bval2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bval2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bval2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bval2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bval2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_RID" }} , 
 	{ "name": "m_axi_bval2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bval2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bval2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bval2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bval2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bval2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bval2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bval2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bval2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_BID" }} , 
 	{ "name": "m_axi_bval2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bval2", "role": "0_BUSER" }} , 
 	{ "name": "vblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock2d", "role": "din" }} , 
 	{ "name": "vblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "full_n" }} , 
 	{ "name": "vblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock2d", "role": "write" }} , 
 	{ "name": "vblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "num_data_valid" }} , 
 	{ "name": "vblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock2d", "role": "fifo_cap" }} , 
 	{ "name": "cblock2d_din", "direction": "out", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock2d", "role": "din" }} , 
 	{ "name": "cblock2d_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "full_n" }} , 
 	{ "name": "cblock2d_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock2d", "role": "write" }} , 
 	{ "name": "cblock2d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "num_data_valid" }} , 
 	{ "name": "cblock2d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock2d", "role": "fifo_cap" }} , 
 	{ "name": "tmp_254", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "tmp_254", "role": "default" }} , 
 	{ "name": "begin_block_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx", "role": "default" }} , 
 	{ "name": "add_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln53", "role": "default" }} , 
 	{ "name": "sext_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln53", "role": "default" }} , 
 	{ "name": "sext_ln53_3", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln53_3", "role": "default" }} , 
 	{ "name": "trunc_ln55_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln55_3", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	generate_data_90_Pipeline_VITIS_LOOP_53_2 {
		tmp_254 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		add_ln53 {Type I LastRead 0 FirstWrite -1}
		bcid2 {Type I LastRead 1 FirstWrite -1}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		bval2 {Type I LastRead 1 FirstWrite -1}
		sext_ln53_3 {Type I LastRead 0 FirstWrite -1}
		trunc_ln55_3 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		vblock2d {Type O LastRead -1 FirstWrite 2}
		cblock2d {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_254 { ap_none {  { tmp_254 in_data 0 30 } } }
	begin_block_idx { ap_none {  { begin_block_idx in_data 0 30 } } }
	add_ln53 { ap_none {  { add_ln53 in_data 0 31 } } }
	 { m_axi {  { m_axi_bcid2_0_AWVALID VALID 1 1 }  { m_axi_bcid2_0_AWREADY READY 0 1 }  { m_axi_bcid2_0_AWADDR ADDR 1 64 }  { m_axi_bcid2_0_AWID ID 1 1 }  { m_axi_bcid2_0_AWLEN SIZE 1 32 }  { m_axi_bcid2_0_AWSIZE BURST 1 3 }  { m_axi_bcid2_0_AWBURST LOCK 1 2 }  { m_axi_bcid2_0_AWLOCK CACHE 1 2 }  { m_axi_bcid2_0_AWCACHE PROT 1 4 }  { m_axi_bcid2_0_AWPROT QOS 1 3 }  { m_axi_bcid2_0_AWQOS REGION 1 4 }  { m_axi_bcid2_0_AWREGION USER 1 4 }  { m_axi_bcid2_0_AWUSER DATA 1 1 }  { m_axi_bcid2_0_WVALID VALID 1 1 }  { m_axi_bcid2_0_WREADY READY 0 1 }  { m_axi_bcid2_0_WDATA FIFONUM 1 128 }  { m_axi_bcid2_0_WSTRB STRB 1 16 }  { m_axi_bcid2_0_WLAST LAST 1 1 }  { m_axi_bcid2_0_WID ID 1 1 }  { m_axi_bcid2_0_WUSER DATA 1 1 }  { m_axi_bcid2_0_ARVALID VALID 1 1 }  { m_axi_bcid2_0_ARREADY READY 0 1 }  { m_axi_bcid2_0_ARADDR ADDR 1 64 }  { m_axi_bcid2_0_ARID ID 1 1 }  { m_axi_bcid2_0_ARLEN SIZE 1 32 }  { m_axi_bcid2_0_ARSIZE BURST 1 3 }  { m_axi_bcid2_0_ARBURST LOCK 1 2 }  { m_axi_bcid2_0_ARLOCK CACHE 1 2 }  { m_axi_bcid2_0_ARCACHE PROT 1 4 }  { m_axi_bcid2_0_ARPROT QOS 1 3 }  { m_axi_bcid2_0_ARQOS REGION 1 4 }  { m_axi_bcid2_0_ARREGION USER 1 4 }  { m_axi_bcid2_0_ARUSER DATA 1 1 }  { m_axi_bcid2_0_RVALID VALID 0 1 }  { m_axi_bcid2_0_RREADY READY 1 1 }  { m_axi_bcid2_0_RDATA FIFONUM 0 128 }  { m_axi_bcid2_0_RLAST LAST 0 1 }  { m_axi_bcid2_0_RID ID 0 1 }  { m_axi_bcid2_0_RFIFONUM LEN 0 9 }  { m_axi_bcid2_0_RUSER DATA 0 1 }  { m_axi_bcid2_0_RRESP RESP 0 2 }  { m_axi_bcid2_0_BVALID VALID 0 1 }  { m_axi_bcid2_0_BREADY READY 1 1 }  { m_axi_bcid2_0_BRESP RESP 0 2 }  { m_axi_bcid2_0_BID ID 0 1 }  { m_axi_bcid2_0_BUSER DATA 0 1 } } }
	sext_ln53 { ap_none {  { sext_ln53 in_data 0 60 } } }
	 { m_axi {  { m_axi_bval2_0_AWVALID VALID 1 1 }  { m_axi_bval2_0_AWREADY READY 0 1 }  { m_axi_bval2_0_AWADDR ADDR 1 64 }  { m_axi_bval2_0_AWID ID 1 1 }  { m_axi_bval2_0_AWLEN SIZE 1 32 }  { m_axi_bval2_0_AWSIZE BURST 1 3 }  { m_axi_bval2_0_AWBURST LOCK 1 2 }  { m_axi_bval2_0_AWLOCK CACHE 1 2 }  { m_axi_bval2_0_AWCACHE PROT 1 4 }  { m_axi_bval2_0_AWPROT QOS 1 3 }  { m_axi_bval2_0_AWQOS REGION 1 4 }  { m_axi_bval2_0_AWREGION USER 1 4 }  { m_axi_bval2_0_AWUSER DATA 1 1 }  { m_axi_bval2_0_WVALID VALID 1 1 }  { m_axi_bval2_0_WREADY READY 0 1 }  { m_axi_bval2_0_WDATA FIFONUM 1 128 }  { m_axi_bval2_0_WSTRB STRB 1 16 }  { m_axi_bval2_0_WLAST LAST 1 1 }  { m_axi_bval2_0_WID ID 1 1 }  { m_axi_bval2_0_WUSER DATA 1 1 }  { m_axi_bval2_0_ARVALID VALID 1 1 }  { m_axi_bval2_0_ARREADY READY 0 1 }  { m_axi_bval2_0_ARADDR ADDR 1 64 }  { m_axi_bval2_0_ARID ID 1 1 }  { m_axi_bval2_0_ARLEN SIZE 1 32 }  { m_axi_bval2_0_ARSIZE BURST 1 3 }  { m_axi_bval2_0_ARBURST LOCK 1 2 }  { m_axi_bval2_0_ARLOCK CACHE 1 2 }  { m_axi_bval2_0_ARCACHE PROT 1 4 }  { m_axi_bval2_0_ARPROT QOS 1 3 }  { m_axi_bval2_0_ARQOS REGION 1 4 }  { m_axi_bval2_0_ARREGION USER 1 4 }  { m_axi_bval2_0_ARUSER DATA 1 1 }  { m_axi_bval2_0_RVALID VALID 0 1 }  { m_axi_bval2_0_RREADY READY 1 1 }  { m_axi_bval2_0_RDATA FIFONUM 0 128 }  { m_axi_bval2_0_RLAST LAST 0 1 }  { m_axi_bval2_0_RID ID 0 1 }  { m_axi_bval2_0_RFIFONUM LEN 0 9 }  { m_axi_bval2_0_RUSER DATA 0 1 }  { m_axi_bval2_0_RRESP RESP 0 2 }  { m_axi_bval2_0_BVALID VALID 0 1 }  { m_axi_bval2_0_BREADY READY 1 1 }  { m_axi_bval2_0_BRESP RESP 0 2 }  { m_axi_bval2_0_BID ID 0 1 }  { m_axi_bval2_0_BUSER DATA 0 1 } } }
	sext_ln53_3 { ap_none {  { sext_ln53_3 in_data 0 60 } } }
	trunc_ln55_3 { ap_none {  { trunc_ln55_3 in_data 0 2 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	vblock2d { ap_fifo {  { vblock2d_din fifo_data_out 1 134 }  { vblock2d_full_n fifo_status_empty 0 1 }  { vblock2d_write fifo_data_in 1 1 }  { vblock2d_num_data_valid fifo_update 0 8 }  { vblock2d_fifo_cap fifo_data 0 8 } } }
	cblock2d { ap_fifo {  { cblock2d_din fifo_data_out 1 134 }  { cblock2d_full_n fifo_status_empty 0 1 }  { cblock2d_write fifo_data_in 1 1 }  { cblock2d_num_data_valid fifo_update 0 8 }  { cblock2d_fifo_cap fifo_data 0 8 } } }
}
