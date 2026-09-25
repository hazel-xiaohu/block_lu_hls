set moduleName run_cached_getrf
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
set C_modelName {run_cached_getrf}
set C_modelType { int 3 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict lower_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict lower_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_0 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict work_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a_row int 32 regular {axi_master 0}  }
	{ A_rcsr int 64 regular  }
	{ a_col int 32 regular {axi_master 0}  }
	{ A_cid int 64 regular  }
	{ a_val int 32 regular {axi_master 0}  }
	{ A_val_r int 64 regular  }
	{ l_row int 32 regular {axi_master 0}  }
	{ L_rcsr int 64 regular  }
	{ l_col int 32 regular {axi_master 0}  }
	{ L_cid int 64 regular  }
	{ l_val int 32 regular {axi_master 2}  }
	{ L_val_r int 64 regular  }
	{ u_row int 32 regular {axi_master 0}  }
	{ U_rcsr int 64 regular  }
	{ u_col int 32 regular {axi_master 0}  }
	{ U_cid int 64 regular  }
	{ u_val int 32 regular {axi_master 2}  }
	{ U_val_r int 64 regular  }
	{ n int 32 regular  }
	{ a_nnz int 11 regular  }
	{ l_nnz int 12 regular  }
	{ u_nnz int 12 regular  }
	{ pivot_eps float 32 regular  }
	{ lower_pos_0 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ lower_pos_1 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ lower_pos_2 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ lower_pos_3 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ upper_pos_0 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 2 3 } 1 1 }  }
	{ work_0 float 32 regular {array 1024 { 2 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_1 float 32 regular {array 1024 { 2 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_2 float 32 regular {array 1024 { 2 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ work_3 float 32 regular {array 1024 { 2 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ failed_row int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_rcsr","offset": { "type": "dynamic","port_name": "A_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_cid","offset": { "type": "dynamic","port_name": "A_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "A_val_r","offset": { "type": "dynamic","port_name": "A_val_r","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "A_val_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "L_rcsr","offset": { "type": "dynamic","port_name": "L_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "L_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "L_cid","offset": { "type": "dynamic","port_name": "L_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "L_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "L_val_r","offset": { "type": "dynamic","port_name": "L_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "L_val_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_row", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "U_rcsr","offset": { "type": "dynamic","port_name": "U_rcsr","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "U_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_col", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "U_cid","offset": { "type": "dynamic","port_name": "U_cid","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "U_cid", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_val", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "U_val_r","offset": { "type": "dynamic","port_name": "U_val_r","bundle": "control_r"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "U_val_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_nnz", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "l_nnz", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "u_nnz", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "pivot_eps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lower_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "lower_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "lower_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "lower_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} , 
 	{ "Name" : "work_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "failed_row", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 3} ]}
# RTL Port declarations: 
set portNum 566
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_a_row_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_row_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_a_row_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_a_row_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_row_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_a_row_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_row_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_row_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_a_row_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_a_row_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_row_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_row_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_row_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ A_rcsr sc_in sc_lv 64 signal 1 } 
	{ m_axi_a_col_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_a_col_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_a_col_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_col_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_col_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_a_col_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_a_col_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_a_col_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_col_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_a_col_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_a_col_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_a_col_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_a_col_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_a_col_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_a_col_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_a_col_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ A_cid sc_in sc_lv 64 signal 3 } 
	{ m_axi_a_val_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_a_val_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_a_val_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_a_val_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_a_val_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_a_val_0_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_a_val_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_a_val_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_a_val_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_a_val_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_a_val_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_a_val_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_a_val_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_a_val_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_a_val_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_a_val_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ A_val_r sc_in sc_lv 64 signal 5 } 
	{ m_axi_l_row_0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_l_row_0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_l_row_0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_l_row_0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_l_row_0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_l_row_0_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_l_row_0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_l_row_0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_l_row_0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_l_row_0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_l_row_0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_l_row_0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_l_row_0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_l_row_0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_l_row_0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_l_row_0_BUSER sc_in sc_lv 1 signal 6 } 
	{ L_rcsr sc_in sc_lv 64 signal 7 } 
	{ m_axi_l_col_0_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_l_col_0_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_l_col_0_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_l_col_0_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_l_col_0_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_l_col_0_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_l_col_0_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_l_col_0_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_l_col_0_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_l_col_0_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_l_col_0_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_l_col_0_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_RFIFONUM sc_in sc_lv 9 signal 8 } 
	{ m_axi_l_col_0_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_l_col_0_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_l_col_0_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_l_col_0_BUSER sc_in sc_lv 1 signal 8 } 
	{ L_cid sc_in sc_lv 64 signal 9 } 
	{ m_axi_l_val_0_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_l_val_0_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_AWLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_l_val_0_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_l_val_0_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_l_val_0_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_l_val_0_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_l_val_0_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_ARLEN sc_out sc_lv 32 signal 10 } 
	{ m_axi_l_val_0_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_l_val_0_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_l_val_0_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_l_val_0_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_l_val_0_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_RFIFONUM sc_in sc_lv 9 signal 10 } 
	{ m_axi_l_val_0_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_l_val_0_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_l_val_0_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_l_val_0_BUSER sc_in sc_lv 1 signal 10 } 
	{ L_val_r sc_in sc_lv 64 signal 11 } 
	{ m_axi_u_row_0_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_u_row_0_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_AWLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_u_row_0_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_u_row_0_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_u_row_0_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_WDATA sc_out sc_lv 32 signal 12 } 
	{ m_axi_u_row_0_WSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_u_row_0_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_ARLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_u_row_0_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_u_row_0_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_u_row_0_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_u_row_0_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_RDATA sc_in sc_lv 32 signal 12 } 
	{ m_axi_u_row_0_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_RFIFONUM sc_in sc_lv 9 signal 12 } 
	{ m_axi_u_row_0_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_u_row_0_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_u_row_0_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_u_row_0_BUSER sc_in sc_lv 1 signal 12 } 
	{ U_rcsr sc_in sc_lv 64 signal 13 } 
	{ m_axi_u_col_0_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_AWADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_u_col_0_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_AWLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_u_col_0_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_u_col_0_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_u_col_0_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_WDATA sc_out sc_lv 32 signal 14 } 
	{ m_axi_u_col_0_WSTRB sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_ARADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_u_col_0_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_ARLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_u_col_0_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_u_col_0_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_u_col_0_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_u_col_0_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_RDATA sc_in sc_lv 32 signal 14 } 
	{ m_axi_u_col_0_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_RFIFONUM sc_in sc_lv 9 signal 14 } 
	{ m_axi_u_col_0_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_u_col_0_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_u_col_0_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_u_col_0_BUSER sc_in sc_lv 1 signal 14 } 
	{ U_cid sc_in sc_lv 64 signal 15 } 
	{ m_axi_u_val_0_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_u_val_0_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_u_val_0_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_u_val_0_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_u_val_0_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_WDATA sc_out sc_lv 32 signal 16 } 
	{ m_axi_u_val_0_WSTRB sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_u_val_0_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_u_val_0_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_u_val_0_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_u_val_0_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_u_val_0_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_RDATA sc_in sc_lv 32 signal 16 } 
	{ m_axi_u_val_0_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_RFIFONUM sc_in sc_lv 9 signal 16 } 
	{ m_axi_u_val_0_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_u_val_0_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_u_val_0_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_u_val_0_BUSER sc_in sc_lv 1 signal 16 } 
	{ U_val_r sc_in sc_lv 64 signal 17 } 
	{ n sc_in sc_lv 32 signal 18 } 
	{ a_nnz sc_in sc_lv 11 signal 19 } 
	{ l_nnz sc_in sc_lv 12 signal 20 } 
	{ u_nnz sc_in sc_lv 12 signal 21 } 
	{ pivot_eps sc_in sc_lv 32 signal 22 } 
	{ lower_pos_0_address0 sc_out sc_lv 10 signal 23 } 
	{ lower_pos_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ lower_pos_0_we0 sc_out sc_logic 1 signal 23 } 
	{ lower_pos_0_d0 sc_out sc_lv 12 signal 23 } 
	{ lower_pos_0_q0 sc_in sc_lv 12 signal 23 } 
	{ lower_pos_1_address0 sc_out sc_lv 10 signal 24 } 
	{ lower_pos_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ lower_pos_1_we0 sc_out sc_logic 1 signal 24 } 
	{ lower_pos_1_d0 sc_out sc_lv 12 signal 24 } 
	{ lower_pos_1_q0 sc_in sc_lv 12 signal 24 } 
	{ lower_pos_2_address0 sc_out sc_lv 10 signal 25 } 
	{ lower_pos_2_ce0 sc_out sc_logic 1 signal 25 } 
	{ lower_pos_2_we0 sc_out sc_logic 1 signal 25 } 
	{ lower_pos_2_d0 sc_out sc_lv 12 signal 25 } 
	{ lower_pos_2_q0 sc_in sc_lv 12 signal 25 } 
	{ lower_pos_3_address0 sc_out sc_lv 10 signal 26 } 
	{ lower_pos_3_ce0 sc_out sc_logic 1 signal 26 } 
	{ lower_pos_3_we0 sc_out sc_logic 1 signal 26 } 
	{ lower_pos_3_d0 sc_out sc_lv 12 signal 26 } 
	{ lower_pos_3_q0 sc_in sc_lv 12 signal 26 } 
	{ upper_pos_0_address0 sc_out sc_lv 10 signal 27 } 
	{ upper_pos_0_ce0 sc_out sc_logic 1 signal 27 } 
	{ upper_pos_0_we0 sc_out sc_logic 1 signal 27 } 
	{ upper_pos_0_d0 sc_out sc_lv 12 signal 27 } 
	{ upper_pos_0_q0 sc_in sc_lv 12 signal 27 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 28 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 28 } 
	{ upper_pos_1_we0 sc_out sc_logic 1 signal 28 } 
	{ upper_pos_1_d0 sc_out sc_lv 12 signal 28 } 
	{ upper_pos_1_q0 sc_in sc_lv 12 signal 28 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 29 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 29 } 
	{ upper_pos_2_we0 sc_out sc_logic 1 signal 29 } 
	{ upper_pos_2_d0 sc_out sc_lv 12 signal 29 } 
	{ upper_pos_2_q0 sc_in sc_lv 12 signal 29 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 30 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 30 } 
	{ upper_pos_3_we0 sc_out sc_logic 1 signal 30 } 
	{ upper_pos_3_d0 sc_out sc_lv 12 signal 30 } 
	{ upper_pos_3_q0 sc_in sc_lv 12 signal 30 } 
	{ work_0_address0 sc_out sc_lv 10 signal 31 } 
	{ work_0_ce0 sc_out sc_logic 1 signal 31 } 
	{ work_0_we0 sc_out sc_logic 1 signal 31 } 
	{ work_0_d0 sc_out sc_lv 32 signal 31 } 
	{ work_0_q0 sc_in sc_lv 32 signal 31 } 
	{ work_0_address1 sc_out sc_lv 10 signal 31 } 
	{ work_0_ce1 sc_out sc_logic 1 signal 31 } 
	{ work_0_q1 sc_in sc_lv 32 signal 31 } 
	{ work_0_address2 sc_out sc_lv 10 signal 31 } 
	{ work_0_ce2 sc_out sc_logic 1 signal 31 } 
	{ work_0_q2 sc_in sc_lv 32 signal 31 } 
	{ work_1_address0 sc_out sc_lv 10 signal 32 } 
	{ work_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ work_1_we0 sc_out sc_logic 1 signal 32 } 
	{ work_1_d0 sc_out sc_lv 32 signal 32 } 
	{ work_1_q0 sc_in sc_lv 32 signal 32 } 
	{ work_1_address1 sc_out sc_lv 10 signal 32 } 
	{ work_1_ce1 sc_out sc_logic 1 signal 32 } 
	{ work_1_q1 sc_in sc_lv 32 signal 32 } 
	{ work_1_address2 sc_out sc_lv 10 signal 32 } 
	{ work_1_ce2 sc_out sc_logic 1 signal 32 } 
	{ work_1_q2 sc_in sc_lv 32 signal 32 } 
	{ work_2_address0 sc_out sc_lv 10 signal 33 } 
	{ work_2_ce0 sc_out sc_logic 1 signal 33 } 
	{ work_2_we0 sc_out sc_logic 1 signal 33 } 
	{ work_2_d0 sc_out sc_lv 32 signal 33 } 
	{ work_2_q0 sc_in sc_lv 32 signal 33 } 
	{ work_2_address1 sc_out sc_lv 10 signal 33 } 
	{ work_2_ce1 sc_out sc_logic 1 signal 33 } 
	{ work_2_q1 sc_in sc_lv 32 signal 33 } 
	{ work_2_address2 sc_out sc_lv 10 signal 33 } 
	{ work_2_ce2 sc_out sc_logic 1 signal 33 } 
	{ work_2_q2 sc_in sc_lv 32 signal 33 } 
	{ work_3_address0 sc_out sc_lv 10 signal 34 } 
	{ work_3_ce0 sc_out sc_logic 1 signal 34 } 
	{ work_3_we0 sc_out sc_logic 1 signal 34 } 
	{ work_3_d0 sc_out sc_lv 32 signal 34 } 
	{ work_3_q0 sc_in sc_lv 32 signal 34 } 
	{ work_3_address1 sc_out sc_lv 10 signal 34 } 
	{ work_3_ce1 sc_out sc_logic 1 signal 34 } 
	{ work_3_q1 sc_in sc_lv 32 signal 34 } 
	{ work_3_address2 sc_out sc_lv 10 signal 34 } 
	{ work_3_ce2 sc_out sc_logic 1 signal 34 } 
	{ work_3_q2 sc_in sc_lv 32 signal 34 } 
	{ failed_row sc_out sc_lv 32 signal 35 } 
	{ failed_row_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ ap_return sc_out sc_lv 3 signal -1 } 
	{ grp_fu_2046_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2046_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2046_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2046_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2046_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2050_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2050_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2050_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2050_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2050_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2054_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2054_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2058_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2058_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2058_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2058_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2058_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2062_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2062_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2062_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2062_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2066_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2066_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2066_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2066_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2070_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2070_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2070_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2070_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2074_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2074_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2074_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2074_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2038_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2038_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2038_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2038_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2042_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2042_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2042_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2042_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2042_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_a_row_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_a_row_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_a_row_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_a_row_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWID" }} , 
 	{ "name": "m_axi_a_row_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_a_row_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_a_row_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_a_row_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_a_row_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_a_row_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_a_row_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_a_row_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_a_row_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_a_row_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_a_row_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_a_row_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_a_row_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_a_row_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_a_row_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_WID" }} , 
 	{ "name": "m_axi_a_row_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_a_row_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_a_row_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_a_row_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_a_row_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARID" }} , 
 	{ "name": "m_axi_a_row_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_a_row_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_a_row_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_a_row_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_a_row_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_a_row_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_a_row_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_a_row_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_a_row_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_a_row_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_a_row_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_a_row_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_row", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_a_row_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_a_row_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_RID" }} , 
 	{ "name": "m_axi_a_row_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a_row", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_a_row_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_a_row_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_a_row_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_a_row_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_a_row_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_row", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_a_row_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_BID" }} , 
 	{ "name": "m_axi_a_row_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_row", "role": "0_BUSER" }} , 
 	{ "name": "A_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_rcsr", "role": "default" }} , 
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
 	{ "name": "A_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_cid", "role": "default" }} , 
 	{ "name": "m_axi_a_val_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_a_val_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_a_val_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_a_val_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWID" }} , 
 	{ "name": "m_axi_a_val_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_a_val_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_a_val_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_a_val_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_a_val_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_a_val_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_a_val_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_a_val_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_a_val_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_a_val_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_a_val_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_a_val_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_a_val_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_a_val_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_a_val_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_WID" }} , 
 	{ "name": "m_axi_a_val_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_a_val_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_a_val_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_a_val_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_a_val_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARID" }} , 
 	{ "name": "m_axi_a_val_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_a_val_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_a_val_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_a_val_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_a_val_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_a_val_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_a_val_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_a_val_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_a_val_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_a_val_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_a_val_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_a_val_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_val", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_a_val_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_a_val_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_RID" }} , 
 	{ "name": "m_axi_a_val_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "a_val", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_a_val_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_a_val_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_a_val_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_a_val_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_a_val_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_val", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_a_val_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_BID" }} , 
 	{ "name": "m_axi_a_val_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_val", "role": "0_BUSER" }} , 
 	{ "name": "A_val_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_val_r", "role": "default" }} , 
 	{ "name": "m_axi_l_row_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_l_row_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_l_row_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_l_row_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWID" }} , 
 	{ "name": "m_axi_l_row_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_l_row_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_l_row_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_l_row_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_l_row_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_l_row_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_l_row_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_l_row_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_l_row_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_l_row_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_l_row_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_l_row_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_l_row_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_l_row_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_l_row_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_WID" }} , 
 	{ "name": "m_axi_l_row_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_l_row_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_l_row_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_l_row_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_l_row_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARID" }} , 
 	{ "name": "m_axi_l_row_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_l_row_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_l_row_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_l_row_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_l_row_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_l_row_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_l_row_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_l_row_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_l_row_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_l_row_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_l_row_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_l_row_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_row", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_l_row_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_l_row_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_RID" }} , 
 	{ "name": "m_axi_l_row_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "l_row", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_l_row_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_l_row_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_l_row_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_l_row_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_l_row_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_row", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_l_row_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_BID" }} , 
 	{ "name": "m_axi_l_row_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_row", "role": "0_BUSER" }} , 
 	{ "name": "L_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "L_rcsr", "role": "default" }} , 
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
 	{ "name": "L_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "L_cid", "role": "default" }} , 
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
 	{ "name": "L_val_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "L_val_r", "role": "default" }} , 
 	{ "name": "m_axi_u_row_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_u_row_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_u_row_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_u_row_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWID" }} , 
 	{ "name": "m_axi_u_row_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_u_row_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_u_row_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_u_row_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_u_row_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_u_row_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_u_row_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_u_row_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_u_row_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_u_row_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_u_row_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_u_row_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_u_row_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_u_row_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_u_row_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_WID" }} , 
 	{ "name": "m_axi_u_row_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_u_row_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_u_row_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_u_row_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_u_row_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARID" }} , 
 	{ "name": "m_axi_u_row_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_u_row_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_u_row_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_u_row_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_u_row_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_u_row_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_u_row_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_u_row_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_u_row_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_u_row_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_u_row_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_u_row_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_row", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_u_row_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_u_row_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_RID" }} , 
 	{ "name": "m_axi_u_row_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "u_row", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_u_row_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_u_row_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_u_row_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_u_row_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_u_row_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_row", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_u_row_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_BID" }} , 
 	{ "name": "m_axi_u_row_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_row", "role": "0_BUSER" }} , 
 	{ "name": "U_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "U_rcsr", "role": "default" }} , 
 	{ "name": "m_axi_u_col_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_u_col_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_u_col_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_u_col_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWID" }} , 
 	{ "name": "m_axi_u_col_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_u_col_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_u_col_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_u_col_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_u_col_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_u_col_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_u_col_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_u_col_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_u_col_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_u_col_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_u_col_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_u_col_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_u_col_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_u_col_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_u_col_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_WID" }} , 
 	{ "name": "m_axi_u_col_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_u_col_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_u_col_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_u_col_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_u_col_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARID" }} , 
 	{ "name": "m_axi_u_col_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_u_col_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_u_col_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_u_col_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_u_col_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_u_col_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_u_col_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_u_col_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_u_col_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_u_col_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_u_col_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_u_col_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_col", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_u_col_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_u_col_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_RID" }} , 
 	{ "name": "m_axi_u_col_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "u_col", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_u_col_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_u_col_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_u_col_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_u_col_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_u_col_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_col", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_u_col_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_BID" }} , 
 	{ "name": "m_axi_u_col_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_col", "role": "0_BUSER" }} , 
 	{ "name": "U_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "U_cid", "role": "default" }} , 
 	{ "name": "m_axi_u_val_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_u_val_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_u_val_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_u_val_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWID" }} , 
 	{ "name": "m_axi_u_val_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_u_val_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_u_val_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_u_val_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_u_val_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_u_val_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_u_val_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_u_val_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_u_val_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_u_val_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_u_val_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_u_val_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_u_val_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_u_val_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_u_val_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_WID" }} , 
 	{ "name": "m_axi_u_val_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_u_val_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_u_val_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_u_val_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_u_val_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARID" }} , 
 	{ "name": "m_axi_u_val_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_u_val_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_u_val_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_u_val_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_u_val_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_u_val_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_u_val_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_u_val_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_u_val_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_u_val_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_u_val_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_u_val_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_val", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_u_val_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_u_val_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_RID" }} , 
 	{ "name": "m_axi_u_val_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "u_val", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_u_val_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_u_val_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_u_val_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_u_val_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_u_val_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_val", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_u_val_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_BID" }} , 
 	{ "name": "m_axi_u_val_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_val", "role": "0_BUSER" }} , 
 	{ "name": "U_val_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "U_val_r", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "a_nnz", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a_nnz", "role": "default" }} , 
 	{ "name": "l_nnz", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "l_nnz", "role": "default" }} , 
 	{ "name": "u_nnz", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u_nnz", "role": "default" }} , 
 	{ "name": "pivot_eps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pivot_eps", "role": "default" }} , 
 	{ "name": "lower_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "address0" }} , 
 	{ "name": "lower_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "ce0" }} , 
 	{ "name": "lower_pos_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "we0" }} , 
 	{ "name": "lower_pos_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "d0" }} , 
 	{ "name": "lower_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_0", "role": "q0" }} , 
 	{ "name": "lower_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "address0" }} , 
 	{ "name": "lower_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "ce0" }} , 
 	{ "name": "lower_pos_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "we0" }} , 
 	{ "name": "lower_pos_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "d0" }} , 
 	{ "name": "lower_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_1", "role": "q0" }} , 
 	{ "name": "lower_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "address0" }} , 
 	{ "name": "lower_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "ce0" }} , 
 	{ "name": "lower_pos_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "we0" }} , 
 	{ "name": "lower_pos_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "d0" }} , 
 	{ "name": "lower_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_2", "role": "q0" }} , 
 	{ "name": "lower_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "address0" }} , 
 	{ "name": "lower_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "ce0" }} , 
 	{ "name": "lower_pos_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "we0" }} , 
 	{ "name": "lower_pos_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "d0" }} , 
 	{ "name": "lower_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "lower_pos_3", "role": "q0" }} , 
 	{ "name": "upper_pos_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "address0" }} , 
 	{ "name": "upper_pos_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "ce0" }} , 
 	{ "name": "upper_pos_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "we0" }} , 
 	{ "name": "upper_pos_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "d0" }} , 
 	{ "name": "upper_pos_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_0", "role": "q0" }} , 
 	{ "name": "upper_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "address0" }} , 
 	{ "name": "upper_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "ce0" }} , 
 	{ "name": "upper_pos_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "we0" }} , 
 	{ "name": "upper_pos_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "d0" }} , 
 	{ "name": "upper_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_1", "role": "q0" }} , 
 	{ "name": "upper_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "address0" }} , 
 	{ "name": "upper_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "ce0" }} , 
 	{ "name": "upper_pos_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "we0" }} , 
 	{ "name": "upper_pos_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "d0" }} , 
 	{ "name": "upper_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_2", "role": "q0" }} , 
 	{ "name": "upper_pos_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "address0" }} , 
 	{ "name": "upper_pos_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "ce0" }} , 
 	{ "name": "upper_pos_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "we0" }} , 
 	{ "name": "upper_pos_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "d0" }} , 
 	{ "name": "upper_pos_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "upper_pos_3", "role": "q0" }} , 
 	{ "name": "work_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address0" }} , 
 	{ "name": "work_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce0" }} , 
 	{ "name": "work_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "we0" }} , 
 	{ "name": "work_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "d0" }} , 
 	{ "name": "work_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q0" }} , 
 	{ "name": "work_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address1" }} , 
 	{ "name": "work_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce1" }} , 
 	{ "name": "work_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q1" }} , 
 	{ "name": "work_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_0", "role": "address2" }} , 
 	{ "name": "work_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_0", "role": "ce2" }} , 
 	{ "name": "work_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_0", "role": "q2" }} , 
 	{ "name": "work_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address0" }} , 
 	{ "name": "work_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce0" }} , 
 	{ "name": "work_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "we0" }} , 
 	{ "name": "work_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "d0" }} , 
 	{ "name": "work_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q0" }} , 
 	{ "name": "work_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address1" }} , 
 	{ "name": "work_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce1" }} , 
 	{ "name": "work_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q1" }} , 
 	{ "name": "work_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_1", "role": "address2" }} , 
 	{ "name": "work_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_1", "role": "ce2" }} , 
 	{ "name": "work_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_1", "role": "q2" }} , 
 	{ "name": "work_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address0" }} , 
 	{ "name": "work_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce0" }} , 
 	{ "name": "work_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "we0" }} , 
 	{ "name": "work_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "d0" }} , 
 	{ "name": "work_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q0" }} , 
 	{ "name": "work_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address1" }} , 
 	{ "name": "work_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce1" }} , 
 	{ "name": "work_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q1" }} , 
 	{ "name": "work_2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_2", "role": "address2" }} , 
 	{ "name": "work_2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_2", "role": "ce2" }} , 
 	{ "name": "work_2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_2", "role": "q2" }} , 
 	{ "name": "work_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address0" }} , 
 	{ "name": "work_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce0" }} , 
 	{ "name": "work_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "we0" }} , 
 	{ "name": "work_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "d0" }} , 
 	{ "name": "work_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q0" }} , 
 	{ "name": "work_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address1" }} , 
 	{ "name": "work_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce1" }} , 
 	{ "name": "work_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q1" }} , 
 	{ "name": "work_3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_3", "role": "address2" }} , 
 	{ "name": "work_3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_3", "role": "ce2" }} , 
 	{ "name": "work_3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_3", "role": "q2" }} , 
 	{ "name": "failed_row", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "failed_row", "role": "default" }} , 
 	{ "name": "failed_row_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "failed_row", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_2046_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2046_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2046_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2046_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2046_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2046_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2046_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2046_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2046_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2046_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2050_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2050_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2050_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2050_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2050_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2050_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2050_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2050_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2050_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2050_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2054_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2054_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2058_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2058_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2058_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2058_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2058_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2058_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2058_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2058_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2058_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2058_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2062_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2062_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2062_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2062_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2062_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2062_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2062_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2062_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2066_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2066_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2066_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2066_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2066_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2066_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2066_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2066_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2070_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2070_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2070_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2070_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2070_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2070_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2070_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2070_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2074_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2074_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2074_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2074_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2074_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2074_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2074_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2074_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2038_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2038_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2038_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2038_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2038_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2038_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2038_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2038_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2042_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2042_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2042_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2042_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2042_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2042_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2042_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2042_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2042_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2042_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_getrf {
		a_row {Type I LastRead 34 FirstWrite -1}
		A_rcsr {Type I LastRead 2 FirstWrite -1}
		a_col {Type I LastRead 10 FirstWrite -1}
		A_cid {Type I LastRead 2 FirstWrite -1}
		a_val {Type I LastRead 21 FirstWrite -1}
		A_val_r {Type I LastRead 2 FirstWrite -1}
		l_row {Type I LastRead 37 FirstWrite -1}
		L_rcsr {Type I LastRead 0 FirstWrite -1}
		l_col {Type I LastRead 39 FirstWrite -1}
		L_cid {Type I LastRead 0 FirstWrite -1}
		l_val {Type IO LastRead 51 FirstWrite -1}
		L_val_r {Type I LastRead 0 FirstWrite -1}
		u_row {Type I LastRead 37 FirstWrite -1}
		U_rcsr {Type I LastRead 2 FirstWrite -1}
		u_col {Type I LastRead 39 FirstWrite -1}
		U_cid {Type I LastRead 2 FirstWrite -1}
		u_val {Type IO LastRead 51 FirstWrite -1}
		U_val_r {Type I LastRead 2 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		a_nnz {Type I LastRead 2 FirstWrite -1}
		l_nnz {Type I LastRead 0 FirstWrite -1}
		u_nnz {Type I LastRead 2 FirstWrite -1}
		pivot_eps {Type I LastRead 2 FirstWrite -1}
		lower_pos_0 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_1 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_2 {Type IO LastRead 33 FirstWrite -1}
		lower_pos_3 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_0 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_1 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_2 {Type IO LastRead 33 FirstWrite -1}
		upper_pos_3 {Type IO LastRead 33 FirstWrite -1}
		work_0 {Type IO LastRead 33 FirstWrite -1}
		work_1 {Type IO LastRead 33 FirstWrite -1}
		work_2 {Type IO LastRead 33 FirstWrite -1}
		work_3 {Type IO LastRead 33 FirstWrite -1}
		failed_row {Type O LastRead -1 FirstWrite 29}}
	cache_triangular_pattern {
		u_row {Type I LastRead 30 FirstWrite -1}
		row_ptr {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		col_idx {Type I LastRead 9 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}
		values {Type I LastRead 9 FirstWrite -1}
		n {Type I LastRead 9 FirstWrite -1}
		nnz {Type I LastRead 9 FirstWrite -1}
		lower {Type I LastRead 9 FirstWrite -1}
		load_values {Type I LastRead 9 FirstWrite -1}
		position_0 {Type IO LastRead 33 FirstWrite 11}
		position_1 {Type IO LastRead 33 FirstWrite 11}
		position_2 {Type IO LastRead 33 FirstWrite 11}
		position_3 {Type IO LastRead 33 FirstWrite 11}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		failed_row {Type O LastRead -1 FirstWrite 31}}
	cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2 {
		zext_ln76 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		load_values {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		lower {Type I LastRead 0 FirstWrite -1}
		factor_val_3 {Type O LastRead -1 FirstWrite 21}
		factor_val_2 {Type O LastRead -1 FirstWrite 21}
		factor_val_1 {Type O LastRead -1 FirstWrite 21}
		factor_val_0 {Type O LastRead -1 FirstWrite 21}
		position_3 {Type O LastRead -1 FirstWrite 11}
		position_2 {Type O LastRead -1 FirstWrite 11}
		position_1 {Type O LastRead -1 FirstWrite 11}
		position_0 {Type O LastRead -1 FirstWrite 11}
		col_idx {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 10 FirstWrite -1}
		zext_ln83_1 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		values {Type I LastRead 0 FirstWrite -1}
		u_val {Type I LastRead 20 FirstWrite -1}}
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
		n {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_131_3 {
		indvars_iv_i {Type I LastRead 0 FirstWrite -1}
		row_5 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln130 {Type I LastRead 0 FirstWrite -1}
		lower_pos_0 {Type I LastRead 2 FirstWrite -1}
		lower_pos_1 {Type I LastRead 2 FirstWrite -1}
		lower_pos_2 {Type I LastRead 2 FirstWrite -1}
		lower_pos_3 {Type I LastRead 2 FirstWrite -1}
		zext_ln132 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_238_5 {
		add_ln230 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln245 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 2 FirstWrite -1}
		upper_pos_1 {Type I LastRead 2 FirstWrite -1}
		upper_pos_2 {Type I LastRead 2 FirstWrite -1}
		upper_pos_3 {Type I LastRead 2 FirstWrite -1}
		work_0 {Type IO LastRead 3 FirstWrite 17}
		zext_ln231 {Type I LastRead 0 FirstWrite -1}
		work_1 {Type IO LastRead 3 FirstWrite 17}
		work_2 {Type IO LastRead 3 FirstWrite 17}
		work_3 {Type IO LastRead 3 FirstWrite 17}
		multiplier {Type I LastRead 0 FirstWrite -1}}
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
		row_7 {Type I LastRead 0 FirstWrite -1}}
	run_cached_getrf_Pipeline_VITIS_LOOP_262_9 {
		pos_7 {Type I LastRead 0 FirstWrite -1}
		u_row_addr_read_1 {Type I LastRead 0 FirstWrite -1}
		u_col {Type I LastRead 1 FirstWrite -1}
		sext_ln262_1 {Type I LastRead 0 FirstWrite -1}
		u_val {Type O LastRead -1 FirstWrite 4}
		sext_ln262_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		work_0 {Type I LastRead 2 FirstWrite -1}
		work_1 {Type I LastRead 2 FirstWrite -1}
		work_2 {Type I LastRead 2 FirstWrite -1}
		work_3 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_a_row_0_AWVALID VALID 1 1 }  { m_axi_a_row_0_AWREADY READY 0 1 }  { m_axi_a_row_0_AWADDR ADDR 1 64 }  { m_axi_a_row_0_AWID ID 1 1 }  { m_axi_a_row_0_AWLEN SIZE 1 32 }  { m_axi_a_row_0_AWSIZE BURST 1 3 }  { m_axi_a_row_0_AWBURST LOCK 1 2 }  { m_axi_a_row_0_AWLOCK CACHE 1 2 }  { m_axi_a_row_0_AWCACHE PROT 1 4 }  { m_axi_a_row_0_AWPROT QOS 1 3 }  { m_axi_a_row_0_AWQOS REGION 1 4 }  { m_axi_a_row_0_AWREGION USER 1 4 }  { m_axi_a_row_0_AWUSER DATA 1 1 }  { m_axi_a_row_0_WVALID VALID 1 1 }  { m_axi_a_row_0_WREADY READY 0 1 }  { m_axi_a_row_0_WDATA FIFONUM 1 32 }  { m_axi_a_row_0_WSTRB STRB 1 4 }  { m_axi_a_row_0_WLAST LAST 1 1 }  { m_axi_a_row_0_WID ID 1 1 }  { m_axi_a_row_0_WUSER DATA 1 1 }  { m_axi_a_row_0_ARVALID VALID 1 1 }  { m_axi_a_row_0_ARREADY READY 0 1 }  { m_axi_a_row_0_ARADDR ADDR 1 64 }  { m_axi_a_row_0_ARID ID 1 1 }  { m_axi_a_row_0_ARLEN SIZE 1 32 }  { m_axi_a_row_0_ARSIZE BURST 1 3 }  { m_axi_a_row_0_ARBURST LOCK 1 2 }  { m_axi_a_row_0_ARLOCK CACHE 1 2 }  { m_axi_a_row_0_ARCACHE PROT 1 4 }  { m_axi_a_row_0_ARPROT QOS 1 3 }  { m_axi_a_row_0_ARQOS REGION 1 4 }  { m_axi_a_row_0_ARREGION USER 1 4 }  { m_axi_a_row_0_ARUSER DATA 1 1 }  { m_axi_a_row_0_RVALID VALID 0 1 }  { m_axi_a_row_0_RREADY READY 1 1 }  { m_axi_a_row_0_RDATA FIFONUM 0 32 }  { m_axi_a_row_0_RLAST LAST 0 1 }  { m_axi_a_row_0_RID ID 0 1 }  { m_axi_a_row_0_RFIFONUM LEN 0 9 }  { m_axi_a_row_0_RUSER DATA 0 1 }  { m_axi_a_row_0_RRESP RESP 0 2 }  { m_axi_a_row_0_BVALID VALID 0 1 }  { m_axi_a_row_0_BREADY READY 1 1 }  { m_axi_a_row_0_BRESP RESP 0 2 }  { m_axi_a_row_0_BID ID 0 1 }  { m_axi_a_row_0_BUSER DATA 0 1 } } }
	A_rcsr { ap_none {  { A_rcsr in_data 0 64 } } }
	 { m_axi {  { m_axi_a_col_0_AWVALID VALID 1 1 }  { m_axi_a_col_0_AWREADY READY 0 1 }  { m_axi_a_col_0_AWADDR ADDR 1 64 }  { m_axi_a_col_0_AWID ID 1 1 }  { m_axi_a_col_0_AWLEN SIZE 1 32 }  { m_axi_a_col_0_AWSIZE BURST 1 3 }  { m_axi_a_col_0_AWBURST LOCK 1 2 }  { m_axi_a_col_0_AWLOCK CACHE 1 2 }  { m_axi_a_col_0_AWCACHE PROT 1 4 }  { m_axi_a_col_0_AWPROT QOS 1 3 }  { m_axi_a_col_0_AWQOS REGION 1 4 }  { m_axi_a_col_0_AWREGION USER 1 4 }  { m_axi_a_col_0_AWUSER DATA 1 1 }  { m_axi_a_col_0_WVALID VALID 1 1 }  { m_axi_a_col_0_WREADY READY 0 1 }  { m_axi_a_col_0_WDATA FIFONUM 1 32 }  { m_axi_a_col_0_WSTRB STRB 1 4 }  { m_axi_a_col_0_WLAST LAST 1 1 }  { m_axi_a_col_0_WID ID 1 1 }  { m_axi_a_col_0_WUSER DATA 1 1 }  { m_axi_a_col_0_ARVALID VALID 1 1 }  { m_axi_a_col_0_ARREADY READY 0 1 }  { m_axi_a_col_0_ARADDR ADDR 1 64 }  { m_axi_a_col_0_ARID ID 1 1 }  { m_axi_a_col_0_ARLEN SIZE 1 32 }  { m_axi_a_col_0_ARSIZE BURST 1 3 }  { m_axi_a_col_0_ARBURST LOCK 1 2 }  { m_axi_a_col_0_ARLOCK CACHE 1 2 }  { m_axi_a_col_0_ARCACHE PROT 1 4 }  { m_axi_a_col_0_ARPROT QOS 1 3 }  { m_axi_a_col_0_ARQOS REGION 1 4 }  { m_axi_a_col_0_ARREGION USER 1 4 }  { m_axi_a_col_0_ARUSER DATA 1 1 }  { m_axi_a_col_0_RVALID VALID 0 1 }  { m_axi_a_col_0_RREADY READY 1 1 }  { m_axi_a_col_0_RDATA FIFONUM 0 32 }  { m_axi_a_col_0_RLAST LAST 0 1 }  { m_axi_a_col_0_RID ID 0 1 }  { m_axi_a_col_0_RFIFONUM LEN 0 9 }  { m_axi_a_col_0_RUSER DATA 0 1 }  { m_axi_a_col_0_RRESP RESP 0 2 }  { m_axi_a_col_0_BVALID VALID 0 1 }  { m_axi_a_col_0_BREADY READY 1 1 }  { m_axi_a_col_0_BRESP RESP 0 2 }  { m_axi_a_col_0_BID ID 0 1 }  { m_axi_a_col_0_BUSER DATA 0 1 } } }
	A_cid { ap_none {  { A_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_a_val_0_AWVALID VALID 1 1 }  { m_axi_a_val_0_AWREADY READY 0 1 }  { m_axi_a_val_0_AWADDR ADDR 1 64 }  { m_axi_a_val_0_AWID ID 1 1 }  { m_axi_a_val_0_AWLEN SIZE 1 32 }  { m_axi_a_val_0_AWSIZE BURST 1 3 }  { m_axi_a_val_0_AWBURST LOCK 1 2 }  { m_axi_a_val_0_AWLOCK CACHE 1 2 }  { m_axi_a_val_0_AWCACHE PROT 1 4 }  { m_axi_a_val_0_AWPROT QOS 1 3 }  { m_axi_a_val_0_AWQOS REGION 1 4 }  { m_axi_a_val_0_AWREGION USER 1 4 }  { m_axi_a_val_0_AWUSER DATA 1 1 }  { m_axi_a_val_0_WVALID VALID 1 1 }  { m_axi_a_val_0_WREADY READY 0 1 }  { m_axi_a_val_0_WDATA FIFONUM 1 32 }  { m_axi_a_val_0_WSTRB STRB 1 4 }  { m_axi_a_val_0_WLAST LAST 1 1 }  { m_axi_a_val_0_WID ID 1 1 }  { m_axi_a_val_0_WUSER DATA 1 1 }  { m_axi_a_val_0_ARVALID VALID 1 1 }  { m_axi_a_val_0_ARREADY READY 0 1 }  { m_axi_a_val_0_ARADDR ADDR 1 64 }  { m_axi_a_val_0_ARID ID 1 1 }  { m_axi_a_val_0_ARLEN SIZE 1 32 }  { m_axi_a_val_0_ARSIZE BURST 1 3 }  { m_axi_a_val_0_ARBURST LOCK 1 2 }  { m_axi_a_val_0_ARLOCK CACHE 1 2 }  { m_axi_a_val_0_ARCACHE PROT 1 4 }  { m_axi_a_val_0_ARPROT QOS 1 3 }  { m_axi_a_val_0_ARQOS REGION 1 4 }  { m_axi_a_val_0_ARREGION USER 1 4 }  { m_axi_a_val_0_ARUSER DATA 1 1 }  { m_axi_a_val_0_RVALID VALID 0 1 }  { m_axi_a_val_0_RREADY READY 1 1 }  { m_axi_a_val_0_RDATA FIFONUM 0 32 }  { m_axi_a_val_0_RLAST LAST 0 1 }  { m_axi_a_val_0_RID ID 0 1 }  { m_axi_a_val_0_RFIFONUM LEN 0 9 }  { m_axi_a_val_0_RUSER DATA 0 1 }  { m_axi_a_val_0_RRESP RESP 0 2 }  { m_axi_a_val_0_BVALID VALID 0 1 }  { m_axi_a_val_0_BREADY READY 1 1 }  { m_axi_a_val_0_BRESP RESP 0 2 }  { m_axi_a_val_0_BID ID 0 1 }  { m_axi_a_val_0_BUSER DATA 0 1 } } }
	A_val_r { ap_none {  { A_val_r in_data 0 64 } } }
	 { m_axi {  { m_axi_l_row_0_AWVALID VALID 1 1 }  { m_axi_l_row_0_AWREADY READY 0 1 }  { m_axi_l_row_0_AWADDR ADDR 1 64 }  { m_axi_l_row_0_AWID ID 1 1 }  { m_axi_l_row_0_AWLEN SIZE 1 32 }  { m_axi_l_row_0_AWSIZE BURST 1 3 }  { m_axi_l_row_0_AWBURST LOCK 1 2 }  { m_axi_l_row_0_AWLOCK CACHE 1 2 }  { m_axi_l_row_0_AWCACHE PROT 1 4 }  { m_axi_l_row_0_AWPROT QOS 1 3 }  { m_axi_l_row_0_AWQOS REGION 1 4 }  { m_axi_l_row_0_AWREGION USER 1 4 }  { m_axi_l_row_0_AWUSER DATA 1 1 }  { m_axi_l_row_0_WVALID VALID 1 1 }  { m_axi_l_row_0_WREADY READY 0 1 }  { m_axi_l_row_0_WDATA FIFONUM 1 32 }  { m_axi_l_row_0_WSTRB STRB 1 4 }  { m_axi_l_row_0_WLAST LAST 1 1 }  { m_axi_l_row_0_WID ID 1 1 }  { m_axi_l_row_0_WUSER DATA 1 1 }  { m_axi_l_row_0_ARVALID VALID 1 1 }  { m_axi_l_row_0_ARREADY READY 0 1 }  { m_axi_l_row_0_ARADDR ADDR 1 64 }  { m_axi_l_row_0_ARID ID 1 1 }  { m_axi_l_row_0_ARLEN SIZE 1 32 }  { m_axi_l_row_0_ARSIZE BURST 1 3 }  { m_axi_l_row_0_ARBURST LOCK 1 2 }  { m_axi_l_row_0_ARLOCK CACHE 1 2 }  { m_axi_l_row_0_ARCACHE PROT 1 4 }  { m_axi_l_row_0_ARPROT QOS 1 3 }  { m_axi_l_row_0_ARQOS REGION 1 4 }  { m_axi_l_row_0_ARREGION USER 1 4 }  { m_axi_l_row_0_ARUSER DATA 1 1 }  { m_axi_l_row_0_RVALID VALID 0 1 }  { m_axi_l_row_0_RREADY READY 1 1 }  { m_axi_l_row_0_RDATA FIFONUM 0 32 }  { m_axi_l_row_0_RLAST LAST 0 1 }  { m_axi_l_row_0_RID ID 0 1 }  { m_axi_l_row_0_RFIFONUM LEN 0 9 }  { m_axi_l_row_0_RUSER DATA 0 1 }  { m_axi_l_row_0_RRESP RESP 0 2 }  { m_axi_l_row_0_BVALID VALID 0 1 }  { m_axi_l_row_0_BREADY READY 1 1 }  { m_axi_l_row_0_BRESP RESP 0 2 }  { m_axi_l_row_0_BID ID 0 1 }  { m_axi_l_row_0_BUSER DATA 0 1 } } }
	L_rcsr { ap_none {  { L_rcsr in_data 0 64 } } }
	 { m_axi {  { m_axi_l_col_0_AWVALID VALID 1 1 }  { m_axi_l_col_0_AWREADY READY 0 1 }  { m_axi_l_col_0_AWADDR ADDR 1 64 }  { m_axi_l_col_0_AWID ID 1 1 }  { m_axi_l_col_0_AWLEN SIZE 1 32 }  { m_axi_l_col_0_AWSIZE BURST 1 3 }  { m_axi_l_col_0_AWBURST LOCK 1 2 }  { m_axi_l_col_0_AWLOCK CACHE 1 2 }  { m_axi_l_col_0_AWCACHE PROT 1 4 }  { m_axi_l_col_0_AWPROT QOS 1 3 }  { m_axi_l_col_0_AWQOS REGION 1 4 }  { m_axi_l_col_0_AWREGION USER 1 4 }  { m_axi_l_col_0_AWUSER DATA 1 1 }  { m_axi_l_col_0_WVALID VALID 1 1 }  { m_axi_l_col_0_WREADY READY 0 1 }  { m_axi_l_col_0_WDATA FIFONUM 1 32 }  { m_axi_l_col_0_WSTRB STRB 1 4 }  { m_axi_l_col_0_WLAST LAST 1 1 }  { m_axi_l_col_0_WID ID 1 1 }  { m_axi_l_col_0_WUSER DATA 1 1 }  { m_axi_l_col_0_ARVALID VALID 1 1 }  { m_axi_l_col_0_ARREADY READY 0 1 }  { m_axi_l_col_0_ARADDR ADDR 1 64 }  { m_axi_l_col_0_ARID ID 1 1 }  { m_axi_l_col_0_ARLEN SIZE 1 32 }  { m_axi_l_col_0_ARSIZE BURST 1 3 }  { m_axi_l_col_0_ARBURST LOCK 1 2 }  { m_axi_l_col_0_ARLOCK CACHE 1 2 }  { m_axi_l_col_0_ARCACHE PROT 1 4 }  { m_axi_l_col_0_ARPROT QOS 1 3 }  { m_axi_l_col_0_ARQOS REGION 1 4 }  { m_axi_l_col_0_ARREGION USER 1 4 }  { m_axi_l_col_0_ARUSER DATA 1 1 }  { m_axi_l_col_0_RVALID VALID 0 1 }  { m_axi_l_col_0_RREADY READY 1 1 }  { m_axi_l_col_0_RDATA FIFONUM 0 32 }  { m_axi_l_col_0_RLAST LAST 0 1 }  { m_axi_l_col_0_RID ID 0 1 }  { m_axi_l_col_0_RFIFONUM LEN 0 9 }  { m_axi_l_col_0_RUSER DATA 0 1 }  { m_axi_l_col_0_RRESP RESP 0 2 }  { m_axi_l_col_0_BVALID VALID 0 1 }  { m_axi_l_col_0_BREADY READY 1 1 }  { m_axi_l_col_0_BRESP RESP 0 2 }  { m_axi_l_col_0_BID ID 0 1 }  { m_axi_l_col_0_BUSER DATA 0 1 } } }
	L_cid { ap_none {  { L_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_l_val_0_AWVALID VALID 1 1 }  { m_axi_l_val_0_AWREADY READY 0 1 }  { m_axi_l_val_0_AWADDR ADDR 1 64 }  { m_axi_l_val_0_AWID ID 1 1 }  { m_axi_l_val_0_AWLEN SIZE 1 32 }  { m_axi_l_val_0_AWSIZE BURST 1 3 }  { m_axi_l_val_0_AWBURST LOCK 1 2 }  { m_axi_l_val_0_AWLOCK CACHE 1 2 }  { m_axi_l_val_0_AWCACHE PROT 1 4 }  { m_axi_l_val_0_AWPROT QOS 1 3 }  { m_axi_l_val_0_AWQOS REGION 1 4 }  { m_axi_l_val_0_AWREGION USER 1 4 }  { m_axi_l_val_0_AWUSER DATA 1 1 }  { m_axi_l_val_0_WVALID VALID 1 1 }  { m_axi_l_val_0_WREADY READY 0 1 }  { m_axi_l_val_0_WDATA FIFONUM 1 32 }  { m_axi_l_val_0_WSTRB STRB 1 4 }  { m_axi_l_val_0_WLAST LAST 1 1 }  { m_axi_l_val_0_WID ID 1 1 }  { m_axi_l_val_0_WUSER DATA 1 1 }  { m_axi_l_val_0_ARVALID VALID 1 1 }  { m_axi_l_val_0_ARREADY READY 0 1 }  { m_axi_l_val_0_ARADDR ADDR 1 64 }  { m_axi_l_val_0_ARID ID 1 1 }  { m_axi_l_val_0_ARLEN SIZE 1 32 }  { m_axi_l_val_0_ARSIZE BURST 1 3 }  { m_axi_l_val_0_ARBURST LOCK 1 2 }  { m_axi_l_val_0_ARLOCK CACHE 1 2 }  { m_axi_l_val_0_ARCACHE PROT 1 4 }  { m_axi_l_val_0_ARPROT QOS 1 3 }  { m_axi_l_val_0_ARQOS REGION 1 4 }  { m_axi_l_val_0_ARREGION USER 1 4 }  { m_axi_l_val_0_ARUSER DATA 1 1 }  { m_axi_l_val_0_RVALID VALID 0 1 }  { m_axi_l_val_0_RREADY READY 1 1 }  { m_axi_l_val_0_RDATA FIFONUM 0 32 }  { m_axi_l_val_0_RLAST LAST 0 1 }  { m_axi_l_val_0_RID ID 0 1 }  { m_axi_l_val_0_RFIFONUM LEN 0 9 }  { m_axi_l_val_0_RUSER DATA 0 1 }  { m_axi_l_val_0_RRESP RESP 0 2 }  { m_axi_l_val_0_BVALID VALID 0 1 }  { m_axi_l_val_0_BREADY READY 1 1 }  { m_axi_l_val_0_BRESP RESP 0 2 }  { m_axi_l_val_0_BID ID 0 1 }  { m_axi_l_val_0_BUSER DATA 0 1 } } }
	L_val_r { ap_none {  { L_val_r in_data 0 64 } } }
	 { m_axi {  { m_axi_u_row_0_AWVALID VALID 1 1 }  { m_axi_u_row_0_AWREADY READY 0 1 }  { m_axi_u_row_0_AWADDR ADDR 1 64 }  { m_axi_u_row_0_AWID ID 1 1 }  { m_axi_u_row_0_AWLEN SIZE 1 32 }  { m_axi_u_row_0_AWSIZE BURST 1 3 }  { m_axi_u_row_0_AWBURST LOCK 1 2 }  { m_axi_u_row_0_AWLOCK CACHE 1 2 }  { m_axi_u_row_0_AWCACHE PROT 1 4 }  { m_axi_u_row_0_AWPROT QOS 1 3 }  { m_axi_u_row_0_AWQOS REGION 1 4 }  { m_axi_u_row_0_AWREGION USER 1 4 }  { m_axi_u_row_0_AWUSER DATA 1 1 }  { m_axi_u_row_0_WVALID VALID 1 1 }  { m_axi_u_row_0_WREADY READY 0 1 }  { m_axi_u_row_0_WDATA FIFONUM 1 32 }  { m_axi_u_row_0_WSTRB STRB 1 4 }  { m_axi_u_row_0_WLAST LAST 1 1 }  { m_axi_u_row_0_WID ID 1 1 }  { m_axi_u_row_0_WUSER DATA 1 1 }  { m_axi_u_row_0_ARVALID VALID 1 1 }  { m_axi_u_row_0_ARREADY READY 0 1 }  { m_axi_u_row_0_ARADDR ADDR 1 64 }  { m_axi_u_row_0_ARID ID 1 1 }  { m_axi_u_row_0_ARLEN SIZE 1 32 }  { m_axi_u_row_0_ARSIZE BURST 1 3 }  { m_axi_u_row_0_ARBURST LOCK 1 2 }  { m_axi_u_row_0_ARLOCK CACHE 1 2 }  { m_axi_u_row_0_ARCACHE PROT 1 4 }  { m_axi_u_row_0_ARPROT QOS 1 3 }  { m_axi_u_row_0_ARQOS REGION 1 4 }  { m_axi_u_row_0_ARREGION USER 1 4 }  { m_axi_u_row_0_ARUSER DATA 1 1 }  { m_axi_u_row_0_RVALID VALID 0 1 }  { m_axi_u_row_0_RREADY READY 1 1 }  { m_axi_u_row_0_RDATA FIFONUM 0 32 }  { m_axi_u_row_0_RLAST LAST 0 1 }  { m_axi_u_row_0_RID ID 0 1 }  { m_axi_u_row_0_RFIFONUM LEN 0 9 }  { m_axi_u_row_0_RUSER DATA 0 1 }  { m_axi_u_row_0_RRESP RESP 0 2 }  { m_axi_u_row_0_BVALID VALID 0 1 }  { m_axi_u_row_0_BREADY READY 1 1 }  { m_axi_u_row_0_BRESP RESP 0 2 }  { m_axi_u_row_0_BID ID 0 1 }  { m_axi_u_row_0_BUSER DATA 0 1 } } }
	U_rcsr { ap_none {  { U_rcsr in_data 0 64 } } }
	 { m_axi {  { m_axi_u_col_0_AWVALID VALID 1 1 }  { m_axi_u_col_0_AWREADY READY 0 1 }  { m_axi_u_col_0_AWADDR ADDR 1 64 }  { m_axi_u_col_0_AWID ID 1 1 }  { m_axi_u_col_0_AWLEN SIZE 1 32 }  { m_axi_u_col_0_AWSIZE BURST 1 3 }  { m_axi_u_col_0_AWBURST LOCK 1 2 }  { m_axi_u_col_0_AWLOCK CACHE 1 2 }  { m_axi_u_col_0_AWCACHE PROT 1 4 }  { m_axi_u_col_0_AWPROT QOS 1 3 }  { m_axi_u_col_0_AWQOS REGION 1 4 }  { m_axi_u_col_0_AWREGION USER 1 4 }  { m_axi_u_col_0_AWUSER DATA 1 1 }  { m_axi_u_col_0_WVALID VALID 1 1 }  { m_axi_u_col_0_WREADY READY 0 1 }  { m_axi_u_col_0_WDATA FIFONUM 1 32 }  { m_axi_u_col_0_WSTRB STRB 1 4 }  { m_axi_u_col_0_WLAST LAST 1 1 }  { m_axi_u_col_0_WID ID 1 1 }  { m_axi_u_col_0_WUSER DATA 1 1 }  { m_axi_u_col_0_ARVALID VALID 1 1 }  { m_axi_u_col_0_ARREADY READY 0 1 }  { m_axi_u_col_0_ARADDR ADDR 1 64 }  { m_axi_u_col_0_ARID ID 1 1 }  { m_axi_u_col_0_ARLEN SIZE 1 32 }  { m_axi_u_col_0_ARSIZE BURST 1 3 }  { m_axi_u_col_0_ARBURST LOCK 1 2 }  { m_axi_u_col_0_ARLOCK CACHE 1 2 }  { m_axi_u_col_0_ARCACHE PROT 1 4 }  { m_axi_u_col_0_ARPROT QOS 1 3 }  { m_axi_u_col_0_ARQOS REGION 1 4 }  { m_axi_u_col_0_ARREGION USER 1 4 }  { m_axi_u_col_0_ARUSER DATA 1 1 }  { m_axi_u_col_0_RVALID VALID 0 1 }  { m_axi_u_col_0_RREADY READY 1 1 }  { m_axi_u_col_0_RDATA FIFONUM 0 32 }  { m_axi_u_col_0_RLAST LAST 0 1 }  { m_axi_u_col_0_RID ID 0 1 }  { m_axi_u_col_0_RFIFONUM LEN 0 9 }  { m_axi_u_col_0_RUSER DATA 0 1 }  { m_axi_u_col_0_RRESP RESP 0 2 }  { m_axi_u_col_0_BVALID VALID 0 1 }  { m_axi_u_col_0_BREADY READY 1 1 }  { m_axi_u_col_0_BRESP RESP 0 2 }  { m_axi_u_col_0_BID ID 0 1 }  { m_axi_u_col_0_BUSER DATA 0 1 } } }
	U_cid { ap_none {  { U_cid in_data 0 64 } } }
	 { m_axi {  { m_axi_u_val_0_AWVALID VALID 1 1 }  { m_axi_u_val_0_AWREADY READY 0 1 }  { m_axi_u_val_0_AWADDR ADDR 1 64 }  { m_axi_u_val_0_AWID ID 1 1 }  { m_axi_u_val_0_AWLEN SIZE 1 32 }  { m_axi_u_val_0_AWSIZE BURST 1 3 }  { m_axi_u_val_0_AWBURST LOCK 1 2 }  { m_axi_u_val_0_AWLOCK CACHE 1 2 }  { m_axi_u_val_0_AWCACHE PROT 1 4 }  { m_axi_u_val_0_AWPROT QOS 1 3 }  { m_axi_u_val_0_AWQOS REGION 1 4 }  { m_axi_u_val_0_AWREGION USER 1 4 }  { m_axi_u_val_0_AWUSER DATA 1 1 }  { m_axi_u_val_0_WVALID VALID 1 1 }  { m_axi_u_val_0_WREADY READY 0 1 }  { m_axi_u_val_0_WDATA FIFONUM 1 32 }  { m_axi_u_val_0_WSTRB STRB 1 4 }  { m_axi_u_val_0_WLAST LAST 1 1 }  { m_axi_u_val_0_WID ID 1 1 }  { m_axi_u_val_0_WUSER DATA 1 1 }  { m_axi_u_val_0_ARVALID VALID 1 1 }  { m_axi_u_val_0_ARREADY READY 0 1 }  { m_axi_u_val_0_ARADDR ADDR 1 64 }  { m_axi_u_val_0_ARID ID 1 1 }  { m_axi_u_val_0_ARLEN SIZE 1 32 }  { m_axi_u_val_0_ARSIZE BURST 1 3 }  { m_axi_u_val_0_ARBURST LOCK 1 2 }  { m_axi_u_val_0_ARLOCK CACHE 1 2 }  { m_axi_u_val_0_ARCACHE PROT 1 4 }  { m_axi_u_val_0_ARPROT QOS 1 3 }  { m_axi_u_val_0_ARQOS REGION 1 4 }  { m_axi_u_val_0_ARREGION USER 1 4 }  { m_axi_u_val_0_ARUSER DATA 1 1 }  { m_axi_u_val_0_RVALID VALID 0 1 }  { m_axi_u_val_0_RREADY READY 1 1 }  { m_axi_u_val_0_RDATA FIFONUM 0 32 }  { m_axi_u_val_0_RLAST LAST 0 1 }  { m_axi_u_val_0_RID ID 0 1 }  { m_axi_u_val_0_RFIFONUM LEN 0 9 }  { m_axi_u_val_0_RUSER DATA 0 1 }  { m_axi_u_val_0_RRESP RESP 0 2 }  { m_axi_u_val_0_BVALID VALID 0 1 }  { m_axi_u_val_0_BREADY READY 1 1 }  { m_axi_u_val_0_BRESP RESP 0 2 }  { m_axi_u_val_0_BID ID 0 1 }  { m_axi_u_val_0_BUSER DATA 0 1 } } }
	U_val_r { ap_none {  { U_val_r in_data 0 64 } } }
	n { ap_none {  { n in_data 0 32 } } }
	a_nnz { ap_none {  { a_nnz in_data 0 11 } } }
	l_nnz { ap_none {  { l_nnz in_data 0 12 } } }
	u_nnz { ap_none {  { u_nnz in_data 0 12 } } }
	pivot_eps { ap_none {  { pivot_eps in_data 0 32 } } }
	lower_pos_0 { ap_memory {  { lower_pos_0_address0 mem_address 1 10 }  { lower_pos_0_ce0 mem_ce 1 1 }  { lower_pos_0_we0 mem_we 1 1 }  { lower_pos_0_d0 mem_din 1 12 }  { lower_pos_0_q0 mem_dout 0 12 } } }
	lower_pos_1 { ap_memory {  { lower_pos_1_address0 mem_address 1 10 }  { lower_pos_1_ce0 mem_ce 1 1 }  { lower_pos_1_we0 mem_we 1 1 }  { lower_pos_1_d0 mem_din 1 12 }  { lower_pos_1_q0 mem_dout 0 12 } } }
	lower_pos_2 { ap_memory {  { lower_pos_2_address0 mem_address 1 10 }  { lower_pos_2_ce0 mem_ce 1 1 }  { lower_pos_2_we0 mem_we 1 1 }  { lower_pos_2_d0 mem_din 1 12 }  { lower_pos_2_q0 mem_dout 0 12 } } }
	lower_pos_3 { ap_memory {  { lower_pos_3_address0 mem_address 1 10 }  { lower_pos_3_ce0 mem_ce 1 1 }  { lower_pos_3_we0 mem_we 1 1 }  { lower_pos_3_d0 mem_din 1 12 }  { lower_pos_3_q0 mem_dout 0 12 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_we0 mem_we 1 1 }  { upper_pos_0_d0 mem_din 1 12 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_we0 mem_we 1 1 }  { upper_pos_1_d0 mem_din 1 12 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_we0 mem_we 1 1 }  { upper_pos_2_d0 mem_din 1 12 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_we0 mem_we 1 1 }  { upper_pos_3_d0 mem_din 1 12 }  { upper_pos_3_q0 mem_dout 0 12 } } }
	work_0 { ap_memory {  { work_0_address0 mem_address 1 10 }  { work_0_ce0 mem_ce 1 1 }  { work_0_we0 mem_we 1 1 }  { work_0_d0 mem_din 1 32 }  { work_0_q0 mem_dout 0 32 }  { work_0_address1 MemPortADDR2 1 10 }  { work_0_ce1 MemPortCE2 1 1 }  { work_0_q1 MemPortDOUT2 0 32 }  { work_0_address2 MemPortADDR2 1 10 }  { work_0_ce2 MemPortCE2 1 1 }  { work_0_q2 MemPortDOUT2 0 32 } } }
	work_1 { ap_memory {  { work_1_address0 mem_address 1 10 }  { work_1_ce0 mem_ce 1 1 }  { work_1_we0 mem_we 1 1 }  { work_1_d0 mem_din 1 32 }  { work_1_q0 mem_dout 0 32 }  { work_1_address1 MemPortADDR2 1 10 }  { work_1_ce1 MemPortCE2 1 1 }  { work_1_q1 MemPortDOUT2 0 32 }  { work_1_address2 MemPortADDR2 1 10 }  { work_1_ce2 MemPortCE2 1 1 }  { work_1_q2 MemPortDOUT2 0 32 } } }
	work_2 { ap_memory {  { work_2_address0 mem_address 1 10 }  { work_2_ce0 mem_ce 1 1 }  { work_2_we0 mem_we 1 1 }  { work_2_d0 mem_din 1 32 }  { work_2_q0 mem_dout 0 32 }  { work_2_address1 MemPortADDR2 1 10 }  { work_2_ce1 MemPortCE2 1 1 }  { work_2_q1 MemPortDOUT2 0 32 }  { work_2_address2 MemPortADDR2 1 10 }  { work_2_ce2 MemPortCE2 1 1 }  { work_2_q2 MemPortDOUT2 0 32 } } }
	work_3 { ap_memory {  { work_3_address0 mem_address 1 10 }  { work_3_ce0 mem_ce 1 1 }  { work_3_we0 mem_we 1 1 }  { work_3_d0 mem_din 1 32 }  { work_3_q0 mem_dout 0 32 }  { work_3_address1 MemPortADDR2 1 10 }  { work_3_ce1 MemPortCE2 1 1 }  { work_3_q1 MemPortDOUT2 0 32 }  { work_3_address2 MemPortADDR2 1 10 }  { work_3_ce2 MemPortCE2 1 1 }  { work_3_q2 MemPortDOUT2 0 32 } } }
	failed_row { ap_vld {  { failed_row out_data 1 32 }  { failed_row_ap_vld out_vld 1 1 } } }
}
