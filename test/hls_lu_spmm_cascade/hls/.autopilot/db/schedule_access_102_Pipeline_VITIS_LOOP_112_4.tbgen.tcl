set moduleName schedule_access_102_Pipeline_VITIS_LOOP_112_4
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
set C_modelName {schedule_access.102_Pipeline_VITIS_LOOP_112_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ zext_ln92 int 30 regular  }
	{ min_idx int 31 regular  }
	{ add_ln92 int 31 regular  }
	{ ori_request_peID int 3 regular  }
	{ zext_ln100 int 30 regular  }
	{ add_ln125 int 32 regular  }
	{ voff int 128 regular {fifo 1 volatile }  }
	{ bv3 int 128 regular {axi_master 0}  }
	{ sext_ln112 int 60 regular  }
	{ trunc_ln34 int 3 regular  }
	{ begin_block_idx int 30 regular  }
	{ v_req int 225 regular {fifo 1 volatile }  }
	{ curr_request_9_211_out int 128 regular {pointer 1}  }
	{ curr_request_7_210_out int 32 regular {pointer 1}  }
	{ curr_request_6_29_out int 32 regular {pointer 1}  }
	{ curr_request_5_27_out int 3 regular {pointer 1}  }
	{ curr_request_3_26_out int 3 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln92", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "min_idx", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln92", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "ori_request_peID", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln100", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln125", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "voff", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bv3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_val_port3","offset": { "type": "dynamic","port_name": "B_val_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln112", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln34", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_9_211_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_7_210_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_6_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_5_27_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_3_26_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bv3_0_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_bv3_0_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_AWLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_bv3_0_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bv3_0_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bv3_0_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_WDATA sc_out sc_lv 128 signal 7 } 
	{ m_axi_bv3_0_WSTRB sc_out sc_lv 16 signal 7 } 
	{ m_axi_bv3_0_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_bv3_0_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_ARLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_bv3_0_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_bv3_0_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_bv3_0_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_bv3_0_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_RDATA sc_in sc_lv 128 signal 7 } 
	{ m_axi_bv3_0_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_RFIFONUM sc_in sc_lv 9 signal 7 } 
	{ m_axi_bv3_0_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_bv3_0_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_bv3_0_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_bv3_0_BUSER sc_in sc_lv 1 signal 7 } 
	{ v_req_din sc_out sc_lv 225 signal 11 } 
	{ v_req_full_n sc_in sc_logic 1 signal 11 } 
	{ v_req_write sc_out sc_logic 1 signal 11 } 
	{ v_req_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ v_req_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ voff_din sc_out sc_lv 128 signal 6 } 
	{ voff_full_n sc_in sc_logic 1 signal 6 } 
	{ voff_write sc_out sc_logic 1 signal 6 } 
	{ voff_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ voff_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ zext_ln92 sc_in sc_lv 30 signal 0 } 
	{ min_idx sc_in sc_lv 31 signal 1 } 
	{ add_ln92 sc_in sc_lv 31 signal 2 } 
	{ ori_request_peID sc_in sc_lv 3 signal 3 } 
	{ zext_ln100 sc_in sc_lv 30 signal 4 } 
	{ add_ln125 sc_in sc_lv 32 signal 5 } 
	{ sext_ln112 sc_in sc_lv 60 signal 8 } 
	{ trunc_ln34 sc_in sc_lv 3 signal 9 } 
	{ begin_block_idx sc_in sc_lv 30 signal 10 } 
	{ curr_request_9_211_out sc_out sc_lv 128 signal 12 } 
	{ curr_request_9_211_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ curr_request_7_210_out sc_out sc_lv 32 signal 13 } 
	{ curr_request_7_210_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ curr_request_6_29_out sc_out sc_lv 32 signal 14 } 
	{ curr_request_6_29_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ curr_request_5_27_out sc_out sc_lv 3 signal 15 } 
	{ curr_request_5_27_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ curr_request_3_26_out sc_out sc_lv 3 signal 16 } 
	{ curr_request_3_26_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_bv3_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_bv3_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_bv3_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_bv3_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWID" }} , 
 	{ "name": "m_axi_bv3_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_bv3_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_bv3_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_bv3_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_bv3_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_bv3_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_bv3_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_bv3_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_bv3_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_bv3_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_bv3_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_bv3_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_bv3_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bv3", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_bv3_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_bv3_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_WID" }} , 
 	{ "name": "m_axi_bv3_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_bv3_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_bv3_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_bv3_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_bv3_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARID" }} , 
 	{ "name": "m_axi_bv3_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_bv3_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_bv3_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_bv3_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_bv3_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_bv3_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_bv3_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_bv3_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_bv3_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_bv3_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_bv3_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_bv3_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "bv3", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_bv3_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_bv3_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_RID" }} , 
 	{ "name": "m_axi_bv3_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bv3", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_bv3_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_bv3_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_bv3_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_bv3_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_bv3_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bv3", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_bv3_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_BID" }} , 
 	{ "name": "m_axi_bv3_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bv3", "role": "0_BUSER" }} , 
 	{ "name": "v_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "v_req", "role": "din" }} , 
 	{ "name": "v_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "full_n" }} , 
 	{ "name": "v_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "write" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "voff_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff", "role": "din" }} , 
 	{ "name": "voff_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff", "role": "full_n" }} , 
 	{ "name": "voff_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff", "role": "write" }} , 
 	{ "name": "voff_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "voff", "role": "num_data_valid" }} , 
 	{ "name": "voff_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "voff", "role": "fifo_cap" }} , 
 	{ "name": "zext_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln92", "role": "default" }} , 
 	{ "name": "min_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "min_idx", "role": "default" }} , 
 	{ "name": "add_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "add_ln92", "role": "default" }} , 
 	{ "name": "ori_request_peID", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ori_request_peID", "role": "default" }} , 
 	{ "name": "zext_ln100", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln100", "role": "default" }} , 
 	{ "name": "add_ln125", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln125", "role": "default" }} , 
 	{ "name": "sext_ln112", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln112", "role": "default" }} , 
 	{ "name": "trunc_ln34", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "trunc_ln34", "role": "default" }} , 
 	{ "name": "begin_block_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx", "role": "default" }} , 
 	{ "name": "curr_request_9_211_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "curr_request_9_211_out", "role": "default" }} , 
 	{ "name": "curr_request_9_211_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_9_211_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_7_210_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_7_210_out", "role": "default" }} , 
 	{ "name": "curr_request_7_210_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_7_210_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_6_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_6_29_out", "role": "default" }} , 
 	{ "name": "curr_request_6_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_6_29_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_5_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_5_27_out", "role": "default" }} , 
 	{ "name": "curr_request_5_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_5_27_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_3_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_3_26_out", "role": "default" }} , 
 	{ "name": "curr_request_3_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_3_26_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	schedule_access_102_Pipeline_VITIS_LOOP_112_4 {
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		min_idx {Type I LastRead 0 FirstWrite -1}
		add_ln92 {Type I LastRead 0 FirstWrite -1}
		ori_request_peID {Type I LastRead 0 FirstWrite -1}
		zext_ln100 {Type I LastRead 0 FirstWrite -1}
		add_ln125 {Type I LastRead 0 FirstWrite -1}
		voff {Type O LastRead -1 FirstWrite 3}
		bv3 {Type I LastRead 2 FirstWrite -1}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}
		trunc_ln34 {Type I LastRead 0 FirstWrite -1}
		begin_block_idx {Type I LastRead 0 FirstWrite -1}
		v_req {Type O LastRead -1 FirstWrite 3}
		curr_request_9_211_out {Type O LastRead -1 FirstWrite 2}
		curr_request_7_210_out {Type O LastRead -1 FirstWrite 1}
		curr_request_6_29_out {Type O LastRead -1 FirstWrite 1}
		curr_request_5_27_out {Type O LastRead -1 FirstWrite 1}
		curr_request_3_26_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln92 { ap_none {  { zext_ln92 in_data 0 30 } } }
	min_idx { ap_none {  { min_idx in_data 0 31 } } }
	add_ln92 { ap_none {  { add_ln92 in_data 0 31 } } }
	ori_request_peID { ap_none {  { ori_request_peID in_data 0 3 } } }
	zext_ln100 { ap_none {  { zext_ln100 in_data 0 30 } } }
	add_ln125 { ap_none {  { add_ln125 in_data 0 32 } } }
	voff { ap_fifo {  { voff_din fifo_data_out 1 128 }  { voff_full_n fifo_status_empty 0 1 }  { voff_write fifo_data_in 1 1 }  { voff_num_data_valid fifo_update 0 4 }  { voff_fifo_cap fifo_data 0 4 } } }
	 { m_axi {  { m_axi_bv3_0_AWVALID VALID 1 1 }  { m_axi_bv3_0_AWREADY READY 0 1 }  { m_axi_bv3_0_AWADDR ADDR 1 64 }  { m_axi_bv3_0_AWID ID 1 1 }  { m_axi_bv3_0_AWLEN SIZE 1 32 }  { m_axi_bv3_0_AWSIZE BURST 1 3 }  { m_axi_bv3_0_AWBURST LOCK 1 2 }  { m_axi_bv3_0_AWLOCK CACHE 1 2 }  { m_axi_bv3_0_AWCACHE PROT 1 4 }  { m_axi_bv3_0_AWPROT QOS 1 3 }  { m_axi_bv3_0_AWQOS REGION 1 4 }  { m_axi_bv3_0_AWREGION USER 1 4 }  { m_axi_bv3_0_AWUSER DATA 1 1 }  { m_axi_bv3_0_WVALID VALID 1 1 }  { m_axi_bv3_0_WREADY READY 0 1 }  { m_axi_bv3_0_WDATA FIFONUM 1 128 }  { m_axi_bv3_0_WSTRB STRB 1 16 }  { m_axi_bv3_0_WLAST LAST 1 1 }  { m_axi_bv3_0_WID ID 1 1 }  { m_axi_bv3_0_WUSER DATA 1 1 }  { m_axi_bv3_0_ARVALID VALID 1 1 }  { m_axi_bv3_0_ARREADY READY 0 1 }  { m_axi_bv3_0_ARADDR ADDR 1 64 }  { m_axi_bv3_0_ARID ID 1 1 }  { m_axi_bv3_0_ARLEN SIZE 1 32 }  { m_axi_bv3_0_ARSIZE BURST 1 3 }  { m_axi_bv3_0_ARBURST LOCK 1 2 }  { m_axi_bv3_0_ARLOCK CACHE 1 2 }  { m_axi_bv3_0_ARCACHE PROT 1 4 }  { m_axi_bv3_0_ARPROT QOS 1 3 }  { m_axi_bv3_0_ARQOS REGION 1 4 }  { m_axi_bv3_0_ARREGION USER 1 4 }  { m_axi_bv3_0_ARUSER DATA 1 1 }  { m_axi_bv3_0_RVALID VALID 0 1 }  { m_axi_bv3_0_RREADY READY 1 1 }  { m_axi_bv3_0_RDATA FIFONUM 0 128 }  { m_axi_bv3_0_RLAST LAST 0 1 }  { m_axi_bv3_0_RID ID 0 1 }  { m_axi_bv3_0_RFIFONUM LEN 0 9 }  { m_axi_bv3_0_RUSER DATA 0 1 }  { m_axi_bv3_0_RRESP RESP 0 2 }  { m_axi_bv3_0_BVALID VALID 0 1 }  { m_axi_bv3_0_BREADY READY 1 1 }  { m_axi_bv3_0_BRESP RESP 0 2 }  { m_axi_bv3_0_BID ID 0 1 }  { m_axi_bv3_0_BUSER DATA 0 1 } } }
	sext_ln112 { ap_none {  { sext_ln112 in_data 0 60 } } }
	trunc_ln34 { ap_none {  { trunc_ln34 in_data 0 3 } } }
	begin_block_idx { ap_none {  { begin_block_idx in_data 0 30 } } }
	v_req { ap_fifo {  { v_req_din fifo_data_out 1 225 }  { v_req_full_n fifo_status_empty 0 1 }  { v_req_write fifo_data_in 1 1 }  { v_req_num_data_valid fifo_update 0 3 }  { v_req_fifo_cap fifo_data 0 3 } } }
	curr_request_9_211_out { ap_vld {  { curr_request_9_211_out out_data 1 128 }  { curr_request_9_211_out_ap_vld out_vld 1 1 } } }
	curr_request_7_210_out { ap_vld {  { curr_request_7_210_out out_data 1 32 }  { curr_request_7_210_out_ap_vld out_vld 1 1 } } }
	curr_request_6_29_out { ap_vld {  { curr_request_6_29_out out_data 1 32 }  { curr_request_6_29_out_ap_vld out_vld 1 1 } } }
	curr_request_5_27_out { ap_vld {  { curr_request_5_27_out out_data 1 3 }  { curr_request_5_27_out_ap_vld out_vld 1 1 } } }
	curr_request_3_26_out { ap_vld {  { curr_request_3_26_out out_data 1 3 }  { curr_request_3_26_out_ap_vld out_vld 1 1 } } }
}
