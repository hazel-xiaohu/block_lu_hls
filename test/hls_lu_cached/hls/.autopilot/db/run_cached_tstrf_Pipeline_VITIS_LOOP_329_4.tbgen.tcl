set moduleName run_cached_tstrf_Pipeline_VITIS_LOOP_329_4
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
set C_modelName {run_cached_tstrf_Pipeline_VITIS_LOOP_329_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict upper_pos_0 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_1 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_2 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict upper_pos_3 { MEM_WIDTH 12 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict factor_0 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict factor_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict factor_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict factor_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict block_0_0 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_0_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_0_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_0_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_1_0 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_1_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_1_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_1_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_2_0 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_2_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_2_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_2_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_3_0 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_3_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_3_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict block_3_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ zext_ln309 int 7 regular  }
	{ tmp_5 int 13 regular  }
	{ n int 7 regular  }
	{ zext_ln332 int 10 regular  }
	{ upper_pos_0 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_1 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_2 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ upper_pos_3 int 12 regular {array 1024 { 1 3 } 1 1 }  }
	{ factor_0 float 32 regular {array 1024 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ factor_1 float 32 regular {array 1024 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ factor_2 float 32 regular {array 1024 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ factor_3 float 32 regular {array 1024 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ zext_ln324 int 8 regular  }
	{ block_0_0 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_0_1 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_0_2 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_0_3 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_1_0 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_1_1 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_1_2 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_1_3 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_2_0 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_2_1 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_2_2 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_2_3 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_3_0 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_3_1 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_3_2 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ block_3_3 float 32 regular {array 256 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ empty_69 int 1 regular  }
	{ empty_70 int 1 regular  }
	{ empty int 1 regular  }
	{ cond48 float 32 regular  }
	{ cond_149 float 32 regular  }
	{ cond_251 float 32 regular  }
	{ cond_353 float 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln309", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_5", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln332", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "upper_pos_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "factor_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "factor_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "factor_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "factor_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln324", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "block_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_0_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_0_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_3_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_3_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_3_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "block_3_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty_69", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_70", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cond48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cond_149", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cond_251", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cond_353", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 226
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln309 sc_in sc_lv 7 signal 0 } 
	{ tmp_5 sc_in sc_lv 13 signal 1 } 
	{ n sc_in sc_lv 7 signal 2 } 
	{ zext_ln332 sc_in sc_lv 10 signal 3 } 
	{ upper_pos_0_address0 sc_out sc_lv 10 signal 4 } 
	{ upper_pos_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ upper_pos_0_q0 sc_in sc_lv 12 signal 4 } 
	{ upper_pos_1_address0 sc_out sc_lv 10 signal 5 } 
	{ upper_pos_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ upper_pos_1_q0 sc_in sc_lv 12 signal 5 } 
	{ upper_pos_2_address0 sc_out sc_lv 10 signal 6 } 
	{ upper_pos_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ upper_pos_2_q0 sc_in sc_lv 12 signal 6 } 
	{ upper_pos_3_address0 sc_out sc_lv 10 signal 7 } 
	{ upper_pos_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ upper_pos_3_q0 sc_in sc_lv 12 signal 7 } 
	{ factor_0_address0 sc_out sc_lv 10 signal 8 } 
	{ factor_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ factor_0_q0 sc_in sc_lv 32 signal 8 } 
	{ factor_0_address1 sc_out sc_lv 10 signal 8 } 
	{ factor_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ factor_0_q1 sc_in sc_lv 32 signal 8 } 
	{ factor_0_address2 sc_out sc_lv 10 signal 8 } 
	{ factor_0_ce2 sc_out sc_logic 1 signal 8 } 
	{ factor_0_q2 sc_in sc_lv 32 signal 8 } 
	{ factor_0_address3 sc_out sc_lv 10 signal 8 } 
	{ factor_0_ce3 sc_out sc_logic 1 signal 8 } 
	{ factor_0_q3 sc_in sc_lv 32 signal 8 } 
	{ factor_1_address0 sc_out sc_lv 10 signal 9 } 
	{ factor_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ factor_1_q0 sc_in sc_lv 32 signal 9 } 
	{ factor_1_address1 sc_out sc_lv 10 signal 9 } 
	{ factor_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ factor_1_q1 sc_in sc_lv 32 signal 9 } 
	{ factor_1_address2 sc_out sc_lv 10 signal 9 } 
	{ factor_1_ce2 sc_out sc_logic 1 signal 9 } 
	{ factor_1_q2 sc_in sc_lv 32 signal 9 } 
	{ factor_1_address3 sc_out sc_lv 10 signal 9 } 
	{ factor_1_ce3 sc_out sc_logic 1 signal 9 } 
	{ factor_1_q3 sc_in sc_lv 32 signal 9 } 
	{ factor_2_address0 sc_out sc_lv 10 signal 10 } 
	{ factor_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ factor_2_q0 sc_in sc_lv 32 signal 10 } 
	{ factor_2_address1 sc_out sc_lv 10 signal 10 } 
	{ factor_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ factor_2_q1 sc_in sc_lv 32 signal 10 } 
	{ factor_2_address2 sc_out sc_lv 10 signal 10 } 
	{ factor_2_ce2 sc_out sc_logic 1 signal 10 } 
	{ factor_2_q2 sc_in sc_lv 32 signal 10 } 
	{ factor_2_address3 sc_out sc_lv 10 signal 10 } 
	{ factor_2_ce3 sc_out sc_logic 1 signal 10 } 
	{ factor_2_q3 sc_in sc_lv 32 signal 10 } 
	{ factor_3_address0 sc_out sc_lv 10 signal 11 } 
	{ factor_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ factor_3_q0 sc_in sc_lv 32 signal 11 } 
	{ factor_3_address1 sc_out sc_lv 10 signal 11 } 
	{ factor_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ factor_3_q1 sc_in sc_lv 32 signal 11 } 
	{ factor_3_address2 sc_out sc_lv 10 signal 11 } 
	{ factor_3_ce2 sc_out sc_logic 1 signal 11 } 
	{ factor_3_q2 sc_in sc_lv 32 signal 11 } 
	{ factor_3_address3 sc_out sc_lv 10 signal 11 } 
	{ factor_3_ce3 sc_out sc_logic 1 signal 11 } 
	{ factor_3_q3 sc_in sc_lv 32 signal 11 } 
	{ zext_ln324 sc_in sc_lv 8 signal 12 } 
	{ block_0_0_address0 sc_out sc_lv 8 signal 13 } 
	{ block_0_0_ce0 sc_out sc_logic 1 signal 13 } 
	{ block_0_0_we0 sc_out sc_logic 1 signal 13 } 
	{ block_0_0_d0 sc_out sc_lv 32 signal 13 } 
	{ block_0_0_address1 sc_out sc_lv 8 signal 13 } 
	{ block_0_0_ce1 sc_out sc_logic 1 signal 13 } 
	{ block_0_0_q1 sc_in sc_lv 32 signal 13 } 
	{ block_0_1_address0 sc_out sc_lv 8 signal 14 } 
	{ block_0_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ block_0_1_we0 sc_out sc_logic 1 signal 14 } 
	{ block_0_1_d0 sc_out sc_lv 32 signal 14 } 
	{ block_0_1_address1 sc_out sc_lv 8 signal 14 } 
	{ block_0_1_ce1 sc_out sc_logic 1 signal 14 } 
	{ block_0_1_q1 sc_in sc_lv 32 signal 14 } 
	{ block_0_2_address0 sc_out sc_lv 8 signal 15 } 
	{ block_0_2_ce0 sc_out sc_logic 1 signal 15 } 
	{ block_0_2_we0 sc_out sc_logic 1 signal 15 } 
	{ block_0_2_d0 sc_out sc_lv 32 signal 15 } 
	{ block_0_2_address1 sc_out sc_lv 8 signal 15 } 
	{ block_0_2_ce1 sc_out sc_logic 1 signal 15 } 
	{ block_0_2_q1 sc_in sc_lv 32 signal 15 } 
	{ block_0_3_address0 sc_out sc_lv 8 signal 16 } 
	{ block_0_3_ce0 sc_out sc_logic 1 signal 16 } 
	{ block_0_3_we0 sc_out sc_logic 1 signal 16 } 
	{ block_0_3_d0 sc_out sc_lv 32 signal 16 } 
	{ block_0_3_address1 sc_out sc_lv 8 signal 16 } 
	{ block_0_3_ce1 sc_out sc_logic 1 signal 16 } 
	{ block_0_3_q1 sc_in sc_lv 32 signal 16 } 
	{ block_1_0_address0 sc_out sc_lv 8 signal 17 } 
	{ block_1_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ block_1_0_we0 sc_out sc_logic 1 signal 17 } 
	{ block_1_0_d0 sc_out sc_lv 32 signal 17 } 
	{ block_1_0_address1 sc_out sc_lv 8 signal 17 } 
	{ block_1_0_ce1 sc_out sc_logic 1 signal 17 } 
	{ block_1_0_q1 sc_in sc_lv 32 signal 17 } 
	{ block_1_1_address0 sc_out sc_lv 8 signal 18 } 
	{ block_1_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ block_1_1_we0 sc_out sc_logic 1 signal 18 } 
	{ block_1_1_d0 sc_out sc_lv 32 signal 18 } 
	{ block_1_1_address1 sc_out sc_lv 8 signal 18 } 
	{ block_1_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ block_1_1_q1 sc_in sc_lv 32 signal 18 } 
	{ block_1_2_address0 sc_out sc_lv 8 signal 19 } 
	{ block_1_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ block_1_2_we0 sc_out sc_logic 1 signal 19 } 
	{ block_1_2_d0 sc_out sc_lv 32 signal 19 } 
	{ block_1_2_address1 sc_out sc_lv 8 signal 19 } 
	{ block_1_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ block_1_2_q1 sc_in sc_lv 32 signal 19 } 
	{ block_1_3_address0 sc_out sc_lv 8 signal 20 } 
	{ block_1_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ block_1_3_we0 sc_out sc_logic 1 signal 20 } 
	{ block_1_3_d0 sc_out sc_lv 32 signal 20 } 
	{ block_1_3_address1 sc_out sc_lv 8 signal 20 } 
	{ block_1_3_ce1 sc_out sc_logic 1 signal 20 } 
	{ block_1_3_q1 sc_in sc_lv 32 signal 20 } 
	{ block_2_0_address0 sc_out sc_lv 8 signal 21 } 
	{ block_2_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ block_2_0_we0 sc_out sc_logic 1 signal 21 } 
	{ block_2_0_d0 sc_out sc_lv 32 signal 21 } 
	{ block_2_0_address1 sc_out sc_lv 8 signal 21 } 
	{ block_2_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ block_2_0_q1 sc_in sc_lv 32 signal 21 } 
	{ block_2_1_address0 sc_out sc_lv 8 signal 22 } 
	{ block_2_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ block_2_1_we0 sc_out sc_logic 1 signal 22 } 
	{ block_2_1_d0 sc_out sc_lv 32 signal 22 } 
	{ block_2_1_address1 sc_out sc_lv 8 signal 22 } 
	{ block_2_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ block_2_1_q1 sc_in sc_lv 32 signal 22 } 
	{ block_2_2_address0 sc_out sc_lv 8 signal 23 } 
	{ block_2_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ block_2_2_we0 sc_out sc_logic 1 signal 23 } 
	{ block_2_2_d0 sc_out sc_lv 32 signal 23 } 
	{ block_2_2_address1 sc_out sc_lv 8 signal 23 } 
	{ block_2_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ block_2_2_q1 sc_in sc_lv 32 signal 23 } 
	{ block_2_3_address0 sc_out sc_lv 8 signal 24 } 
	{ block_2_3_ce0 sc_out sc_logic 1 signal 24 } 
	{ block_2_3_we0 sc_out sc_logic 1 signal 24 } 
	{ block_2_3_d0 sc_out sc_lv 32 signal 24 } 
	{ block_2_3_address1 sc_out sc_lv 8 signal 24 } 
	{ block_2_3_ce1 sc_out sc_logic 1 signal 24 } 
	{ block_2_3_q1 sc_in sc_lv 32 signal 24 } 
	{ block_3_0_address0 sc_out sc_lv 8 signal 25 } 
	{ block_3_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ block_3_0_we0 sc_out sc_logic 1 signal 25 } 
	{ block_3_0_d0 sc_out sc_lv 32 signal 25 } 
	{ block_3_0_address1 sc_out sc_lv 8 signal 25 } 
	{ block_3_0_ce1 sc_out sc_logic 1 signal 25 } 
	{ block_3_0_q1 sc_in sc_lv 32 signal 25 } 
	{ block_3_1_address0 sc_out sc_lv 8 signal 26 } 
	{ block_3_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ block_3_1_we0 sc_out sc_logic 1 signal 26 } 
	{ block_3_1_d0 sc_out sc_lv 32 signal 26 } 
	{ block_3_1_address1 sc_out sc_lv 8 signal 26 } 
	{ block_3_1_ce1 sc_out sc_logic 1 signal 26 } 
	{ block_3_1_q1 sc_in sc_lv 32 signal 26 } 
	{ block_3_2_address0 sc_out sc_lv 8 signal 27 } 
	{ block_3_2_ce0 sc_out sc_logic 1 signal 27 } 
	{ block_3_2_we0 sc_out sc_logic 1 signal 27 } 
	{ block_3_2_d0 sc_out sc_lv 32 signal 27 } 
	{ block_3_2_address1 sc_out sc_lv 8 signal 27 } 
	{ block_3_2_ce1 sc_out sc_logic 1 signal 27 } 
	{ block_3_2_q1 sc_in sc_lv 32 signal 27 } 
	{ block_3_3_address0 sc_out sc_lv 8 signal 28 } 
	{ block_3_3_ce0 sc_out sc_logic 1 signal 28 } 
	{ block_3_3_we0 sc_out sc_logic 1 signal 28 } 
	{ block_3_3_d0 sc_out sc_lv 32 signal 28 } 
	{ block_3_3_address1 sc_out sc_lv 8 signal 28 } 
	{ block_3_3_ce1 sc_out sc_logic 1 signal 28 } 
	{ block_3_3_q1 sc_in sc_lv 32 signal 28 } 
	{ empty_69 sc_in sc_lv 1 signal 29 } 
	{ empty_70 sc_in sc_lv 1 signal 30 } 
	{ empty sc_in sc_lv 1 signal 31 } 
	{ cond48 sc_in sc_lv 32 signal 32 } 
	{ cond_149 sc_in sc_lv 32 signal 33 } 
	{ cond_251 sc_in sc_lv 32 signal 34 } 
	{ cond_353 sc_in sc_lv 32 signal 35 } 
	{ grp_fu_2489_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2489_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2489_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2489_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2489_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2493_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2493_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2493_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2493_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2493_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2497_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2497_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2497_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2497_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2497_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2501_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2501_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2501_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2501_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2501_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2505_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2505_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2505_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2505_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2509_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2509_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2509_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2509_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2513_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2513_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2513_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2513_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2517_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2517_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2517_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2517_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln309", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln309", "role": "default" }} , 
 	{ "name": "tmp_5", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "tmp_5", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "zext_ln332", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln332", "role": "default" }} , 
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
 	{ "name": "factor_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_0", "role": "address0" }} , 
 	{ "name": "factor_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_0", "role": "ce0" }} , 
 	{ "name": "factor_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_0", "role": "q0" }} , 
 	{ "name": "factor_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_0", "role": "address1" }} , 
 	{ "name": "factor_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_0", "role": "ce1" }} , 
 	{ "name": "factor_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_0", "role": "q1" }} , 
 	{ "name": "factor_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_0", "role": "address2" }} , 
 	{ "name": "factor_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_0", "role": "ce2" }} , 
 	{ "name": "factor_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_0", "role": "q2" }} , 
 	{ "name": "factor_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_0", "role": "address3" }} , 
 	{ "name": "factor_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_0", "role": "ce3" }} , 
 	{ "name": "factor_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_0", "role": "q3" }} , 
 	{ "name": "factor_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_1", "role": "address0" }} , 
 	{ "name": "factor_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "ce0" }} , 
 	{ "name": "factor_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_1", "role": "q0" }} , 
 	{ "name": "factor_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_1", "role": "address1" }} , 
 	{ "name": "factor_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "ce1" }} , 
 	{ "name": "factor_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_1", "role": "q1" }} , 
 	{ "name": "factor_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_1", "role": "address2" }} , 
 	{ "name": "factor_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "ce2" }} , 
 	{ "name": "factor_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_1", "role": "q2" }} , 
 	{ "name": "factor_1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_1", "role": "address3" }} , 
 	{ "name": "factor_1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_1", "role": "ce3" }} , 
 	{ "name": "factor_1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_1", "role": "q3" }} , 
 	{ "name": "factor_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_2", "role": "address0" }} , 
 	{ "name": "factor_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "ce0" }} , 
 	{ "name": "factor_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_2", "role": "q0" }} , 
 	{ "name": "factor_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_2", "role": "address1" }} , 
 	{ "name": "factor_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "ce1" }} , 
 	{ "name": "factor_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_2", "role": "q1" }} , 
 	{ "name": "factor_2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_2", "role": "address2" }} , 
 	{ "name": "factor_2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "ce2" }} , 
 	{ "name": "factor_2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_2", "role": "q2" }} , 
 	{ "name": "factor_2_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_2", "role": "address3" }} , 
 	{ "name": "factor_2_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_2", "role": "ce3" }} , 
 	{ "name": "factor_2_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_2", "role": "q3" }} , 
 	{ "name": "factor_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_3", "role": "address0" }} , 
 	{ "name": "factor_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "ce0" }} , 
 	{ "name": "factor_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_3", "role": "q0" }} , 
 	{ "name": "factor_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_3", "role": "address1" }} , 
 	{ "name": "factor_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "ce1" }} , 
 	{ "name": "factor_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_3", "role": "q1" }} , 
 	{ "name": "factor_3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_3", "role": "address2" }} , 
 	{ "name": "factor_3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "ce2" }} , 
 	{ "name": "factor_3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_3", "role": "q2" }} , 
 	{ "name": "factor_3_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "factor_3", "role": "address3" }} , 
 	{ "name": "factor_3_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "factor_3", "role": "ce3" }} , 
 	{ "name": "factor_3_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "factor_3", "role": "q3" }} , 
 	{ "name": "zext_ln324", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln324", "role": "default" }} , 
 	{ "name": "block_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_0", "role": "address0" }} , 
 	{ "name": "block_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_0", "role": "ce0" }} , 
 	{ "name": "block_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_0", "role": "we0" }} , 
 	{ "name": "block_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_0", "role": "d0" }} , 
 	{ "name": "block_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_0", "role": "address1" }} , 
 	{ "name": "block_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_0", "role": "ce1" }} , 
 	{ "name": "block_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_0", "role": "q1" }} , 
 	{ "name": "block_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_1", "role": "address0" }} , 
 	{ "name": "block_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_1", "role": "ce0" }} , 
 	{ "name": "block_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_1", "role": "we0" }} , 
 	{ "name": "block_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_1", "role": "d0" }} , 
 	{ "name": "block_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_1", "role": "address1" }} , 
 	{ "name": "block_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_1", "role": "ce1" }} , 
 	{ "name": "block_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_1", "role": "q1" }} , 
 	{ "name": "block_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_2", "role": "address0" }} , 
 	{ "name": "block_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_2", "role": "ce0" }} , 
 	{ "name": "block_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_2", "role": "we0" }} , 
 	{ "name": "block_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_2", "role": "d0" }} , 
 	{ "name": "block_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_2", "role": "address1" }} , 
 	{ "name": "block_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_2", "role": "ce1" }} , 
 	{ "name": "block_0_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_2", "role": "q1" }} , 
 	{ "name": "block_0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_3", "role": "address0" }} , 
 	{ "name": "block_0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_3", "role": "ce0" }} , 
 	{ "name": "block_0_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_3", "role": "we0" }} , 
 	{ "name": "block_0_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_3", "role": "d0" }} , 
 	{ "name": "block_0_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_0_3", "role": "address1" }} , 
 	{ "name": "block_0_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_0_3", "role": "ce1" }} , 
 	{ "name": "block_0_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_3", "role": "q1" }} , 
 	{ "name": "block_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_0", "role": "address0" }} , 
 	{ "name": "block_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_0", "role": "ce0" }} , 
 	{ "name": "block_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_0", "role": "we0" }} , 
 	{ "name": "block_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_0", "role": "d0" }} , 
 	{ "name": "block_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_0", "role": "address1" }} , 
 	{ "name": "block_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_0", "role": "ce1" }} , 
 	{ "name": "block_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_0", "role": "q1" }} , 
 	{ "name": "block_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_1", "role": "address0" }} , 
 	{ "name": "block_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_1", "role": "ce0" }} , 
 	{ "name": "block_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_1", "role": "we0" }} , 
 	{ "name": "block_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_1", "role": "d0" }} , 
 	{ "name": "block_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_1", "role": "address1" }} , 
 	{ "name": "block_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_1", "role": "ce1" }} , 
 	{ "name": "block_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_1", "role": "q1" }} , 
 	{ "name": "block_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_2", "role": "address0" }} , 
 	{ "name": "block_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_2", "role": "ce0" }} , 
 	{ "name": "block_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_2", "role": "we0" }} , 
 	{ "name": "block_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_2", "role": "d0" }} , 
 	{ "name": "block_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_2", "role": "address1" }} , 
 	{ "name": "block_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_2", "role": "ce1" }} , 
 	{ "name": "block_1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_2", "role": "q1" }} , 
 	{ "name": "block_1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_3", "role": "address0" }} , 
 	{ "name": "block_1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_3", "role": "ce0" }} , 
 	{ "name": "block_1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_3", "role": "we0" }} , 
 	{ "name": "block_1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_3", "role": "d0" }} , 
 	{ "name": "block_1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_1_3", "role": "address1" }} , 
 	{ "name": "block_1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_1_3", "role": "ce1" }} , 
 	{ "name": "block_1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_3", "role": "q1" }} , 
 	{ "name": "block_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_0", "role": "address0" }} , 
 	{ "name": "block_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_0", "role": "ce0" }} , 
 	{ "name": "block_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_0", "role": "we0" }} , 
 	{ "name": "block_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_0", "role": "d0" }} , 
 	{ "name": "block_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_0", "role": "address1" }} , 
 	{ "name": "block_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_0", "role": "ce1" }} , 
 	{ "name": "block_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_0", "role": "q1" }} , 
 	{ "name": "block_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_1", "role": "address0" }} , 
 	{ "name": "block_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_1", "role": "ce0" }} , 
 	{ "name": "block_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_1", "role": "we0" }} , 
 	{ "name": "block_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_1", "role": "d0" }} , 
 	{ "name": "block_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_1", "role": "address1" }} , 
 	{ "name": "block_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_1", "role": "ce1" }} , 
 	{ "name": "block_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_1", "role": "q1" }} , 
 	{ "name": "block_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_2", "role": "address0" }} , 
 	{ "name": "block_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_2", "role": "ce0" }} , 
 	{ "name": "block_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_2", "role": "we0" }} , 
 	{ "name": "block_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_2", "role": "d0" }} , 
 	{ "name": "block_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_2", "role": "address1" }} , 
 	{ "name": "block_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_2", "role": "ce1" }} , 
 	{ "name": "block_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_2", "role": "q1" }} , 
 	{ "name": "block_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_3", "role": "address0" }} , 
 	{ "name": "block_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_3", "role": "ce0" }} , 
 	{ "name": "block_2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_3", "role": "we0" }} , 
 	{ "name": "block_2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_3", "role": "d0" }} , 
 	{ "name": "block_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_2_3", "role": "address1" }} , 
 	{ "name": "block_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_2_3", "role": "ce1" }} , 
 	{ "name": "block_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_3", "role": "q1" }} , 
 	{ "name": "block_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_0", "role": "address0" }} , 
 	{ "name": "block_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_0", "role": "ce0" }} , 
 	{ "name": "block_3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_0", "role": "we0" }} , 
 	{ "name": "block_3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_0", "role": "d0" }} , 
 	{ "name": "block_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_0", "role": "address1" }} , 
 	{ "name": "block_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_0", "role": "ce1" }} , 
 	{ "name": "block_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_0", "role": "q1" }} , 
 	{ "name": "block_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_1", "role": "address0" }} , 
 	{ "name": "block_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_1", "role": "ce0" }} , 
 	{ "name": "block_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_1", "role": "we0" }} , 
 	{ "name": "block_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_1", "role": "d0" }} , 
 	{ "name": "block_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_1", "role": "address1" }} , 
 	{ "name": "block_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_1", "role": "ce1" }} , 
 	{ "name": "block_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_1", "role": "q1" }} , 
 	{ "name": "block_3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_2", "role": "address0" }} , 
 	{ "name": "block_3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_2", "role": "ce0" }} , 
 	{ "name": "block_3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_2", "role": "we0" }} , 
 	{ "name": "block_3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_2", "role": "d0" }} , 
 	{ "name": "block_3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_2", "role": "address1" }} , 
 	{ "name": "block_3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_2", "role": "ce1" }} , 
 	{ "name": "block_3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_2", "role": "q1" }} , 
 	{ "name": "block_3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_3", "role": "address0" }} , 
 	{ "name": "block_3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_3", "role": "ce0" }} , 
 	{ "name": "block_3_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_3", "role": "we0" }} , 
 	{ "name": "block_3_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_3", "role": "d0" }} , 
 	{ "name": "block_3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "block_3_3", "role": "address1" }} , 
 	{ "name": "block_3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_3_3", "role": "ce1" }} , 
 	{ "name": "block_3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_3", "role": "q1" }} , 
 	{ "name": "empty_69", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_69", "role": "default" }} , 
 	{ "name": "empty_70", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_70", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "cond48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cond48", "role": "default" }} , 
 	{ "name": "cond_149", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cond_149", "role": "default" }} , 
 	{ "name": "cond_251", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cond_251", "role": "default" }} , 
 	{ "name": "cond_353", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cond_353", "role": "default" }} , 
 	{ "name": "grp_fu_2489_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2489_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2489_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2489_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2489_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2489_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2489_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2489_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2489_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2489_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2493_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2493_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2493_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2493_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2493_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2493_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2493_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2493_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2493_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2493_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2497_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2497_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2497_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2497_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2497_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2497_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2497_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2497_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2497_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2497_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2501_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2501_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2501_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2501_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2501_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2501_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2501_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2501_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2501_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2501_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2505_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2505_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2505_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2505_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2505_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2505_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2505_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2505_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2509_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2509_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2509_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2509_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2509_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2509_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2509_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2509_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2513_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2513_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2513_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2513_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2513_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2513_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2513_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2513_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2517_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2517_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2517_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2517_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2517_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2517_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2517_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2517_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	run_cached_tstrf_Pipeline_VITIS_LOOP_329_4 {
		zext_ln309 {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}
		zext_ln332 {Type I LastRead 0 FirstWrite -1}
		upper_pos_0 {Type I LastRead 1 FirstWrite -1}
		upper_pos_1 {Type I LastRead 1 FirstWrite -1}
		upper_pos_2 {Type I LastRead 1 FirstWrite -1}
		upper_pos_3 {Type I LastRead 1 FirstWrite -1}
		factor_0 {Type I LastRead 3 FirstWrite -1}
		factor_1 {Type I LastRead 3 FirstWrite -1}
		factor_2 {Type I LastRead 3 FirstWrite -1}
		factor_3 {Type I LastRead 3 FirstWrite -1}
		zext_ln324 {Type I LastRead 0 FirstWrite -1}
		block_0_0 {Type IO LastRead 2 FirstWrite 17}
		block_0_1 {Type IO LastRead 2 FirstWrite 17}
		block_0_2 {Type IO LastRead 2 FirstWrite 17}
		block_0_3 {Type IO LastRead 2 FirstWrite 17}
		block_1_0 {Type IO LastRead 2 FirstWrite 17}
		block_1_1 {Type IO LastRead 2 FirstWrite 17}
		block_1_2 {Type IO LastRead 2 FirstWrite 17}
		block_1_3 {Type IO LastRead 2 FirstWrite 17}
		block_2_0 {Type IO LastRead 2 FirstWrite 17}
		block_2_1 {Type IO LastRead 2 FirstWrite 17}
		block_2_2 {Type IO LastRead 2 FirstWrite 17}
		block_2_3 {Type IO LastRead 2 FirstWrite 17}
		block_3_0 {Type IO LastRead 2 FirstWrite 17}
		block_3_1 {Type IO LastRead 2 FirstWrite 17}
		block_3_2 {Type IO LastRead 2 FirstWrite 17}
		block_3_3 {Type IO LastRead 2 FirstWrite 17}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		empty_70 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		cond48 {Type I LastRead 0 FirstWrite -1}
		cond_149 {Type I LastRead 0 FirstWrite -1}
		cond_251 {Type I LastRead 0 FirstWrite -1}
		cond_353 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln309 { ap_none {  { zext_ln309 in_data 0 7 } } }
	tmp_5 { ap_none {  { tmp_5 in_data 0 13 } } }
	n { ap_none {  { n in_data 0 7 } } }
	zext_ln332 { ap_none {  { zext_ln332 in_data 0 10 } } }
	upper_pos_0 { ap_memory {  { upper_pos_0_address0 mem_address 1 10 }  { upper_pos_0_ce0 mem_ce 1 1 }  { upper_pos_0_q0 mem_dout 0 12 } } }
	upper_pos_1 { ap_memory {  { upper_pos_1_address0 mem_address 1 10 }  { upper_pos_1_ce0 mem_ce 1 1 }  { upper_pos_1_q0 mem_dout 0 12 } } }
	upper_pos_2 { ap_memory {  { upper_pos_2_address0 mem_address 1 10 }  { upper_pos_2_ce0 mem_ce 1 1 }  { upper_pos_2_q0 mem_dout 0 12 } } }
	upper_pos_3 { ap_memory {  { upper_pos_3_address0 mem_address 1 10 }  { upper_pos_3_ce0 mem_ce 1 1 }  { upper_pos_3_q0 mem_dout 0 12 } } }
	factor_0 { ap_memory {  { factor_0_address0 mem_address 1 10 }  { factor_0_ce0 mem_ce 1 1 }  { factor_0_q0 mem_dout 0 32 }  { factor_0_address1 MemPortADDR2 1 10 }  { factor_0_ce1 MemPortCE2 1 1 }  { factor_0_q1 MemPortDOUT2 0 32 }  { factor_0_address2 MemPortADDR2 1 10 }  { factor_0_ce2 MemPortCE2 1 1 }  { factor_0_q2 MemPortDOUT2 0 32 }  { factor_0_address3 MemPortADDR2 1 10 }  { factor_0_ce3 MemPortCE2 1 1 }  { factor_0_q3 MemPortDOUT2 0 32 } } }
	factor_1 { ap_memory {  { factor_1_address0 mem_address 1 10 }  { factor_1_ce0 mem_ce 1 1 }  { factor_1_q0 mem_dout 0 32 }  { factor_1_address1 MemPortADDR2 1 10 }  { factor_1_ce1 MemPortCE2 1 1 }  { factor_1_q1 MemPortDOUT2 0 32 }  { factor_1_address2 MemPortADDR2 1 10 }  { factor_1_ce2 MemPortCE2 1 1 }  { factor_1_q2 MemPortDOUT2 0 32 }  { factor_1_address3 MemPortADDR2 1 10 }  { factor_1_ce3 MemPortCE2 1 1 }  { factor_1_q3 MemPortDOUT2 0 32 } } }
	factor_2 { ap_memory {  { factor_2_address0 mem_address 1 10 }  { factor_2_ce0 mem_ce 1 1 }  { factor_2_q0 mem_dout 0 32 }  { factor_2_address1 MemPortADDR2 1 10 }  { factor_2_ce1 MemPortCE2 1 1 }  { factor_2_q1 MemPortDOUT2 0 32 }  { factor_2_address2 MemPortADDR2 1 10 }  { factor_2_ce2 MemPortCE2 1 1 }  { factor_2_q2 MemPortDOUT2 0 32 }  { factor_2_address3 MemPortADDR2 1 10 }  { factor_2_ce3 MemPortCE2 1 1 }  { factor_2_q3 MemPortDOUT2 0 32 } } }
	factor_3 { ap_memory {  { factor_3_address0 mem_address 1 10 }  { factor_3_ce0 mem_ce 1 1 }  { factor_3_q0 mem_dout 0 32 }  { factor_3_address1 MemPortADDR2 1 10 }  { factor_3_ce1 MemPortCE2 1 1 }  { factor_3_q1 MemPortDOUT2 0 32 }  { factor_3_address2 MemPortADDR2 1 10 }  { factor_3_ce2 MemPortCE2 1 1 }  { factor_3_q2 MemPortDOUT2 0 32 }  { factor_3_address3 MemPortADDR2 1 10 }  { factor_3_ce3 MemPortCE2 1 1 }  { factor_3_q3 MemPortDOUT2 0 32 } } }
	zext_ln324 { ap_none {  { zext_ln324 in_data 0 8 } } }
	block_0_0 { ap_memory {  { block_0_0_address0 mem_address 1 8 }  { block_0_0_ce0 mem_ce 1 1 }  { block_0_0_we0 mem_we 1 1 }  { block_0_0_d0 mem_din 1 32 }  { block_0_0_address1 MemPortADDR2 1 8 }  { block_0_0_ce1 MemPortCE2 1 1 }  { block_0_0_q1 MemPortDOUT2 0 32 } } }
	block_0_1 { ap_memory {  { block_0_1_address0 mem_address 1 8 }  { block_0_1_ce0 mem_ce 1 1 }  { block_0_1_we0 mem_we 1 1 }  { block_0_1_d0 mem_din 1 32 }  { block_0_1_address1 MemPortADDR2 1 8 }  { block_0_1_ce1 MemPortCE2 1 1 }  { block_0_1_q1 MemPortDOUT2 0 32 } } }
	block_0_2 { ap_memory {  { block_0_2_address0 mem_address 1 8 }  { block_0_2_ce0 mem_ce 1 1 }  { block_0_2_we0 mem_we 1 1 }  { block_0_2_d0 mem_din 1 32 }  { block_0_2_address1 MemPortADDR2 1 8 }  { block_0_2_ce1 MemPortCE2 1 1 }  { block_0_2_q1 MemPortDOUT2 0 32 } } }
	block_0_3 { ap_memory {  { block_0_3_address0 mem_address 1 8 }  { block_0_3_ce0 mem_ce 1 1 }  { block_0_3_we0 mem_we 1 1 }  { block_0_3_d0 mem_din 1 32 }  { block_0_3_address1 MemPortADDR2 1 8 }  { block_0_3_ce1 MemPortCE2 1 1 }  { block_0_3_q1 MemPortDOUT2 0 32 } } }
	block_1_0 { ap_memory {  { block_1_0_address0 mem_address 1 8 }  { block_1_0_ce0 mem_ce 1 1 }  { block_1_0_we0 mem_we 1 1 }  { block_1_0_d0 mem_din 1 32 }  { block_1_0_address1 MemPortADDR2 1 8 }  { block_1_0_ce1 MemPortCE2 1 1 }  { block_1_0_q1 MemPortDOUT2 0 32 } } }
	block_1_1 { ap_memory {  { block_1_1_address0 mem_address 1 8 }  { block_1_1_ce0 mem_ce 1 1 }  { block_1_1_we0 mem_we 1 1 }  { block_1_1_d0 mem_din 1 32 }  { block_1_1_address1 MemPortADDR2 1 8 }  { block_1_1_ce1 MemPortCE2 1 1 }  { block_1_1_q1 MemPortDOUT2 0 32 } } }
	block_1_2 { ap_memory {  { block_1_2_address0 mem_address 1 8 }  { block_1_2_ce0 mem_ce 1 1 }  { block_1_2_we0 mem_we 1 1 }  { block_1_2_d0 mem_din 1 32 }  { block_1_2_address1 MemPortADDR2 1 8 }  { block_1_2_ce1 MemPortCE2 1 1 }  { block_1_2_q1 MemPortDOUT2 0 32 } } }
	block_1_3 { ap_memory {  { block_1_3_address0 mem_address 1 8 }  { block_1_3_ce0 mem_ce 1 1 }  { block_1_3_we0 mem_we 1 1 }  { block_1_3_d0 mem_din 1 32 }  { block_1_3_address1 MemPortADDR2 1 8 }  { block_1_3_ce1 MemPortCE2 1 1 }  { block_1_3_q1 MemPortDOUT2 0 32 } } }
	block_2_0 { ap_memory {  { block_2_0_address0 mem_address 1 8 }  { block_2_0_ce0 mem_ce 1 1 }  { block_2_0_we0 mem_we 1 1 }  { block_2_0_d0 mem_din 1 32 }  { block_2_0_address1 MemPortADDR2 1 8 }  { block_2_0_ce1 MemPortCE2 1 1 }  { block_2_0_q1 MemPortDOUT2 0 32 } } }
	block_2_1 { ap_memory {  { block_2_1_address0 mem_address 1 8 }  { block_2_1_ce0 mem_ce 1 1 }  { block_2_1_we0 mem_we 1 1 }  { block_2_1_d0 mem_din 1 32 }  { block_2_1_address1 MemPortADDR2 1 8 }  { block_2_1_ce1 MemPortCE2 1 1 }  { block_2_1_q1 MemPortDOUT2 0 32 } } }
	block_2_2 { ap_memory {  { block_2_2_address0 mem_address 1 8 }  { block_2_2_ce0 mem_ce 1 1 }  { block_2_2_we0 mem_we 1 1 }  { block_2_2_d0 mem_din 1 32 }  { block_2_2_address1 MemPortADDR2 1 8 }  { block_2_2_ce1 MemPortCE2 1 1 }  { block_2_2_q1 MemPortDOUT2 0 32 } } }
	block_2_3 { ap_memory {  { block_2_3_address0 mem_address 1 8 }  { block_2_3_ce0 mem_ce 1 1 }  { block_2_3_we0 mem_we 1 1 }  { block_2_3_d0 mem_din 1 32 }  { block_2_3_address1 MemPortADDR2 1 8 }  { block_2_3_ce1 MemPortCE2 1 1 }  { block_2_3_q1 MemPortDOUT2 0 32 } } }
	block_3_0 { ap_memory {  { block_3_0_address0 mem_address 1 8 }  { block_3_0_ce0 mem_ce 1 1 }  { block_3_0_we0 mem_we 1 1 }  { block_3_0_d0 mem_din 1 32 }  { block_3_0_address1 MemPortADDR2 1 8 }  { block_3_0_ce1 MemPortCE2 1 1 }  { block_3_0_q1 MemPortDOUT2 0 32 } } }
	block_3_1 { ap_memory {  { block_3_1_address0 mem_address 1 8 }  { block_3_1_ce0 mem_ce 1 1 }  { block_3_1_we0 mem_we 1 1 }  { block_3_1_d0 mem_din 1 32 }  { block_3_1_address1 MemPortADDR2 1 8 }  { block_3_1_ce1 MemPortCE2 1 1 }  { block_3_1_q1 MemPortDOUT2 0 32 } } }
	block_3_2 { ap_memory {  { block_3_2_address0 mem_address 1 8 }  { block_3_2_ce0 mem_ce 1 1 }  { block_3_2_we0 mem_we 1 1 }  { block_3_2_d0 mem_din 1 32 }  { block_3_2_address1 MemPortADDR2 1 8 }  { block_3_2_ce1 MemPortCE2 1 1 }  { block_3_2_q1 MemPortDOUT2 0 32 } } }
	block_3_3 { ap_memory {  { block_3_3_address0 mem_address 1 8 }  { block_3_3_ce0 mem_ce 1 1 }  { block_3_3_we0 mem_we 1 1 }  { block_3_3_d0 mem_din 1 32 }  { block_3_3_address1 MemPortADDR2 1 8 }  { block_3_3_ce1 MemPortCE2 1 1 }  { block_3_3_q1 MemPortDOUT2 0 32 } } }
	empty_69 { ap_none {  { empty_69 in_data 0 1 } } }
	empty_70 { ap_none {  { empty_70 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	cond48 { ap_none {  { cond48 in_data 0 32 } } }
	cond_149 { ap_none {  { cond_149 in_data 0 32 } } }
	cond_251 { ap_none {  { cond_251 in_data 0 32 } } }
	cond_353 { ap_none {  { cond_353 in_data 0 32 } } }
}
