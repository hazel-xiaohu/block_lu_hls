set moduleName schedule_access_77_Pipeline_VITIS_LOOP_112_4
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
set C_modelName {schedule_access.77_Pipeline_VITIS_LOOP_112_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln92 int 30 regular  }
	{ bc2 int 128 regular {axi_master 0}  }
	{ sext_ln112 int 60 regular  }
	{ zext_ln92_23 int 31 regular  }
	{ ori_request_peID_V int 3 regular  }
	{ begin_block_idx int 30 regular  }
	{ curr_request_brlen_15 int 32 regular  }
	{ coff4 int 128 regular {fifo 1 volatile }  }
	{ zext_ln92_9 int 31 regular  }
	{ trunc_ln28 int 3 regular  }
	{ begin_block_idx_10 int 30 regular  }
	{ c_req int 209 regular {fifo 1 volatile }  }
	{ curr_request_data_V_27_out int 128 regular {pointer 1}  }
	{ curr_request_brlen_14_out int 32 regular {pointer 1}  }
	{ curr_request_brid_14_out int 32 regular {pointer 1}  }
	{ curr_request_target_V_23_out int 2 regular {pointer 1}  }
	{ curr_request_write_idx_V_27_out int 3 regular {pointer 1}  }
	{ curr_request_peID_V_27_out int 3 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln92", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "bc2", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B_cid_port2","offset": { "type": "dynamic","port_name": "B_cid_port2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln112", "interface" : "wire", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln92_23", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "ori_request_peID_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "curr_request_brlen_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coff4", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln92_9", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln28", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "begin_block_idx_10", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "c_req", "interface" : "fifo", "bitwidth" : 209, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_data_V_27_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brlen_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_brid_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_target_V_23_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_write_idx_V_27_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "curr_request_peID_V_27_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bc2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bc2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bc2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bc2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bc2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bc2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bc2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_bc2_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_bc2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_bc2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_bc2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bc2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bc2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bc2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bc2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bc2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bc2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_bc2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bc2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_bc2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bc2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bc2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bc2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bc2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bc2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bc2_BUSER sc_in sc_lv 1 signal 1 } 
	{ c_req_din sc_out sc_lv 209 signal 11 } 
	{ c_req_num_data_valid sc_in sc_lv 7 signal 11 } 
	{ c_req_fifo_cap sc_in sc_lv 7 signal 11 } 
	{ c_req_full_n sc_in sc_logic 1 signal 11 } 
	{ c_req_write sc_out sc_logic 1 signal 11 } 
	{ coff4_din sc_out sc_lv 128 signal 7 } 
	{ coff4_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ coff4_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ coff4_full_n sc_in sc_logic 1 signal 7 } 
	{ coff4_write sc_out sc_logic 1 signal 7 } 
	{ zext_ln92 sc_in sc_lv 30 signal 0 } 
	{ sext_ln112 sc_in sc_lv 60 signal 2 } 
	{ zext_ln92_23 sc_in sc_lv 31 signal 3 } 
	{ ori_request_peID_V sc_in sc_lv 3 signal 4 } 
	{ begin_block_idx sc_in sc_lv 30 signal 5 } 
	{ curr_request_brlen_15 sc_in sc_lv 32 signal 6 } 
	{ zext_ln92_9 sc_in sc_lv 31 signal 8 } 
	{ trunc_ln28 sc_in sc_lv 3 signal 9 } 
	{ begin_block_idx_10 sc_in sc_lv 30 signal 10 } 
	{ curr_request_data_V_27_out sc_out sc_lv 128 signal 12 } 
	{ curr_request_data_V_27_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ curr_request_brlen_14_out sc_out sc_lv 32 signal 13 } 
	{ curr_request_brlen_14_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ curr_request_brid_14_out sc_out sc_lv 32 signal 14 } 
	{ curr_request_brid_14_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ curr_request_target_V_23_out sc_out sc_lv 2 signal 15 } 
	{ curr_request_target_V_23_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ curr_request_write_idx_V_27_out sc_out sc_lv 3 signal 16 } 
	{ curr_request_write_idx_V_27_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ curr_request_peID_V_27_out sc_out sc_lv 3 signal 17 } 
	{ curr_request_peID_V_27_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "c_req_din", "direction": "out", "datatype": "sc_lv", "bitwidth":209, "type": "signal", "bundle":{"name": "c_req", "role": "din" }} , 
 	{ "name": "c_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "num_data_valid" }} , 
 	{ "name": "c_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_req", "role": "fifo_cap" }} , 
 	{ "name": "c_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "full_n" }} , 
 	{ "name": "c_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "write" }} , 
 	{ "name": "coff4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "coff4", "role": "din" }} , 
 	{ "name": "coff4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "num_data_valid" }} , 
 	{ "name": "coff4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "coff4", "role": "fifo_cap" }} , 
 	{ "name": "coff4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "full_n" }} , 
 	{ "name": "coff4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coff4", "role": "write" }} , 
 	{ "name": "zext_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "zext_ln92", "role": "default" }} , 
 	{ "name": "sext_ln112", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "sext_ln112", "role": "default" }} , 
 	{ "name": "zext_ln92_23", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln92_23", "role": "default" }} , 
 	{ "name": "ori_request_peID_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ori_request_peID_V", "role": "default" }} , 
 	{ "name": "begin_block_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx", "role": "default" }} , 
 	{ "name": "curr_request_brlen_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brlen_15", "role": "default" }} , 
 	{ "name": "zext_ln92_9", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln92_9", "role": "default" }} , 
 	{ "name": "trunc_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "trunc_ln28", "role": "default" }} , 
 	{ "name": "begin_block_idx_10", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "begin_block_idx_10", "role": "default" }} , 
 	{ "name": "curr_request_data_V_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "curr_request_data_V_27_out", "role": "default" }} , 
 	{ "name": "curr_request_data_V_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_data_V_27_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brlen_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brlen_14_out", "role": "default" }} , 
 	{ "name": "curr_request_brlen_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brlen_14_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_brid_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "curr_request_brid_14_out", "role": "default" }} , 
 	{ "name": "curr_request_brid_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_brid_14_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_target_V_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "curr_request_target_V_23_out", "role": "default" }} , 
 	{ "name": "curr_request_target_V_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_target_V_23_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_write_idx_V_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_write_idx_V_27_out", "role": "default" }} , 
 	{ "name": "curr_request_write_idx_V_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_write_idx_V_27_out", "role": "ap_vld" }} , 
 	{ "name": "curr_request_peID_V_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "curr_request_peID_V_27_out", "role": "default" }} , 
 	{ "name": "curr_request_peID_V_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "curr_request_peID_V_27_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln92 { ap_none {  { zext_ln92 in_data 0 30 } } }
	 { m_axi {  { m_axi_bc2_AWVALID VALID 1 1 }  { m_axi_bc2_AWREADY READY 0 1 }  { m_axi_bc2_AWADDR ADDR 1 64 }  { m_axi_bc2_AWID ID 1 1 }  { m_axi_bc2_AWLEN SIZE 1 32 }  { m_axi_bc2_AWSIZE BURST 1 3 }  { m_axi_bc2_AWBURST LOCK 1 2 }  { m_axi_bc2_AWLOCK CACHE 1 2 }  { m_axi_bc2_AWCACHE PROT 1 4 }  { m_axi_bc2_AWPROT QOS 1 3 }  { m_axi_bc2_AWQOS REGION 1 4 }  { m_axi_bc2_AWREGION USER 1 4 }  { m_axi_bc2_AWUSER DATA 1 1 }  { m_axi_bc2_WVALID VALID 1 1 }  { m_axi_bc2_WREADY READY 0 1 }  { m_axi_bc2_WDATA FIFONUM 1 128 }  { m_axi_bc2_WSTRB STRB 1 16 }  { m_axi_bc2_WLAST LAST 1 1 }  { m_axi_bc2_WID ID 1 1 }  { m_axi_bc2_WUSER DATA 1 1 }  { m_axi_bc2_ARVALID VALID 1 1 }  { m_axi_bc2_ARREADY READY 0 1 }  { m_axi_bc2_ARADDR ADDR 1 64 }  { m_axi_bc2_ARID ID 1 1 }  { m_axi_bc2_ARLEN SIZE 1 32 }  { m_axi_bc2_ARSIZE BURST 1 3 }  { m_axi_bc2_ARBURST LOCK 1 2 }  { m_axi_bc2_ARLOCK CACHE 1 2 }  { m_axi_bc2_ARCACHE PROT 1 4 }  { m_axi_bc2_ARPROT QOS 1 3 }  { m_axi_bc2_ARQOS REGION 1 4 }  { m_axi_bc2_ARREGION USER 1 4 }  { m_axi_bc2_ARUSER DATA 1 1 }  { m_axi_bc2_RVALID VALID 0 1 }  { m_axi_bc2_RREADY READY 1 1 }  { m_axi_bc2_RDATA FIFONUM 0 128 }  { m_axi_bc2_RLAST LAST 0 1 }  { m_axi_bc2_RID ID 0 1 }  { m_axi_bc2_RFIFONUM LEN 0 9 }  { m_axi_bc2_RUSER DATA 0 1 }  { m_axi_bc2_RRESP RESP 0 2 }  { m_axi_bc2_BVALID VALID 0 1 }  { m_axi_bc2_BREADY READY 1 1 }  { m_axi_bc2_BRESP RESP 0 2 }  { m_axi_bc2_BID ID 0 1 }  { m_axi_bc2_BUSER DATA 0 1 } } }
	sext_ln112 { ap_none {  { sext_ln112 in_data 0 60 } } }
	zext_ln92_23 { ap_none {  { zext_ln92_23 in_data 0 31 } } }
	ori_request_peID_V { ap_none {  { ori_request_peID_V in_data 0 3 } } }
	begin_block_idx { ap_none {  { begin_block_idx in_data 0 30 } } }
	curr_request_brlen_15 { ap_none {  { curr_request_brlen_15 in_data 0 32 } } }
	coff4 { ap_fifo {  { coff4_din fifo_port_we 1 128 }  { coff4_num_data_valid fifo_status_num_data_valid 0 7 }  { coff4_fifo_cap fifo_update 0 7 }  { coff4_full_n fifo_status 0 1 }  { coff4_write fifo_data 1 1 } } }
	zext_ln92_9 { ap_none {  { zext_ln92_9 in_data 0 31 } } }
	trunc_ln28 { ap_none {  { trunc_ln28 in_data 0 3 } } }
	begin_block_idx_10 { ap_none {  { begin_block_idx_10 in_data 0 30 } } }
	c_req { ap_fifo {  { c_req_din fifo_port_we 1 209 }  { c_req_num_data_valid fifo_status_num_data_valid 0 7 }  { c_req_fifo_cap fifo_update 0 7 }  { c_req_full_n fifo_status 0 1 }  { c_req_write fifo_data 1 1 } } }
	curr_request_data_V_27_out { ap_vld {  { curr_request_data_V_27_out out_data 1 128 }  { curr_request_data_V_27_out_ap_vld out_vld 1 1 } } }
	curr_request_brlen_14_out { ap_vld {  { curr_request_brlen_14_out out_data 1 32 }  { curr_request_brlen_14_out_ap_vld out_vld 1 1 } } }
	curr_request_brid_14_out { ap_vld {  { curr_request_brid_14_out out_data 1 32 }  { curr_request_brid_14_out_ap_vld out_vld 1 1 } } }
	curr_request_target_V_23_out { ap_vld {  { curr_request_target_V_23_out out_data 1 2 }  { curr_request_target_V_23_out_ap_vld out_vld 1 1 } } }
	curr_request_write_idx_V_27_out { ap_vld {  { curr_request_write_idx_V_27_out out_data 1 3 }  { curr_request_write_idx_V_27_out_ap_vld out_vld 1 1 } } }
	curr_request_peID_V_27_out { ap_vld {  { curr_request_peID_V_27_out out_data 1 3 }  { curr_request_peID_V_27_out_ap_vld out_vld 1 1 } } }
}
