set moduleName run_cached_getrf_Pipeline_VITIS_LOOP_257_8
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
set cdfgNum 21
set C_modelName {run_cached_getrf_Pipeline_VITIS_LOOP_257_8}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict work_0 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pos_5 int 32 regular  }
	{ l_row_addr_read_1 int 32 regular  }
	{ l_col int 32 regular {axi_master 0}  }
	{ sext_ln257_1 int 62 regular  }
	{ l_val int 32 regular {axi_master 1}  }
	{ sext_ln257_2 int 62 regular  }
	{ zext_ln260 int 10 regular  }
	{ work_0 float 32 regular {array 1024 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_1 float 32 regular {array 1024 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_2 float 32 regular {array 1024 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_3 float 32 regular {array 1024 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ row_7 int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pos_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "l_row_addr_read_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "l_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "L_cid","offset": { "type": "dynamic","port_name": "L_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln257_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "l_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "L_val_r","offset": { "type": "dynamic","port_name": "L_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln257_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln260", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "work_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_l_col_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_l_col_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_l_col_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_l_col_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_l_col_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_l_col_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_l_col_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_l_col_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_l_col_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_l_col_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_l_col_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_l_col_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_l_col_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_l_col_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_l_col_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_l_col_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_l_val_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_l_val_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_l_val_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_val_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_val_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_l_val_0_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_l_val_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_l_val_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_val_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_l_val_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_l_val_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_l_val_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_l_val_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_l_val_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_l_val_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_l_val_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ pos_5 sc_in sc_lv 32 signal 0 } 
	{ l_row_addr_read_1 sc_in sc_lv 32 signal 1 } 
	{ sext_ln257_1 sc_in sc_lv 62 signal 3 } 
	{ sext_ln257_2 sc_in sc_lv 62 signal 5 } 
	{ zext_ln260 sc_in sc_lv 10 signal 6 } 
	{ work_0_address0 sc_out sc_lv 10 signal 7 } 
	{ work_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ work_0_q0 sc_in sc_lv 32 signal 7 } 
	{ work_1_address0 sc_out sc_lv 10 signal 8 } 
	{ work_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ work_1_q0 sc_in sc_lv 32 signal 8 } 
	{ work_2_address0 sc_out sc_lv 10 signal 9 } 
	{ work_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ work_2_q0 sc_in sc_lv 32 signal 9 } 
	{ work_3_address0 sc_out sc_lv 10 signal 10 } 
	{ work_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ work_3_q0 sc_in sc_lv 32 signal 10 } 
	{ row_7 sc_in sc_lv 32 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_l_col_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_l_col_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_l_col_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_l_col_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWID" }} , 
 	{ "name": "m_axi_l_col_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_l_col_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_l_col_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_l_col_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_l_col_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_l_col_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_l_col_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_l_col_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_l_col_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_l_col_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_l_col_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_l_col_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_l_col_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_l_col_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_l_col_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_WID" }} , 
 	{ "name": "m_axi_l_col_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_l_col_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_l_col_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_l_col_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_l_col_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARID" }} , 
 	{ "name": "m_axi_l_col_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_l_col_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_l_col_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_l_col_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_l_col_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_l_col_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_l_col_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_l_col_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_l_col_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_l_col_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_l_col_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_l_col_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_col", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_l_col_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_l_col_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_RID" }} , 
 	{ "name": "m_axi_l_col_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "l_col", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_l_col_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_l_col_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_l_col_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_l_col_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_l_col_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_col", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_l_col_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_BID" }} , 
 	{ "name": "m_axi_l_col_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_col", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_l_val_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_l_val_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_l_val_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_l_val_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWID" }} , 
 	{ "name": "m_axi_l_val_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_l_val_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_l_val_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_l_val_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_l_val_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_l_val_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_l_val_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_l_val_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_l_val_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_l_val_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_l_val_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_l_val_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_l_val_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_l_val_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_l_val_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_WID" }} , 
 	{ "name": "m_axi_l_val_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_l_val_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_l_val_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_l_val_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_l_val_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARID" }} , 
 	{ "name": "m_axi_l_val_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_l_val_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_l_val_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_l_val_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_l_val_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_l_val_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_l_val_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_l_val_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_l_val_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_l_val_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_l_val_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_l_val_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_val", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_l_val_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_l_val_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_RID" }} , 
 	{ "name": "m_axi_l_val_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "l_val", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_l_val_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_l_val_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_l_val_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_l_val_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_l_val_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_val", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_l_val_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_BID" }} , 
 	{ "name": "m_axi_l_val_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_val", "role": "0_BUSER" }} , 
 	{ "name": "pos_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_5", "role": "default" }} , 
 	{ "name": "l_row_addr_read_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row_addr_read_1", "role": "default" }} , 
 	{ "name": "sext_ln257_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln257_1", "role": "default" }} , 
 	{ "name": "sext_ln257_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln257_2", "role": "default" }} , 
 	{ "name": "zext_ln260", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln260", "role": "default" }} , 
 	{ "name": "work_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address0" }} , 
 	{ "name": "work_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce0" }} , 
 	{ "name": "work_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q0" }} , 
 	{ "name": "work_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address0" }} , 
 	{ "name": "work_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce0" }} , 
 	{ "name": "work_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q0" }} , 
 	{ "name": "work_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address0" }} , 
 	{ "name": "work_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce0" }} , 
 	{ "name": "work_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q0" }} , 
 	{ "name": "work_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address0" }} , 
 	{ "name": "work_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce0" }} , 
 	{ "name": "work_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q0" }} , 
 	{ "name": "row_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_7", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_getrf_Pipeline_VITIS_LOOP_257_8 {
		pos_5 {Type I LastRead 0 FirstWrite -1}
		l_row_addr_read_1 {Type I LastRead 0 FirstWrite -1}
		l_col {Type I LastRead 1 FirstWrite -1}
		sext_ln257_1 {Type I LastRead 0 FirstWrite -1}
		l_val {Type O LastRead -1 FirstWrite 4}
		sext_ln257_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		work_0 {Type I LastRead 2 FirstWrite -1}
		work_1 {Type I LastRead 2 FirstWrite -1}
		work_2 {Type I LastRead 2 FirstWrite -1}
		work_3 {Type I LastRead 2 FirstWrite -1}
		row_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pos_5 { ap_none {  { pos_5 in_data 0 32 } } }
	l_row_addr_read_1 { ap_none {  { l_row_addr_read_1 in_data 0 32 } } }
	 { m_axi {  { m_axi_l_col_0_AWVALID VALID 1 1 }  { m_axi_l_col_0_AWREADY READY 0 1 }  { m_axi_l_col_0_AWADDR ADDR 1 64 }  { m_axi_l_col_0_AWID ID 1 1 }  { m_axi_l_col_0_AWLEN SIZE 1 32 }  { m_axi_l_col_0_AWSIZE BURST 1 3 }  { m_axi_l_col_0_AWBURST LOCK 1 2 }  { m_axi_l_col_0_AWLOCK CACHE 1 2 }  { m_axi_l_col_0_AWCACHE PROT 1 4 }  { m_axi_l_col_0_AWPROT QOS 1 3 }  { m_axi_l_col_0_AWQOS REGION 1 4 }  { m_axi_l_col_0_AWREGION USER 1 4 }  { m_axi_l_col_0_AWUSER DATA 1 1 }  { m_axi_l_col_0_WVALID VALID 1 1 }  { m_axi_l_col_0_WREADY READY 0 1 }  { m_axi_l_col_0_WDATA FIFONUM 1 32 }  { m_axi_l_col_0_WSTRB STRB 1 4 }  { m_axi_l_col_0_WLAST LAST 1 1 }  { m_axi_l_col_0_WID ID 1 1 }  { m_axi_l_col_0_WUSER DATA 1 1 }  { m_axi_l_col_0_ARVALID VALID 1 1 }  { m_axi_l_col_0_ARREADY READY 0 1 }  { m_axi_l_col_0_ARADDR ADDR 1 64 }  { m_axi_l_col_0_ARID ID 1 1 }  { m_axi_l_col_0_ARLEN SIZE 1 32 }  { m_axi_l_col_0_ARSIZE BURST 1 3 }  { m_axi_l_col_0_ARBURST LOCK 1 2 }  { m_axi_l_col_0_ARLOCK CACHE 1 2 }  { m_axi_l_col_0_ARCACHE PROT 1 4 }  { m_axi_l_col_0_ARPROT QOS 1 3 }  { m_axi_l_col_0_ARQOS REGION 1 4 }  { m_axi_l_col_0_ARREGION USER 1 4 }  { m_axi_l_col_0_ARUSER DATA 1 1 }  { m_axi_l_col_0_RVALID VALID 0 1 }  { m_axi_l_col_0_RREADY READY 1 1 }  { m_axi_l_col_0_RDATA FIFONUM 0 32 }  { m_axi_l_col_0_RLAST LAST 0 1 }  { m_axi_l_col_0_RID ID 0 1 }  { m_axi_l_col_0_RFIFONUM LEN 0 9 }  { m_axi_l_col_0_RUSER DATA 0 1 }  { m_axi_l_col_0_RRESP RESP 0 2 }  { m_axi_l_col_0_BVALID VALID 0 1 }  { m_axi_l_col_0_BREADY READY 1 1 }  { m_axi_l_col_0_BRESP RESP 0 2 }  { m_axi_l_col_0_BID ID 0 1 }  { m_axi_l_col_0_BUSER DATA 0 1 } } }
	sext_ln257_1 { ap_none {  { sext_ln257_1 in_data 0 62 } } }
	 { m_axi {  { m_axi_l_val_0_AWVALID VALID 1 1 }  { m_axi_l_val_0_AWREADY READY 0 1 }  { m_axi_l_val_0_AWADDR ADDR 1 64 }  { m_axi_l_val_0_AWID ID 1 1 }  { m_axi_l_val_0_AWLEN SIZE 1 32 }  { m_axi_l_val_0_AWSIZE BURST 1 3 }  { m_axi_l_val_0_AWBURST LOCK 1 2 }  { m_axi_l_val_0_AWLOCK CACHE 1 2 }  { m_axi_l_val_0_AWCACHE PROT 1 4 }  { m_axi_l_val_0_AWPROT QOS 1 3 }  { m_axi_l_val_0_AWQOS REGION 1 4 }  { m_axi_l_val_0_AWREGION USER 1 4 }  { m_axi_l_val_0_AWUSER DATA 1 1 }  { m_axi_l_val_0_WVALID VALID 1 1 }  { m_axi_l_val_0_WREADY READY 0 1 }  { m_axi_l_val_0_WDATA FIFONUM 1 32 }  { m_axi_l_val_0_WSTRB STRB 1 4 }  { m_axi_l_val_0_WLAST LAST 1 1 }  { m_axi_l_val_0_WID ID 1 1 }  { m_axi_l_val_0_WUSER DATA 1 1 }  { m_axi_l_val_0_ARVALID VALID 1 1 }  { m_axi_l_val_0_ARREADY READY 0 1 }  { m_axi_l_val_0_ARADDR ADDR 1 64 }  { m_axi_l_val_0_ARID ID 1 1 }  { m_axi_l_val_0_ARLEN SIZE 1 32 }  { m_axi_l_val_0_ARSIZE BURST 1 3 }  { m_axi_l_val_0_ARBURST LOCK 1 2 }  { m_axi_l_val_0_ARLOCK CACHE 1 2 }  { m_axi_l_val_0_ARCACHE PROT 1 4 }  { m_axi_l_val_0_ARPROT QOS 1 3 }  { m_axi_l_val_0_ARQOS REGION 1 4 }  { m_axi_l_val_0_ARREGION USER 1 4 }  { m_axi_l_val_0_ARUSER DATA 1 1 }  { m_axi_l_val_0_RVALID VALID 0 1 }  { m_axi_l_val_0_RREADY READY 1 1 }  { m_axi_l_val_0_RDATA FIFONUM 0 32 }  { m_axi_l_val_0_RLAST LAST 0 1 }  { m_axi_l_val_0_RID ID 0 1 }  { m_axi_l_val_0_RFIFONUM LEN 0 9 }  { m_axi_l_val_0_RUSER DATA 0 1 }  { m_axi_l_val_0_RRESP RESP 0 2 }  { m_axi_l_val_0_BVALID VALID 0 1 }  { m_axi_l_val_0_BREADY READY 1 1 }  { m_axi_l_val_0_BRESP RESP 0 2 }  { m_axi_l_val_0_BID ID 0 1 }  { m_axi_l_val_0_BUSER DATA 0 1 } } }
	sext_ln257_2 { ap_none {  { sext_ln257_2 in_data 0 62 } } }
	zext_ln260 { ap_none {  { zext_ln260 in_data 0 10 } } }
	work_0 { ap_memory {  { work_0_address0 mem_address 1 10 }  { work_0_ce0 mem_ce 1 1 }  { work_0_q0 mem_dout 0 32 } } }
	work_1 { ap_memory {  { work_1_address0 mem_address 1 10 }  { work_1_ce0 mem_ce 1 1 }  { work_1_q0 mem_dout 0 32 } } }
	work_2 { ap_memory {  { work_2_address0 mem_address 1 10 }  { work_2_ce0 mem_ce 1 1 }  { work_2_q0 mem_dout 0 32 } } }
	work_3 { ap_memory {  { work_3_address0 mem_address 1 10 }  { work_3_ce0 mem_ce 1 1 }  { work_3_q0 mem_dout 0 32 } } }
	row_7 { ap_none {  { row_7 in_data 0 32 } } }
}
