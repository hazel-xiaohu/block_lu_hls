set moduleName vcache_38_Pipeline_VITIS_LOOP_336_1
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
set C_modelName {vcache.38_Pipeline_VITIS_LOOP_336_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_lru_count_1 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_2 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_3 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_4 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_5 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_6 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_7 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_lru_count_8 int 32 regular {array 128 { 0 0 } 0 1 }  }
	{ p_filled_V_15 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_14 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_13 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_12 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_11 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_10 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_9 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_8 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_7 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_6 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_5 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_4 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_3 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_2 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V_1 int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_filled_V int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ p_tag_V_15 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_14 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_13 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_12 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_11 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_10 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_9 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_8 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_7 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_6 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_5 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_4 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_3 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_2 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V_1 int 21 regular {array 64 { 0 } 0 1 }  }
	{ p_tag_V int 21 regular {array 64 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_lru_count_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lru_count_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_filled_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_15", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_14", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_13", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_12", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_11", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_10", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_9", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_8", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_7", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_6", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_5", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_4", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_3", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_2", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_1", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 198
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_lru_count_1_address0 sc_out sc_lv 7 signal 0 } 
	{ p_lru_count_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_lru_count_1_we0 sc_out sc_logic 1 signal 0 } 
	{ p_lru_count_1_d0 sc_out sc_lv 32 signal 0 } 
	{ p_lru_count_1_address1 sc_out sc_lv 7 signal 0 } 
	{ p_lru_count_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_lru_count_1_we1 sc_out sc_logic 1 signal 0 } 
	{ p_lru_count_1_d1 sc_out sc_lv 32 signal 0 } 
	{ p_lru_count_2_address0 sc_out sc_lv 7 signal 1 } 
	{ p_lru_count_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_lru_count_2_we0 sc_out sc_logic 1 signal 1 } 
	{ p_lru_count_2_d0 sc_out sc_lv 32 signal 1 } 
	{ p_lru_count_2_address1 sc_out sc_lv 7 signal 1 } 
	{ p_lru_count_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ p_lru_count_2_we1 sc_out sc_logic 1 signal 1 } 
	{ p_lru_count_2_d1 sc_out sc_lv 32 signal 1 } 
	{ p_lru_count_3_address0 sc_out sc_lv 7 signal 2 } 
	{ p_lru_count_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_lru_count_3_we0 sc_out sc_logic 1 signal 2 } 
	{ p_lru_count_3_d0 sc_out sc_lv 32 signal 2 } 
	{ p_lru_count_3_address1 sc_out sc_lv 7 signal 2 } 
	{ p_lru_count_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ p_lru_count_3_we1 sc_out sc_logic 1 signal 2 } 
	{ p_lru_count_3_d1 sc_out sc_lv 32 signal 2 } 
	{ p_lru_count_4_address0 sc_out sc_lv 7 signal 3 } 
	{ p_lru_count_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ p_lru_count_4_we0 sc_out sc_logic 1 signal 3 } 
	{ p_lru_count_4_d0 sc_out sc_lv 32 signal 3 } 
	{ p_lru_count_4_address1 sc_out sc_lv 7 signal 3 } 
	{ p_lru_count_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ p_lru_count_4_we1 sc_out sc_logic 1 signal 3 } 
	{ p_lru_count_4_d1 sc_out sc_lv 32 signal 3 } 
	{ p_lru_count_5_address0 sc_out sc_lv 7 signal 4 } 
	{ p_lru_count_5_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_lru_count_5_we0 sc_out sc_logic 1 signal 4 } 
	{ p_lru_count_5_d0 sc_out sc_lv 32 signal 4 } 
	{ p_lru_count_5_address1 sc_out sc_lv 7 signal 4 } 
	{ p_lru_count_5_ce1 sc_out sc_logic 1 signal 4 } 
	{ p_lru_count_5_we1 sc_out sc_logic 1 signal 4 } 
	{ p_lru_count_5_d1 sc_out sc_lv 32 signal 4 } 
	{ p_lru_count_6_address0 sc_out sc_lv 7 signal 5 } 
	{ p_lru_count_6_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_lru_count_6_we0 sc_out sc_logic 1 signal 5 } 
	{ p_lru_count_6_d0 sc_out sc_lv 32 signal 5 } 
	{ p_lru_count_6_address1 sc_out sc_lv 7 signal 5 } 
	{ p_lru_count_6_ce1 sc_out sc_logic 1 signal 5 } 
	{ p_lru_count_6_we1 sc_out sc_logic 1 signal 5 } 
	{ p_lru_count_6_d1 sc_out sc_lv 32 signal 5 } 
	{ p_lru_count_7_address0 sc_out sc_lv 7 signal 6 } 
	{ p_lru_count_7_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_lru_count_7_we0 sc_out sc_logic 1 signal 6 } 
	{ p_lru_count_7_d0 sc_out sc_lv 32 signal 6 } 
	{ p_lru_count_7_address1 sc_out sc_lv 7 signal 6 } 
	{ p_lru_count_7_ce1 sc_out sc_logic 1 signal 6 } 
	{ p_lru_count_7_we1 sc_out sc_logic 1 signal 6 } 
	{ p_lru_count_7_d1 sc_out sc_lv 32 signal 6 } 
	{ p_lru_count_8_address0 sc_out sc_lv 7 signal 7 } 
	{ p_lru_count_8_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_lru_count_8_we0 sc_out sc_logic 1 signal 7 } 
	{ p_lru_count_8_d0 sc_out sc_lv 32 signal 7 } 
	{ p_lru_count_8_address1 sc_out sc_lv 7 signal 7 } 
	{ p_lru_count_8_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_lru_count_8_we1 sc_out sc_logic 1 signal 7 } 
	{ p_lru_count_8_d1 sc_out sc_lv 32 signal 7 } 
	{ p_filled_V_15_address0 sc_out sc_lv 6 signal 8 } 
	{ p_filled_V_15_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_filled_V_15_we0 sc_out sc_logic 1 signal 8 } 
	{ p_filled_V_15_d0 sc_out sc_lv 8 signal 8 } 
	{ p_filled_V_14_address0 sc_out sc_lv 6 signal 9 } 
	{ p_filled_V_14_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_filled_V_14_we0 sc_out sc_logic 1 signal 9 } 
	{ p_filled_V_14_d0 sc_out sc_lv 8 signal 9 } 
	{ p_filled_V_13_address0 sc_out sc_lv 6 signal 10 } 
	{ p_filled_V_13_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_filled_V_13_we0 sc_out sc_logic 1 signal 10 } 
	{ p_filled_V_13_d0 sc_out sc_lv 8 signal 10 } 
	{ p_filled_V_12_address0 sc_out sc_lv 6 signal 11 } 
	{ p_filled_V_12_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_filled_V_12_we0 sc_out sc_logic 1 signal 11 } 
	{ p_filled_V_12_d0 sc_out sc_lv 8 signal 11 } 
	{ p_filled_V_11_address0 sc_out sc_lv 6 signal 12 } 
	{ p_filled_V_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_filled_V_11_we0 sc_out sc_logic 1 signal 12 } 
	{ p_filled_V_11_d0 sc_out sc_lv 8 signal 12 } 
	{ p_filled_V_10_address0 sc_out sc_lv 6 signal 13 } 
	{ p_filled_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_filled_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ p_filled_V_10_d0 sc_out sc_lv 8 signal 13 } 
	{ p_filled_V_9_address0 sc_out sc_lv 6 signal 14 } 
	{ p_filled_V_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_filled_V_9_we0 sc_out sc_logic 1 signal 14 } 
	{ p_filled_V_9_d0 sc_out sc_lv 8 signal 14 } 
	{ p_filled_V_8_address0 sc_out sc_lv 6 signal 15 } 
	{ p_filled_V_8_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_filled_V_8_we0 sc_out sc_logic 1 signal 15 } 
	{ p_filled_V_8_d0 sc_out sc_lv 8 signal 15 } 
	{ p_filled_V_7_address0 sc_out sc_lv 6 signal 16 } 
	{ p_filled_V_7_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_filled_V_7_we0 sc_out sc_logic 1 signal 16 } 
	{ p_filled_V_7_d0 sc_out sc_lv 8 signal 16 } 
	{ p_filled_V_6_address0 sc_out sc_lv 6 signal 17 } 
	{ p_filled_V_6_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_filled_V_6_we0 sc_out sc_logic 1 signal 17 } 
	{ p_filled_V_6_d0 sc_out sc_lv 8 signal 17 } 
	{ p_filled_V_5_address0 sc_out sc_lv 6 signal 18 } 
	{ p_filled_V_5_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_filled_V_5_we0 sc_out sc_logic 1 signal 18 } 
	{ p_filled_V_5_d0 sc_out sc_lv 8 signal 18 } 
	{ p_filled_V_4_address0 sc_out sc_lv 6 signal 19 } 
	{ p_filled_V_4_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_filled_V_4_we0 sc_out sc_logic 1 signal 19 } 
	{ p_filled_V_4_d0 sc_out sc_lv 8 signal 19 } 
	{ p_filled_V_3_address0 sc_out sc_lv 6 signal 20 } 
	{ p_filled_V_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_filled_V_3_we0 sc_out sc_logic 1 signal 20 } 
	{ p_filled_V_3_d0 sc_out sc_lv 8 signal 20 } 
	{ p_filled_V_2_address0 sc_out sc_lv 6 signal 21 } 
	{ p_filled_V_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_filled_V_2_we0 sc_out sc_logic 1 signal 21 } 
	{ p_filled_V_2_d0 sc_out sc_lv 8 signal 21 } 
	{ p_filled_V_1_address0 sc_out sc_lv 6 signal 22 } 
	{ p_filled_V_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_filled_V_1_we0 sc_out sc_logic 1 signal 22 } 
	{ p_filled_V_1_d0 sc_out sc_lv 8 signal 22 } 
	{ p_filled_V_address0 sc_out sc_lv 6 signal 23 } 
	{ p_filled_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_filled_V_we0 sc_out sc_logic 1 signal 23 } 
	{ p_filled_V_d0 sc_out sc_lv 8 signal 23 } 
	{ p_tag_V_15_address0 sc_out sc_lv 6 signal 24 } 
	{ p_tag_V_15_ce0 sc_out sc_logic 1 signal 24 } 
	{ p_tag_V_15_we0 sc_out sc_logic 1 signal 24 } 
	{ p_tag_V_15_d0 sc_out sc_lv 21 signal 24 } 
	{ p_tag_V_14_address0 sc_out sc_lv 6 signal 25 } 
	{ p_tag_V_14_ce0 sc_out sc_logic 1 signal 25 } 
	{ p_tag_V_14_we0 sc_out sc_logic 1 signal 25 } 
	{ p_tag_V_14_d0 sc_out sc_lv 21 signal 25 } 
	{ p_tag_V_13_address0 sc_out sc_lv 6 signal 26 } 
	{ p_tag_V_13_ce0 sc_out sc_logic 1 signal 26 } 
	{ p_tag_V_13_we0 sc_out sc_logic 1 signal 26 } 
	{ p_tag_V_13_d0 sc_out sc_lv 21 signal 26 } 
	{ p_tag_V_12_address0 sc_out sc_lv 6 signal 27 } 
	{ p_tag_V_12_ce0 sc_out sc_logic 1 signal 27 } 
	{ p_tag_V_12_we0 sc_out sc_logic 1 signal 27 } 
	{ p_tag_V_12_d0 sc_out sc_lv 21 signal 27 } 
	{ p_tag_V_11_address0 sc_out sc_lv 6 signal 28 } 
	{ p_tag_V_11_ce0 sc_out sc_logic 1 signal 28 } 
	{ p_tag_V_11_we0 sc_out sc_logic 1 signal 28 } 
	{ p_tag_V_11_d0 sc_out sc_lv 21 signal 28 } 
	{ p_tag_V_10_address0 sc_out sc_lv 6 signal 29 } 
	{ p_tag_V_10_ce0 sc_out sc_logic 1 signal 29 } 
	{ p_tag_V_10_we0 sc_out sc_logic 1 signal 29 } 
	{ p_tag_V_10_d0 sc_out sc_lv 21 signal 29 } 
	{ p_tag_V_9_address0 sc_out sc_lv 6 signal 30 } 
	{ p_tag_V_9_ce0 sc_out sc_logic 1 signal 30 } 
	{ p_tag_V_9_we0 sc_out sc_logic 1 signal 30 } 
	{ p_tag_V_9_d0 sc_out sc_lv 21 signal 30 } 
	{ p_tag_V_8_address0 sc_out sc_lv 6 signal 31 } 
	{ p_tag_V_8_ce0 sc_out sc_logic 1 signal 31 } 
	{ p_tag_V_8_we0 sc_out sc_logic 1 signal 31 } 
	{ p_tag_V_8_d0 sc_out sc_lv 21 signal 31 } 
	{ p_tag_V_7_address0 sc_out sc_lv 6 signal 32 } 
	{ p_tag_V_7_ce0 sc_out sc_logic 1 signal 32 } 
	{ p_tag_V_7_we0 sc_out sc_logic 1 signal 32 } 
	{ p_tag_V_7_d0 sc_out sc_lv 21 signal 32 } 
	{ p_tag_V_6_address0 sc_out sc_lv 6 signal 33 } 
	{ p_tag_V_6_ce0 sc_out sc_logic 1 signal 33 } 
	{ p_tag_V_6_we0 sc_out sc_logic 1 signal 33 } 
	{ p_tag_V_6_d0 sc_out sc_lv 21 signal 33 } 
	{ p_tag_V_5_address0 sc_out sc_lv 6 signal 34 } 
	{ p_tag_V_5_ce0 sc_out sc_logic 1 signal 34 } 
	{ p_tag_V_5_we0 sc_out sc_logic 1 signal 34 } 
	{ p_tag_V_5_d0 sc_out sc_lv 21 signal 34 } 
	{ p_tag_V_4_address0 sc_out sc_lv 6 signal 35 } 
	{ p_tag_V_4_ce0 sc_out sc_logic 1 signal 35 } 
	{ p_tag_V_4_we0 sc_out sc_logic 1 signal 35 } 
	{ p_tag_V_4_d0 sc_out sc_lv 21 signal 35 } 
	{ p_tag_V_3_address0 sc_out sc_lv 6 signal 36 } 
	{ p_tag_V_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ p_tag_V_3_we0 sc_out sc_logic 1 signal 36 } 
	{ p_tag_V_3_d0 sc_out sc_lv 21 signal 36 } 
	{ p_tag_V_2_address0 sc_out sc_lv 6 signal 37 } 
	{ p_tag_V_2_ce0 sc_out sc_logic 1 signal 37 } 
	{ p_tag_V_2_we0 sc_out sc_logic 1 signal 37 } 
	{ p_tag_V_2_d0 sc_out sc_lv 21 signal 37 } 
	{ p_tag_V_1_address0 sc_out sc_lv 6 signal 38 } 
	{ p_tag_V_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ p_tag_V_1_we0 sc_out sc_logic 1 signal 38 } 
	{ p_tag_V_1_d0 sc_out sc_lv 21 signal 38 } 
	{ p_tag_V_address0 sc_out sc_lv 6 signal 39 } 
	{ p_tag_V_ce0 sc_out sc_logic 1 signal 39 } 
	{ p_tag_V_we0 sc_out sc_logic 1 signal 39 } 
	{ p_tag_V_d0 sc_out sc_lv 21 signal 39 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_lru_count_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "address0" }} , 
 	{ "name": "p_lru_count_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "ce0" }} , 
 	{ "name": "p_lru_count_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "we0" }} , 
 	{ "name": "p_lru_count_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "d0" }} , 
 	{ "name": "p_lru_count_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "address1" }} , 
 	{ "name": "p_lru_count_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "ce1" }} , 
 	{ "name": "p_lru_count_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "we1" }} , 
 	{ "name": "p_lru_count_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_1", "role": "d1" }} , 
 	{ "name": "p_lru_count_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "address0" }} , 
 	{ "name": "p_lru_count_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "ce0" }} , 
 	{ "name": "p_lru_count_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "we0" }} , 
 	{ "name": "p_lru_count_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "d0" }} , 
 	{ "name": "p_lru_count_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "address1" }} , 
 	{ "name": "p_lru_count_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "ce1" }} , 
 	{ "name": "p_lru_count_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "we1" }} , 
 	{ "name": "p_lru_count_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_2", "role": "d1" }} , 
 	{ "name": "p_lru_count_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "address0" }} , 
 	{ "name": "p_lru_count_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "ce0" }} , 
 	{ "name": "p_lru_count_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "we0" }} , 
 	{ "name": "p_lru_count_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "d0" }} , 
 	{ "name": "p_lru_count_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "address1" }} , 
 	{ "name": "p_lru_count_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "ce1" }} , 
 	{ "name": "p_lru_count_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "we1" }} , 
 	{ "name": "p_lru_count_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_3", "role": "d1" }} , 
 	{ "name": "p_lru_count_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "address0" }} , 
 	{ "name": "p_lru_count_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "ce0" }} , 
 	{ "name": "p_lru_count_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "we0" }} , 
 	{ "name": "p_lru_count_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "d0" }} , 
 	{ "name": "p_lru_count_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "address1" }} , 
 	{ "name": "p_lru_count_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "ce1" }} , 
 	{ "name": "p_lru_count_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "we1" }} , 
 	{ "name": "p_lru_count_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_4", "role": "d1" }} , 
 	{ "name": "p_lru_count_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "address0" }} , 
 	{ "name": "p_lru_count_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "ce0" }} , 
 	{ "name": "p_lru_count_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "we0" }} , 
 	{ "name": "p_lru_count_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "d0" }} , 
 	{ "name": "p_lru_count_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "address1" }} , 
 	{ "name": "p_lru_count_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "ce1" }} , 
 	{ "name": "p_lru_count_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "we1" }} , 
 	{ "name": "p_lru_count_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_5", "role": "d1" }} , 
 	{ "name": "p_lru_count_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "address0" }} , 
 	{ "name": "p_lru_count_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "ce0" }} , 
 	{ "name": "p_lru_count_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "we0" }} , 
 	{ "name": "p_lru_count_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "d0" }} , 
 	{ "name": "p_lru_count_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "address1" }} , 
 	{ "name": "p_lru_count_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "ce1" }} , 
 	{ "name": "p_lru_count_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "we1" }} , 
 	{ "name": "p_lru_count_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_6", "role": "d1" }} , 
 	{ "name": "p_lru_count_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "address0" }} , 
 	{ "name": "p_lru_count_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "ce0" }} , 
 	{ "name": "p_lru_count_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "we0" }} , 
 	{ "name": "p_lru_count_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "d0" }} , 
 	{ "name": "p_lru_count_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "address1" }} , 
 	{ "name": "p_lru_count_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "ce1" }} , 
 	{ "name": "p_lru_count_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "we1" }} , 
 	{ "name": "p_lru_count_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_7", "role": "d1" }} , 
 	{ "name": "p_lru_count_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "address0" }} , 
 	{ "name": "p_lru_count_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "ce0" }} , 
 	{ "name": "p_lru_count_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "we0" }} , 
 	{ "name": "p_lru_count_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "d0" }} , 
 	{ "name": "p_lru_count_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "address1" }} , 
 	{ "name": "p_lru_count_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "ce1" }} , 
 	{ "name": "p_lru_count_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "we1" }} , 
 	{ "name": "p_lru_count_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_lru_count_8", "role": "d1" }} , 
 	{ "name": "p_filled_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_15", "role": "address0" }} , 
 	{ "name": "p_filled_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_15", "role": "ce0" }} , 
 	{ "name": "p_filled_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_15", "role": "we0" }} , 
 	{ "name": "p_filled_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_15", "role": "d0" }} , 
 	{ "name": "p_filled_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_14", "role": "address0" }} , 
 	{ "name": "p_filled_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_14", "role": "ce0" }} , 
 	{ "name": "p_filled_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_14", "role": "we0" }} , 
 	{ "name": "p_filled_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_14", "role": "d0" }} , 
 	{ "name": "p_filled_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_13", "role": "address0" }} , 
 	{ "name": "p_filled_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_13", "role": "ce0" }} , 
 	{ "name": "p_filled_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_13", "role": "we0" }} , 
 	{ "name": "p_filled_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_13", "role": "d0" }} , 
 	{ "name": "p_filled_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_12", "role": "address0" }} , 
 	{ "name": "p_filled_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_12", "role": "ce0" }} , 
 	{ "name": "p_filled_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_12", "role": "we0" }} , 
 	{ "name": "p_filled_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_12", "role": "d0" }} , 
 	{ "name": "p_filled_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_11", "role": "address0" }} , 
 	{ "name": "p_filled_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_11", "role": "ce0" }} , 
 	{ "name": "p_filled_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_11", "role": "we0" }} , 
 	{ "name": "p_filled_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_11", "role": "d0" }} , 
 	{ "name": "p_filled_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_10", "role": "address0" }} , 
 	{ "name": "p_filled_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_10", "role": "ce0" }} , 
 	{ "name": "p_filled_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_10", "role": "we0" }} , 
 	{ "name": "p_filled_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_10", "role": "d0" }} , 
 	{ "name": "p_filled_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_9", "role": "address0" }} , 
 	{ "name": "p_filled_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_9", "role": "ce0" }} , 
 	{ "name": "p_filled_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_9", "role": "we0" }} , 
 	{ "name": "p_filled_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_9", "role": "d0" }} , 
 	{ "name": "p_filled_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_8", "role": "address0" }} , 
 	{ "name": "p_filled_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_8", "role": "ce0" }} , 
 	{ "name": "p_filled_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_8", "role": "we0" }} , 
 	{ "name": "p_filled_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_8", "role": "d0" }} , 
 	{ "name": "p_filled_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_7", "role": "address0" }} , 
 	{ "name": "p_filled_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_7", "role": "ce0" }} , 
 	{ "name": "p_filled_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_7", "role": "we0" }} , 
 	{ "name": "p_filled_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_7", "role": "d0" }} , 
 	{ "name": "p_filled_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_6", "role": "address0" }} , 
 	{ "name": "p_filled_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_6", "role": "ce0" }} , 
 	{ "name": "p_filled_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_6", "role": "we0" }} , 
 	{ "name": "p_filled_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_6", "role": "d0" }} , 
 	{ "name": "p_filled_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_5", "role": "address0" }} , 
 	{ "name": "p_filled_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_5", "role": "ce0" }} , 
 	{ "name": "p_filled_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_5", "role": "we0" }} , 
 	{ "name": "p_filled_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_5", "role": "d0" }} , 
 	{ "name": "p_filled_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_4", "role": "address0" }} , 
 	{ "name": "p_filled_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_4", "role": "ce0" }} , 
 	{ "name": "p_filled_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_4", "role": "we0" }} , 
 	{ "name": "p_filled_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_4", "role": "d0" }} , 
 	{ "name": "p_filled_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_3", "role": "address0" }} , 
 	{ "name": "p_filled_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_3", "role": "ce0" }} , 
 	{ "name": "p_filled_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_3", "role": "we0" }} , 
 	{ "name": "p_filled_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_3", "role": "d0" }} , 
 	{ "name": "p_filled_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_2", "role": "address0" }} , 
 	{ "name": "p_filled_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_2", "role": "ce0" }} , 
 	{ "name": "p_filled_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_2", "role": "we0" }} , 
 	{ "name": "p_filled_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_2", "role": "d0" }} , 
 	{ "name": "p_filled_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V_1", "role": "address0" }} , 
 	{ "name": "p_filled_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_1", "role": "ce0" }} , 
 	{ "name": "p_filled_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V_1", "role": "we0" }} , 
 	{ "name": "p_filled_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V_1", "role": "d0" }} , 
 	{ "name": "p_filled_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_filled_V", "role": "address0" }} , 
 	{ "name": "p_filled_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V", "role": "ce0" }} , 
 	{ "name": "p_filled_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_filled_V", "role": "we0" }} , 
 	{ "name": "p_filled_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_filled_V", "role": "d0" }} , 
 	{ "name": "p_tag_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_15", "role": "address0" }} , 
 	{ "name": "p_tag_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_15", "role": "ce0" }} , 
 	{ "name": "p_tag_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_15", "role": "we0" }} , 
 	{ "name": "p_tag_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_15", "role": "d0" }} , 
 	{ "name": "p_tag_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_14", "role": "address0" }} , 
 	{ "name": "p_tag_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_14", "role": "ce0" }} , 
 	{ "name": "p_tag_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_14", "role": "we0" }} , 
 	{ "name": "p_tag_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_14", "role": "d0" }} , 
 	{ "name": "p_tag_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_13", "role": "address0" }} , 
 	{ "name": "p_tag_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_13", "role": "ce0" }} , 
 	{ "name": "p_tag_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_13", "role": "we0" }} , 
 	{ "name": "p_tag_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_13", "role": "d0" }} , 
 	{ "name": "p_tag_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_12", "role": "address0" }} , 
 	{ "name": "p_tag_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_12", "role": "ce0" }} , 
 	{ "name": "p_tag_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_12", "role": "we0" }} , 
 	{ "name": "p_tag_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_12", "role": "d0" }} , 
 	{ "name": "p_tag_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_11", "role": "address0" }} , 
 	{ "name": "p_tag_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_11", "role": "ce0" }} , 
 	{ "name": "p_tag_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_11", "role": "we0" }} , 
 	{ "name": "p_tag_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_11", "role": "d0" }} , 
 	{ "name": "p_tag_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_10", "role": "address0" }} , 
 	{ "name": "p_tag_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_10", "role": "ce0" }} , 
 	{ "name": "p_tag_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_10", "role": "we0" }} , 
 	{ "name": "p_tag_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_10", "role": "d0" }} , 
 	{ "name": "p_tag_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_9", "role": "address0" }} , 
 	{ "name": "p_tag_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_9", "role": "ce0" }} , 
 	{ "name": "p_tag_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_9", "role": "we0" }} , 
 	{ "name": "p_tag_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_9", "role": "d0" }} , 
 	{ "name": "p_tag_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_8", "role": "address0" }} , 
 	{ "name": "p_tag_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_8", "role": "ce0" }} , 
 	{ "name": "p_tag_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_8", "role": "we0" }} , 
 	{ "name": "p_tag_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_8", "role": "d0" }} , 
 	{ "name": "p_tag_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_7", "role": "address0" }} , 
 	{ "name": "p_tag_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_7", "role": "ce0" }} , 
 	{ "name": "p_tag_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_7", "role": "we0" }} , 
 	{ "name": "p_tag_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_7", "role": "d0" }} , 
 	{ "name": "p_tag_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_6", "role": "address0" }} , 
 	{ "name": "p_tag_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_6", "role": "ce0" }} , 
 	{ "name": "p_tag_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_6", "role": "we0" }} , 
 	{ "name": "p_tag_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_6", "role": "d0" }} , 
 	{ "name": "p_tag_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_5", "role": "address0" }} , 
 	{ "name": "p_tag_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_5", "role": "ce0" }} , 
 	{ "name": "p_tag_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_5", "role": "we0" }} , 
 	{ "name": "p_tag_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_5", "role": "d0" }} , 
 	{ "name": "p_tag_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_4", "role": "address0" }} , 
 	{ "name": "p_tag_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_4", "role": "ce0" }} , 
 	{ "name": "p_tag_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_4", "role": "we0" }} , 
 	{ "name": "p_tag_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_4", "role": "d0" }} , 
 	{ "name": "p_tag_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_3", "role": "address0" }} , 
 	{ "name": "p_tag_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_3", "role": "ce0" }} , 
 	{ "name": "p_tag_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_3", "role": "we0" }} , 
 	{ "name": "p_tag_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_3", "role": "d0" }} , 
 	{ "name": "p_tag_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_2", "role": "address0" }} , 
 	{ "name": "p_tag_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_2", "role": "ce0" }} , 
 	{ "name": "p_tag_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_2", "role": "we0" }} , 
 	{ "name": "p_tag_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_2", "role": "d0" }} , 
 	{ "name": "p_tag_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V_1", "role": "address0" }} , 
 	{ "name": "p_tag_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_1", "role": "ce0" }} , 
 	{ "name": "p_tag_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_1", "role": "we0" }} , 
 	{ "name": "p_tag_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_1", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "vcache_38_Pipeline_VITIS_LOOP_336_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_lru_count_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_lru_count_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_filled_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_336_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vcache_38_Pipeline_VITIS_LOOP_336_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_15 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_14 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_13 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_12 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_11 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_10 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_9 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_8 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_7 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_6 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_5 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_4 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_3 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_2 {Type O LastRead -1 FirstWrite 0}
		p_filled_V_1 {Type O LastRead -1 FirstWrite 0}
		p_filled_V {Type O LastRead -1 FirstWrite 0}
		p_tag_V_15 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_14 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_13 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_12 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_11 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_10 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_9 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_7 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_6 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_5 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_4 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_3 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_2 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_1 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_lru_count_1 { ap_memory {  { p_lru_count_1_address0 mem_address 1 7 }  { p_lru_count_1_ce0 mem_ce 1 1 }  { p_lru_count_1_we0 mem_we 1 1 }  { p_lru_count_1_d0 mem_din 1 32 }  { p_lru_count_1_address1 MemPortADDR2 1 7 }  { p_lru_count_1_ce1 MemPortCE2 1 1 }  { p_lru_count_1_we1 MemPortWE2 1 1 }  { p_lru_count_1_d1 MemPortDIN2 1 32 } } }
	p_lru_count_2 { ap_memory {  { p_lru_count_2_address0 mem_address 1 7 }  { p_lru_count_2_ce0 mem_ce 1 1 }  { p_lru_count_2_we0 mem_we 1 1 }  { p_lru_count_2_d0 mem_din 1 32 }  { p_lru_count_2_address1 MemPortADDR2 1 7 }  { p_lru_count_2_ce1 MemPortCE2 1 1 }  { p_lru_count_2_we1 MemPortWE2 1 1 }  { p_lru_count_2_d1 MemPortDIN2 1 32 } } }
	p_lru_count_3 { ap_memory {  { p_lru_count_3_address0 mem_address 1 7 }  { p_lru_count_3_ce0 mem_ce 1 1 }  { p_lru_count_3_we0 mem_we 1 1 }  { p_lru_count_3_d0 mem_din 1 32 }  { p_lru_count_3_address1 MemPortADDR2 1 7 }  { p_lru_count_3_ce1 MemPortCE2 1 1 }  { p_lru_count_3_we1 MemPortWE2 1 1 }  { p_lru_count_3_d1 MemPortDIN2 1 32 } } }
	p_lru_count_4 { ap_memory {  { p_lru_count_4_address0 mem_address 1 7 }  { p_lru_count_4_ce0 mem_ce 1 1 }  { p_lru_count_4_we0 mem_we 1 1 }  { p_lru_count_4_d0 mem_din 1 32 }  { p_lru_count_4_address1 MemPortADDR2 1 7 }  { p_lru_count_4_ce1 MemPortCE2 1 1 }  { p_lru_count_4_we1 MemPortWE2 1 1 }  { p_lru_count_4_d1 MemPortDIN2 1 32 } } }
	p_lru_count_5 { ap_memory {  { p_lru_count_5_address0 mem_address 1 7 }  { p_lru_count_5_ce0 mem_ce 1 1 }  { p_lru_count_5_we0 mem_we 1 1 }  { p_lru_count_5_d0 mem_din 1 32 }  { p_lru_count_5_address1 MemPortADDR2 1 7 }  { p_lru_count_5_ce1 MemPortCE2 1 1 }  { p_lru_count_5_we1 MemPortWE2 1 1 }  { p_lru_count_5_d1 MemPortDIN2 1 32 } } }
	p_lru_count_6 { ap_memory {  { p_lru_count_6_address0 mem_address 1 7 }  { p_lru_count_6_ce0 mem_ce 1 1 }  { p_lru_count_6_we0 mem_we 1 1 }  { p_lru_count_6_d0 mem_din 1 32 }  { p_lru_count_6_address1 MemPortADDR2 1 7 }  { p_lru_count_6_ce1 MemPortCE2 1 1 }  { p_lru_count_6_we1 MemPortWE2 1 1 }  { p_lru_count_6_d1 MemPortDIN2 1 32 } } }
	p_lru_count_7 { ap_memory {  { p_lru_count_7_address0 mem_address 1 7 }  { p_lru_count_7_ce0 mem_ce 1 1 }  { p_lru_count_7_we0 mem_we 1 1 }  { p_lru_count_7_d0 mem_din 1 32 }  { p_lru_count_7_address1 MemPortADDR2 1 7 }  { p_lru_count_7_ce1 MemPortCE2 1 1 }  { p_lru_count_7_we1 MemPortWE2 1 1 }  { p_lru_count_7_d1 MemPortDIN2 1 32 } } }
	p_lru_count_8 { ap_memory {  { p_lru_count_8_address0 mem_address 1 7 }  { p_lru_count_8_ce0 mem_ce 1 1 }  { p_lru_count_8_we0 mem_we 1 1 }  { p_lru_count_8_d0 mem_din 1 32 }  { p_lru_count_8_address1 MemPortADDR2 1 7 }  { p_lru_count_8_ce1 MemPortCE2 1 1 }  { p_lru_count_8_we1 MemPortWE2 1 1 }  { p_lru_count_8_d1 MemPortDIN2 1 32 } } }
	p_filled_V_15 { ap_memory {  { p_filled_V_15_address0 mem_address 1 6 }  { p_filled_V_15_ce0 mem_ce 1 1 }  { p_filled_V_15_we0 mem_we 1 1 }  { p_filled_V_15_d0 mem_din 1 8 } } }
	p_filled_V_14 { ap_memory {  { p_filled_V_14_address0 mem_address 1 6 }  { p_filled_V_14_ce0 mem_ce 1 1 }  { p_filled_V_14_we0 mem_we 1 1 }  { p_filled_V_14_d0 mem_din 1 8 } } }
	p_filled_V_13 { ap_memory {  { p_filled_V_13_address0 mem_address 1 6 }  { p_filled_V_13_ce0 mem_ce 1 1 }  { p_filled_V_13_we0 mem_we 1 1 }  { p_filled_V_13_d0 mem_din 1 8 } } }
	p_filled_V_12 { ap_memory {  { p_filled_V_12_address0 mem_address 1 6 }  { p_filled_V_12_ce0 mem_ce 1 1 }  { p_filled_V_12_we0 mem_we 1 1 }  { p_filled_V_12_d0 mem_din 1 8 } } }
	p_filled_V_11 { ap_memory {  { p_filled_V_11_address0 mem_address 1 6 }  { p_filled_V_11_ce0 mem_ce 1 1 }  { p_filled_V_11_we0 mem_we 1 1 }  { p_filled_V_11_d0 mem_din 1 8 } } }
	p_filled_V_10 { ap_memory {  { p_filled_V_10_address0 mem_address 1 6 }  { p_filled_V_10_ce0 mem_ce 1 1 }  { p_filled_V_10_we0 mem_we 1 1 }  { p_filled_V_10_d0 mem_din 1 8 } } }
	p_filled_V_9 { ap_memory {  { p_filled_V_9_address0 mem_address 1 6 }  { p_filled_V_9_ce0 mem_ce 1 1 }  { p_filled_V_9_we0 mem_we 1 1 }  { p_filled_V_9_d0 mem_din 1 8 } } }
	p_filled_V_8 { ap_memory {  { p_filled_V_8_address0 mem_address 1 6 }  { p_filled_V_8_ce0 mem_ce 1 1 }  { p_filled_V_8_we0 mem_we 1 1 }  { p_filled_V_8_d0 mem_din 1 8 } } }
	p_filled_V_7 { ap_memory {  { p_filled_V_7_address0 mem_address 1 6 }  { p_filled_V_7_ce0 mem_ce 1 1 }  { p_filled_V_7_we0 mem_we 1 1 }  { p_filled_V_7_d0 mem_din 1 8 } } }
	p_filled_V_6 { ap_memory {  { p_filled_V_6_address0 mem_address 1 6 }  { p_filled_V_6_ce0 mem_ce 1 1 }  { p_filled_V_6_we0 mem_we 1 1 }  { p_filled_V_6_d0 mem_din 1 8 } } }
	p_filled_V_5 { ap_memory {  { p_filled_V_5_address0 mem_address 1 6 }  { p_filled_V_5_ce0 mem_ce 1 1 }  { p_filled_V_5_we0 mem_we 1 1 }  { p_filled_V_5_d0 mem_din 1 8 } } }
	p_filled_V_4 { ap_memory {  { p_filled_V_4_address0 mem_address 1 6 }  { p_filled_V_4_ce0 mem_ce 1 1 }  { p_filled_V_4_we0 mem_we 1 1 }  { p_filled_V_4_d0 mem_din 1 8 } } }
	p_filled_V_3 { ap_memory {  { p_filled_V_3_address0 mem_address 1 6 }  { p_filled_V_3_ce0 mem_ce 1 1 }  { p_filled_V_3_we0 mem_we 1 1 }  { p_filled_V_3_d0 mem_din 1 8 } } }
	p_filled_V_2 { ap_memory {  { p_filled_V_2_address0 mem_address 1 6 }  { p_filled_V_2_ce0 mem_ce 1 1 }  { p_filled_V_2_we0 mem_we 1 1 }  { p_filled_V_2_d0 mem_din 1 8 } } }
	p_filled_V_1 { ap_memory {  { p_filled_V_1_address0 mem_address 1 6 }  { p_filled_V_1_ce0 mem_ce 1 1 }  { p_filled_V_1_we0 mem_we 1 1 }  { p_filled_V_1_d0 mem_din 1 8 } } }
	p_filled_V { ap_memory {  { p_filled_V_address0 mem_address 1 6 }  { p_filled_V_ce0 mem_ce 1 1 }  { p_filled_V_we0 mem_we 1 1 }  { p_filled_V_d0 mem_din 1 8 } } }
	p_tag_V_15 { ap_memory {  { p_tag_V_15_address0 mem_address 1 6 }  { p_tag_V_15_ce0 mem_ce 1 1 }  { p_tag_V_15_we0 mem_we 1 1 }  { p_tag_V_15_d0 mem_din 1 21 } } }
	p_tag_V_14 { ap_memory {  { p_tag_V_14_address0 mem_address 1 6 }  { p_tag_V_14_ce0 mem_ce 1 1 }  { p_tag_V_14_we0 mem_we 1 1 }  { p_tag_V_14_d0 mem_din 1 21 } } }
	p_tag_V_13 { ap_memory {  { p_tag_V_13_address0 mem_address 1 6 }  { p_tag_V_13_ce0 mem_ce 1 1 }  { p_tag_V_13_we0 mem_we 1 1 }  { p_tag_V_13_d0 mem_din 1 21 } } }
	p_tag_V_12 { ap_memory {  { p_tag_V_12_address0 mem_address 1 6 }  { p_tag_V_12_ce0 mem_ce 1 1 }  { p_tag_V_12_we0 mem_we 1 1 }  { p_tag_V_12_d0 mem_din 1 21 } } }
	p_tag_V_11 { ap_memory {  { p_tag_V_11_address0 mem_address 1 6 }  { p_tag_V_11_ce0 mem_ce 1 1 }  { p_tag_V_11_we0 mem_we 1 1 }  { p_tag_V_11_d0 mem_din 1 21 } } }
	p_tag_V_10 { ap_memory {  { p_tag_V_10_address0 mem_address 1 6 }  { p_tag_V_10_ce0 mem_ce 1 1 }  { p_tag_V_10_we0 mem_we 1 1 }  { p_tag_V_10_d0 mem_din 1 21 } } }
	p_tag_V_9 { ap_memory {  { p_tag_V_9_address0 mem_address 1 6 }  { p_tag_V_9_ce0 mem_ce 1 1 }  { p_tag_V_9_we0 mem_we 1 1 }  { p_tag_V_9_d0 mem_din 1 21 } } }
	p_tag_V_8 { ap_memory {  { p_tag_V_8_address0 mem_address 1 6 }  { p_tag_V_8_ce0 mem_ce 1 1 }  { p_tag_V_8_we0 mem_we 1 1 }  { p_tag_V_8_d0 mem_din 1 21 } } }
	p_tag_V_7 { ap_memory {  { p_tag_V_7_address0 mem_address 1 6 }  { p_tag_V_7_ce0 mem_ce 1 1 }  { p_tag_V_7_we0 mem_we 1 1 }  { p_tag_V_7_d0 mem_din 1 21 } } }
	p_tag_V_6 { ap_memory {  { p_tag_V_6_address0 mem_address 1 6 }  { p_tag_V_6_ce0 mem_ce 1 1 }  { p_tag_V_6_we0 mem_we 1 1 }  { p_tag_V_6_d0 mem_din 1 21 } } }
	p_tag_V_5 { ap_memory {  { p_tag_V_5_address0 mem_address 1 6 }  { p_tag_V_5_ce0 mem_ce 1 1 }  { p_tag_V_5_we0 mem_we 1 1 }  { p_tag_V_5_d0 mem_din 1 21 } } }
	p_tag_V_4 { ap_memory {  { p_tag_V_4_address0 mem_address 1 6 }  { p_tag_V_4_ce0 mem_ce 1 1 }  { p_tag_V_4_we0 mem_we 1 1 }  { p_tag_V_4_d0 mem_din 1 21 } } }
	p_tag_V_3 { ap_memory {  { p_tag_V_3_address0 mem_address 1 6 }  { p_tag_V_3_ce0 mem_ce 1 1 }  { p_tag_V_3_we0 mem_we 1 1 }  { p_tag_V_3_d0 mem_din 1 21 } } }
	p_tag_V_2 { ap_memory {  { p_tag_V_2_address0 mem_address 1 6 }  { p_tag_V_2_ce0 mem_ce 1 1 }  { p_tag_V_2_we0 mem_we 1 1 }  { p_tag_V_2_d0 mem_din 1 21 } } }
	p_tag_V_1 { ap_memory {  { p_tag_V_1_address0 mem_address 1 6 }  { p_tag_V_1_ce0 mem_ce 1 1 }  { p_tag_V_1_we0 mem_we 1 1 }  { p_tag_V_1_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 6 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
