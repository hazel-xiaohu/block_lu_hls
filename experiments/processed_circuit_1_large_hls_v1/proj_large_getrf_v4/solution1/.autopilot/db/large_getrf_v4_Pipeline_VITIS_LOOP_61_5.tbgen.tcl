set moduleName large_getrf_v4_Pipeline_VITIS_LOOP_61_5
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
set C_modelName {large_getrf_v4_Pipeline_VITIS_LOOP_61_5}
set C_modelType { int 2 }
set C_modelArgList {
	{ zext_ln61 int 32 regular  }
	{ v4a2 int 32 regular {axi_master 0}  }
	{ v4a1 int 32 regular {axi_master 0}  }
	{ zext_ln61_1 int 32 regular  }
	{ a_val int 64 regular  }
	{ worktag_bank int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_1 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_2 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_3 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ add_ln52_3 int 64 regular  }
	{ work_bank float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_1 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_2 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_3 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ pattern_bank int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ pattern_bank_1 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ pattern_bank_2 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ pattern_bank_3 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ a_idx int 64 regular  }
	{ n int 32 regular  }
	{ empty int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4a2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_val","offset": { "type": "dynamic","port_name": "a_val","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "v4a1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a_idx","offset": { "type": "dynamic","port_name": "a_idx","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln61_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "worktag_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "add_ln52_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "work_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pattern_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pattern_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pattern_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pattern_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_idx", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 2} ]}
# RTL Port declarations: 
set portNum 174
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln61 sc_in sc_lv 32 signal 0 } 
	{ m_axi_v4a2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4a2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4a2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4a2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_v4a2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_v4a2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_v4a2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_v4a2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_v4a2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_v4a2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_v4a2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a2_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_v4a2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4a2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_v4a2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_v4a2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_v4a2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a2_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_v4a1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v4a1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v4a1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_v4a1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_v4a1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_v4a1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_v4a1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_v4a1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_v4a1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_v4a1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_v4a1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_v4a1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v4a1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_v4a1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_v4a1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_v4a1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_v4a1_BUSER sc_in sc_lv 1 signal 2 } 
	{ zext_ln61_1 sc_in sc_lv 32 signal 3 } 
	{ a_val sc_in sc_lv 64 signal 4 } 
	{ worktag_bank_address0 sc_out sc_lv 10 signal 5 } 
	{ worktag_bank_ce0 sc_out sc_logic 1 signal 5 } 
	{ worktag_bank_q0 sc_in sc_lv 32 signal 5 } 
	{ worktag_bank_address1 sc_out sc_lv 10 signal 5 } 
	{ worktag_bank_ce1 sc_out sc_logic 1 signal 5 } 
	{ worktag_bank_we1 sc_out sc_logic 1 signal 5 } 
	{ worktag_bank_d1 sc_out sc_lv 32 signal 5 } 
	{ worktag_bank_1_address0 sc_out sc_lv 10 signal 6 } 
	{ worktag_bank_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ worktag_bank_1_q0 sc_in sc_lv 32 signal 6 } 
	{ worktag_bank_1_address1 sc_out sc_lv 10 signal 6 } 
	{ worktag_bank_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ worktag_bank_1_we1 sc_out sc_logic 1 signal 6 } 
	{ worktag_bank_1_d1 sc_out sc_lv 32 signal 6 } 
	{ worktag_bank_2_address0 sc_out sc_lv 10 signal 7 } 
	{ worktag_bank_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ worktag_bank_2_q0 sc_in sc_lv 32 signal 7 } 
	{ worktag_bank_2_address1 sc_out sc_lv 10 signal 7 } 
	{ worktag_bank_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ worktag_bank_2_we1 sc_out sc_logic 1 signal 7 } 
	{ worktag_bank_2_d1 sc_out sc_lv 32 signal 7 } 
	{ worktag_bank_3_address0 sc_out sc_lv 10 signal 8 } 
	{ worktag_bank_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ worktag_bank_3_q0 sc_in sc_lv 32 signal 8 } 
	{ worktag_bank_3_address1 sc_out sc_lv 10 signal 8 } 
	{ worktag_bank_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ worktag_bank_3_we1 sc_out sc_logic 1 signal 8 } 
	{ worktag_bank_3_d1 sc_out sc_lv 32 signal 8 } 
	{ add_ln52_3 sc_in sc_lv 64 signal 9 } 
	{ work_bank_address0 sc_out sc_lv 10 signal 10 } 
	{ work_bank_ce0 sc_out sc_logic 1 signal 10 } 
	{ work_bank_q0 sc_in sc_lv 32 signal 10 } 
	{ work_bank_address1 sc_out sc_lv 10 signal 10 } 
	{ work_bank_ce1 sc_out sc_logic 1 signal 10 } 
	{ work_bank_we1 sc_out sc_logic 1 signal 10 } 
	{ work_bank_d1 sc_out sc_lv 32 signal 10 } 
	{ work_bank_1_address0 sc_out sc_lv 10 signal 11 } 
	{ work_bank_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ work_bank_1_q0 sc_in sc_lv 32 signal 11 } 
	{ work_bank_1_address1 sc_out sc_lv 10 signal 11 } 
	{ work_bank_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ work_bank_1_we1 sc_out sc_logic 1 signal 11 } 
	{ work_bank_1_d1 sc_out sc_lv 32 signal 11 } 
	{ work_bank_2_address0 sc_out sc_lv 10 signal 12 } 
	{ work_bank_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ work_bank_2_q0 sc_in sc_lv 32 signal 12 } 
	{ work_bank_2_address1 sc_out sc_lv 10 signal 12 } 
	{ work_bank_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ work_bank_2_we1 sc_out sc_logic 1 signal 12 } 
	{ work_bank_2_d1 sc_out sc_lv 32 signal 12 } 
	{ work_bank_3_address0 sc_out sc_lv 10 signal 13 } 
	{ work_bank_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ work_bank_3_q0 sc_in sc_lv 32 signal 13 } 
	{ work_bank_3_address1 sc_out sc_lv 10 signal 13 } 
	{ work_bank_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ work_bank_3_we1 sc_out sc_logic 1 signal 13 } 
	{ work_bank_3_d1 sc_out sc_lv 32 signal 13 } 
	{ pattern_bank_address0 sc_out sc_lv 10 signal 14 } 
	{ pattern_bank_ce0 sc_out sc_logic 1 signal 14 } 
	{ pattern_bank_q0 sc_in sc_lv 32 signal 14 } 
	{ pattern_bank_1_address0 sc_out sc_lv 10 signal 15 } 
	{ pattern_bank_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ pattern_bank_1_q0 sc_in sc_lv 32 signal 15 } 
	{ pattern_bank_2_address0 sc_out sc_lv 10 signal 16 } 
	{ pattern_bank_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ pattern_bank_2_q0 sc_in sc_lv 32 signal 16 } 
	{ pattern_bank_3_address0 sc_out sc_lv 10 signal 17 } 
	{ pattern_bank_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ pattern_bank_3_q0 sc_in sc_lv 32 signal 17 } 
	{ a_idx sc_in sc_lv 64 signal 18 } 
	{ n sc_in sc_lv 32 signal 19 } 
	{ empty sc_in sc_lv 32 signal 20 } 
	{ ap_return sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln61", "role": "default" }} , 
 	{ "name": "m_axi_v4a2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4a2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4a2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4a2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWID" }} , 
 	{ "name": "m_axi_v4a2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4a2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4a2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4a2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4a2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4a2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4a2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4a2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4a2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4a2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4a2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4a2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4a2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4a2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4a2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WID" }} , 
 	{ "name": "m_axi_v4a2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4a2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4a2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4a2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4a2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARID" }} , 
 	{ "name": "m_axi_v4a2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4a2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4a2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4a2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4a2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4a2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4a2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4a2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4a2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4a2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4a2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4a2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a2", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4a2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4a2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RID" }} , 
 	{ "name": "m_axi_v4a2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v4a2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v4a2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4a2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4a2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4a2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4a2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a2", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4a2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BID" }} , 
 	{ "name": "m_axi_v4a2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a2", "role": "BUSER" }} , 
 	{ "name": "m_axi_v4a1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_v4a1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_v4a1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_v4a1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWID" }} , 
 	{ "name": "m_axi_v4a1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_v4a1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_v4a1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_v4a1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_v4a1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_v4a1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_v4a1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_v4a1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_v4a1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_v4a1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WVALID" }} , 
 	{ "name": "m_axi_v4a1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WREADY" }} , 
 	{ "name": "m_axi_v4a1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "WDATA" }} , 
 	{ "name": "m_axi_v4a1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_v4a1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WLAST" }} , 
 	{ "name": "m_axi_v4a1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WID" }} , 
 	{ "name": "m_axi_v4a1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "WUSER" }} , 
 	{ "name": "m_axi_v4a1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_v4a1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_v4a1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v4a1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_v4a1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARID" }} , 
 	{ "name": "m_axi_v4a1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_v4a1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_v4a1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_v4a1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_v4a1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_v4a1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v4a1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_v4a1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_v4a1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4a1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_v4a1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_v4a1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RVALID" }} , 
 	{ "name": "m_axi_v4a1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RREADY" }} , 
 	{ "name": "m_axi_v4a1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4a1", "role": "RDATA" }} , 
 	{ "name": "m_axi_v4a1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RLAST" }} , 
 	{ "name": "m_axi_v4a1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RID" }} , 
 	{ "name": "m_axi_v4a1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v4a1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_v4a1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "RUSER" }} , 
 	{ "name": "m_axi_v4a1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "RRESP" }} , 
 	{ "name": "m_axi_v4a1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BVALID" }} , 
 	{ "name": "m_axi_v4a1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BREADY" }} , 
 	{ "name": "m_axi_v4a1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "v4a1", "role": "BRESP" }} , 
 	{ "name": "m_axi_v4a1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BID" }} , 
 	{ "name": "m_axi_v4a1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "v4a1", "role": "BUSER" }} , 
 	{ "name": "zext_ln61_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln61_1", "role": "default" }} , 
 	{ "name": "a_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "default" }} , 
 	{ "name": "worktag_bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank", "role": "address0" }} , 
 	{ "name": "worktag_bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "ce0" }} , 
 	{ "name": "worktag_bank_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank", "role": "q0" }} , 
 	{ "name": "worktag_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank", "role": "address1" }} , 
 	{ "name": "worktag_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "ce1" }} , 
 	{ "name": "worktag_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "we1" }} , 
 	{ "name": "worktag_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank", "role": "d1" }} , 
 	{ "name": "worktag_bank_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "address0" }} , 
 	{ "name": "worktag_bank_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "ce0" }} , 
 	{ "name": "worktag_bank_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "q0" }} , 
 	{ "name": "worktag_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "address1" }} , 
 	{ "name": "worktag_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "ce1" }} , 
 	{ "name": "worktag_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "we1" }} , 
 	{ "name": "worktag_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "d1" }} , 
 	{ "name": "worktag_bank_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "address0" }} , 
 	{ "name": "worktag_bank_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "ce0" }} , 
 	{ "name": "worktag_bank_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "q0" }} , 
 	{ "name": "worktag_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "address1" }} , 
 	{ "name": "worktag_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "ce1" }} , 
 	{ "name": "worktag_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "we1" }} , 
 	{ "name": "worktag_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "d1" }} , 
 	{ "name": "worktag_bank_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "address0" }} , 
 	{ "name": "worktag_bank_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "ce0" }} , 
 	{ "name": "worktag_bank_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "q0" }} , 
 	{ "name": "worktag_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "address1" }} , 
 	{ "name": "worktag_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "ce1" }} , 
 	{ "name": "worktag_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "we1" }} , 
 	{ "name": "worktag_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "d1" }} , 
 	{ "name": "add_ln52_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln52_3", "role": "default" }} , 
 	{ "name": "work_bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank", "role": "address0" }} , 
 	{ "name": "work_bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "ce0" }} , 
 	{ "name": "work_bank_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank", "role": "q0" }} , 
 	{ "name": "work_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank", "role": "address1" }} , 
 	{ "name": "work_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "ce1" }} , 
 	{ "name": "work_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "we1" }} , 
 	{ "name": "work_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank", "role": "d1" }} , 
 	{ "name": "work_bank_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_1", "role": "address0" }} , 
 	{ "name": "work_bank_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "ce0" }} , 
 	{ "name": "work_bank_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_1", "role": "q0" }} , 
 	{ "name": "work_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_1", "role": "address1" }} , 
 	{ "name": "work_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "ce1" }} , 
 	{ "name": "work_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "we1" }} , 
 	{ "name": "work_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_1", "role": "d1" }} , 
 	{ "name": "work_bank_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_2", "role": "address0" }} , 
 	{ "name": "work_bank_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "ce0" }} , 
 	{ "name": "work_bank_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_2", "role": "q0" }} , 
 	{ "name": "work_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_2", "role": "address1" }} , 
 	{ "name": "work_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "ce1" }} , 
 	{ "name": "work_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "we1" }} , 
 	{ "name": "work_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_2", "role": "d1" }} , 
 	{ "name": "work_bank_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_3", "role": "address0" }} , 
 	{ "name": "work_bank_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "ce0" }} , 
 	{ "name": "work_bank_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_3", "role": "q0" }} , 
 	{ "name": "work_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_3", "role": "address1" }} , 
 	{ "name": "work_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "ce1" }} , 
 	{ "name": "work_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "we1" }} , 
 	{ "name": "work_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_3", "role": "d1" }} , 
 	{ "name": "pattern_bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank", "role": "address0" }} , 
 	{ "name": "pattern_bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank", "role": "ce0" }} , 
 	{ "name": "pattern_bank_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank", "role": "q0" }} , 
 	{ "name": "pattern_bank_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "address0" }} , 
 	{ "name": "pattern_bank_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "ce0" }} , 
 	{ "name": "pattern_bank_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_1", "role": "q0" }} , 
 	{ "name": "pattern_bank_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "address0" }} , 
 	{ "name": "pattern_bank_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "ce0" }} , 
 	{ "name": "pattern_bank_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_2", "role": "q0" }} , 
 	{ "name": "pattern_bank_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "address0" }} , 
 	{ "name": "pattern_bank_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "ce0" }} , 
 	{ "name": "pattern_bank_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pattern_bank_3", "role": "q0" }} , 
 	{ "name": "a_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_idx", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_61_5",
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
			{"Name" : "zext_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "v4a2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4a2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4a2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "v4a1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "v4a1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "v4a1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln61_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pattern_bank", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pattern_bank_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_6_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U30", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U31", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U32", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4_Pipeline_VITIS_LOOP_61_5 {
		zext_ln61 {Type I LastRead 0 FirstWrite -1}
		v4a2 {Type I LastRead 16 FirstWrite -1}
		v4a1 {Type I LastRead 7 FirstWrite -1}
		zext_ln61_1 {Type I LastRead 0 FirstWrite -1}
		a_val {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_1 {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_2 {Type IO LastRead 8 FirstWrite 9}
		worktag_bank_3 {Type IO LastRead 8 FirstWrite 9}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 15 FirstWrite 14}
		work_bank_1 {Type IO LastRead 15 FirstWrite 14}
		work_bank_2 {Type IO LastRead 15 FirstWrite 14}
		work_bank_3 {Type IO LastRead 15 FirstWrite 14}
		pattern_bank {Type I LastRead 7 FirstWrite -1}
		pattern_bank_1 {Type I LastRead 7 FirstWrite -1}
		pattern_bank_2 {Type I LastRead 7 FirstWrite -1}
		pattern_bank_3 {Type I LastRead 7 FirstWrite -1}
		a_idx {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln61 { ap_none {  { zext_ln61 in_data 0 32 } } }
	 { m_axi {  { m_axi_v4a2_AWVALID VALID 1 1 }  { m_axi_v4a2_AWREADY READY 0 1 }  { m_axi_v4a2_AWADDR ADDR 1 64 }  { m_axi_v4a2_AWID ID 1 1 }  { m_axi_v4a2_AWLEN SIZE 1 32 }  { m_axi_v4a2_AWSIZE BURST 1 3 }  { m_axi_v4a2_AWBURST LOCK 1 2 }  { m_axi_v4a2_AWLOCK CACHE 1 2 }  { m_axi_v4a2_AWCACHE PROT 1 4 }  { m_axi_v4a2_AWPROT QOS 1 3 }  { m_axi_v4a2_AWQOS REGION 1 4 }  { m_axi_v4a2_AWREGION USER 1 4 }  { m_axi_v4a2_AWUSER DATA 1 1 }  { m_axi_v4a2_WVALID VALID 1 1 }  { m_axi_v4a2_WREADY READY 0 1 }  { m_axi_v4a2_WDATA FIFONUM 1 32 }  { m_axi_v4a2_WSTRB STRB 1 4 }  { m_axi_v4a2_WLAST LAST 1 1 }  { m_axi_v4a2_WID ID 1 1 }  { m_axi_v4a2_WUSER DATA 1 1 }  { m_axi_v4a2_ARVALID VALID 1 1 }  { m_axi_v4a2_ARREADY READY 0 1 }  { m_axi_v4a2_ARADDR ADDR 1 64 }  { m_axi_v4a2_ARID ID 1 1 }  { m_axi_v4a2_ARLEN SIZE 1 32 }  { m_axi_v4a2_ARSIZE BURST 1 3 }  { m_axi_v4a2_ARBURST LOCK 1 2 }  { m_axi_v4a2_ARLOCK CACHE 1 2 }  { m_axi_v4a2_ARCACHE PROT 1 4 }  { m_axi_v4a2_ARPROT QOS 1 3 }  { m_axi_v4a2_ARQOS REGION 1 4 }  { m_axi_v4a2_ARREGION USER 1 4 }  { m_axi_v4a2_ARUSER DATA 1 1 }  { m_axi_v4a2_RVALID VALID 0 1 }  { m_axi_v4a2_RREADY READY 1 1 }  { m_axi_v4a2_RDATA FIFONUM 0 32 }  { m_axi_v4a2_RLAST LAST 0 1 }  { m_axi_v4a2_RID ID 0 1 }  { m_axi_v4a2_RFIFONUM LEN 0 9 }  { m_axi_v4a2_RUSER DATA 0 1 }  { m_axi_v4a2_RRESP RESP 0 2 }  { m_axi_v4a2_BVALID VALID 0 1 }  { m_axi_v4a2_BREADY READY 1 1 }  { m_axi_v4a2_BRESP RESP 0 2 }  { m_axi_v4a2_BID ID 0 1 }  { m_axi_v4a2_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_v4a1_AWVALID VALID 1 1 }  { m_axi_v4a1_AWREADY READY 0 1 }  { m_axi_v4a1_AWADDR ADDR 1 64 }  { m_axi_v4a1_AWID ID 1 1 }  { m_axi_v4a1_AWLEN SIZE 1 32 }  { m_axi_v4a1_AWSIZE BURST 1 3 }  { m_axi_v4a1_AWBURST LOCK 1 2 }  { m_axi_v4a1_AWLOCK CACHE 1 2 }  { m_axi_v4a1_AWCACHE PROT 1 4 }  { m_axi_v4a1_AWPROT QOS 1 3 }  { m_axi_v4a1_AWQOS REGION 1 4 }  { m_axi_v4a1_AWREGION USER 1 4 }  { m_axi_v4a1_AWUSER DATA 1 1 }  { m_axi_v4a1_WVALID VALID 1 1 }  { m_axi_v4a1_WREADY READY 0 1 }  { m_axi_v4a1_WDATA FIFONUM 1 32 }  { m_axi_v4a1_WSTRB STRB 1 4 }  { m_axi_v4a1_WLAST LAST 1 1 }  { m_axi_v4a1_WID ID 1 1 }  { m_axi_v4a1_WUSER DATA 1 1 }  { m_axi_v4a1_ARVALID VALID 1 1 }  { m_axi_v4a1_ARREADY READY 0 1 }  { m_axi_v4a1_ARADDR ADDR 1 64 }  { m_axi_v4a1_ARID ID 1 1 }  { m_axi_v4a1_ARLEN SIZE 1 32 }  { m_axi_v4a1_ARSIZE BURST 1 3 }  { m_axi_v4a1_ARBURST LOCK 1 2 }  { m_axi_v4a1_ARLOCK CACHE 1 2 }  { m_axi_v4a1_ARCACHE PROT 1 4 }  { m_axi_v4a1_ARPROT QOS 1 3 }  { m_axi_v4a1_ARQOS REGION 1 4 }  { m_axi_v4a1_ARREGION USER 1 4 }  { m_axi_v4a1_ARUSER DATA 1 1 }  { m_axi_v4a1_RVALID VALID 0 1 }  { m_axi_v4a1_RREADY READY 1 1 }  { m_axi_v4a1_RDATA FIFONUM 0 32 }  { m_axi_v4a1_RLAST LAST 0 1 }  { m_axi_v4a1_RID ID 0 1 }  { m_axi_v4a1_RFIFONUM LEN 0 9 }  { m_axi_v4a1_RUSER DATA 0 1 }  { m_axi_v4a1_RRESP RESP 0 2 }  { m_axi_v4a1_BVALID VALID 0 1 }  { m_axi_v4a1_BREADY READY 1 1 }  { m_axi_v4a1_BRESP RESP 0 2 }  { m_axi_v4a1_BID ID 0 1 }  { m_axi_v4a1_BUSER DATA 0 1 } } }
	zext_ln61_1 { ap_none {  { zext_ln61_1 in_data 0 32 } } }
	a_val { ap_none {  { a_val in_data 0 64 } } }
	worktag_bank { ap_memory {  { worktag_bank_address0 mem_address 1 10 }  { worktag_bank_ce0 mem_ce 1 1 }  { worktag_bank_q0 in_data 0 32 }  { worktag_bank_address1 MemPortADDR2 1 10 }  { worktag_bank_ce1 MemPortCE2 1 1 }  { worktag_bank_we1 MemPortWE2 1 1 }  { worktag_bank_d1 MemPortDIN2 1 32 } } }
	worktag_bank_1 { ap_memory {  { worktag_bank_1_address0 mem_address 1 10 }  { worktag_bank_1_ce0 mem_ce 1 1 }  { worktag_bank_1_q0 in_data 0 32 }  { worktag_bank_1_address1 MemPortADDR2 1 10 }  { worktag_bank_1_ce1 MemPortCE2 1 1 }  { worktag_bank_1_we1 MemPortWE2 1 1 }  { worktag_bank_1_d1 MemPortDIN2 1 32 } } }
	worktag_bank_2 { ap_memory {  { worktag_bank_2_address0 mem_address 1 10 }  { worktag_bank_2_ce0 mem_ce 1 1 }  { worktag_bank_2_q0 in_data 0 32 }  { worktag_bank_2_address1 MemPortADDR2 1 10 }  { worktag_bank_2_ce1 MemPortCE2 1 1 }  { worktag_bank_2_we1 MemPortWE2 1 1 }  { worktag_bank_2_d1 MemPortDIN2 1 32 } } }
	worktag_bank_3 { ap_memory {  { worktag_bank_3_address0 mem_address 1 10 }  { worktag_bank_3_ce0 mem_ce 1 1 }  { worktag_bank_3_q0 in_data 0 32 }  { worktag_bank_3_address1 MemPortADDR2 1 10 }  { worktag_bank_3_ce1 MemPortCE2 1 1 }  { worktag_bank_3_we1 MemPortWE2 1 1 }  { worktag_bank_3_d1 MemPortDIN2 1 32 } } }
	add_ln52_3 { ap_none {  { add_ln52_3 in_data 0 64 } } }
	work_bank { ap_memory {  { work_bank_address0 mem_address 1 10 }  { work_bank_ce0 mem_ce 1 1 }  { work_bank_q0 in_data 0 32 }  { work_bank_address1 MemPortADDR2 1 10 }  { work_bank_ce1 MemPortCE2 1 1 }  { work_bank_we1 MemPortWE2 1 1 }  { work_bank_d1 MemPortDIN2 1 32 } } }
	work_bank_1 { ap_memory {  { work_bank_1_address0 mem_address 1 10 }  { work_bank_1_ce0 mem_ce 1 1 }  { work_bank_1_q0 in_data 0 32 }  { work_bank_1_address1 MemPortADDR2 1 10 }  { work_bank_1_ce1 MemPortCE2 1 1 }  { work_bank_1_we1 MemPortWE2 1 1 }  { work_bank_1_d1 MemPortDIN2 1 32 } } }
	work_bank_2 { ap_memory {  { work_bank_2_address0 mem_address 1 10 }  { work_bank_2_ce0 mem_ce 1 1 }  { work_bank_2_q0 in_data 0 32 }  { work_bank_2_address1 MemPortADDR2 1 10 }  { work_bank_2_ce1 MemPortCE2 1 1 }  { work_bank_2_we1 MemPortWE2 1 1 }  { work_bank_2_d1 MemPortDIN2 1 32 } } }
	work_bank_3 { ap_memory {  { work_bank_3_address0 mem_address 1 10 }  { work_bank_3_ce0 mem_ce 1 1 }  { work_bank_3_q0 in_data 0 32 }  { work_bank_3_address1 MemPortADDR2 1 10 }  { work_bank_3_ce1 MemPortCE2 1 1 }  { work_bank_3_we1 MemPortWE2 1 1 }  { work_bank_3_d1 MemPortDIN2 1 32 } } }
	pattern_bank { ap_memory {  { pattern_bank_address0 mem_address 1 10 }  { pattern_bank_ce0 mem_ce 1 1 }  { pattern_bank_q0 in_data 0 32 } } }
	pattern_bank_1 { ap_memory {  { pattern_bank_1_address0 mem_address 1 10 }  { pattern_bank_1_ce0 mem_ce 1 1 }  { pattern_bank_1_q0 in_data 0 32 } } }
	pattern_bank_2 { ap_memory {  { pattern_bank_2_address0 mem_address 1 10 }  { pattern_bank_2_ce0 mem_ce 1 1 }  { pattern_bank_2_q0 in_data 0 32 } } }
	pattern_bank_3 { ap_memory {  { pattern_bank_3_address0 mem_address 1 10 }  { pattern_bank_3_ce0 mem_ce 1 1 }  { pattern_bank_3_q0 in_data 0 32 } } }
	a_idx { ap_none {  { a_idx in_data 0 64 } } }
	n { ap_none {  { n in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
}
