set moduleName run_cached_getrf_Pipeline_VITIS_LOOP_210_2
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
set cdfgNum 21
set C_modelName {run_cached_getrf_Pipeline_VITIS_LOOP_210_2}
set C_modelType { int 2 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict work_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict work_0 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict lower_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ zext_ln210 int 10 regular  }
	{ empty int 11 regular  }
	{ A_val int 64 regular  }
	{ a_val_r int 32 regular {axi_master 0}  }
	{ row int 32 regular  }
	{ work_3 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ work_2 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ work_1 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ work_0 float 32 regular {array 1024 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ A_cid int 64 regular  }
	{ a_col int 32 regular {axi_master 0}  }
	{ zext_ln217 int 10 regular  }
	{ lower_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ lower_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ n int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln210", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "A_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_val_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_val_r","offset": { "type": "dynamic","port_name": "A_val_r","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "work_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "work_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "work_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "work_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln217", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 2} ]}
# RTL Port declarations: 
set portNum 146
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln210 sc_in sc_lv 10 signal 0 } 
	{ empty sc_in sc_lv 11 signal 1 } 
	{ A_val sc_in sc_lv 64 signal 2 } 
	{ m_axi_a_val_r_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_a_val_r_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_a_val_r_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_a_val_r_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_a_val_r_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_a_val_r_0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_a_val_r_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_a_val_r_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_a_val_r_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_a_val_r_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_a_val_r_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_a_val_r_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_a_val_r_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_a_val_r_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_a_val_r_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_a_val_r_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ row sc_in sc_lv 32 signal 4 } 
	{ work_3_address0 sc_out sc_lv 10 signal 5 } 
	{ work_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ work_3_we0 sc_out sc_logic 1 signal 5 } 
	{ work_3_d0 sc_out sc_lv 32 signal 5 } 
	{ work_2_address0 sc_out sc_lv 10 signal 6 } 
	{ work_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ work_2_we0 sc_out sc_logic 1 signal 6 } 
	{ work_2_d0 sc_out sc_lv 32 signal 6 } 
	{ work_1_address0 sc_out sc_lv 10 signal 7 } 
	{ work_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ work_1_we0 sc_out sc_logic 1 signal 7 } 
	{ work_1_d0 sc_out sc_lv 32 signal 7 } 
	{ work_0_address0 sc_out sc_lv 10 signal 8 } 
	{ work_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ work_0_we0 sc_out sc_logic 1 signal 8 } 
	{ work_0_d0 sc_out sc_lv 32 signal 8 } 
	{ A_cid sc_in sc_lv 64 signal 9 } 
	{ m_axi_a_col_0_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_a_col_0_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_a_col_0_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_a_col_0_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_a_col_0_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_a_col_0_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_a_col_0_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_a_col_0_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_a_col_0_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_a_col_0_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_a_col_0_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_a_col_0_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_RFIFONUM sc_in sc_lv 9 signal 10 } 
	{ m_axi_a_col_0_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_a_col_0_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_a_col_0_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_a_col_0_BUSER sc_in sc_lv 1 signal 10 } 
	{ zext_ln217 sc_in sc_lv 10 signal 11 } 
	{ lower_pos_0_address0 sc_out sc_lv 10 signal 12 } 
	{ lower_pos_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ lower_pos_0_q0 sc_in sc_lv 12 signal 12 } 
	{ lower_pos_1_address0 sc_out sc_lv 10 signal 13 } 
	{ lower_pos_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ lower_pos_1_q0 sc_in sc_lv 12 signal 13 } 
	{ lower_pos_2_address0 sc_out sc_lv 10 signal 14 } 
	{ lower_pos_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ lower_pos_2_q0 sc_in sc_lv 12 signal 14 } 
	{ lower_pos_3_address0 sc_out sc_lv 10 signal 15 } 
	{ lower_pos_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ lower_pos_3_q0 sc_in sc_lv 12 signal 15 } 
	{ upper_pos_0_address0 sc_out sc_lv 10 signal 16 } 
	{ upper_pos_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ upper_pos_0_q0 sc_in sc_lv 12 signal 16 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 17 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ upper_pos_1_q0 sc_in sc_lv 12 signal 17 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 18 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ upper_pos_2_q0 sc_in sc_lv 12 signal 18 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 19 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ upper_pos_3_q0 sc_in sc_lv 12 signal 19 } 
	{ n sc_in sc_lv 32 signal 20 } 
	{ ap_return sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln210", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln210", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "A_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_val", "role": "default" }} , 
 	{ "name": "m_axi_a_val_r_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_a_val_r_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_a_val_r_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_a_val_r_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWID" }} , 
 	{ "name": "m_axi_a_val_r_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_a_val_r_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_a_val_r_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_a_val_r_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_a_val_r_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_a_val_r_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_a_val_r_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_a_val_r_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_a_val_r_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_a_val_r_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_a_val_r_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_a_val_r_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_a_val_r_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_a_val_r_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_a_val_r_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WID" }} , 
 	{ "name": "m_axi_a_val_r_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_a_val_r_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_a_val_r_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_a_val_r_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_a_val_r_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARID" }} , 
 	{ "name": "m_axi_a_val_r_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_a_val_r_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_a_val_r_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_a_val_r_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_a_val_r_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_a_val_r_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_a_val_r_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_a_val_r_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_a_val_r_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_a_val_r_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_a_val_r_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_a_val_r_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_a_val_r_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_a_val_r_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RID" }} , 
 	{ "name": "m_axi_a_val_r_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_a_val_r_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_a_val_r_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_a_val_r_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_a_val_r_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_a_val_r_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_a_val_r_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_BID" }} , 
 	{ "name": "m_axi_a_val_r_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val_r", "role": "0_BUSER" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "work_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address0" }} , 
 	{ "name": "work_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce0" }} , 
 	{ "name": "work_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "we0" }} , 
 	{ "name": "work_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "d0" }} , 
 	{ "name": "work_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address0" }} , 
 	{ "name": "work_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce0" }} , 
 	{ "name": "work_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "we0" }} , 
 	{ "name": "work_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "d0" }} , 
 	{ "name": "work_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address0" }} , 
 	{ "name": "work_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce0" }} , 
 	{ "name": "work_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "we0" }} , 
 	{ "name": "work_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "d0" }} , 
 	{ "name": "work_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address0" }} , 
 	{ "name": "work_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce0" }} , 
 	{ "name": "work_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "we0" }} , 
 	{ "name": "work_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "d0" }} , 
 	{ "name": "A_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_cid", "role": "default" }} , 
 	{ "name": "m_axi_a_col_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_a_col_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_a_col_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_a_col_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWID" }} , 
 	{ "name": "m_axi_a_col_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_a_col_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_a_col_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_a_col_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_a_col_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_a_col_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_a_col_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_a_col_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_a_col_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_a_col_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_a_col_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_a_col_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_a_col_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_a_col_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_a_col_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_WID" }} , 
 	{ "name": "m_axi_a_col_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_a_col_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_a_col_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_a_col_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_a_col_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARID" }} , 
 	{ "name": "m_axi_a_col_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_a_col_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_a_col_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_a_col_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_a_col_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_a_col_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_a_col_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_a_col_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_a_col_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_a_col_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_a_col_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_a_col_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_col", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_a_col_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_a_col_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_RID" }} , 
 	{ "name": "m_axi_a_col_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a_col", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_a_col_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_a_col_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_a_col_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_a_col_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_a_col_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_col", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_a_col_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_BID" }} , 
 	{ "name": "m_axi_a_col_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_col", "role": "0_BUSER" }} , 
 	{ "name": "zext_ln217", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln217", "role": "default" }} , 
 	{ "name": "lower_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "address0" }} , 
 	{ "name": "lower_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "ce0" }} , 
 	{ "name": "lower_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "q0" }} , 
 	{ "name": "lower_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "address0" }} , 
 	{ "name": "lower_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "ce0" }} , 
 	{ "name": "lower_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "q0" }} , 
 	{ "name": "lower_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "address0" }} , 
 	{ "name": "lower_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "ce0" }} , 
 	{ "name": "lower_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "q0" }} , 
 	{ "name": "lower_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "address0" }} , 
 	{ "name": "lower_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "ce0" }} , 
 	{ "name": "lower_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "q0" }} , 
 	{ "name": "upper_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "address0" }} , 
 	{ "name": "upper_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "ce0" }} , 
 	{ "name": "upper_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "q0" }} , 
 	{ "name": "upper_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "address0" }} , 
 	{ "name": "upper_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "ce0" }} , 
 	{ "name": "upper_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "q0" }} , 
 	{ "name": "upper_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "address0" }} , 
 	{ "name": "upper_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "ce0" }} , 
 	{ "name": "upper_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "q0" }} , 
 	{ "name": "upper_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "address0" }} , 
 	{ "name": "upper_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "ce0" }} , 
 	{ "name": "upper_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "q0" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_getrf_Pipeline_VITIS_LOOP_210_2 {
		zext_ln210 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		A_val {Type I LastRead 0 FirstWrite -1}
		a_val_r {Type I LastRead 21 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		work_3 {Type O LastRead -1 FirstWrite 22}
		work_2 {Type O LastRead -1 FirstWrite 22}
		work_1 {Type O LastRead -1 FirstWrite 22}
		work_0 {Type O LastRead -1 FirstWrite 22}
		A_cid {Type I LastRead 0 FirstWrite -1}
		a_col {Type I LastRead 10 FirstWrite -1}
		zext_ln217 {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 11 FirstWrite -1}
		lower_pos_1 {Type I LastRead 11 FirstWrite -1}
		lower_pos_2 {Type I LastRead 11 FirstWrite -1}
		lower_pos_3 {Type I LastRead 11 FirstWrite -1}
		upper_pos_0 {Type I LastRead 11 FirstWrite -1}
		upper_pos_1 {Type I LastRead 11 FirstWrite -1}
		upper_pos_2 {Type I LastRead 11 FirstWrite -1}
		upper_pos_3 {Type I LastRead 11 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln210 { ap_none {  { zext_ln210 in_data 0 10 } } }
	empty { ap_none {  { empty in_data 0 11 } } }
	A_val { ap_none {  { A_val in_data 0 64 } } }
	 { m_axi {  { m_axi_a_val_r_0_AWVALID VALID 1 1 }  { m_axi_a_val_r_0_AWREADY READY 0 1 }  { m_axi_a_val_r_0_AWADDR ADDR 1 64 }  { m_axi_a_val_r_0_AWID ID 1 1 }  { m_axi_a_val_r_0_AWLEN SIZE 1 32 }  { m_axi_a_val_r_0_AWSIZE BURST 1 3 }  { m_axi_a_val_r_0_AWBURST LOCK 1 2 }  { m_axi_a_val_r_0_AWLOCK CACHE 1 2 }  { m_axi_a_val_r_0_AWCACHE PROT 1 4 }  { m_axi_a_val_r_0_AWPROT QOS 1 3 }  { m_axi_a_val_r_0_AWQOS REGION 1 4 }  { m_axi_a_val_r_0_AWREGION USER 1 4 }  { m_axi_a_val_r_0_AWUSER DATA 1 1 }  { m_axi_a_val_r_0_WVALID VALID 1 1 }  { m_axi_a_val_r_0_WREADY READY 0 1 }  { m_axi_a_val_r_0_WDATA FIFONUM 1 32 }  { m_axi_a_val_r_0_WSTRB STRB 1 4 }  { m_axi_a_val_r_0_WLAST LAST 1 1 }  { m_axi_a_val_r_0_WID ID 1 1 }  { m_axi_a_val_r_0_WUSER DATA 1 1 }  { m_axi_a_val_r_0_ARVALID VALID 1 1 }  { m_axi_a_val_r_0_ARREADY READY 0 1 }  { m_axi_a_val_r_0_ARADDR ADDR 1 64 }  { m_axi_a_val_r_0_ARID ID 1 1 }  { m_axi_a_val_r_0_ARLEN SIZE 1 32 }  { m_axi_a_val_r_0_ARSIZE BURST 1 3 }  { m_axi_a_val_r_0_ARBURST LOCK 1 2 }  { m_axi_a_val_r_0_ARLOCK CACHE 1 2 }  { m_axi_a_val_r_0_ARCACHE PROT 1 4 }  { m_axi_a_val_r_0_ARPROT QOS 1 3 }  { m_axi_a_val_r_0_ARQOS REGION 1 4 }  { m_axi_a_val_r_0_ARREGION USER 1 4 }  { m_axi_a_val_r_0_ARUSER DATA 1 1 }  { m_axi_a_val_r_0_RVALID VALID 0 1 }  { m_axi_a_val_r_0_RREADY READY 1 1 }  { m_axi_a_val_r_0_RDATA FIFONUM 0 32 }  { m_axi_a_val_r_0_RLAST LAST 0 1 }  { m_axi_a_val_r_0_RID ID 0 1 }  { m_axi_a_val_r_0_RFIFONUM LEN 0 9 }  { m_axi_a_val_r_0_RUSER DATA 0 1 }  { m_axi_a_val_r_0_RRESP RESP 0 2 }  { m_axi_a_val_r_0_BVALID VALID 0 1 }  { m_axi_a_val_r_0_BREADY READY 1 1 }  { m_axi_a_val_r_0_BRESP RESP 0 2 }  { m_axi_a_val_r_0_BID ID 0 1 }  { m_axi_a_val_r_0_BUSER DATA 0 1 } } }
	row { ap_none {  { row in_data 0 32 } } }
	work_3 { ap_memory {  { work_3_address0 mem_address 1 10 }  { work_3_ce0 mem_ce 1 1 }  { work_3_we0 mem_we 1 1 }  { work_3_d0 mem_din 1 32 } } }
	work_2 { ap_memory {  { work_2_address0 mem_address 1 10 }  { work_2_ce0 mem_ce 1 1 }  { work_2_we0 mem_we 1 1 }  { work_2_d0 mem_din 1 32 } } }
	work_1 { ap_memory {  { work_1_address0 mem_address 1 10 }  { work_1_ce0 mem_ce 1 1 }  { work_1_we0 mem_we 1 1 }  { work_1_d0 mem_din 1 32 } } }
	work_0 { ap_memory {  { work_0_address0 mem_address 1 10 }  { work_0_ce0 mem_ce 1 1 }  { work_0_we0 mem_we 1 1 }  { work_0_d0 mem_din 1 32 } } }
	A_cid { ap_none {  { A_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_a_col_0_AWVALID VALID 1 1 }  { m_axi_a_col_0_AWREADY READY 0 1 }  { m_axi_a_col_0_AWADDR ADDR 1 64 }  { m_axi_a_col_0_AWID ID 1 1 }  { m_axi_a_col_0_AWLEN SIZE 1 32 }  { m_axi_a_col_0_AWSIZE BURST 1 3 }  { m_axi_a_col_0_AWBURST LOCK 1 2 }  { m_axi_a_col_0_AWLOCK CACHE 1 2 }  { m_axi_a_col_0_AWCACHE PROT 1 4 }  { m_axi_a_col_0_AWPROT QOS 1 3 }  { m_axi_a_col_0_AWQOS REGION 1 4 }  { m_axi_a_col_0_AWREGION USER 1 4 }  { m_axi_a_col_0_AWUSER DATA 1 1 }  { m_axi_a_col_0_WVALID VALID 1 1 }  { m_axi_a_col_0_WREADY READY 0 1 }  { m_axi_a_col_0_WDATA FIFONUM 1 32 }  { m_axi_a_col_0_WSTRB STRB 1 4 }  { m_axi_a_col_0_WLAST LAST 1 1 }  { m_axi_a_col_0_WID ID 1 1 }  { m_axi_a_col_0_WUSER DATA 1 1 }  { m_axi_a_col_0_ARVALID VALID 1 1 }  { m_axi_a_col_0_ARREADY READY 0 1 }  { m_axi_a_col_0_ARADDR ADDR 1 64 }  { m_axi_a_col_0_ARID ID 1 1 }  { m_axi_a_col_0_ARLEN SIZE 1 32 }  { m_axi_a_col_0_ARSIZE BURST 1 3 }  { m_axi_a_col_0_ARBURST LOCK 1 2 }  { m_axi_a_col_0_ARLOCK CACHE 1 2 }  { m_axi_a_col_0_ARCACHE PROT 1 4 }  { m_axi_a_col_0_ARPROT QOS 1 3 }  { m_axi_a_col_0_ARQOS REGION 1 4 }  { m_axi_a_col_0_ARREGION USER 1 4 }  { m_axi_a_col_0_ARUSER DATA 1 1 }  { m_axi_a_col_0_RVALID VALID 0 1 }  { m_axi_a_col_0_RREADY READY 1 1 }  { m_axi_a_col_0_RDATA FIFONUM 0 32 }  { m_axi_a_col_0_RLAST LAST 0 1 }  { m_axi_a_col_0_RID ID 0 1 }  { m_axi_a_col_0_RFIFONUM LEN 0 9 }  { m_axi_a_col_0_RUSER DATA 0 1 }  { m_axi_a_col_0_RRESP RESP 0 2 }  { m_axi_a_col_0_BVALID VALID 0 1 }  { m_axi_a_col_0_BREADY READY 1 1 }  { m_axi_a_col_0_BRESP RESP 0 2 }  { m_axi_a_col_0_BID ID 0 1 }  { m_axi_a_col_0_BUSER DATA 0 1 } } }
	zext_ln217 { ap_none {  { zext_ln217 in_data 0 10 } } }
	lower_pos_0 { ap_memory {  { lower_pos_0_address0 mem_address 1 10 }  { lower_pos_0_ce0 mem_ce 1 1 }  { lower_pos_0_q0 mem_dout 0 12 } } }
	lower_pos_1 { ap_memory {  { lower_pos_1_address0 mem_address 1 10 }  { lower_pos_1_ce0 mem_ce 1 1 }  { lower_pos_1_q0 mem_dout 0 12 } } }
	lower_pos_2 { ap_memory {  { lower_pos_2_address0 mem_address 1 10 }  { lower_pos_2_ce0 mem_ce 1 1 }  { lower_pos_2_q0 mem_dout 0 12 } } }
	lower_pos_3 { ap_memory {  { lower_pos_3_address0 mem_address 1 10 }  { lower_pos_3_ce0 mem_ce 1 1 }  { lower_pos_3_q0 mem_dout 0 12 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_q0 mem_dout 0 12 } } }
	n { ap_none {  { n in_data 0 32 } } }
}
