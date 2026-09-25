set moduleName rcache_4_Pipeline_VITIS_LOOP_332_1
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
set C_modelName {rcache.4_Pipeline_VITIS_LOOP_332_1}
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
	{ p_tag_V_75 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_74 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_73 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_72 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_71 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_70 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_69 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_68 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_67 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_66 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_65 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_64 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_63 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_62 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_61 int 21 regular {array 32 { 0 } 0 1 }  }
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
 	{ "Name" : "p_tag_V_75", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_74", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_73", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_72", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_71", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_70", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_69", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_68", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_67", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_66", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_65", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_64", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_63", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_62", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_61", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
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
	{ p_tag_V_75_address0 sc_out sc_lv 5 signal 8 } 
	{ p_tag_V_75_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_75_we0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_75_d0 sc_out sc_lv 21 signal 8 } 
	{ p_tag_V_74_address0 sc_out sc_lv 5 signal 9 } 
	{ p_tag_V_74_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_74_we0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_74_d0 sc_out sc_lv 21 signal 9 } 
	{ p_tag_V_73_address0 sc_out sc_lv 5 signal 10 } 
	{ p_tag_V_73_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_73_we0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_73_d0 sc_out sc_lv 21 signal 10 } 
	{ p_tag_V_72_address0 sc_out sc_lv 5 signal 11 } 
	{ p_tag_V_72_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_72_we0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_72_d0 sc_out sc_lv 21 signal 11 } 
	{ p_tag_V_71_address0 sc_out sc_lv 5 signal 12 } 
	{ p_tag_V_71_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_71_we0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_71_d0 sc_out sc_lv 21 signal 12 } 
	{ p_tag_V_70_address0 sc_out sc_lv 5 signal 13 } 
	{ p_tag_V_70_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_70_we0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_70_d0 sc_out sc_lv 21 signal 13 } 
	{ p_tag_V_69_address0 sc_out sc_lv 5 signal 14 } 
	{ p_tag_V_69_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_69_we0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_69_d0 sc_out sc_lv 21 signal 14 } 
	{ p_tag_V_68_address0 sc_out sc_lv 5 signal 15 } 
	{ p_tag_V_68_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_68_we0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_68_d0 sc_out sc_lv 21 signal 15 } 
	{ p_tag_V_67_address0 sc_out sc_lv 5 signal 16 } 
	{ p_tag_V_67_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_67_we0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_67_d0 sc_out sc_lv 21 signal 16 } 
	{ p_tag_V_66_address0 sc_out sc_lv 5 signal 17 } 
	{ p_tag_V_66_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_66_we0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_66_d0 sc_out sc_lv 21 signal 17 } 
	{ p_tag_V_65_address0 sc_out sc_lv 5 signal 18 } 
	{ p_tag_V_65_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_65_we0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_65_d0 sc_out sc_lv 21 signal 18 } 
	{ p_tag_V_64_address0 sc_out sc_lv 5 signal 19 } 
	{ p_tag_V_64_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_64_we0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_64_d0 sc_out sc_lv 21 signal 19 } 
	{ p_tag_V_63_address0 sc_out sc_lv 5 signal 20 } 
	{ p_tag_V_63_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_63_we0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_63_d0 sc_out sc_lv 21 signal 20 } 
	{ p_tag_V_62_address0 sc_out sc_lv 5 signal 21 } 
	{ p_tag_V_62_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_62_we0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_62_d0 sc_out sc_lv 21 signal 21 } 
	{ p_tag_V_61_address0 sc_out sc_lv 5 signal 22 } 
	{ p_tag_V_61_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_61_we0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_61_d0 sc_out sc_lv 21 signal 22 } 
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
 	{ "name": "p_tag_V_75_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_75", "role": "address0" }} , 
 	{ "name": "p_tag_V_75_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_75", "role": "ce0" }} , 
 	{ "name": "p_tag_V_75_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_75", "role": "we0" }} , 
 	{ "name": "p_tag_V_75_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_75", "role": "d0" }} , 
 	{ "name": "p_tag_V_74_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_74", "role": "address0" }} , 
 	{ "name": "p_tag_V_74_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_74", "role": "ce0" }} , 
 	{ "name": "p_tag_V_74_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_74", "role": "we0" }} , 
 	{ "name": "p_tag_V_74_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_74", "role": "d0" }} , 
 	{ "name": "p_tag_V_73_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_73", "role": "address0" }} , 
 	{ "name": "p_tag_V_73_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_73", "role": "ce0" }} , 
 	{ "name": "p_tag_V_73_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_73", "role": "we0" }} , 
 	{ "name": "p_tag_V_73_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_73", "role": "d0" }} , 
 	{ "name": "p_tag_V_72_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_72", "role": "address0" }} , 
 	{ "name": "p_tag_V_72_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_72", "role": "ce0" }} , 
 	{ "name": "p_tag_V_72_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_72", "role": "we0" }} , 
 	{ "name": "p_tag_V_72_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_72", "role": "d0" }} , 
 	{ "name": "p_tag_V_71_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_71", "role": "address0" }} , 
 	{ "name": "p_tag_V_71_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_71", "role": "ce0" }} , 
 	{ "name": "p_tag_V_71_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_71", "role": "we0" }} , 
 	{ "name": "p_tag_V_71_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_71", "role": "d0" }} , 
 	{ "name": "p_tag_V_70_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_70", "role": "address0" }} , 
 	{ "name": "p_tag_V_70_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_70", "role": "ce0" }} , 
 	{ "name": "p_tag_V_70_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_70", "role": "we0" }} , 
 	{ "name": "p_tag_V_70_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_70", "role": "d0" }} , 
 	{ "name": "p_tag_V_69_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_69", "role": "address0" }} , 
 	{ "name": "p_tag_V_69_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_69", "role": "ce0" }} , 
 	{ "name": "p_tag_V_69_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_69", "role": "we0" }} , 
 	{ "name": "p_tag_V_69_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_69", "role": "d0" }} , 
 	{ "name": "p_tag_V_68_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_68", "role": "address0" }} , 
 	{ "name": "p_tag_V_68_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_68", "role": "ce0" }} , 
 	{ "name": "p_tag_V_68_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_68", "role": "we0" }} , 
 	{ "name": "p_tag_V_68_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_68", "role": "d0" }} , 
 	{ "name": "p_tag_V_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_67", "role": "address0" }} , 
 	{ "name": "p_tag_V_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_67", "role": "ce0" }} , 
 	{ "name": "p_tag_V_67_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_67", "role": "we0" }} , 
 	{ "name": "p_tag_V_67_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_67", "role": "d0" }} , 
 	{ "name": "p_tag_V_66_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_66", "role": "address0" }} , 
 	{ "name": "p_tag_V_66_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_66", "role": "ce0" }} , 
 	{ "name": "p_tag_V_66_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_66", "role": "we0" }} , 
 	{ "name": "p_tag_V_66_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_66", "role": "d0" }} , 
 	{ "name": "p_tag_V_65_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_65", "role": "address0" }} , 
 	{ "name": "p_tag_V_65_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_65", "role": "ce0" }} , 
 	{ "name": "p_tag_V_65_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_65", "role": "we0" }} , 
 	{ "name": "p_tag_V_65_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_65", "role": "d0" }} , 
 	{ "name": "p_tag_V_64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_64", "role": "address0" }} , 
 	{ "name": "p_tag_V_64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_64", "role": "ce0" }} , 
 	{ "name": "p_tag_V_64_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_64", "role": "we0" }} , 
 	{ "name": "p_tag_V_64_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_64", "role": "d0" }} , 
 	{ "name": "p_tag_V_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_63", "role": "address0" }} , 
 	{ "name": "p_tag_V_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_63", "role": "ce0" }} , 
 	{ "name": "p_tag_V_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_63", "role": "we0" }} , 
 	{ "name": "p_tag_V_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_63", "role": "d0" }} , 
 	{ "name": "p_tag_V_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_62", "role": "address0" }} , 
 	{ "name": "p_tag_V_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_62", "role": "ce0" }} , 
 	{ "name": "p_tag_V_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_62", "role": "we0" }} , 
 	{ "name": "p_tag_V_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_62", "role": "d0" }} , 
 	{ "name": "p_tag_V_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_61", "role": "address0" }} , 
 	{ "name": "p_tag_V_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_61", "role": "ce0" }} , 
 	{ "name": "p_tag_V_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_61", "role": "we0" }} , 
 	{ "name": "p_tag_V_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_61", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rcache_4_Pipeline_VITIS_LOOP_332_1",
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
			{"Name" : "p_tag_V_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcache_4_Pipeline_VITIS_LOOP_332_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_75 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_74 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_73 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_72 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_71 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_70 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_69 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_68 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_67 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_66 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_65 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_64 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_63 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_62 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_61 {Type O LastRead -1 FirstWrite 0}
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
	p_tag_V_75 { ap_memory {  { p_tag_V_75_address0 mem_address 1 5 }  { p_tag_V_75_ce0 mem_ce 1 1 }  { p_tag_V_75_we0 mem_we 1 1 }  { p_tag_V_75_d0 mem_din 1 21 } } }
	p_tag_V_74 { ap_memory {  { p_tag_V_74_address0 mem_address 1 5 }  { p_tag_V_74_ce0 mem_ce 1 1 }  { p_tag_V_74_we0 mem_we 1 1 }  { p_tag_V_74_d0 mem_din 1 21 } } }
	p_tag_V_73 { ap_memory {  { p_tag_V_73_address0 mem_address 1 5 }  { p_tag_V_73_ce0 mem_ce 1 1 }  { p_tag_V_73_we0 mem_we 1 1 }  { p_tag_V_73_d0 mem_din 1 21 } } }
	p_tag_V_72 { ap_memory {  { p_tag_V_72_address0 mem_address 1 5 }  { p_tag_V_72_ce0 mem_ce 1 1 }  { p_tag_V_72_we0 mem_we 1 1 }  { p_tag_V_72_d0 mem_din 1 21 } } }
	p_tag_V_71 { ap_memory {  { p_tag_V_71_address0 mem_address 1 5 }  { p_tag_V_71_ce0 mem_ce 1 1 }  { p_tag_V_71_we0 mem_we 1 1 }  { p_tag_V_71_d0 mem_din 1 21 } } }
	p_tag_V_70 { ap_memory {  { p_tag_V_70_address0 mem_address 1 5 }  { p_tag_V_70_ce0 mem_ce 1 1 }  { p_tag_V_70_we0 mem_we 1 1 }  { p_tag_V_70_d0 mem_din 1 21 } } }
	p_tag_V_69 { ap_memory {  { p_tag_V_69_address0 mem_address 1 5 }  { p_tag_V_69_ce0 mem_ce 1 1 }  { p_tag_V_69_we0 mem_we 1 1 }  { p_tag_V_69_d0 mem_din 1 21 } } }
	p_tag_V_68 { ap_memory {  { p_tag_V_68_address0 mem_address 1 5 }  { p_tag_V_68_ce0 mem_ce 1 1 }  { p_tag_V_68_we0 mem_we 1 1 }  { p_tag_V_68_d0 mem_din 1 21 } } }
	p_tag_V_67 { ap_memory {  { p_tag_V_67_address0 mem_address 1 5 }  { p_tag_V_67_ce0 mem_ce 1 1 }  { p_tag_V_67_we0 mem_we 1 1 }  { p_tag_V_67_d0 mem_din 1 21 } } }
	p_tag_V_66 { ap_memory {  { p_tag_V_66_address0 mem_address 1 5 }  { p_tag_V_66_ce0 mem_ce 1 1 }  { p_tag_V_66_we0 mem_we 1 1 }  { p_tag_V_66_d0 mem_din 1 21 } } }
	p_tag_V_65 { ap_memory {  { p_tag_V_65_address0 mem_address 1 5 }  { p_tag_V_65_ce0 mem_ce 1 1 }  { p_tag_V_65_we0 mem_we 1 1 }  { p_tag_V_65_d0 mem_din 1 21 } } }
	p_tag_V_64 { ap_memory {  { p_tag_V_64_address0 mem_address 1 5 }  { p_tag_V_64_ce0 mem_ce 1 1 }  { p_tag_V_64_we0 mem_we 1 1 }  { p_tag_V_64_d0 mem_din 1 21 } } }
	p_tag_V_63 { ap_memory {  { p_tag_V_63_address0 mem_address 1 5 }  { p_tag_V_63_ce0 mem_ce 1 1 }  { p_tag_V_63_we0 mem_we 1 1 }  { p_tag_V_63_d0 mem_din 1 21 } } }
	p_tag_V_62 { ap_memory {  { p_tag_V_62_address0 mem_address 1 5 }  { p_tag_V_62_ce0 mem_ce 1 1 }  { p_tag_V_62_we0 mem_we 1 1 }  { p_tag_V_62_d0 mem_din 1 21 } } }
	p_tag_V_61 { ap_memory {  { p_tag_V_61_address0 mem_address 1 5 }  { p_tag_V_61_ce0 mem_ce 1 1 }  { p_tag_V_61_we0 mem_we 1 1 }  { p_tag_V_61_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 5 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
