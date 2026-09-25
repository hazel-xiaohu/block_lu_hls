set moduleName rcache_Pipeline_VITIS_LOOP_332_1
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
set C_modelName {rcache_Pipeline_VITIS_LOOP_332_1}
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
	{ p_tag_V_90 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_89 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_88 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_87 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_86 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_85 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_84 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_83 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_82 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_81 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_80 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_79 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_78 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_77 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_76 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V int 21 regular {array 32 { 0 } 0 1 }  }
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
 	{ "Name" : "p_tag_V_90", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_89", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_88", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_87", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_86", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_85", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_84", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_83", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_82", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_81", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_80", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_79", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_78", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_77", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_76", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 134
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
	{ p_tag_V_90_address0 sc_out sc_lv 5 signal 8 } 
	{ p_tag_V_90_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_90_we0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_90_d0 sc_out sc_lv 21 signal 8 } 
	{ p_tag_V_89_address0 sc_out sc_lv 5 signal 9 } 
	{ p_tag_V_89_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_89_we0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_89_d0 sc_out sc_lv 21 signal 9 } 
	{ p_tag_V_88_address0 sc_out sc_lv 5 signal 10 } 
	{ p_tag_V_88_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_88_we0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_88_d0 sc_out sc_lv 21 signal 10 } 
	{ p_tag_V_87_address0 sc_out sc_lv 5 signal 11 } 
	{ p_tag_V_87_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_87_we0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_87_d0 sc_out sc_lv 21 signal 11 } 
	{ p_tag_V_86_address0 sc_out sc_lv 5 signal 12 } 
	{ p_tag_V_86_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_86_we0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_86_d0 sc_out sc_lv 21 signal 12 } 
	{ p_tag_V_85_address0 sc_out sc_lv 5 signal 13 } 
	{ p_tag_V_85_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_85_we0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_85_d0 sc_out sc_lv 21 signal 13 } 
	{ p_tag_V_84_address0 sc_out sc_lv 5 signal 14 } 
	{ p_tag_V_84_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_84_we0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_84_d0 sc_out sc_lv 21 signal 14 } 
	{ p_tag_V_83_address0 sc_out sc_lv 5 signal 15 } 
	{ p_tag_V_83_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_83_we0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_83_d0 sc_out sc_lv 21 signal 15 } 
	{ p_tag_V_82_address0 sc_out sc_lv 5 signal 16 } 
	{ p_tag_V_82_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_82_we0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_82_d0 sc_out sc_lv 21 signal 16 } 
	{ p_tag_V_81_address0 sc_out sc_lv 5 signal 17 } 
	{ p_tag_V_81_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_81_we0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_81_d0 sc_out sc_lv 21 signal 17 } 
	{ p_tag_V_80_address0 sc_out sc_lv 5 signal 18 } 
	{ p_tag_V_80_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_80_we0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_80_d0 sc_out sc_lv 21 signal 18 } 
	{ p_tag_V_79_address0 sc_out sc_lv 5 signal 19 } 
	{ p_tag_V_79_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_79_we0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_79_d0 sc_out sc_lv 21 signal 19 } 
	{ p_tag_V_78_address0 sc_out sc_lv 5 signal 20 } 
	{ p_tag_V_78_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_78_we0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_78_d0 sc_out sc_lv 21 signal 20 } 
	{ p_tag_V_77_address0 sc_out sc_lv 5 signal 21 } 
	{ p_tag_V_77_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_77_we0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_77_d0 sc_out sc_lv 21 signal 21 } 
	{ p_tag_V_76_address0 sc_out sc_lv 5 signal 22 } 
	{ p_tag_V_76_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_76_we0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_76_d0 sc_out sc_lv 21 signal 22 } 
	{ p_tag_V_address0 sc_out sc_lv 5 signal 23 } 
	{ p_tag_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ p_tag_V_we0 sc_out sc_logic 1 signal 23 } 
	{ p_tag_V_d0 sc_out sc_lv 21 signal 23 } 
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
 	{ "name": "p_tag_V_90_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_90", "role": "address0" }} , 
 	{ "name": "p_tag_V_90_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_90", "role": "ce0" }} , 
 	{ "name": "p_tag_V_90_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_90", "role": "we0" }} , 
 	{ "name": "p_tag_V_90_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_90", "role": "d0" }} , 
 	{ "name": "p_tag_V_89_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_89", "role": "address0" }} , 
 	{ "name": "p_tag_V_89_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_89", "role": "ce0" }} , 
 	{ "name": "p_tag_V_89_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_89", "role": "we0" }} , 
 	{ "name": "p_tag_V_89_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_89", "role": "d0" }} , 
 	{ "name": "p_tag_V_88_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_88", "role": "address0" }} , 
 	{ "name": "p_tag_V_88_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_88", "role": "ce0" }} , 
 	{ "name": "p_tag_V_88_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_88", "role": "we0" }} , 
 	{ "name": "p_tag_V_88_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_88", "role": "d0" }} , 
 	{ "name": "p_tag_V_87_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_87", "role": "address0" }} , 
 	{ "name": "p_tag_V_87_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_87", "role": "ce0" }} , 
 	{ "name": "p_tag_V_87_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_87", "role": "we0" }} , 
 	{ "name": "p_tag_V_87_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_87", "role": "d0" }} , 
 	{ "name": "p_tag_V_86_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_86", "role": "address0" }} , 
 	{ "name": "p_tag_V_86_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_86", "role": "ce0" }} , 
 	{ "name": "p_tag_V_86_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_86", "role": "we0" }} , 
 	{ "name": "p_tag_V_86_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_86", "role": "d0" }} , 
 	{ "name": "p_tag_V_85_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_85", "role": "address0" }} , 
 	{ "name": "p_tag_V_85_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_85", "role": "ce0" }} , 
 	{ "name": "p_tag_V_85_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_85", "role": "we0" }} , 
 	{ "name": "p_tag_V_85_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_85", "role": "d0" }} , 
 	{ "name": "p_tag_V_84_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_84", "role": "address0" }} , 
 	{ "name": "p_tag_V_84_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_84", "role": "ce0" }} , 
 	{ "name": "p_tag_V_84_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_84", "role": "we0" }} , 
 	{ "name": "p_tag_V_84_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_84", "role": "d0" }} , 
 	{ "name": "p_tag_V_83_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_83", "role": "address0" }} , 
 	{ "name": "p_tag_V_83_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_83", "role": "ce0" }} , 
 	{ "name": "p_tag_V_83_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_83", "role": "we0" }} , 
 	{ "name": "p_tag_V_83_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_83", "role": "d0" }} , 
 	{ "name": "p_tag_V_82_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_82", "role": "address0" }} , 
 	{ "name": "p_tag_V_82_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_82", "role": "ce0" }} , 
 	{ "name": "p_tag_V_82_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_82", "role": "we0" }} , 
 	{ "name": "p_tag_V_82_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_82", "role": "d0" }} , 
 	{ "name": "p_tag_V_81_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_81", "role": "address0" }} , 
 	{ "name": "p_tag_V_81_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_81", "role": "ce0" }} , 
 	{ "name": "p_tag_V_81_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_81", "role": "we0" }} , 
 	{ "name": "p_tag_V_81_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_81", "role": "d0" }} , 
 	{ "name": "p_tag_V_80_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_80", "role": "address0" }} , 
 	{ "name": "p_tag_V_80_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_80", "role": "ce0" }} , 
 	{ "name": "p_tag_V_80_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_80", "role": "we0" }} , 
 	{ "name": "p_tag_V_80_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_80", "role": "d0" }} , 
 	{ "name": "p_tag_V_79_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_79", "role": "address0" }} , 
 	{ "name": "p_tag_V_79_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_79", "role": "ce0" }} , 
 	{ "name": "p_tag_V_79_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_79", "role": "we0" }} , 
 	{ "name": "p_tag_V_79_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_79", "role": "d0" }} , 
 	{ "name": "p_tag_V_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_78", "role": "address0" }} , 
 	{ "name": "p_tag_V_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_78", "role": "ce0" }} , 
 	{ "name": "p_tag_V_78_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_78", "role": "we0" }} , 
 	{ "name": "p_tag_V_78_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_78", "role": "d0" }} , 
 	{ "name": "p_tag_V_77_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_77", "role": "address0" }} , 
 	{ "name": "p_tag_V_77_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_77", "role": "ce0" }} , 
 	{ "name": "p_tag_V_77_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_77", "role": "we0" }} , 
 	{ "name": "p_tag_V_77_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_77", "role": "d0" }} , 
 	{ "name": "p_tag_V_76_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_76", "role": "address0" }} , 
 	{ "name": "p_tag_V_76_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_76", "role": "ce0" }} , 
 	{ "name": "p_tag_V_76_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_76", "role": "we0" }} , 
 	{ "name": "p_tag_V_76_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_76", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rcache_Pipeline_VITIS_LOOP_332_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
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
			{"Name" : "p_tag_V_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcache_Pipeline_VITIS_LOOP_332_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_90 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_89 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_88 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_87 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_86 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_85 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_84 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_83 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_82 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_81 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_80 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_79 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_78 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_77 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_76 {Type O LastRead -1 FirstWrite 0}
		p_tag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
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
	p_tag_V_90 { ap_memory {  { p_tag_V_90_address0 mem_address 1 5 }  { p_tag_V_90_ce0 mem_ce 1 1 }  { p_tag_V_90_we0 mem_we 1 1 }  { p_tag_V_90_d0 mem_din 1 21 } } }
	p_tag_V_89 { ap_memory {  { p_tag_V_89_address0 mem_address 1 5 }  { p_tag_V_89_ce0 mem_ce 1 1 }  { p_tag_V_89_we0 mem_we 1 1 }  { p_tag_V_89_d0 mem_din 1 21 } } }
	p_tag_V_88 { ap_memory {  { p_tag_V_88_address0 mem_address 1 5 }  { p_tag_V_88_ce0 mem_ce 1 1 }  { p_tag_V_88_we0 mem_we 1 1 }  { p_tag_V_88_d0 mem_din 1 21 } } }
	p_tag_V_87 { ap_memory {  { p_tag_V_87_address0 mem_address 1 5 }  { p_tag_V_87_ce0 mem_ce 1 1 }  { p_tag_V_87_we0 mem_we 1 1 }  { p_tag_V_87_d0 mem_din 1 21 } } }
	p_tag_V_86 { ap_memory {  { p_tag_V_86_address0 mem_address 1 5 }  { p_tag_V_86_ce0 mem_ce 1 1 }  { p_tag_V_86_we0 mem_we 1 1 }  { p_tag_V_86_d0 mem_din 1 21 } } }
	p_tag_V_85 { ap_memory {  { p_tag_V_85_address0 mem_address 1 5 }  { p_tag_V_85_ce0 mem_ce 1 1 }  { p_tag_V_85_we0 mem_we 1 1 }  { p_tag_V_85_d0 mem_din 1 21 } } }
	p_tag_V_84 { ap_memory {  { p_tag_V_84_address0 mem_address 1 5 }  { p_tag_V_84_ce0 mem_ce 1 1 }  { p_tag_V_84_we0 mem_we 1 1 }  { p_tag_V_84_d0 mem_din 1 21 } } }
	p_tag_V_83 { ap_memory {  { p_tag_V_83_address0 mem_address 1 5 }  { p_tag_V_83_ce0 mem_ce 1 1 }  { p_tag_V_83_we0 mem_we 1 1 }  { p_tag_V_83_d0 mem_din 1 21 } } }
	p_tag_V_82 { ap_memory {  { p_tag_V_82_address0 mem_address 1 5 }  { p_tag_V_82_ce0 mem_ce 1 1 }  { p_tag_V_82_we0 mem_we 1 1 }  { p_tag_V_82_d0 mem_din 1 21 } } }
	p_tag_V_81 { ap_memory {  { p_tag_V_81_address0 mem_address 1 5 }  { p_tag_V_81_ce0 mem_ce 1 1 }  { p_tag_V_81_we0 mem_we 1 1 }  { p_tag_V_81_d0 mem_din 1 21 } } }
	p_tag_V_80 { ap_memory {  { p_tag_V_80_address0 mem_address 1 5 }  { p_tag_V_80_ce0 mem_ce 1 1 }  { p_tag_V_80_we0 mem_we 1 1 }  { p_tag_V_80_d0 mem_din 1 21 } } }
	p_tag_V_79 { ap_memory {  { p_tag_V_79_address0 mem_address 1 5 }  { p_tag_V_79_ce0 mem_ce 1 1 }  { p_tag_V_79_we0 mem_we 1 1 }  { p_tag_V_79_d0 mem_din 1 21 } } }
	p_tag_V_78 { ap_memory {  { p_tag_V_78_address0 mem_address 1 5 }  { p_tag_V_78_ce0 mem_ce 1 1 }  { p_tag_V_78_we0 mem_we 1 1 }  { p_tag_V_78_d0 mem_din 1 21 } } }
	p_tag_V_77 { ap_memory {  { p_tag_V_77_address0 mem_address 1 5 }  { p_tag_V_77_ce0 mem_ce 1 1 }  { p_tag_V_77_we0 mem_we 1 1 }  { p_tag_V_77_d0 mem_din 1 21 } } }
	p_tag_V_76 { ap_memory {  { p_tag_V_76_address0 mem_address 1 5 }  { p_tag_V_76_ce0 mem_ce 1 1 }  { p_tag_V_76_we0 mem_we 1 1 }  { p_tag_V_76_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 5 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
