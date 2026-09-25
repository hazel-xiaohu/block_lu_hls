set moduleName schedule_access_84_Pipeline_VITIS_LOOP_112_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {schedule_access.84_Pipeline_VITIS_LOOP_112_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln92 int 30 regular  }
	{ bv3 int 128 regular {axi_master 0}  }
	{ sext_ln112 int 60 regular  }
	{ zext_ln92_18 int 31 regular  }
	{ ori_request_peID_V int 3 regular  }
	{ begin_block_idx int 30 regular  }
	{ curr_request_brlen_13 int 32 regular  }
	{ voff3 int 128 regular {fifo 1 volatile }  }
	{ zext_ln92_7 int 31 regular  }
	{ trunc_ln26 int 3 regular  }
	{ begin_block_idx_8 int 30 regular  }
	{ v_req int 209 regular {fifo 1 volatile }  }
	{ curr_request_data_V_21_out int 128 regular {pointer 1}  }
	{ curr_request_brlen_12_out int 32 regular {pointer 1}  }
	{ curr_request_brid_12_out int 32 regular {pointer 1}  }
	{ curr_request_target_V_18_out int 2 regular {pointer 1}  }
	{ curr_request_write_idx_V_21_out int 3 regular {pointer 1}  }
	{ curr_request_peID_V_21_out int 3 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln92", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "bv3", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_val_port3","offset": { "type": "dynamic","port_name": "B_val_port3","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln112", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln92_18", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "ori_request_peID_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "curr_request_brlen_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "voff3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln92_7", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln26", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx_8", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "v_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_data_V_21_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brlen_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brid_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_target_V_18_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_write_idx_V_21_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_peID_V_21_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bv3_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bv3_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bv3_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bv3_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bv3_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bv3_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bv3_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bv3_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bv3_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bv3_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bv3_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bv3_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bv3_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bv3_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bv3_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bv3_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bv3_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bv3_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bv3_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bv3_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bv3_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bv3_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bv3_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bv3_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bv3_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bv3_BUSER sc_in sc_lv 1 signal 1 } 
	{ v_req_din sc_out sc_lv 209 signal 11 } 
	{ v_req_num_data_valid sc_in sc_lv 7 signal 11 } 
	{ v_req_fifo_cap sc_in sc_lv 7 signal 11 } 
	{ v_req_full_n sc_in sc_logic 1 signal 11 } 
	{ v_req_write sc_out sc_logic 1 signal 11 } 
	{ voff3_din sc_out sc_lv 128 signal 7 } 
	{ voff3_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ voff3_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ voff3_full_n sc_in sc_logic 1 signal 7 } 
	{ voff3_write sc_out sc_logic 1 signal 7 } 
	{ zext_ln92 sc_in sc_lv 30 signal 0 } 
	{ sext_ln112 sc_in sc_lv 60 signal 2 } 
	{ zext_ln92_18 sc_in sc_lv 31 signal 3 } 
	{ ori_request_peID_V sc_in sc_lv 3 signal 4 } 
	{ begin_block_idx sc_in sc_lv 30 signal 5 } 
	{ curr_request_brlen_13 sc_in sc_lv 32 signal 6 } 
	{ zext_ln92_7 sc_in sc_lv 31 signal 8 } 
	{ trunc_ln26 sc_in sc_lv 3 signal 9 } 
	{ begin_block_idx_8 sc_in sc_lv 30 signal 10 } 
	{ curr_request_data_V_21_out sc_out sc_lv 128 signal 12 } 
	{ curr_request_data_V_21_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ curr_request_brlen_12_out sc_out sc_lv 32 signal 13 } 
	{ curr_request_brlen_12_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ curr_request_brid_12_out sc_out sc_lv 32 signal 14 } 
	{ curr_request_brid_12_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ curr_request_target_V_18_out sc_out sc_lv 2 signal 15 } 
	{ curr_request_target_V_18_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ curr_request_write_idx_V_21_out sc_out sc_lv 3 signal 16 } 
	{ curr_request_write_idx_V_21_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ curr_request_peID_V_21_out sc_out sc_lv 3 signal 17 } 
	{ curr_request_peID_V_21_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "v_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "v_req", "role": "din" }} , 
 	{ "name": "v_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "num_data_valid" }} , 
 	{ "name": "v_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "v_req", "role": "fifo_cap" }} , 
 	{ "name": "v_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "full_n" }} , 
 	{ "name": "v_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_req", "role": "write" }} , 
 	{ "name": "voff3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "voff3", "role": "din" }} , 
 	{ "name": "voff3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "num_data_valid" }} , 
 	{ "name": "voff3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "voff3", "role": "fifo_cap" }} , 
 	{ "name": "voff3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "full_n" }} , 
 	{ "name": "voff3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voff3", "role": "write" }} , 
 	{ "name": "zext_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln92", "role": "default" }} , 
 	{ "name": "sext_ln112", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln112", "role": "default" }} , 
 	{ "name": "zext_ln92_18", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln92_18", "role": "default" }} , 
 	{ "name": "ori_request_peID_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ori_request_peID_V", "role": "default" }} , 
 	{ "name": "begin_block_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx", "role": "default" }} , 
 	{ "name": "curr_request_brlen_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brlen_13", "role": "default" }} , 
 	{ "name": "zext_ln92_7", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln92_7", "role": "default" }} , 
 	{ "name": "trunc_ln26", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "trunc_ln26", "role": "default" }} , 
 	{ "name": "begin_block_idx_8", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx_8", "role": "default" }} , 
 	{ "name": "curr_request_data_V_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "curr_request_data_V_21_out", "role": "default" }} , 
 	{ "name": "curr_request_data_V_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_data_V_21_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brlen_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brlen_12_out", "role": "default" }} , 
 	{ "name": "curr_request_brlen_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brlen_12_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brid_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brid_12_out", "role": "default" }} , 
 	{ "name": "curr_request_brid_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brid_12_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_target_V_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_request_target_V_18_out", "role": "default" }} , 
 	{ "name": "curr_request_target_V_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_target_V_18_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_write_idx_V_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_write_idx_V_21_out", "role": "default" }} , 
 	{ "name": "curr_request_write_idx_V_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_write_idx_V_21_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_peID_V_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_peID_V_21_out", "role": "default" }} , 
 	{ "name": "curr_request_peID_V_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_peID_V_21_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln92 { ap_none {  { zext_ln92 in_data 0 30 } } }
	 { m_axi {  { m_axi_bv3_AWVALID VALID 1 1 }  { m_axi_bv3_AWREADY READY 0 1 }  { m_axi_bv3_AWADDR ADDR 1 64 }  { m_axi_bv3_AWID ID 1 1 }  { m_axi_bv3_AWLEN SIZE 1 32 }  { m_axi_bv3_AWSIZE BURST 1 3 }  { m_axi_bv3_AWBURST LOCK 1 2 }  { m_axi_bv3_AWLOCK CACHE 1 2 }  { m_axi_bv3_AWCACHE PROT 1 4 }  { m_axi_bv3_AWPROT QOS 1 3 }  { m_axi_bv3_AWQOS REGION 1 4 }  { m_axi_bv3_AWREGION USER 1 4 }  { m_axi_bv3_AWUSER DATA 1 1 }  { m_axi_bv3_WVALID VALID 1 1 }  { m_axi_bv3_WREADY READY 0 1 }  { m_axi_bv3_WDATA FIFONUM 1 128 }  { m_axi_bv3_WSTRB STRB 1 16 }  { m_axi_bv3_WLAST LAST 1 1 }  { m_axi_bv3_WID ID 1 1 }  { m_axi_bv3_WUSER DATA 1 1 }  { m_axi_bv3_ARVALID VALID 1 1 }  { m_axi_bv3_ARREADY READY 0 1 }  { m_axi_bv3_ARADDR ADDR 1 64 }  { m_axi_bv3_ARID ID 1 1 }  { m_axi_bv3_ARLEN SIZE 1 32 }  { m_axi_bv3_ARSIZE BURST 1 3 }  { m_axi_bv3_ARBURST LOCK 1 2 }  { m_axi_bv3_ARLOCK CACHE 1 2 }  { m_axi_bv3_ARCACHE PROT 1 4 }  { m_axi_bv3_ARPROT QOS 1 3 }  { m_axi_bv3_ARQOS REGION 1 4 }  { m_axi_bv3_ARREGION USER 1 4 }  { m_axi_bv3_ARUSER DATA 1 1 }  { m_axi_bv3_RVALID VALID 0 1 }  { m_axi_bv3_RREADY READY 1 1 }  { m_axi_bv3_RDATA FIFONUM 0 128 }  { m_axi_bv3_RLAST LAST 0 1 }  { m_axi_bv3_RID ID 0 1 }  { m_axi_bv3_RFIFONUM LEN 0 9 }  { m_axi_bv3_RUSER DATA 0 1 }  { m_axi_bv3_RRESP RESP 0 2 }  { m_axi_bv3_BVALID VALID 0 1 }  { m_axi_bv3_BREADY READY 1 1 }  { m_axi_bv3_BRESP RESP 0 2 }  { m_axi_bv3_BID ID 0 1 }  { m_axi_bv3_BUSER DATA 0 1 } } }
	sext_ln112 { ap_none {  { sext_ln112 in_data 0 60 } } }
	zext_ln92_18 { ap_none {  { zext_ln92_18 in_data 0 31 } } }
	ori_request_peID_V { ap_none {  { ori_request_peID_V in_data 0 3 } } }
	begin_block_idx { ap_none {  { begin_block_idx in_data 0 30 } } }
	curr_request_brlen_13 { ap_none {  { curr_request_brlen_13 in_data 0 32 } } }
	voff3 { ap_fifo {  { voff3_din fifo_port_we 1 128 }  { voff3_num_data_valid fifo_status_num_data_valid 0 7 }  { voff3_fifo_cap fifo_update 0 7 }  { voff3_full_n fifo_status 0 1 }  { voff3_write fifo_data 1 1 } } }
	zext_ln92_7 { ap_none {  { zext_ln92_7 in_data 0 31 } } }
	trunc_ln26 { ap_none {  { trunc_ln26 in_data 0 3 } } }
	begin_block_idx_8 { ap_none {  { begin_block_idx_8 in_data 0 30 } } }
	v_req { ap_fifo {  { v_req_din fifo_port_we 1 209 }  { v_req_num_data_valid fifo_status_num_data_valid 0 7 }  { v_req_fifo_cap fifo_update 0 7 }  { v_req_full_n fifo_status 0 1 }  { v_req_write fifo_data 1 1 } } }
	curr_request_data_V_21_out { ap_vld {  { curr_request_data_V_21_out out_data 1 128 }  { curr_request_data_V_21_out_ap_vld out_vld 1 1 } } }
	curr_request_brlen_12_out { ap_vld {  { curr_request_brlen_12_out out_data 1 32 }  { curr_request_brlen_12_out_ap_vld out_vld 1 1 } } }
	curr_request_brid_12_out { ap_vld {  { curr_request_brid_12_out out_data 1 32 }  { curr_request_brid_12_out_ap_vld out_vld 1 1 } } }
	curr_request_target_V_18_out { ap_vld {  { curr_request_target_V_18_out out_data 1 2 }  { curr_request_target_V_18_out_ap_vld out_vld 1 1 } } }
	curr_request_write_idx_V_21_out { ap_vld {  { curr_request_write_idx_V_21_out out_data 1 3 }  { curr_request_write_idx_V_21_out_ap_vld out_vld 1 1 } } }
	curr_request_peID_V_21_out { ap_vld {  { curr_request_peID_V_21_out out_data 1 3 }  { curr_request_peID_V_21_out_ap_vld out_vld 1 1 } } }
}
