set moduleName rcache_5_Pipeline_VITIS_LOOP_345_1
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
set C_modelName {rcache.5_Pipeline_VITIS_LOOP_345_1}
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
	{ p_tag_V_60 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_59 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_58 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_57 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_56 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_55 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_54 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_53 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_52 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_51 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_50 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_49 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_48 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_47 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_46 int 21 regular {array 32 { 0 } 0 1 }  }
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
 	{ "Name" : "p_tag_V_60", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_59", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_58", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_57", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_56", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_55", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_54", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_53", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_52", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_51", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_50", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_49", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_48", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_47", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_46", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
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
	{ p_tag_V_60_address0 sc_out sc_lv 5 signal 8 } 
	{ p_tag_V_60_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_60_we0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_60_d0 sc_out sc_lv 21 signal 8 } 
	{ p_tag_V_59_address0 sc_out sc_lv 5 signal 9 } 
	{ p_tag_V_59_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_59_we0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_59_d0 sc_out sc_lv 21 signal 9 } 
	{ p_tag_V_58_address0 sc_out sc_lv 5 signal 10 } 
	{ p_tag_V_58_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_58_we0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_58_d0 sc_out sc_lv 21 signal 10 } 
	{ p_tag_V_57_address0 sc_out sc_lv 5 signal 11 } 
	{ p_tag_V_57_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_57_we0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_57_d0 sc_out sc_lv 21 signal 11 } 
	{ p_tag_V_56_address0 sc_out sc_lv 5 signal 12 } 
	{ p_tag_V_56_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_56_we0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_56_d0 sc_out sc_lv 21 signal 12 } 
	{ p_tag_V_55_address0 sc_out sc_lv 5 signal 13 } 
	{ p_tag_V_55_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_55_we0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_55_d0 sc_out sc_lv 21 signal 13 } 
	{ p_tag_V_54_address0 sc_out sc_lv 5 signal 14 } 
	{ p_tag_V_54_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_54_we0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_54_d0 sc_out sc_lv 21 signal 14 } 
	{ p_tag_V_53_address0 sc_out sc_lv 5 signal 15 } 
	{ p_tag_V_53_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_53_we0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_53_d0 sc_out sc_lv 21 signal 15 } 
	{ p_tag_V_52_address0 sc_out sc_lv 5 signal 16 } 
	{ p_tag_V_52_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_52_we0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_52_d0 sc_out sc_lv 21 signal 16 } 
	{ p_tag_V_51_address0 sc_out sc_lv 5 signal 17 } 
	{ p_tag_V_51_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_51_we0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_51_d0 sc_out sc_lv 21 signal 17 } 
	{ p_tag_V_50_address0 sc_out sc_lv 5 signal 18 } 
	{ p_tag_V_50_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_50_we0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_50_d0 sc_out sc_lv 21 signal 18 } 
	{ p_tag_V_49_address0 sc_out sc_lv 5 signal 19 } 
	{ p_tag_V_49_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_49_we0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_49_d0 sc_out sc_lv 21 signal 19 } 
	{ p_tag_V_48_address0 sc_out sc_lv 5 signal 20 } 
	{ p_tag_V_48_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_48_we0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_48_d0 sc_out sc_lv 21 signal 20 } 
	{ p_tag_V_47_address0 sc_out sc_lv 5 signal 21 } 
	{ p_tag_V_47_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_47_we0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_47_d0 sc_out sc_lv 21 signal 21 } 
	{ p_tag_V_46_address0 sc_out sc_lv 5 signal 22 } 
	{ p_tag_V_46_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_46_we0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_46_d0 sc_out sc_lv 21 signal 22 } 
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
 	{ "name": "p_tag_V_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_60", "role": "address0" }} , 
 	{ "name": "p_tag_V_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_60", "role": "ce0" }} , 
 	{ "name": "p_tag_V_60_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_60", "role": "we0" }} , 
 	{ "name": "p_tag_V_60_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_60", "role": "d0" }} , 
 	{ "name": "p_tag_V_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_59", "role": "address0" }} , 
 	{ "name": "p_tag_V_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_59", "role": "ce0" }} , 
 	{ "name": "p_tag_V_59_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_59", "role": "we0" }} , 
 	{ "name": "p_tag_V_59_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_59", "role": "d0" }} , 
 	{ "name": "p_tag_V_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_58", "role": "address0" }} , 
 	{ "name": "p_tag_V_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_58", "role": "ce0" }} , 
 	{ "name": "p_tag_V_58_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_58", "role": "we0" }} , 
 	{ "name": "p_tag_V_58_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_58", "role": "d0" }} , 
 	{ "name": "p_tag_V_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_57", "role": "address0" }} , 
 	{ "name": "p_tag_V_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_57", "role": "ce0" }} , 
 	{ "name": "p_tag_V_57_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_57", "role": "we0" }} , 
 	{ "name": "p_tag_V_57_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_57", "role": "d0" }} , 
 	{ "name": "p_tag_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_56", "role": "address0" }} , 
 	{ "name": "p_tag_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_56", "role": "ce0" }} , 
 	{ "name": "p_tag_V_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_56", "role": "we0" }} , 
 	{ "name": "p_tag_V_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_56", "role": "d0" }} , 
 	{ "name": "p_tag_V_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_55", "role": "address0" }} , 
 	{ "name": "p_tag_V_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_55", "role": "ce0" }} , 
 	{ "name": "p_tag_V_55_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_55", "role": "we0" }} , 
 	{ "name": "p_tag_V_55_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_55", "role": "d0" }} , 
 	{ "name": "p_tag_V_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_54", "role": "address0" }} , 
 	{ "name": "p_tag_V_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_54", "role": "ce0" }} , 
 	{ "name": "p_tag_V_54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_54", "role": "we0" }} , 
 	{ "name": "p_tag_V_54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_54", "role": "d0" }} , 
 	{ "name": "p_tag_V_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_53", "role": "address0" }} , 
 	{ "name": "p_tag_V_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_53", "role": "ce0" }} , 
 	{ "name": "p_tag_V_53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_53", "role": "we0" }} , 
 	{ "name": "p_tag_V_53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_53", "role": "d0" }} , 
 	{ "name": "p_tag_V_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_52", "role": "address0" }} , 
 	{ "name": "p_tag_V_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_52", "role": "ce0" }} , 
 	{ "name": "p_tag_V_52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_52", "role": "we0" }} , 
 	{ "name": "p_tag_V_52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_52", "role": "d0" }} , 
 	{ "name": "p_tag_V_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_51", "role": "address0" }} , 
 	{ "name": "p_tag_V_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_51", "role": "ce0" }} , 
 	{ "name": "p_tag_V_51_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_51", "role": "we0" }} , 
 	{ "name": "p_tag_V_51_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_51", "role": "d0" }} , 
 	{ "name": "p_tag_V_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_50", "role": "address0" }} , 
 	{ "name": "p_tag_V_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_50", "role": "ce0" }} , 
 	{ "name": "p_tag_V_50_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_50", "role": "we0" }} , 
 	{ "name": "p_tag_V_50_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_50", "role": "d0" }} , 
 	{ "name": "p_tag_V_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_49", "role": "address0" }} , 
 	{ "name": "p_tag_V_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_49", "role": "ce0" }} , 
 	{ "name": "p_tag_V_49_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_49", "role": "we0" }} , 
 	{ "name": "p_tag_V_49_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_49", "role": "d0" }} , 
 	{ "name": "p_tag_V_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_48", "role": "address0" }} , 
 	{ "name": "p_tag_V_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_48", "role": "ce0" }} , 
 	{ "name": "p_tag_V_48_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_48", "role": "we0" }} , 
 	{ "name": "p_tag_V_48_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_48", "role": "d0" }} , 
 	{ "name": "p_tag_V_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_47", "role": "address0" }} , 
 	{ "name": "p_tag_V_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_47", "role": "ce0" }} , 
 	{ "name": "p_tag_V_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_47", "role": "we0" }} , 
 	{ "name": "p_tag_V_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_47", "role": "d0" }} , 
 	{ "name": "p_tag_V_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_46", "role": "address0" }} , 
 	{ "name": "p_tag_V_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_46", "role": "ce0" }} , 
 	{ "name": "p_tag_V_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_46", "role": "we0" }} , 
 	{ "name": "p_tag_V_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_46", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rcache_5_Pipeline_VITIS_LOOP_345_1",
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
			{"Name" : "p_tag_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_345_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcache_5_Pipeline_VITIS_LOOP_345_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_60 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_59 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_58 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_57 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_56 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_55 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_54 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_53 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_52 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_51 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_50 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_49 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_48 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_47 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_46 {Type O LastRead -1 FirstWrite 0}
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
	p_tag_V_60 { ap_memory {  { p_tag_V_60_address0 mem_address 1 5 }  { p_tag_V_60_ce0 mem_ce 1 1 }  { p_tag_V_60_we0 mem_we 1 1 }  { p_tag_V_60_d0 mem_din 1 21 } } }
	p_tag_V_59 { ap_memory {  { p_tag_V_59_address0 mem_address 1 5 }  { p_tag_V_59_ce0 mem_ce 1 1 }  { p_tag_V_59_we0 mem_we 1 1 }  { p_tag_V_59_d0 mem_din 1 21 } } }
	p_tag_V_58 { ap_memory {  { p_tag_V_58_address0 mem_address 1 5 }  { p_tag_V_58_ce0 mem_ce 1 1 }  { p_tag_V_58_we0 mem_we 1 1 }  { p_tag_V_58_d0 mem_din 1 21 } } }
	p_tag_V_57 { ap_memory {  { p_tag_V_57_address0 mem_address 1 5 }  { p_tag_V_57_ce0 mem_ce 1 1 }  { p_tag_V_57_we0 mem_we 1 1 }  { p_tag_V_57_d0 mem_din 1 21 } } }
	p_tag_V_56 { ap_memory {  { p_tag_V_56_address0 mem_address 1 5 }  { p_tag_V_56_ce0 mem_ce 1 1 }  { p_tag_V_56_we0 mem_we 1 1 }  { p_tag_V_56_d0 mem_din 1 21 } } }
	p_tag_V_55 { ap_memory {  { p_tag_V_55_address0 mem_address 1 5 }  { p_tag_V_55_ce0 mem_ce 1 1 }  { p_tag_V_55_we0 mem_we 1 1 }  { p_tag_V_55_d0 mem_din 1 21 } } }
	p_tag_V_54 { ap_memory {  { p_tag_V_54_address0 mem_address 1 5 }  { p_tag_V_54_ce0 mem_ce 1 1 }  { p_tag_V_54_we0 mem_we 1 1 }  { p_tag_V_54_d0 mem_din 1 21 } } }
	p_tag_V_53 { ap_memory {  { p_tag_V_53_address0 mem_address 1 5 }  { p_tag_V_53_ce0 mem_ce 1 1 }  { p_tag_V_53_we0 mem_we 1 1 }  { p_tag_V_53_d0 mem_din 1 21 } } }
	p_tag_V_52 { ap_memory {  { p_tag_V_52_address0 mem_address 1 5 }  { p_tag_V_52_ce0 mem_ce 1 1 }  { p_tag_V_52_we0 mem_we 1 1 }  { p_tag_V_52_d0 mem_din 1 21 } } }
	p_tag_V_51 { ap_memory {  { p_tag_V_51_address0 mem_address 1 5 }  { p_tag_V_51_ce0 mem_ce 1 1 }  { p_tag_V_51_we0 mem_we 1 1 }  { p_tag_V_51_d0 mem_din 1 21 } } }
	p_tag_V_50 { ap_memory {  { p_tag_V_50_address0 mem_address 1 5 }  { p_tag_V_50_ce0 mem_ce 1 1 }  { p_tag_V_50_we0 mem_we 1 1 }  { p_tag_V_50_d0 mem_din 1 21 } } }
	p_tag_V_49 { ap_memory {  { p_tag_V_49_address0 mem_address 1 5 }  { p_tag_V_49_ce0 mem_ce 1 1 }  { p_tag_V_49_we0 mem_we 1 1 }  { p_tag_V_49_d0 mem_din 1 21 } } }
	p_tag_V_48 { ap_memory {  { p_tag_V_48_address0 mem_address 1 5 }  { p_tag_V_48_ce0 mem_ce 1 1 }  { p_tag_V_48_we0 mem_we 1 1 }  { p_tag_V_48_d0 mem_din 1 21 } } }
	p_tag_V_47 { ap_memory {  { p_tag_V_47_address0 mem_address 1 5 }  { p_tag_V_47_ce0 mem_ce 1 1 }  { p_tag_V_47_we0 mem_we 1 1 }  { p_tag_V_47_d0 mem_din 1 21 } } }
	p_tag_V_46 { ap_memory {  { p_tag_V_46_address0 mem_address 1 5 }  { p_tag_V_46_ce0 mem_ce 1 1 }  { p_tag_V_46_we0 mem_we 1 1 }  { p_tag_V_46_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 5 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
