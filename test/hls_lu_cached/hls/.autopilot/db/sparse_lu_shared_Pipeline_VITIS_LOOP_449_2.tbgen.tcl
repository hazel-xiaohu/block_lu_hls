set moduleName sparse_lu_shared_Pipeline_VITIS_LOOP_449_2
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
set C_modelName {sparse_lu_shared_Pipeline_VITIS_LOOP_449_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict block_r { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_4 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_5 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_6 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_7 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_8 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_9 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_10 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_11 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_12 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_13 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_14 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_15 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pos_2 int 32 regular  }
	{ x_val int 32 regular {axi_master 1}  }
	{ x_col int 32 regular {axi_master 0}  }
	{ x_row_addr_3_read_1 int 32 regular  }
	{ sext_ln449_1 int 62 regular  }
	{ sext_ln449_2 int 62 regular  }
	{ zext_ln451_1 int 8 regular  }
	{ block_r float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_1 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_2 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_3 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_4 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_5 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_6 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_7 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_8 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_9 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_10 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_11 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_12 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_13 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_14 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_15 float 32 regular {array 256 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ empty int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pos_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "X_val_r","offset": { "type": "dynamic","port_name": "X_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "x_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "X_cid","offset": { "type": "dynamic","port_name": "X_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "x_row_addr_3_read_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln449_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln449_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln451_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "block_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 152
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_x_col_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_col_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_col_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_col_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_col_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_col_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_col_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_col_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_col_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_col_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_col_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_x_col_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_x_col_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_col_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_col_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_col_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_val_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_val_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_val_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_val_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_val_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_val_0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_val_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_val_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_val_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_val_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_val_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_x_val_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_x_val_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_val_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_val_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_val_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ pos_2 sc_in sc_lv 32 signal 0 } 
	{ x_row_addr_3_read_1 sc_in sc_lv 32 signal 3 } 
	{ sext_ln449_1 sc_in sc_lv 62 signal 4 } 
	{ sext_ln449_2 sc_in sc_lv 62 signal 5 } 
	{ zext_ln451_1 sc_in sc_lv 8 signal 6 } 
	{ block_r_address0 sc_out sc_lv 8 signal 7 } 
	{ block_r_ce0 sc_out sc_logic 1 signal 7 } 
	{ block_r_q0 sc_in sc_lv 32 signal 7 } 
	{ block_1_address0 sc_out sc_lv 8 signal 8 } 
	{ block_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ block_1_q0 sc_in sc_lv 32 signal 8 } 
	{ block_2_address0 sc_out sc_lv 8 signal 9 } 
	{ block_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ block_2_q0 sc_in sc_lv 32 signal 9 } 
	{ block_3_address0 sc_out sc_lv 8 signal 10 } 
	{ block_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ block_3_q0 sc_in sc_lv 32 signal 10 } 
	{ block_4_address0 sc_out sc_lv 8 signal 11 } 
	{ block_4_ce0 sc_out sc_logic 1 signal 11 } 
	{ block_4_q0 sc_in sc_lv 32 signal 11 } 
	{ block_5_address0 sc_out sc_lv 8 signal 12 } 
	{ block_5_ce0 sc_out sc_logic 1 signal 12 } 
	{ block_5_q0 sc_in sc_lv 32 signal 12 } 
	{ block_6_address0 sc_out sc_lv 8 signal 13 } 
	{ block_6_ce0 sc_out sc_logic 1 signal 13 } 
	{ block_6_q0 sc_in sc_lv 32 signal 13 } 
	{ block_7_address0 sc_out sc_lv 8 signal 14 } 
	{ block_7_ce0 sc_out sc_logic 1 signal 14 } 
	{ block_7_q0 sc_in sc_lv 32 signal 14 } 
	{ block_8_address0 sc_out sc_lv 8 signal 15 } 
	{ block_8_ce0 sc_out sc_logic 1 signal 15 } 
	{ block_8_q0 sc_in sc_lv 32 signal 15 } 
	{ block_9_address0 sc_out sc_lv 8 signal 16 } 
	{ block_9_ce0 sc_out sc_logic 1 signal 16 } 
	{ block_9_q0 sc_in sc_lv 32 signal 16 } 
	{ block_10_address0 sc_out sc_lv 8 signal 17 } 
	{ block_10_ce0 sc_out sc_logic 1 signal 17 } 
	{ block_10_q0 sc_in sc_lv 32 signal 17 } 
	{ block_11_address0 sc_out sc_lv 8 signal 18 } 
	{ block_11_ce0 sc_out sc_logic 1 signal 18 } 
	{ block_11_q0 sc_in sc_lv 32 signal 18 } 
	{ block_12_address0 sc_out sc_lv 8 signal 19 } 
	{ block_12_ce0 sc_out sc_logic 1 signal 19 } 
	{ block_12_q0 sc_in sc_lv 32 signal 19 } 
	{ block_13_address0 sc_out sc_lv 8 signal 20 } 
	{ block_13_ce0 sc_out sc_logic 1 signal 20 } 
	{ block_13_q0 sc_in sc_lv 32 signal 20 } 
	{ block_14_address0 sc_out sc_lv 8 signal 21 } 
	{ block_14_ce0 sc_out sc_logic 1 signal 21 } 
	{ block_14_q0 sc_in sc_lv 32 signal 21 } 
	{ block_15_address0 sc_out sc_lv 8 signal 22 } 
	{ block_15_ce0 sc_out sc_logic 1 signal 22 } 
	{ block_15_q0 sc_in sc_lv 32 signal 22 } 
	{ empty sc_in sc_lv 2 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_x_col_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_x_col_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_x_col_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_x_col_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWID" }} , 
 	{ "name": "m_axi_x_col_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_x_col_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_x_col_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_x_col_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_x_col_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_x_col_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_x_col_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_x_col_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_x_col_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_x_col_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_x_col_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_x_col_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_x_col_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_x_col_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_x_col_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_WID" }} , 
 	{ "name": "m_axi_x_col_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_x_col_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_x_col_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_x_col_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_x_col_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARID" }} , 
 	{ "name": "m_axi_x_col_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_x_col_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_x_col_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_x_col_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_x_col_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_x_col_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_x_col_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_x_col_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_x_col_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_x_col_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_x_col_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_x_col_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_col", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_x_col_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_x_col_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_RID" }} , 
 	{ "name": "m_axi_x_col_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "x_col", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_x_col_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_x_col_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_x_col_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_x_col_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_x_col_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_col", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_x_col_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_BID" }} , 
 	{ "name": "m_axi_x_col_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_col", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_x_val_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_x_val_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_x_val_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_x_val_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWID" }} , 
 	{ "name": "m_axi_x_val_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_x_val_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_x_val_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_x_val_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_x_val_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_x_val_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_x_val_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_x_val_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_x_val_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_x_val_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_x_val_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_x_val_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_x_val_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_x_val_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_x_val_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_WID" }} , 
 	{ "name": "m_axi_x_val_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_x_val_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_x_val_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_x_val_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_x_val_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARID" }} , 
 	{ "name": "m_axi_x_val_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_x_val_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_x_val_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_x_val_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_x_val_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_x_val_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_x_val_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_x_val_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_x_val_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_x_val_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_x_val_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_x_val_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_val", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_x_val_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_x_val_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_RID" }} , 
 	{ "name": "m_axi_x_val_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "x_val", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_x_val_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_x_val_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_x_val_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_x_val_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_x_val_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_val", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_x_val_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_BID" }} , 
 	{ "name": "m_axi_x_val_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_val", "role": "0_BUSER" }} , 
 	{ "name": "pos_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pos_2", "role": "default" }} , 
 	{ "name": "x_row_addr_3_read_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_row_addr_3_read_1", "role": "default" }} , 
 	{ "name": "sext_ln449_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln449_1", "role": "default" }} , 
 	{ "name": "sext_ln449_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln449_2", "role": "default" }} , 
 	{ "name": "zext_ln451_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln451_1", "role": "default" }} , 
 	{ "name": "block_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_r", "role": "address0" }} , 
 	{ "name": "block_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_r", "role": "ce0" }} , 
 	{ "name": "block_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_r", "role": "q0" }} , 
 	{ "name": "block_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1", "role": "address0" }} , 
 	{ "name": "block_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1", "role": "ce0" }} , 
 	{ "name": "block_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1", "role": "q0" }} , 
 	{ "name": "block_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2", "role": "address0" }} , 
 	{ "name": "block_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2", "role": "ce0" }} , 
 	{ "name": "block_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2", "role": "q0" }} , 
 	{ "name": "block_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3", "role": "address0" }} , 
 	{ "name": "block_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3", "role": "ce0" }} , 
 	{ "name": "block_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3", "role": "q0" }} , 
 	{ "name": "block_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_4", "role": "address0" }} , 
 	{ "name": "block_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_4", "role": "ce0" }} , 
 	{ "name": "block_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_4", "role": "q0" }} , 
 	{ "name": "block_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_5", "role": "address0" }} , 
 	{ "name": "block_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_5", "role": "ce0" }} , 
 	{ "name": "block_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_5", "role": "q0" }} , 
 	{ "name": "block_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_6", "role": "address0" }} , 
 	{ "name": "block_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_6", "role": "ce0" }} , 
 	{ "name": "block_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_6", "role": "q0" }} , 
 	{ "name": "block_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_7", "role": "address0" }} , 
 	{ "name": "block_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_7", "role": "ce0" }} , 
 	{ "name": "block_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_7", "role": "q0" }} , 
 	{ "name": "block_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_8", "role": "address0" }} , 
 	{ "name": "block_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_8", "role": "ce0" }} , 
 	{ "name": "block_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_8", "role": "q0" }} , 
 	{ "name": "block_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_9", "role": "address0" }} , 
 	{ "name": "block_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_9", "role": "ce0" }} , 
 	{ "name": "block_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_9", "role": "q0" }} , 
 	{ "name": "block_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_10", "role": "address0" }} , 
 	{ "name": "block_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_10", "role": "ce0" }} , 
 	{ "name": "block_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_10", "role": "q0" }} , 
 	{ "name": "block_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_11", "role": "address0" }} , 
 	{ "name": "block_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_11", "role": "ce0" }} , 
 	{ "name": "block_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_11", "role": "q0" }} , 
 	{ "name": "block_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_12", "role": "address0" }} , 
 	{ "name": "block_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_12", "role": "ce0" }} , 
 	{ "name": "block_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_12", "role": "q0" }} , 
 	{ "name": "block_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_13", "role": "address0" }} , 
 	{ "name": "block_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_13", "role": "ce0" }} , 
 	{ "name": "block_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_13", "role": "q0" }} , 
 	{ "name": "block_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_14", "role": "address0" }} , 
 	{ "name": "block_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_14", "role": "ce0" }} , 
 	{ "name": "block_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_14", "role": "q0" }} , 
 	{ "name": "block_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_15", "role": "address0" }} , 
 	{ "name": "block_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_15", "role": "ce0" }} , 
 	{ "name": "block_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_15", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	sparse_lu_shared_Pipeline_VITIS_LOOP_449_2 {
		pos_2 {Type I LastRead 0 FirstWrite -1}
		x_val {Type O LastRead -1 FirstWrite 4}
		x_col {Type I LastRead 1 FirstWrite -1}
		x_row_addr_3_read_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln449_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln449_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln451_1 {Type I LastRead 0 FirstWrite -1}
		block_r {Type I LastRead 2 FirstWrite -1}
		block_1 {Type I LastRead 2 FirstWrite -1}
		block_2 {Type I LastRead 2 FirstWrite -1}
		block_3 {Type I LastRead 2 FirstWrite -1}
		block_4 {Type I LastRead 2 FirstWrite -1}
		block_5 {Type I LastRead 2 FirstWrite -1}
		block_6 {Type I LastRead 2 FirstWrite -1}
		block_7 {Type I LastRead 2 FirstWrite -1}
		block_8 {Type I LastRead 2 FirstWrite -1}
		block_9 {Type I LastRead 2 FirstWrite -1}
		block_10 {Type I LastRead 2 FirstWrite -1}
		block_11 {Type I LastRead 2 FirstWrite -1}
		block_12 {Type I LastRead 2 FirstWrite -1}
		block_13 {Type I LastRead 2 FirstWrite -1}
		block_14 {Type I LastRead 2 FirstWrite -1}
		block_15 {Type I LastRead 2 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pos_2 { ap_none {  { pos_2 in_data 0 32 } } }
	 { m_axi {  { m_axi_x_val_0_AWVALID VALID 1 1 }  { m_axi_x_val_0_AWREADY READY 0 1 }  { m_axi_x_val_0_AWADDR ADDR 1 64 }  { m_axi_x_val_0_AWID ID 1 1 }  { m_axi_x_val_0_AWLEN SIZE 1 32 }  { m_axi_x_val_0_AWSIZE BURST 1 3 }  { m_axi_x_val_0_AWBURST LOCK 1 2 }  { m_axi_x_val_0_AWLOCK CACHE 1 2 }  { m_axi_x_val_0_AWCACHE PROT 1 4 }  { m_axi_x_val_0_AWPROT QOS 1 3 }  { m_axi_x_val_0_AWQOS REGION 1 4 }  { m_axi_x_val_0_AWREGION USER 1 4 }  { m_axi_x_val_0_AWUSER DATA 1 1 }  { m_axi_x_val_0_WVALID VALID 1 1 }  { m_axi_x_val_0_WREADY READY 0 1 }  { m_axi_x_val_0_WDATA FIFONUM 1 32 }  { m_axi_x_val_0_WSTRB STRB 1 4 }  { m_axi_x_val_0_WLAST LAST 1 1 }  { m_axi_x_val_0_WID ID 1 1 }  { m_axi_x_val_0_WUSER DATA 1 1 }  { m_axi_x_val_0_ARVALID VALID 1 1 }  { m_axi_x_val_0_ARREADY READY 0 1 }  { m_axi_x_val_0_ARADDR ADDR 1 64 }  { m_axi_x_val_0_ARID ID 1 1 }  { m_axi_x_val_0_ARLEN SIZE 1 32 }  { m_axi_x_val_0_ARSIZE BURST 1 3 }  { m_axi_x_val_0_ARBURST LOCK 1 2 }  { m_axi_x_val_0_ARLOCK CACHE 1 2 }  { m_axi_x_val_0_ARCACHE PROT 1 4 }  { m_axi_x_val_0_ARPROT QOS 1 3 }  { m_axi_x_val_0_ARQOS REGION 1 4 }  { m_axi_x_val_0_ARREGION USER 1 4 }  { m_axi_x_val_0_ARUSER DATA 1 1 }  { m_axi_x_val_0_RVALID VALID 0 1 }  { m_axi_x_val_0_RREADY READY 1 1 }  { m_axi_x_val_0_RDATA FIFONUM 0 32 }  { m_axi_x_val_0_RLAST LAST 0 1 }  { m_axi_x_val_0_RID ID 0 1 }  { m_axi_x_val_0_RFIFONUM LEN 0 9 }  { m_axi_x_val_0_RUSER DATA 0 1 }  { m_axi_x_val_0_RRESP RESP 0 2 }  { m_axi_x_val_0_BVALID VALID 0 1 }  { m_axi_x_val_0_BREADY READY 1 1 }  { m_axi_x_val_0_BRESP RESP 0 2 }  { m_axi_x_val_0_BID ID 0 1 }  { m_axi_x_val_0_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_x_col_0_AWVALID VALID 1 1 }  { m_axi_x_col_0_AWREADY READY 0 1 }  { m_axi_x_col_0_AWADDR ADDR 1 64 }  { m_axi_x_col_0_AWID ID 1 1 }  { m_axi_x_col_0_AWLEN SIZE 1 32 }  { m_axi_x_col_0_AWSIZE BURST 1 3 }  { m_axi_x_col_0_AWBURST LOCK 1 2 }  { m_axi_x_col_0_AWLOCK CACHE 1 2 }  { m_axi_x_col_0_AWCACHE PROT 1 4 }  { m_axi_x_col_0_AWPROT QOS 1 3 }  { m_axi_x_col_0_AWQOS REGION 1 4 }  { m_axi_x_col_0_AWREGION USER 1 4 }  { m_axi_x_col_0_AWUSER DATA 1 1 }  { m_axi_x_col_0_WVALID VALID 1 1 }  { m_axi_x_col_0_WREADY READY 0 1 }  { m_axi_x_col_0_WDATA FIFONUM 1 32 }  { m_axi_x_col_0_WSTRB STRB 1 4 }  { m_axi_x_col_0_WLAST LAST 1 1 }  { m_axi_x_col_0_WID ID 1 1 }  { m_axi_x_col_0_WUSER DATA 1 1 }  { m_axi_x_col_0_ARVALID VALID 1 1 }  { m_axi_x_col_0_ARREADY READY 0 1 }  { m_axi_x_col_0_ARADDR ADDR 1 64 }  { m_axi_x_col_0_ARID ID 1 1 }  { m_axi_x_col_0_ARLEN SIZE 1 32 }  { m_axi_x_col_0_ARSIZE BURST 1 3 }  { m_axi_x_col_0_ARBURST LOCK 1 2 }  { m_axi_x_col_0_ARLOCK CACHE 1 2 }  { m_axi_x_col_0_ARCACHE PROT 1 4 }  { m_axi_x_col_0_ARPROT QOS 1 3 }  { m_axi_x_col_0_ARQOS REGION 1 4 }  { m_axi_x_col_0_ARREGION USER 1 4 }  { m_axi_x_col_0_ARUSER DATA 1 1 }  { m_axi_x_col_0_RVALID VALID 0 1 }  { m_axi_x_col_0_RREADY READY 1 1 }  { m_axi_x_col_0_RDATA FIFONUM 0 32 }  { m_axi_x_col_0_RLAST LAST 0 1 }  { m_axi_x_col_0_RID ID 0 1 }  { m_axi_x_col_0_RFIFONUM LEN 0 9 }  { m_axi_x_col_0_RUSER DATA 0 1 }  { m_axi_x_col_0_RRESP RESP 0 2 }  { m_axi_x_col_0_BVALID VALID 0 1 }  { m_axi_x_col_0_BREADY READY 1 1 }  { m_axi_x_col_0_BRESP RESP 0 2 }  { m_axi_x_col_0_BID ID 0 1 }  { m_axi_x_col_0_BUSER DATA 0 1 } } }
	x_row_addr_3_read_1 { ap_none {  { x_row_addr_3_read_1 in_data 0 32 } } }
	sext_ln449_1 { ap_none {  { sext_ln449_1 in_data 0 62 } } }
	sext_ln449_2 { ap_none {  { sext_ln449_2 in_data 0 62 } } }
	zext_ln451_1 { ap_none {  { zext_ln451_1 in_data 0 8 } } }
	block_r { ap_memory {  { block_r_address0 mem_address 1 8 }  { block_r_ce0 mem_ce 1 1 }  { block_r_q0 mem_dout 0 32 } } }
	block_1 { ap_memory {  { block_1_address0 mem_address 1 8 }  { block_1_ce0 mem_ce 1 1 }  { block_1_q0 mem_dout 0 32 } } }
	block_2 { ap_memory {  { block_2_address0 mem_address 1 8 }  { block_2_ce0 mem_ce 1 1 }  { block_2_q0 mem_dout 0 32 } } }
	block_3 { ap_memory {  { block_3_address0 mem_address 1 8 }  { block_3_ce0 mem_ce 1 1 }  { block_3_q0 mem_dout 0 32 } } }
	block_4 { ap_memory {  { block_4_address0 mem_address 1 8 }  { block_4_ce0 mem_ce 1 1 }  { block_4_q0 mem_dout 0 32 } } }
	block_5 { ap_memory {  { block_5_address0 mem_address 1 8 }  { block_5_ce0 mem_ce 1 1 }  { block_5_q0 mem_dout 0 32 } } }
	block_6 { ap_memory {  { block_6_address0 mem_address 1 8 }  { block_6_ce0 mem_ce 1 1 }  { block_6_q0 mem_dout 0 32 } } }
	block_7 { ap_memory {  { block_7_address0 mem_address 1 8 }  { block_7_ce0 mem_ce 1 1 }  { block_7_q0 mem_dout 0 32 } } }
	block_8 { ap_memory {  { block_8_address0 mem_address 1 8 }  { block_8_ce0 mem_ce 1 1 }  { block_8_q0 mem_dout 0 32 } } }
	block_9 { ap_memory {  { block_9_address0 mem_address 1 8 }  { block_9_ce0 mem_ce 1 1 }  { block_9_q0 mem_dout 0 32 } } }
	block_10 { ap_memory {  { block_10_address0 mem_address 1 8 }  { block_10_ce0 mem_ce 1 1 }  { block_10_q0 mem_dout 0 32 } } }
	block_11 { ap_memory {  { block_11_address0 mem_address 1 8 }  { block_11_ce0 mem_ce 1 1 }  { block_11_q0 mem_dout 0 32 } } }
	block_12 { ap_memory {  { block_12_address0 mem_address 1 8 }  { block_12_ce0 mem_ce 1 1 }  { block_12_q0 mem_dout 0 32 } } }
	block_13 { ap_memory {  { block_13_address0 mem_address 1 8 }  { block_13_ce0 mem_ce 1 1 }  { block_13_q0 mem_dout 0 32 } } }
	block_14 { ap_memory {  { block_14_address0 mem_address 1 8 }  { block_14_ce0 mem_ce 1 1 }  { block_14_q0 mem_dout 0 32 } } }
	block_15 { ap_memory {  { block_15_address0 mem_address 1 8 }  { block_15_ce0 mem_ce 1 1 }  { block_15_q0 mem_dout 0 32 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
}
