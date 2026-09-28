set moduleName rcache_6_Pipeline_VITIS_LOOP_336_1
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
set C_modelName {rcache.6_Pipeline_VITIS_LOOP_336_1}
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
	{ p_tag_V_45 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_44 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_43 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_42 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_41 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_40 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_39 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_38 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_37 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_36 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_35 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_34 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_33 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_32 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_31 int 21 regular {array 32 { 0 } 0 1 }  }
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
 	{ "Name" : "p_tag_V_45", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_44", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_43", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_42", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_41", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_40", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_39", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_38", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_37", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_36", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_35", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_34", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_33", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_32", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_31", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
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
	{ p_tag_V_45_address0 sc_out sc_lv 5 signal 8 } 
	{ p_tag_V_45_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_45_we0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_45_d0 sc_out sc_lv 21 signal 8 } 
	{ p_tag_V_44_address0 sc_out sc_lv 5 signal 9 } 
	{ p_tag_V_44_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_44_we0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_44_d0 sc_out sc_lv 21 signal 9 } 
	{ p_tag_V_43_address0 sc_out sc_lv 5 signal 10 } 
	{ p_tag_V_43_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_43_we0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_43_d0 sc_out sc_lv 21 signal 10 } 
	{ p_tag_V_42_address0 sc_out sc_lv 5 signal 11 } 
	{ p_tag_V_42_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_42_we0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_42_d0 sc_out sc_lv 21 signal 11 } 
	{ p_tag_V_41_address0 sc_out sc_lv 5 signal 12 } 
	{ p_tag_V_41_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_41_we0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_41_d0 sc_out sc_lv 21 signal 12 } 
	{ p_tag_V_40_address0 sc_out sc_lv 5 signal 13 } 
	{ p_tag_V_40_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_40_we0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_40_d0 sc_out sc_lv 21 signal 13 } 
	{ p_tag_V_39_address0 sc_out sc_lv 5 signal 14 } 
	{ p_tag_V_39_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_39_we0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_39_d0 sc_out sc_lv 21 signal 14 } 
	{ p_tag_V_38_address0 sc_out sc_lv 5 signal 15 } 
	{ p_tag_V_38_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_38_we0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_38_d0 sc_out sc_lv 21 signal 15 } 
	{ p_tag_V_37_address0 sc_out sc_lv 5 signal 16 } 
	{ p_tag_V_37_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_37_we0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_37_d0 sc_out sc_lv 21 signal 16 } 
	{ p_tag_V_36_address0 sc_out sc_lv 5 signal 17 } 
	{ p_tag_V_36_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_36_we0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_36_d0 sc_out sc_lv 21 signal 17 } 
	{ p_tag_V_35_address0 sc_out sc_lv 5 signal 18 } 
	{ p_tag_V_35_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_35_we0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_35_d0 sc_out sc_lv 21 signal 18 } 
	{ p_tag_V_34_address0 sc_out sc_lv 5 signal 19 } 
	{ p_tag_V_34_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_34_we0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_34_d0 sc_out sc_lv 21 signal 19 } 
	{ p_tag_V_33_address0 sc_out sc_lv 5 signal 20 } 
	{ p_tag_V_33_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_33_we0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_33_d0 sc_out sc_lv 21 signal 20 } 
	{ p_tag_V_32_address0 sc_out sc_lv 5 signal 21 } 
	{ p_tag_V_32_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_32_we0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_32_d0 sc_out sc_lv 21 signal 21 } 
	{ p_tag_V_31_address0 sc_out sc_lv 5 signal 22 } 
	{ p_tag_V_31_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_31_we0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_31_d0 sc_out sc_lv 21 signal 22 } 
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
 	{ "name": "p_tag_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "address0" }} , 
 	{ "name": "p_tag_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "ce0" }} , 
 	{ "name": "p_tag_V_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "we0" }} , 
 	{ "name": "p_tag_V_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "d0" }} , 
 	{ "name": "p_tag_V_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "address0" }} , 
 	{ "name": "p_tag_V_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "ce0" }} , 
 	{ "name": "p_tag_V_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "we0" }} , 
 	{ "name": "p_tag_V_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "d0" }} , 
 	{ "name": "p_tag_V_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "address0" }} , 
 	{ "name": "p_tag_V_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "ce0" }} , 
 	{ "name": "p_tag_V_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "we0" }} , 
 	{ "name": "p_tag_V_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "d0" }} , 
 	{ "name": "p_tag_V_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "address0" }} , 
 	{ "name": "p_tag_V_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "ce0" }} , 
 	{ "name": "p_tag_V_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "we0" }} , 
 	{ "name": "p_tag_V_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "d0" }} , 
 	{ "name": "p_tag_V_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "address0" }} , 
 	{ "name": "p_tag_V_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "ce0" }} , 
 	{ "name": "p_tag_V_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "we0" }} , 
 	{ "name": "p_tag_V_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "d0" }} , 
 	{ "name": "p_tag_V_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "address0" }} , 
 	{ "name": "p_tag_V_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "ce0" }} , 
 	{ "name": "p_tag_V_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "we0" }} , 
 	{ "name": "p_tag_V_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "d0" }} , 
 	{ "name": "p_tag_V_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "address0" }} , 
 	{ "name": "p_tag_V_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "ce0" }} , 
 	{ "name": "p_tag_V_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "we0" }} , 
 	{ "name": "p_tag_V_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "d0" }} , 
 	{ "name": "p_tag_V_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "address0" }} , 
 	{ "name": "p_tag_V_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "ce0" }} , 
 	{ "name": "p_tag_V_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "we0" }} , 
 	{ "name": "p_tag_V_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "d0" }} , 
 	{ "name": "p_tag_V_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "address0" }} , 
 	{ "name": "p_tag_V_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "ce0" }} , 
 	{ "name": "p_tag_V_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "we0" }} , 
 	{ "name": "p_tag_V_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "d0" }} , 
 	{ "name": "p_tag_V_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "address0" }} , 
 	{ "name": "p_tag_V_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "ce0" }} , 
 	{ "name": "p_tag_V_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "we0" }} , 
 	{ "name": "p_tag_V_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "d0" }} , 
 	{ "name": "p_tag_V_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "address0" }} , 
 	{ "name": "p_tag_V_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "ce0" }} , 
 	{ "name": "p_tag_V_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "we0" }} , 
 	{ "name": "p_tag_V_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "d0" }} , 
 	{ "name": "p_tag_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "address0" }} , 
 	{ "name": "p_tag_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "ce0" }} , 
 	{ "name": "p_tag_V_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "we0" }} , 
 	{ "name": "p_tag_V_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "d0" }} , 
 	{ "name": "p_tag_V_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "address0" }} , 
 	{ "name": "p_tag_V_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "ce0" }} , 
 	{ "name": "p_tag_V_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "we0" }} , 
 	{ "name": "p_tag_V_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "d0" }} , 
 	{ "name": "p_tag_V_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "address0" }} , 
 	{ "name": "p_tag_V_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "ce0" }} , 
 	{ "name": "p_tag_V_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "we0" }} , 
 	{ "name": "p_tag_V_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "d0" }} , 
 	{ "name": "p_tag_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "address0" }} , 
 	{ "name": "p_tag_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "ce0" }} , 
 	{ "name": "p_tag_V_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "we0" }} , 
 	{ "name": "p_tag_V_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rcache_6_Pipeline_VITIS_LOOP_336_1",
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
			{"Name" : "p_tag_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_336_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcache_6_Pipeline_VITIS_LOOP_336_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_45 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_44 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_43 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_42 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_41 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_40 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_39 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_38 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_37 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_36 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_35 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_34 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_33 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_32 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_31 {Type O LastRead -1 FirstWrite 0}
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
	p_tag_V_45 { ap_memory {  { p_tag_V_45_address0 mem_address 1 5 }  { p_tag_V_45_ce0 mem_ce 1 1 }  { p_tag_V_45_we0 mem_we 1 1 }  { p_tag_V_45_d0 mem_din 1 21 } } }
	p_tag_V_44 { ap_memory {  { p_tag_V_44_address0 mem_address 1 5 }  { p_tag_V_44_ce0 mem_ce 1 1 }  { p_tag_V_44_we0 mem_we 1 1 }  { p_tag_V_44_d0 mem_din 1 21 } } }
	p_tag_V_43 { ap_memory {  { p_tag_V_43_address0 mem_address 1 5 }  { p_tag_V_43_ce0 mem_ce 1 1 }  { p_tag_V_43_we0 mem_we 1 1 }  { p_tag_V_43_d0 mem_din 1 21 } } }
	p_tag_V_42 { ap_memory {  { p_tag_V_42_address0 mem_address 1 5 }  { p_tag_V_42_ce0 mem_ce 1 1 }  { p_tag_V_42_we0 mem_we 1 1 }  { p_tag_V_42_d0 mem_din 1 21 } } }
	p_tag_V_41 { ap_memory {  { p_tag_V_41_address0 mem_address 1 5 }  { p_tag_V_41_ce0 mem_ce 1 1 }  { p_tag_V_41_we0 mem_we 1 1 }  { p_tag_V_41_d0 mem_din 1 21 } } }
	p_tag_V_40 { ap_memory {  { p_tag_V_40_address0 mem_address 1 5 }  { p_tag_V_40_ce0 mem_ce 1 1 }  { p_tag_V_40_we0 mem_we 1 1 }  { p_tag_V_40_d0 mem_din 1 21 } } }
	p_tag_V_39 { ap_memory {  { p_tag_V_39_address0 mem_address 1 5 }  { p_tag_V_39_ce0 mem_ce 1 1 }  { p_tag_V_39_we0 mem_we 1 1 }  { p_tag_V_39_d0 mem_din 1 21 } } }
	p_tag_V_38 { ap_memory {  { p_tag_V_38_address0 mem_address 1 5 }  { p_tag_V_38_ce0 mem_ce 1 1 }  { p_tag_V_38_we0 mem_we 1 1 }  { p_tag_V_38_d0 mem_din 1 21 } } }
	p_tag_V_37 { ap_memory {  { p_tag_V_37_address0 mem_address 1 5 }  { p_tag_V_37_ce0 mem_ce 1 1 }  { p_tag_V_37_we0 mem_we 1 1 }  { p_tag_V_37_d0 mem_din 1 21 } } }
	p_tag_V_36 { ap_memory {  { p_tag_V_36_address0 mem_address 1 5 }  { p_tag_V_36_ce0 mem_ce 1 1 }  { p_tag_V_36_we0 mem_we 1 1 }  { p_tag_V_36_d0 mem_din 1 21 } } }
	p_tag_V_35 { ap_memory {  { p_tag_V_35_address0 mem_address 1 5 }  { p_tag_V_35_ce0 mem_ce 1 1 }  { p_tag_V_35_we0 mem_we 1 1 }  { p_tag_V_35_d0 mem_din 1 21 } } }
	p_tag_V_34 { ap_memory {  { p_tag_V_34_address0 mem_address 1 5 }  { p_tag_V_34_ce0 mem_ce 1 1 }  { p_tag_V_34_we0 mem_we 1 1 }  { p_tag_V_34_d0 mem_din 1 21 } } }
	p_tag_V_33 { ap_memory {  { p_tag_V_33_address0 mem_address 1 5 }  { p_tag_V_33_ce0 mem_ce 1 1 }  { p_tag_V_33_we0 mem_we 1 1 }  { p_tag_V_33_d0 mem_din 1 21 } } }
	p_tag_V_32 { ap_memory {  { p_tag_V_32_address0 mem_address 1 5 }  { p_tag_V_32_ce0 mem_ce 1 1 }  { p_tag_V_32_we0 mem_we 1 1 }  { p_tag_V_32_d0 mem_din 1 21 } } }
	p_tag_V_31 { ap_memory {  { p_tag_V_31_address0 mem_address 1 5 }  { p_tag_V_31_ce0 mem_ce 1 1 }  { p_tag_V_31_we0 mem_we 1 1 }  { p_tag_V_31_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 5 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
set moduleName rcache_6_Pipeline_VITIS_LOOP_336_1
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
set C_modelName {rcache.6_Pipeline_VITIS_LOOP_336_1}
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
	{ p_tag_V_45 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_44 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_43 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_42 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_41 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_40 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_39 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_38 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_37 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_36 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_35 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_34 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_33 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_32 int 21 regular {array 32 { 0 } 0 1 }  }
	{ p_tag_V_31 int 21 regular {array 32 { 0 } 0 1 }  }
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
 	{ "Name" : "p_tag_V_45", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_44", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_43", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_42", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_41", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_40", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_39", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_38", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_37", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_36", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_35", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_34", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_33", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_32", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_tag_V_31", "interface" : "memory", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
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
	{ p_tag_V_45_address0 sc_out sc_lv 5 signal 8 } 
	{ p_tag_V_45_ce0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_45_we0 sc_out sc_logic 1 signal 8 } 
	{ p_tag_V_45_d0 sc_out sc_lv 21 signal 8 } 
	{ p_tag_V_44_address0 sc_out sc_lv 5 signal 9 } 
	{ p_tag_V_44_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_44_we0 sc_out sc_logic 1 signal 9 } 
	{ p_tag_V_44_d0 sc_out sc_lv 21 signal 9 } 
	{ p_tag_V_43_address0 sc_out sc_lv 5 signal 10 } 
	{ p_tag_V_43_ce0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_43_we0 sc_out sc_logic 1 signal 10 } 
	{ p_tag_V_43_d0 sc_out sc_lv 21 signal 10 } 
	{ p_tag_V_42_address0 sc_out sc_lv 5 signal 11 } 
	{ p_tag_V_42_ce0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_42_we0 sc_out sc_logic 1 signal 11 } 
	{ p_tag_V_42_d0 sc_out sc_lv 21 signal 11 } 
	{ p_tag_V_41_address0 sc_out sc_lv 5 signal 12 } 
	{ p_tag_V_41_ce0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_41_we0 sc_out sc_logic 1 signal 12 } 
	{ p_tag_V_41_d0 sc_out sc_lv 21 signal 12 } 
	{ p_tag_V_40_address0 sc_out sc_lv 5 signal 13 } 
	{ p_tag_V_40_ce0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_40_we0 sc_out sc_logic 1 signal 13 } 
	{ p_tag_V_40_d0 sc_out sc_lv 21 signal 13 } 
	{ p_tag_V_39_address0 sc_out sc_lv 5 signal 14 } 
	{ p_tag_V_39_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_39_we0 sc_out sc_logic 1 signal 14 } 
	{ p_tag_V_39_d0 sc_out sc_lv 21 signal 14 } 
	{ p_tag_V_38_address0 sc_out sc_lv 5 signal 15 } 
	{ p_tag_V_38_ce0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_38_we0 sc_out sc_logic 1 signal 15 } 
	{ p_tag_V_38_d0 sc_out sc_lv 21 signal 15 } 
	{ p_tag_V_37_address0 sc_out sc_lv 5 signal 16 } 
	{ p_tag_V_37_ce0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_37_we0 sc_out sc_logic 1 signal 16 } 
	{ p_tag_V_37_d0 sc_out sc_lv 21 signal 16 } 
	{ p_tag_V_36_address0 sc_out sc_lv 5 signal 17 } 
	{ p_tag_V_36_ce0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_36_we0 sc_out sc_logic 1 signal 17 } 
	{ p_tag_V_36_d0 sc_out sc_lv 21 signal 17 } 
	{ p_tag_V_35_address0 sc_out sc_lv 5 signal 18 } 
	{ p_tag_V_35_ce0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_35_we0 sc_out sc_logic 1 signal 18 } 
	{ p_tag_V_35_d0 sc_out sc_lv 21 signal 18 } 
	{ p_tag_V_34_address0 sc_out sc_lv 5 signal 19 } 
	{ p_tag_V_34_ce0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_34_we0 sc_out sc_logic 1 signal 19 } 
	{ p_tag_V_34_d0 sc_out sc_lv 21 signal 19 } 
	{ p_tag_V_33_address0 sc_out sc_lv 5 signal 20 } 
	{ p_tag_V_33_ce0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_33_we0 sc_out sc_logic 1 signal 20 } 
	{ p_tag_V_33_d0 sc_out sc_lv 21 signal 20 } 
	{ p_tag_V_32_address0 sc_out sc_lv 5 signal 21 } 
	{ p_tag_V_32_ce0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_32_we0 sc_out sc_logic 1 signal 21 } 
	{ p_tag_V_32_d0 sc_out sc_lv 21 signal 21 } 
	{ p_tag_V_31_address0 sc_out sc_lv 5 signal 22 } 
	{ p_tag_V_31_ce0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_31_we0 sc_out sc_logic 1 signal 22 } 
	{ p_tag_V_31_d0 sc_out sc_lv 21 signal 22 } 
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
 	{ "name": "p_tag_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "address0" }} , 
 	{ "name": "p_tag_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "ce0" }} , 
 	{ "name": "p_tag_V_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "we0" }} , 
 	{ "name": "p_tag_V_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_45", "role": "d0" }} , 
 	{ "name": "p_tag_V_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "address0" }} , 
 	{ "name": "p_tag_V_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "ce0" }} , 
 	{ "name": "p_tag_V_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "we0" }} , 
 	{ "name": "p_tag_V_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_44", "role": "d0" }} , 
 	{ "name": "p_tag_V_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "address0" }} , 
 	{ "name": "p_tag_V_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "ce0" }} , 
 	{ "name": "p_tag_V_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "we0" }} , 
 	{ "name": "p_tag_V_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_43", "role": "d0" }} , 
 	{ "name": "p_tag_V_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "address0" }} , 
 	{ "name": "p_tag_V_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "ce0" }} , 
 	{ "name": "p_tag_V_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "we0" }} , 
 	{ "name": "p_tag_V_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_42", "role": "d0" }} , 
 	{ "name": "p_tag_V_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "address0" }} , 
 	{ "name": "p_tag_V_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "ce0" }} , 
 	{ "name": "p_tag_V_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "we0" }} , 
 	{ "name": "p_tag_V_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_41", "role": "d0" }} , 
 	{ "name": "p_tag_V_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "address0" }} , 
 	{ "name": "p_tag_V_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "ce0" }} , 
 	{ "name": "p_tag_V_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "we0" }} , 
 	{ "name": "p_tag_V_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_40", "role": "d0" }} , 
 	{ "name": "p_tag_V_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "address0" }} , 
 	{ "name": "p_tag_V_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "ce0" }} , 
 	{ "name": "p_tag_V_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "we0" }} , 
 	{ "name": "p_tag_V_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_39", "role": "d0" }} , 
 	{ "name": "p_tag_V_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "address0" }} , 
 	{ "name": "p_tag_V_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "ce0" }} , 
 	{ "name": "p_tag_V_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "we0" }} , 
 	{ "name": "p_tag_V_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_38", "role": "d0" }} , 
 	{ "name": "p_tag_V_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "address0" }} , 
 	{ "name": "p_tag_V_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "ce0" }} , 
 	{ "name": "p_tag_V_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "we0" }} , 
 	{ "name": "p_tag_V_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_37", "role": "d0" }} , 
 	{ "name": "p_tag_V_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "address0" }} , 
 	{ "name": "p_tag_V_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "ce0" }} , 
 	{ "name": "p_tag_V_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "we0" }} , 
 	{ "name": "p_tag_V_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_36", "role": "d0" }} , 
 	{ "name": "p_tag_V_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "address0" }} , 
 	{ "name": "p_tag_V_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "ce0" }} , 
 	{ "name": "p_tag_V_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "we0" }} , 
 	{ "name": "p_tag_V_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_35", "role": "d0" }} , 
 	{ "name": "p_tag_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "address0" }} , 
 	{ "name": "p_tag_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "ce0" }} , 
 	{ "name": "p_tag_V_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "we0" }} , 
 	{ "name": "p_tag_V_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_34", "role": "d0" }} , 
 	{ "name": "p_tag_V_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "address0" }} , 
 	{ "name": "p_tag_V_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "ce0" }} , 
 	{ "name": "p_tag_V_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "we0" }} , 
 	{ "name": "p_tag_V_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_33", "role": "d0" }} , 
 	{ "name": "p_tag_V_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "address0" }} , 
 	{ "name": "p_tag_V_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "ce0" }} , 
 	{ "name": "p_tag_V_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "we0" }} , 
 	{ "name": "p_tag_V_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_32", "role": "d0" }} , 
 	{ "name": "p_tag_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "address0" }} , 
 	{ "name": "p_tag_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "ce0" }} , 
 	{ "name": "p_tag_V_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "we0" }} , 
 	{ "name": "p_tag_V_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V_31", "role": "d0" }} , 
 	{ "name": "p_tag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "p_tag_V", "role": "address0" }} , 
 	{ "name": "p_tag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "ce0" }} , 
 	{ "name": "p_tag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_tag_V", "role": "we0" }} , 
 	{ "name": "p_tag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "p_tag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rcache_6_Pipeline_VITIS_LOOP_336_1",
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
			{"Name" : "p_tag_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_tag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_336_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rcache_6_Pipeline_VITIS_LOOP_336_1 {
		p_lru_count_1 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_2 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_3 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_4 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_5 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_6 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_7 {Type O LastRead -1 FirstWrite 0}
		p_lru_count_8 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_45 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_44 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_43 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_42 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_41 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_40 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_39 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_38 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_37 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_36 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_35 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_34 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_33 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_32 {Type O LastRead -1 FirstWrite 0}
		p_tag_V_31 {Type O LastRead -1 FirstWrite 0}
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
	p_tag_V_45 { ap_memory {  { p_tag_V_45_address0 mem_address 1 5 }  { p_tag_V_45_ce0 mem_ce 1 1 }  { p_tag_V_45_we0 mem_we 1 1 }  { p_tag_V_45_d0 mem_din 1 21 } } }
	p_tag_V_44 { ap_memory {  { p_tag_V_44_address0 mem_address 1 5 }  { p_tag_V_44_ce0 mem_ce 1 1 }  { p_tag_V_44_we0 mem_we 1 1 }  { p_tag_V_44_d0 mem_din 1 21 } } }
	p_tag_V_43 { ap_memory {  { p_tag_V_43_address0 mem_address 1 5 }  { p_tag_V_43_ce0 mem_ce 1 1 }  { p_tag_V_43_we0 mem_we 1 1 }  { p_tag_V_43_d0 mem_din 1 21 } } }
	p_tag_V_42 { ap_memory {  { p_tag_V_42_address0 mem_address 1 5 }  { p_tag_V_42_ce0 mem_ce 1 1 }  { p_tag_V_42_we0 mem_we 1 1 }  { p_tag_V_42_d0 mem_din 1 21 } } }
	p_tag_V_41 { ap_memory {  { p_tag_V_41_address0 mem_address 1 5 }  { p_tag_V_41_ce0 mem_ce 1 1 }  { p_tag_V_41_we0 mem_we 1 1 }  { p_tag_V_41_d0 mem_din 1 21 } } }
	p_tag_V_40 { ap_memory {  { p_tag_V_40_address0 mem_address 1 5 }  { p_tag_V_40_ce0 mem_ce 1 1 }  { p_tag_V_40_we0 mem_we 1 1 }  { p_tag_V_40_d0 mem_din 1 21 } } }
	p_tag_V_39 { ap_memory {  { p_tag_V_39_address0 mem_address 1 5 }  { p_tag_V_39_ce0 mem_ce 1 1 }  { p_tag_V_39_we0 mem_we 1 1 }  { p_tag_V_39_d0 mem_din 1 21 } } }
	p_tag_V_38 { ap_memory {  { p_tag_V_38_address0 mem_address 1 5 }  { p_tag_V_38_ce0 mem_ce 1 1 }  { p_tag_V_38_we0 mem_we 1 1 }  { p_tag_V_38_d0 mem_din 1 21 } } }
	p_tag_V_37 { ap_memory {  { p_tag_V_37_address0 mem_address 1 5 }  { p_tag_V_37_ce0 mem_ce 1 1 }  { p_tag_V_37_we0 mem_we 1 1 }  { p_tag_V_37_d0 mem_din 1 21 } } }
	p_tag_V_36 { ap_memory {  { p_tag_V_36_address0 mem_address 1 5 }  { p_tag_V_36_ce0 mem_ce 1 1 }  { p_tag_V_36_we0 mem_we 1 1 }  { p_tag_V_36_d0 mem_din 1 21 } } }
	p_tag_V_35 { ap_memory {  { p_tag_V_35_address0 mem_address 1 5 }  { p_tag_V_35_ce0 mem_ce 1 1 }  { p_tag_V_35_we0 mem_we 1 1 }  { p_tag_V_35_d0 mem_din 1 21 } } }
	p_tag_V_34 { ap_memory {  { p_tag_V_34_address0 mem_address 1 5 }  { p_tag_V_34_ce0 mem_ce 1 1 }  { p_tag_V_34_we0 mem_we 1 1 }  { p_tag_V_34_d0 mem_din 1 21 } } }
	p_tag_V_33 { ap_memory {  { p_tag_V_33_address0 mem_address 1 5 }  { p_tag_V_33_ce0 mem_ce 1 1 }  { p_tag_V_33_we0 mem_we 1 1 }  { p_tag_V_33_d0 mem_din 1 21 } } }
	p_tag_V_32 { ap_memory {  { p_tag_V_32_address0 mem_address 1 5 }  { p_tag_V_32_ce0 mem_ce 1 1 }  { p_tag_V_32_we0 mem_we 1 1 }  { p_tag_V_32_d0 mem_din 1 21 } } }
	p_tag_V_31 { ap_memory {  { p_tag_V_31_address0 mem_address 1 5 }  { p_tag_V_31_ce0 mem_ce 1 1 }  { p_tag_V_31_we0 mem_we 1 1 }  { p_tag_V_31_d0 mem_din 1 21 } } }
	p_tag_V { ap_memory {  { p_tag_V_address0 mem_address 1 5 }  { p_tag_V_ce0 mem_ce 1 1 }  { p_tag_V_we0 mem_we 1 1 }  { p_tag_V_d0 mem_din 1 21 } } }
}
