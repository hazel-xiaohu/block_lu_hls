set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME spmm_entry_proc}
  {SRCNAME A_row_reader_Pipeline_VITIS_LOOP_13_1 MODELNAME A_row_reader_Pipeline_VITIS_LOOP_13_1 RTLNAME spmm_A_row_reader_Pipeline_VITIS_LOOP_13_1
    SUBMODULES {
      {MODELNAME spmm_flow_control_loop_pipe_sequential_init RTLNAME spmm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME A_row_reader MODELNAME A_row_reader RTLNAME spmm_A_row_reader}
  {SRCNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1 MODELNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1 RTLNAME spmm_prepare_b_rcsr_Pipeline_VITIS_LOOP_199_1}
  {SRCNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2 MODELNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2 RTLNAME spmm_prepare_b_rcsr_Pipeline_VITIS_LOOP_207_2
    SUBMODULES {
      {MODELNAME spmm_partselect_32ns_128ns_7ns_32_1_1 RTLNAME spmm_partselect_32ns_128ns_7ns_32_1_1 BINDTYPE op TYPE partselect IMPL auto}
      {MODELNAME spmm_bitset_1024ns_1024ns_10ns_1ns_1024_1_1 RTLNAME spmm_bitset_1024ns_1024ns_10ns_1ns_1024_1_1 BINDTYPE op TYPE bitset IMPL auto}
    }
  }
  {SRCNAME prepare_b_rcsr MODELNAME prepare_b_rcsr RTLNAME spmm_prepare_b_rcsr}
  {SRCNAME A_element_filter_Pipeline_VITIS_LOOP_64_2 MODELNAME A_element_filter_Pipeline_VITIS_LOOP_64_2 RTLNAME spmm_A_element_filter_Pipeline_VITIS_LOOP_64_2
    SUBMODULES {
      {MODELNAME spmm_bitselect_1ns_1024ns_10ns_1_1_1 RTLNAME spmm_bitselect_1ns_1024ns_10ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
    }
  }
  {SRCNAME A_element_filter MODELNAME A_element_filter RTLNAME spmm_A_element_filter}
  {SRCNAME A_element_distributor_Pipeline_VITIS_LOOP_96_1 MODELNAME A_element_distributor_Pipeline_VITIS_LOOP_96_1 RTLNAME spmm_A_element_distributor_Pipeline_VITIS_LOOP_96_1}
  {SRCNAME A_element_distributor MODELNAME A_element_distributor RTLNAME spmm_A_element_distributor}
  {SRCNAME rrequest_splitter_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter MODELNAME rrequest_splitter RTLNAME spmm_rrequest_splitter}
  {SRCNAME rrequest_manager_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager MODELNAME rrequest_manager RTLNAME spmm_rrequest_manager}
  {SRCNAME rschedule_access_Pipeline_VITIS_LOOP_87_3 MODELNAME rschedule_access_Pipeline_VITIS_LOOP_87_3 RTLNAME spmm_rschedule_access_Pipeline_VITIS_LOOP_87_3}
  {SRCNAME rschedule_access MODELNAME rschedule_access RTLNAME spmm_rschedule_access
    SUBMODULES {
      {MODELNAME spmm_rschedule_access_Bridx_RAM_AUTO_1R1W RTLNAME spmm_rschedule_access_Bridx_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrequest_merger_Pipeline_VITIS_LOOP_125_1 MODELNAME rrequest_merger_Pipeline_VITIS_LOOP_125_1 RTLNAME spmm_rrequest_merger_Pipeline_VITIS_LOOP_125_1}
  {SRCNAME rrequest_merger MODELNAME rrequest_merger RTLNAME spmm_rrequest_merger}
  {SRCNAME rcollector MODELNAME rcollector RTLNAME spmm_rcollector
    SUBMODULES {
      {MODELNAME spmm_partselect_32ns_160ns_7ns_32_1_1 RTLNAME spmm_partselect_32ns_160ns_7ns_32_1_1 BINDTYPE op TYPE partselect IMPL auto}
      {MODELNAME spmm_partselect_32ns_160ns_8ns_32_1_1 RTLNAME spmm_partselect_32ns_160ns_8ns_32_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME rcrequest_manager MODELNAME rcrequest_manager RTLNAME spmm_rcrequest_manager
    SUBMODULES {
      {MODELNAME spmm_fifo_w398_d2_S RTLNAME spmm_fifo_w398_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w398_d16_A RTLNAME spmm_fifo_w398_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w398_d16_A RTLNAME spmm_fifo_w398_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w398_d2_S RTLNAME spmm_fifo_w398_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d8_A RTLNAME spmm_fifo_w160_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w398_d2_S RTLNAME spmm_fifo_w398_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.75_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_75_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_75_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.75 MODELNAME rrequest_splitter_75 RTLNAME spmm_rrequest_splitter_75}
  {SRCNAME rrequest_manager.76_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_76_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_76_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.76 MODELNAME rrequest_manager_76 RTLNAME spmm_rrequest_manager_76}
  {SRCNAME rschedule_access.96_Pipeline_VITIS_LOOP_87_3 MODELNAME rschedule_access_96_Pipeline_VITIS_LOOP_87_3 RTLNAME spmm_rschedule_access_96_Pipeline_VITIS_LOOP_87_3}
  {SRCNAME rschedule_access.96 MODELNAME rschedule_access_96 RTLNAME spmm_rschedule_access_96}
  {SRCNAME rrequest_merger.77_Pipeline_VITIS_LOOP_125_1 MODELNAME rrequest_merger_77_Pipeline_VITIS_LOOP_125_1 RTLNAME spmm_rrequest_merger_77_Pipeline_VITIS_LOOP_125_1}
  {SRCNAME rrequest_merger.77 MODELNAME rrequest_merger_77 RTLNAME spmm_rrequest_merger_77}
  {SRCNAME rcollector.78 MODELNAME rcollector_78 RTLNAME spmm_rcollector_78}
  {SRCNAME rcrequest_manager.87 MODELNAME rcrequest_manager_87 RTLNAME spmm_rcrequest_manager_87
    SUBMODULES {
      {MODELNAME spmm_fifo_w398_d2_S_x RTLNAME spmm_fifo_w398_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w398_d16_A_x RTLNAME spmm_fifo_w398_d16_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w398_d16_A_x RTLNAME spmm_fifo_w398_d16_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w398_d2_S_x RTLNAME spmm_fifo_w398_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d8_A_x RTLNAME spmm_fifo_w160_d8_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w398_d2_S_x RTLNAME spmm_fifo_w398_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.79_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_79_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_79_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.79 MODELNAME rrequest_splitter_79 RTLNAME spmm_rrequest_splitter_79}
  {SRCNAME rrequest_manager.80_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_80_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_80_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.80 MODELNAME rrequest_manager_80 RTLNAME spmm_rrequest_manager_80}
  {SRCNAME rschedule_access.97_Pipeline_VITIS_LOOP_87_3 MODELNAME rschedule_access_97_Pipeline_VITIS_LOOP_87_3 RTLNAME spmm_rschedule_access_97_Pipeline_VITIS_LOOP_87_3}
  {SRCNAME rschedule_access.97 MODELNAME rschedule_access_97 RTLNAME spmm_rschedule_access_97}
  {SRCNAME rrequest_merger.81_Pipeline_VITIS_LOOP_125_1 MODELNAME rrequest_merger_81_Pipeline_VITIS_LOOP_125_1 RTLNAME spmm_rrequest_merger_81_Pipeline_VITIS_LOOP_125_1}
  {SRCNAME rrequest_merger.81 MODELNAME rrequest_merger_81 RTLNAME spmm_rrequest_merger_81}
  {SRCNAME rcollector.82 MODELNAME rcollector_82 RTLNAME spmm_rcollector_82}
  {SRCNAME rcrequest_manager.88 MODELNAME rcrequest_manager_88 RTLNAME spmm_rcrequest_manager_88
    SUBMODULES {
      {MODELNAME spmm_fifo_w398_d2_S_x0 RTLNAME spmm_fifo_w398_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w398_d16_A_x0 RTLNAME spmm_fifo_w398_d16_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w398_d16_A_x0 RTLNAME spmm_fifo_w398_d16_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w398_d2_S_x0 RTLNAME spmm_fifo_w398_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d8_A_x0 RTLNAME spmm_fifo_w160_d8_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w398_d2_S_x0 RTLNAME spmm_fifo_w398_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.83_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_83_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_83_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.83 MODELNAME rrequest_splitter_83 RTLNAME spmm_rrequest_splitter_83}
  {SRCNAME rrequest_manager.84_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_84_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_84_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.84 MODELNAME rrequest_manager_84 RTLNAME spmm_rrequest_manager_84}
  {SRCNAME rschedule_access.98_Pipeline_VITIS_LOOP_87_3 MODELNAME rschedule_access_98_Pipeline_VITIS_LOOP_87_3 RTLNAME spmm_rschedule_access_98_Pipeline_VITIS_LOOP_87_3}
  {SRCNAME rschedule_access.98 MODELNAME rschedule_access_98 RTLNAME spmm_rschedule_access_98}
  {SRCNAME rrequest_merger.85_Pipeline_VITIS_LOOP_125_1 MODELNAME rrequest_merger_85_Pipeline_VITIS_LOOP_125_1 RTLNAME spmm_rrequest_merger_85_Pipeline_VITIS_LOOP_125_1}
  {SRCNAME rrequest_merger.85 MODELNAME rrequest_merger_85 RTLNAME spmm_rrequest_merger_85}
  {SRCNAME rcollector.86 MODELNAME rcollector_86 RTLNAME spmm_rcollector_86}
  {SRCNAME rcrequest_manager.89 MODELNAME rcrequest_manager_89 RTLNAME spmm_rcrequest_manager_89
    SUBMODULES {
      {MODELNAME spmm_fifo_w398_d2_S_x1 RTLNAME spmm_fifo_w398_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w398_d16_A_x1 RTLNAME spmm_fifo_w398_d16_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w398_d16_A_x1 RTLNAME spmm_fifo_w398_d16_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w398_d2_S_x1 RTLNAME spmm_fifo_w398_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d8_A_x1 RTLNAME spmm_fifo_w160_d8_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w398_d2_S_x1 RTLNAME spmm_fifo_w398_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 MODELNAME merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 RTLNAME spmm_merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1}
  {SRCNAME merge_4_to_1_rrequest MODELNAME merge_4_to_1_rrequest RTLNAME spmm_merge_4_to_1_rrequest}
  {SRCNAME request_to_rbanks_Pipeline_VITIS_LOOP_251_1 MODELNAME request_to_rbanks_Pipeline_VITIS_LOOP_251_1 RTLNAME spmm_request_to_rbanks_Pipeline_VITIS_LOOP_251_1}
  {SRCNAME request_to_rbanks MODELNAME request_to_rbanks RTLNAME spmm_request_to_rbanks}
  {SRCNAME rcache.1_Pipeline_VITIS_LOOP_330_1 MODELNAME rcache_1_Pipeline_VITIS_LOOP_330_1 RTLNAME spmm_rcache_1_Pipeline_VITIS_LOOP_330_1}
  {SRCNAME rcache.1 MODELNAME rcache_1 RTLNAME spmm_rcache_1
    SUBMODULES {
      {MODELNAME spmm_rcache_1_p_data_RAM_1P_BRAM_1R1W RTLNAME spmm_rcache_1_p_data_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_rcache_1_p_tag_RAM_1P_LUTRAM_1R1W RTLNAME spmm_rcache_1_p_tag_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_rcache_1_p_lru_count_1_RAM_T2P_BRAM_1R1W RTLNAME spmm_rcache_1_p_lru_count_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rcache.2_Pipeline_VITIS_LOOP_330_1 MODELNAME rcache_2_Pipeline_VITIS_LOOP_330_1 RTLNAME spmm_rcache_2_Pipeline_VITIS_LOOP_330_1}
  {SRCNAME rcache.2 MODELNAME rcache_2 RTLNAME spmm_rcache_2}
  {SRCNAME rcache.3_Pipeline_VITIS_LOOP_330_1 MODELNAME rcache_3_Pipeline_VITIS_LOOP_330_1 RTLNAME spmm_rcache_3_Pipeline_VITIS_LOOP_330_1}
  {SRCNAME rcache.3 MODELNAME rcache_3 RTLNAME spmm_rcache_3}
  {SRCNAME rcache_Pipeline_VITIS_LOOP_330_1 MODELNAME rcache_Pipeline_VITIS_LOOP_330_1 RTLNAME spmm_rcache_Pipeline_VITIS_LOOP_330_1}
  {SRCNAME rcache MODELNAME rcache RTLNAME spmm_rcache}
  {SRCNAME distributer_mi.4_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_4_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_4_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.4 MODELNAME distributer_mi_4 RTLNAME spmm_distributer_mi_4}
  {SRCNAME distributer_mi.5_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_5_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_5_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.5 MODELNAME distributer_mi_5 RTLNAME spmm_distributer_mi_5}
  {SRCNAME distributer_mi.6_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_6_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_6_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.6 MODELNAME distributer_mi_6 RTLNAME spmm_distributer_mi_6}
  {SRCNAME distributer_mi_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi MODELNAME distributer_mi RTLNAME spmm_distributer_mi}
  {SRCNAME merge_4_to_1_mi.7_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_7_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_7_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.7 MODELNAME merge_4_to_1_mi_7 RTLNAME spmm_merge_4_to_1_mi_7}
  {SRCNAME merge_4_to_1_mi.8_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_8_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_8_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.8 MODELNAME merge_4_to_1_mi_8 RTLNAME spmm_merge_4_to_1_mi_8}
  {SRCNAME merge_4_to_1_mi.9_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_9_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_9_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.9 MODELNAME merge_4_to_1_mi_9 RTLNAME spmm_merge_4_to_1_mi_9}
  {SRCNAME merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi MODELNAME merge_4_to_1_mi RTLNAME spmm_merge_4_to_1_mi}
  {SRCNAME distributer_rresponse.10_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_10_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_10_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.10 MODELNAME distributer_rresponse_10 RTLNAME spmm_distributer_rresponse_10}
  {SRCNAME distributer_rresponse.11_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_11_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_11_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.11 MODELNAME distributer_rresponse_11 RTLNAME spmm_distributer_rresponse_11}
  {SRCNAME distributer_rresponse.12_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_12_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_12_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.12 MODELNAME distributer_rresponse_12 RTLNAME spmm_distributer_rresponse_12}
  {SRCNAME distributer_rresponse_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse MODELNAME distributer_rresponse RTLNAME spmm_distributer_rresponse}
  {SRCNAME merge_4_to_1_rresponse.13 MODELNAME merge_4_to_1_rresponse_13 RTLNAME spmm_merge_4_to_1_rresponse_13
    SUBMODULES {
      {MODELNAME spmm_flow_control_loop_pipe RTLNAME spmm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME merge_4_to_1_rresponse.14 MODELNAME merge_4_to_1_rresponse_14 RTLNAME spmm_merge_4_to_1_rresponse_14}
  {SRCNAME merge_4_to_1_rresponse.15 MODELNAME merge_4_to_1_rresponse_15 RTLNAME spmm_merge_4_to_1_rresponse_15}
  {SRCNAME merge_4_to_1_rresponse MODELNAME merge_4_to_1_rresponse RTLNAME spmm_merge_4_to_1_rresponse}
  {SRCNAME from_rcache_result_to_B_vcrequest.16 MODELNAME from_rcache_result_to_B_vcrequest_16 RTLNAME spmm_from_rcache_result_to_B_vcrequest_16}
  {SRCNAME from_rcache_result_to_B_vcrequest.17 MODELNAME from_rcache_result_to_B_vcrequest_17 RTLNAME spmm_from_rcache_result_to_B_vcrequest_17}
  {SRCNAME from_rcache_result_to_B_vcrequest.18 MODELNAME from_rcache_result_to_B_vcrequest_18 RTLNAME spmm_from_rcache_result_to_B_vcrequest_18}
  {SRCNAME from_rcache_result_to_B_vcrequest MODELNAME from_rcache_result_to_B_vcrequest RTLNAME spmm_from_rcache_result_to_B_vcrequest}
  {SRCNAME generate_data_Pipeline_VITIS_LOOP_53_2 MODELNAME generate_data_Pipeline_VITIS_LOOP_53_2 RTLNAME spmm_generate_data_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME generate_data MODELNAME generate_data RTLNAME spmm_generate_data}
  {SRCNAME generate_data.90_Pipeline_VITIS_LOOP_53_2 MODELNAME generate_data_90_Pipeline_VITIS_LOOP_53_2 RTLNAME spmm_generate_data_90_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME generate_data.90 MODELNAME generate_data_90 RTLNAME spmm_generate_data_90}
  {SRCNAME generate_data.91_Pipeline_VITIS_LOOP_53_2 MODELNAME generate_data_91_Pipeline_VITIS_LOOP_53_2 RTLNAME spmm_generate_data_91_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME generate_data.91 MODELNAME generate_data_91 RTLNAME spmm_generate_data_91}
  {SRCNAME generate_data.92_Pipeline_VITIS_LOOP_53_2 MODELNAME generate_data_92_Pipeline_VITIS_LOOP_53_2 RTLNAME spmm_generate_data_92_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME generate_data.92 MODELNAME generate_data_92 RTLNAME spmm_generate_data_92}
  {SRCNAME vcrequest_splitter.51_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_51_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_51_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.51 MODELNAME vcrequest_splitter_51 RTLNAME spmm_vcrequest_splitter_51}
  {SRCNAME request_manager.52_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_52_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_52_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.52 MODELNAME request_manager_52 RTLNAME spmm_request_manager_52}
  {SRCNAME schedule_access_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access MODELNAME schedule_access RTLNAME spmm_schedule_access}
  {SRCNAME request_manager.53_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_53_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_53_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.53 MODELNAME request_manager_53 RTLNAME spmm_request_manager_53}
  {SRCNAME schedule_access.99_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_99_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_99_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.99_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_99_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_99_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.99 MODELNAME schedule_access_99 RTLNAME spmm_schedule_access_99}
  {SRCNAME request_merger.54_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_54_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_54_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.54 MODELNAME request_merger_54 RTLNAME spmm_request_merger_54}
  {SRCNAME request_merger.55_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_55_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_55_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.55 MODELNAME request_merger_55 RTLNAME spmm_request_merger_55}
  {SRCNAME collector.56_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_56_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_56_Pipeline_VITIS_LOOP_185_2
    SUBMODULES {
      {MODELNAME spmm_partselect_128ns_1024ns_10ns_128_1_1 RTLNAME spmm_partselect_128ns_1024ns_10ns_128_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME collector.56 MODELNAME collector_56 RTLNAME spmm_collector_56}
  {SRCNAME collector.57_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_57_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_57_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.57 MODELNAME collector_57 RTLNAME spmm_collector_57}
  {SRCNAME vcrequest_manager MODELNAME vcrequest_manager RTLNAME spmm_vcrequest_manager
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d2_S RTLNAME spmm_fifo_w68_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w225_d2_S RTLNAME spmm_fifo_w225_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d8_S RTLNAME spmm_fifo_w128_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w225_d2_S RTLNAME spmm_fifo_w225_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S RTLNAME spmm_fifo_w1_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w225_d2_S RTLNAME spmm_fifo_w225_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d8_S RTLNAME spmm_fifo_w128_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w225_d2_S RTLNAME spmm_fifo_w225_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S RTLNAME spmm_fifo_w1_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter.58_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_58_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_58_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.58 MODELNAME vcrequest_splitter_58 RTLNAME spmm_vcrequest_splitter_58}
  {SRCNAME request_manager.59_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_59_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_59_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.59 MODELNAME request_manager_59 RTLNAME spmm_request_manager_59}
  {SRCNAME schedule_access.100_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_100_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_100_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.100_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_100_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_100_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.100 MODELNAME schedule_access_100 RTLNAME spmm_schedule_access_100}
  {SRCNAME request_manager.60_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_60_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_60_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.60 MODELNAME request_manager_60 RTLNAME spmm_request_manager_60}
  {SRCNAME schedule_access.101_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_101_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_101_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.101_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_101_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_101_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.101 MODELNAME schedule_access_101 RTLNAME spmm_schedule_access_101}
  {SRCNAME request_merger.61_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_61_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_61_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.61 MODELNAME request_merger_61 RTLNAME spmm_request_merger_61}
  {SRCNAME request_merger.62_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_62_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_62_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.62 MODELNAME request_merger_62 RTLNAME spmm_request_merger_62}
  {SRCNAME collector.63_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_63_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_63_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.63 MODELNAME collector_63 RTLNAME spmm_collector_63}
  {SRCNAME collector.64_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_64_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_64_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.64 MODELNAME collector_64 RTLNAME spmm_collector_64}
  {SRCNAME vcrequest_manager.93 MODELNAME vcrequest_manager_93 RTLNAME spmm_vcrequest_manager_93
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d2_S_x RTLNAME spmm_fifo_w68_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w225_d2_S_x RTLNAME spmm_fifo_w225_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x RTLNAME spmm_fifo_w128_d8_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x RTLNAME spmm_fifo_w225_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x RTLNAME spmm_fifo_w1_d16_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w225_d2_S_x RTLNAME spmm_fifo_w225_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x RTLNAME spmm_fifo_w128_d8_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x RTLNAME spmm_fifo_w225_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x RTLNAME spmm_fifo_w1_d16_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter.65_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_65_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_65_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.65 MODELNAME vcrequest_splitter_65 RTLNAME spmm_vcrequest_splitter_65}
  {SRCNAME request_manager.66_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_66_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_66_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.66 MODELNAME request_manager_66 RTLNAME spmm_request_manager_66}
  {SRCNAME schedule_access.102_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_102_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_102_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.102_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_102_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_102_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.102 MODELNAME schedule_access_102 RTLNAME spmm_schedule_access_102}
  {SRCNAME request_manager.67_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_67_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_67_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.67 MODELNAME request_manager_67 RTLNAME spmm_request_manager_67}
  {SRCNAME schedule_access.103_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_103_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_103_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.103_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_103_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_103_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.103 MODELNAME schedule_access_103 RTLNAME spmm_schedule_access_103}
  {SRCNAME request_merger.68_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_68_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_68_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.68 MODELNAME request_merger_68 RTLNAME spmm_request_merger_68}
  {SRCNAME request_merger.69_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_69_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_69_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.69 MODELNAME request_merger_69 RTLNAME spmm_request_merger_69}
  {SRCNAME collector.70_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_70_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_70_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.70 MODELNAME collector_70 RTLNAME spmm_collector_70}
  {SRCNAME collector.71_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_71_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_71_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.71 MODELNAME collector_71 RTLNAME spmm_collector_71}
  {SRCNAME vcrequest_manager.94 MODELNAME vcrequest_manager_94 RTLNAME spmm_vcrequest_manager_94
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d2_S_x0 RTLNAME spmm_fifo_w68_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w225_d2_S_x0 RTLNAME spmm_fifo_w225_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x0 RTLNAME spmm_fifo_w128_d8_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x0 RTLNAME spmm_fifo_w225_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x0 RTLNAME spmm_fifo_w1_d16_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w225_d2_S_x0 RTLNAME spmm_fifo_w225_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x0 RTLNAME spmm_fifo_w128_d8_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x0 RTLNAME spmm_fifo_w225_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x0 RTLNAME spmm_fifo_w1_d16_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter MODELNAME vcrequest_splitter RTLNAME spmm_vcrequest_splitter}
  {SRCNAME request_manager.72_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_72_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_72_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.72 MODELNAME request_manager_72 RTLNAME spmm_request_manager_72}
  {SRCNAME schedule_access.104_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_104_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_104_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.104_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_104_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_104_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.104 MODELNAME schedule_access_104 RTLNAME spmm_schedule_access_104}
  {SRCNAME request_manager_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager MODELNAME request_manager RTLNAME spmm_request_manager}
  {SRCNAME schedule_access.105_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_105_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_105_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.105_Pipeline_VITIS_LOOP_105_3 MODELNAME schedule_access_105_Pipeline_VITIS_LOOP_105_3 RTLNAME spmm_schedule_access_105_Pipeline_VITIS_LOOP_105_3}
  {SRCNAME schedule_access.105 MODELNAME schedule_access_105 RTLNAME spmm_schedule_access_105}
  {SRCNAME request_merger.73_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_73_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_73_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.73 MODELNAME request_merger_73 RTLNAME spmm_request_merger_73}
  {SRCNAME request_merger_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger MODELNAME request_merger RTLNAME spmm_request_merger}
  {SRCNAME collector.74_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_74_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_74_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.74 MODELNAME collector_74 RTLNAME spmm_collector_74}
  {SRCNAME collector_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector MODELNAME collector RTLNAME spmm_collector}
  {SRCNAME vcrequest_manager.95 MODELNAME vcrequest_manager_95 RTLNAME spmm_vcrequest_manager_95
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d2_S_x1 RTLNAME spmm_fifo_w68_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w225_d2_S_x1 RTLNAME spmm_fifo_w225_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x1 RTLNAME spmm_fifo_w128_d8_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x1 RTLNAME spmm_fifo_w225_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x1 RTLNAME spmm_fifo_w1_d16_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w225_d2_S_x1 RTLNAME spmm_fifo_w225_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d8_S_x1 RTLNAME spmm_fifo_w128_d8_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w225_d2_S_x1 RTLNAME spmm_fifo_w225_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x1 RTLNAME spmm_fifo_w1_d16_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME request_to_vcbanks.19_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_19_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_19_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.19 MODELNAME request_to_vcbanks_19 RTLNAME spmm_request_to_vcbanks_19}
  {SRCNAME request_to_vcbanks.20_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_20_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_20_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.20 MODELNAME request_to_vcbanks_20 RTLNAME spmm_request_to_vcbanks_20}
  {SRCNAME request_to_vcbanks.21_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_21_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_21_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.21 MODELNAME request_to_vcbanks_21 RTLNAME spmm_request_to_vcbanks_21}
  {SRCNAME request_to_vcbanks.22_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_22_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_22_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.22 MODELNAME request_to_vcbanks_22 RTLNAME spmm_request_to_vcbanks_22}
  {SRCNAME request_to_vcbanks.23_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_23_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_23_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.23 MODELNAME request_to_vcbanks_23 RTLNAME spmm_request_to_vcbanks_23}
  {SRCNAME request_to_vcbanks.24_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_24_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_24_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.24 MODELNAME request_to_vcbanks_24 RTLNAME spmm_request_to_vcbanks_24}
  {SRCNAME request_to_vcbanks.25_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_25_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_25_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks.25 MODELNAME request_to_vcbanks_25 RTLNAME spmm_request_to_vcbanks_25}
  {SRCNAME request_to_vcbanks_Pipeline_VITIS_LOOP_243_1 MODELNAME request_to_vcbanks_Pipeline_VITIS_LOOP_243_1 RTLNAME spmm_request_to_vcbanks_Pipeline_VITIS_LOOP_243_1}
  {SRCNAME request_to_vcbanks MODELNAME request_to_vcbanks RTLNAME spmm_request_to_vcbanks}
  {SRCNAME merge_4_to_1_vcrequest.26_Pipeline_VITIS_LOOP_214_1 MODELNAME merge_4_to_1_vcrequest_26_Pipeline_VITIS_LOOP_214_1 RTLNAME spmm_merge_4_to_1_vcrequest_26_Pipeline_VITIS_LOOP_214_1}
  {SRCNAME merge_4_to_1_vcrequest.26 MODELNAME merge_4_to_1_vcrequest_26 RTLNAME spmm_merge_4_to_1_vcrequest_26}
  {SRCNAME merge_4_to_1_vcrequest.27_Pipeline_VITIS_LOOP_214_1 MODELNAME merge_4_to_1_vcrequest_27_Pipeline_VITIS_LOOP_214_1 RTLNAME spmm_merge_4_to_1_vcrequest_27_Pipeline_VITIS_LOOP_214_1}
  {SRCNAME merge_4_to_1_vcrequest.27 MODELNAME merge_4_to_1_vcrequest_27 RTLNAME spmm_merge_4_to_1_vcrequest_27}
  {SRCNAME merge_4_to_1_vcrequest.28_Pipeline_VITIS_LOOP_214_1 MODELNAME merge_4_to_1_vcrequest_28_Pipeline_VITIS_LOOP_214_1 RTLNAME spmm_merge_4_to_1_vcrequest_28_Pipeline_VITIS_LOOP_214_1}
  {SRCNAME merge_4_to_1_vcrequest.28 MODELNAME merge_4_to_1_vcrequest_28 RTLNAME spmm_merge_4_to_1_vcrequest_28}
  {SRCNAME merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_214_1 MODELNAME merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_214_1 RTLNAME spmm_merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_214_1}
  {SRCNAME merge_4_to_1_vcrequest MODELNAME merge_4_to_1_vcrequest RTLNAME spmm_merge_4_to_1_vcrequest}
  {SRCNAME vcache.29_Pipeline_VITIS_LOOP_326_1 MODELNAME vcache_29_Pipeline_VITIS_LOOP_326_1 RTLNAME spmm_vcache_29_Pipeline_VITIS_LOOP_326_1}
  {SRCNAME vcache.29 MODELNAME vcache_29 RTLNAME spmm_vcache_29
    SUBMODULES {
      {MODELNAME spmm_sparsemux_33_4_8_1_1 RTLNAME spmm_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME spmm_partset_1024ns_1024ns_128ns_10ns_1024_1_1 RTLNAME spmm_partset_1024ns_1024ns_128ns_10ns_1024_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME spmm_bitset_8ns_8ns_3ns_1s_8_1_1 RTLNAME spmm_bitset_8ns_8ns_3ns_1s_8_1_1 BINDTYPE op TYPE bitset IMPL auto}
      {MODELNAME spmm_vcache_29_p_filled_RAM_AUTO_1R1W RTLNAME spmm_vcache_29_p_filled_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_vcache_29_p_data_RAM_1P_URAM_1R1W RTLNAME spmm_vcache_29_p_data_RAM_1P_URAM_1R1W BINDTYPE storage TYPE ram_1p IMPL uram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_vcache_29_p_tag_RAM_1P_LUTRAM_1R1W RTLNAME spmm_vcache_29_p_tag_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vcache_Pipeline_VITIS_LOOP_326_1 MODELNAME vcache_Pipeline_VITIS_LOOP_326_1 RTLNAME spmm_vcache_Pipeline_VITIS_LOOP_326_1}
  {SRCNAME vcache MODELNAME vcache RTLNAME spmm_vcache}
  {SRCNAME ccache.30_Pipeline_VITIS_LOOP_617_1 MODELNAME ccache_30_Pipeline_VITIS_LOOP_617_1 RTLNAME spmm_ccache_30_Pipeline_VITIS_LOOP_617_1}
  {SRCNAME ccache.30 MODELNAME ccache_30 RTLNAME spmm_ccache_30}
  {SRCNAME ccache_Pipeline_VITIS_LOOP_617_1 MODELNAME ccache_Pipeline_VITIS_LOOP_617_1 RTLNAME spmm_ccache_Pipeline_VITIS_LOOP_617_1}
  {SRCNAME ccache MODELNAME ccache RTLNAME spmm_ccache}
  {SRCNAME merge_2_to_1_vcresponse.31_Pipeline_VITIS_LOOP_715_1 MODELNAME merge_2_to_1_vcresponse_31_Pipeline_VITIS_LOOP_715_1 RTLNAME spmm_merge_2_to_1_vcresponse_31_Pipeline_VITIS_LOOP_715_1}
  {SRCNAME merge_2_to_1_vcresponse.31 MODELNAME merge_2_to_1_vcresponse_31 RTLNAME spmm_merge_2_to_1_vcresponse_31}
  {SRCNAME merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_715_1 MODELNAME merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_715_1 RTLNAME spmm_merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_715_1}
  {SRCNAME merge_2_to_1_vcresponse MODELNAME merge_2_to_1_vcresponse RTLNAME spmm_merge_2_to_1_vcresponse}
  {SRCNAME distributer_vcresponse.32_Pipeline_VITIS_LOOP_282_1 MODELNAME distributer_vcresponse_32_Pipeline_VITIS_LOOP_282_1 RTLNAME spmm_distributer_vcresponse_32_Pipeline_VITIS_LOOP_282_1}
  {SRCNAME distributer_vcresponse.32 MODELNAME distributer_vcresponse_32 RTLNAME spmm_distributer_vcresponse_32}
  {SRCNAME distributer_vcresponse_Pipeline_VITIS_LOOP_282_1 MODELNAME distributer_vcresponse_Pipeline_VITIS_LOOP_282_1 RTLNAME spmm_distributer_vcresponse_Pipeline_VITIS_LOOP_282_1}
  {SRCNAME distributer_vcresponse MODELNAME distributer_vcresponse RTLNAME spmm_distributer_vcresponse}
  {SRCNAME merge_2_to_1_vcresult.33_Pipeline_VITIS_LOOP_533_1 MODELNAME merge_2_to_1_vcresult_33_Pipeline_VITIS_LOOP_533_1 RTLNAME spmm_merge_2_to_1_vcresult_33_Pipeline_VITIS_LOOP_533_1}
  {SRCNAME merge_2_to_1_vcresult.33 MODELNAME merge_2_to_1_vcresult_33 RTLNAME spmm_merge_2_to_1_vcresult_33}
  {SRCNAME merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_533_1 MODELNAME merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_533_1 RTLNAME spmm_merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_533_1}
  {SRCNAME merge_2_to_1_vcresult MODELNAME merge_2_to_1_vcresult RTLNAME spmm_merge_2_to_1_vcresult}
  {SRCNAME distributer_vcresult.34 MODELNAME distributer_vcresult_34 RTLNAME spmm_distributer_vcresult_34}
  {SRCNAME distributer_vcresult MODELNAME distributer_vcresult RTLNAME spmm_distributer_vcresult}
  {SRCNAME pe.35_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_35_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_35_Pipeline_VITIS_LOOP_35_2
    SUBMODULES {
      {MODELNAME spmm_fmul_32ns_32ns_32_5_full_dsp_1 RTLNAME spmm_fmul_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fmul IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pe.35 MODELNAME pe_35 RTLNAME spmm_pe_35}
  {SRCNAME pe.36_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_36_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_36_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe.36 MODELNAME pe_36 RTLNAME spmm_pe_36}
  {SRCNAME pe.37_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_37_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_37_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe.37 MODELNAME pe_37 RTLNAME spmm_pe_37}
  {SRCNAME pe_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe MODELNAME pe RTLNAME spmm_pe}
  {SRCNAME convert_pblock_to_mergeitem.38_Pipeline_VITIS_LOOP_910_2 MODELNAME convert_pblock_to_mergeitem_38_Pipeline_VITIS_LOOP_910_2 RTLNAME spmm_convert_pblock_to_mergeitem_38_Pipeline_VITIS_LOOP_910_2}
  {SRCNAME convert_pblock_to_mergeitem.38 MODELNAME convert_pblock_to_mergeitem_38 RTLNAME spmm_convert_pblock_to_mergeitem_38}
  {SRCNAME convert_pblock_to_mergeitem.39_Pipeline_VITIS_LOOP_910_2 MODELNAME convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2 RTLNAME spmm_convert_pblock_to_mergeitem_39_Pipeline_VITIS_LOOP_910_2}
  {SRCNAME convert_pblock_to_mergeitem.39 MODELNAME convert_pblock_to_mergeitem_39 RTLNAME spmm_convert_pblock_to_mergeitem_39}
  {SRCNAME convert_pblock_to_mergeitem.40_Pipeline_VITIS_LOOP_910_2 MODELNAME convert_pblock_to_mergeitem_40_Pipeline_VITIS_LOOP_910_2 RTLNAME spmm_convert_pblock_to_mergeitem_40_Pipeline_VITIS_LOOP_910_2}
  {SRCNAME convert_pblock_to_mergeitem.40 MODELNAME convert_pblock_to_mergeitem_40 RTLNAME spmm_convert_pblock_to_mergeitem_40}
  {SRCNAME convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_910_2 MODELNAME convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_910_2 RTLNAME spmm_convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_910_2}
  {SRCNAME convert_pblock_to_mergeitem MODELNAME convert_pblock_to_mergeitem RTLNAME spmm_convert_pblock_to_mergeitem}
  {SRCNAME merge_controller.45 MODELNAME merge_controller_45 RTLNAME spmm_merge_controller_45}
  {SRCNAME flush_three MODELNAME flush_three RTLNAME spmm_flush_three
    SUBMODULES {
      {MODELNAME spmm_fadd_32ns_32ns_32_8_full_dsp_1 RTLNAME spmm_fadd_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME spmm_sparsemux_7_2_32_1_1 RTLNAME spmm_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME _merge_temp MODELNAME p_merge_temp RTLNAME spmm_p_merge_temp}
  {SRCNAME merge_two_sub.46 MODELNAME merge_two_sub_46 RTLNAME spmm_merge_two_sub_46
    SUBMODULES {
      {MODELNAME spmm_sparsemux_9_3_2_1_1 RTLNAME spmm_sparsemux_9_3_2_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping1_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong1_U}
    }
  }
  {SRCNAME merger.41 MODELNAME merger_41 RTLNAME spmm_merger_41
    SUBMODULES {
      {MODELNAME spmm_fifo_w36_d8_S RTLNAME spmm_fifo_w36_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mresult_U}
      {MODELNAME spmm_start_for_merge_two_sub_46_U0 RTLNAME spmm_start_for_merge_two_sub_46_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_two_sub_46_U0_U}
    }
  }
  {SRCNAME merge_controller.47 MODELNAME merge_controller_47 RTLNAME spmm_merge_controller_47}
  {SRCNAME merge_two_sub.48 MODELNAME merge_two_sub_48 RTLNAME spmm_merge_two_sub_48
    SUBMODULES {
      {MODELNAME spmm_fifo_w66_d1000_A_x RTLNAME spmm_fifo_w66_d1000_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x RTLNAME spmm_fifo_w66_d1000_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x RTLNAME spmm_fifo_w66_d1000_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x RTLNAME spmm_fifo_w66_d1000_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong1_U}
    }
  }
  {SRCNAME merger.42 MODELNAME merger_42 RTLNAME spmm_merger_42
    SUBMODULES {
      {MODELNAME spmm_fifo_w36_d8_S_x RTLNAME spmm_fifo_w36_d8_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mresult_U}
      {MODELNAME spmm_start_for_merge_two_sub_48_U0 RTLNAME spmm_start_for_merge_two_sub_48_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_two_sub_48_U0_U}
    }
  }
  {SRCNAME merge_controller.49 MODELNAME merge_controller_49 RTLNAME spmm_merge_controller_49}
  {SRCNAME merge_two_sub.50 MODELNAME merge_two_sub_50 RTLNAME spmm_merge_two_sub_50
    SUBMODULES {
      {MODELNAME spmm_fifo_w66_d1000_A_x0 RTLNAME spmm_fifo_w66_d1000_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x0 RTLNAME spmm_fifo_w66_d1000_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x0 RTLNAME spmm_fifo_w66_d1000_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x0 RTLNAME spmm_fifo_w66_d1000_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong1_U}
    }
  }
  {SRCNAME merger.43 MODELNAME merger_43 RTLNAME spmm_merger_43
    SUBMODULES {
      {MODELNAME spmm_fifo_w36_d8_S_x0 RTLNAME spmm_fifo_w36_d8_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mresult_U}
      {MODELNAME spmm_start_for_merge_two_sub_50_U0 RTLNAME spmm_start_for_merge_two_sub_50_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_two_sub_50_U0_U}
    }
  }
  {SRCNAME merge_controller MODELNAME merge_controller RTLNAME spmm_merge_controller}
  {SRCNAME merge_two_sub MODELNAME merge_two_sub RTLNAME spmm_merge_two_sub
    SUBMODULES {
      {MODELNAME spmm_fifo_w66_d1000_A_x1 RTLNAME spmm_fifo_w66_d1000_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x1 RTLNAME spmm_fifo_w66_d1000_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x1 RTLNAME spmm_fifo_w66_d1000_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x1 RTLNAME spmm_fifo_w66_d1000_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong1_U}
    }
  }
  {SRCNAME merger MODELNAME merger RTLNAME spmm_merger
    SUBMODULES {
      {MODELNAME spmm_fifo_w36_d8_S_x1 RTLNAME spmm_fifo_w36_d8_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mresult_U}
      {MODELNAME spmm_start_for_merge_two_sub_U0 RTLNAME spmm_start_for_merge_two_sub_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_merge_two_sub_U0_U}
    }
  }
  {SRCNAME sub_final_merger.44_Pipeline_VITIS_LOOP_846_2 MODELNAME sub_final_merger_44_Pipeline_VITIS_LOOP_846_2 RTLNAME spmm_sub_final_merger_44_Pipeline_VITIS_LOOP_846_2}
  {SRCNAME sub_final_merger.44 MODELNAME sub_final_merger_44 RTLNAME spmm_sub_final_merger_44}
  {SRCNAME sub_final_merger_Pipeline_VITIS_LOOP_846_2 MODELNAME sub_final_merger_Pipeline_VITIS_LOOP_846_2 RTLNAME spmm_sub_final_merger_Pipeline_VITIS_LOOP_846_2}
  {SRCNAME sub_final_merger MODELNAME sub_final_merger RTLNAME spmm_sub_final_merger}
  {SRCNAME final_merger_Pipeline_VITIS_LOOP_773_2 MODELNAME final_merger_Pipeline_VITIS_LOOP_773_2 RTLNAME spmm_final_merger_Pipeline_VITIS_LOOP_773_2}
  {SRCNAME final_merger MODELNAME final_merger RTLNAME spmm_final_merger}
  {SRCNAME write_C_sub MODELNAME write_C_sub RTLNAME spmm_write_C_sub
    SUBMODULES {
      {MODELNAME spmm_fsub_32ns_32ns_32_8_full_dsp_1 RTLNAME spmm_fsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm MODELNAME spmm RTLNAME spmm IS_TOP 1
    SUBMODULES {
      {MODELNAME spmm_p_B_rcsr_copy1_RAM_AUTO_1R1W_memcore RTLNAME spmm_p_B_rcsr_copy1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_p_B_rcsr_copy1_RAM_AUTO_1R1W RTLNAME spmm_p_B_rcsr_copy1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_fifo_w32_d7_S RTLNAME spmm_fifo_w32_d7_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c4_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c6_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c7_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c8_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c9_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c10_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c11_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c12_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c13_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c15_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c16_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c17_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c18_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c19_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c20_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c21_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c22_U}
      {MODELNAME spmm_fifo_w64_d2_S RTLNAME spmm_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_A_reader_rs_U}
      {MODELNAME spmm_fifo_w1024_d1_S RTLNAME spmm_fifo_w1024_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_B_keep_col1_U}
      {MODELNAME spmm_fifo_w98_d2_S RTLNAME spmm_fifo_w98_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_A_element_as_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe1_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe2_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe3_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe4_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm1_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm2_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm3_idle_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm4_idle_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe1_job_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe2_job_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe3_job_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe4_job_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_stream1_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_stream2_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_stream3_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_stream4_U}
      {MODELNAME spmm_fifo_w398_d4_A RTLNAME spmm_fifo_w398_d4_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest1_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse1_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rblock1_U}
      {MODELNAME spmm_fifo_w398_d4_A RTLNAME spmm_fifo_w398_d4_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest2_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse2_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rblock2_U}
      {MODELNAME spmm_fifo_w398_d4_A RTLNAME spmm_fifo_w398_d4_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest3_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse3_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rblock3_U}
      {MODELNAME spmm_fifo_w398_d4_A RTLNAME spmm_fifo_w398_d4_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest4_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse4_U}
      {MODELNAME spmm_fifo_w398_d2_S_x2 RTLNAME spmm_fifo_w398_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rblock4_U}
      {MODELNAME spmm_fifo_w398_d4_A RTLNAME spmm_fifo_w398_d4_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequestf_U}
      {MODELNAME spmm_fifo_w398_d8_A RTLNAME spmm_fifo_w398_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_U}
      {MODELNAME spmm_fifo_w398_d8_A RTLNAME spmm_fifo_w398_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_U}
      {MODELNAME spmm_fifo_w398_d8_A RTLNAME spmm_fifo_w398_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_U}
      {MODELNAME spmm_fifo_w398_d8_A RTLNAME spmm_fifo_w398_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c1_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c2_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c3_U}
      {MODELNAME spmm_fifo_w168_d8_A RTLNAME spmm_fifo_w168_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_bank1_res_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi1_U}
      {MODELNAME spmm_fifo_w168_d8_A RTLNAME spmm_fifo_w168_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_bank2_res_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi2_U}
      {MODELNAME spmm_fifo_w168_d8_A RTLNAME spmm_fifo_w168_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_bank3_res_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi3_U}
      {MODELNAME spmm_fifo_w168_d8_A RTLNAME spmm_fifo_w168_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_bank4_res_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi4_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi1_1_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi1_2_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi1_3_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi1_4_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi2_1_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi2_2_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi2_3_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi2_4_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi3_1_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi3_2_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi3_3_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi3_4_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi4_1_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi4_2_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi4_3_U}
      {MODELNAME spmm_fifo_w5_d2_S RTLNAME spmm_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mi4_4_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_1_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_2_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_3_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_4_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_1_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_2_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_3_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_4_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_1_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_2_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_3_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_4_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_1_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_2_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_3_U}
      {MODELNAME spmm_fifo_w168_d2_S RTLNAME spmm_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_4_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank1_b_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank1_d_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rlen_pe1_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank2_b_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank2_d_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rlen_pe2_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank3_b_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank3_d_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rlen_pe3_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank4_b_U}
      {MODELNAME spmm_fifo_w68_d2_S_x2 RTLNAME spmm_fifo_w68_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rcache_result_bank4_d_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rlen_pe4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock1d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock1d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock2d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock2d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock3d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock3d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock4d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock4d_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest1_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest1_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse1_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse1_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresult1_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresult1_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock1_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock1_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest2_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest2_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse2_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse2_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresult2_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresult2_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock2_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock2_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest3_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest3_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse3_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse3_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresult3_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresult3_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock3_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock3_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vrequest4_U}
      {MODELNAME spmm_fifo_w225_d2_S_x2 RTLNAME spmm_fifo_w225_d2_S_x2 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME crequest4_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse4_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse4_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresult4_U}
      {MODELNAME spmm_fifo_w1024_d2_S RTLNAME spmm_fifo_w1024_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresult4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock4_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe1_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe1_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c5_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe2_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe2_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe3_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe3_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe4_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe4_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe5_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe5_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c14_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe6_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe6_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe7_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe7_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe8_U}
      {MODELNAME spmm_fifo_w225_d8_S RTLNAME spmm_fifo_w225_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe8_U}
      {MODELNAME spmm_fifo_w225_d64_A RTLNAME spmm_fifo_w225_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_U}
      {MODELNAME spmm_fifo_w225_d64_A RTLNAME spmm_fifo_w225_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_U}
      {MODELNAME spmm_fifo_w225_d64_A RTLNAME spmm_fifo_w225_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank3_U}
      {MODELNAME spmm_fifo_w225_d64_A RTLNAME spmm_fifo_w225_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank4_U}
      {MODELNAME spmm_fifo_w6_d16_S RTLNAME spmm_fifo_w6_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank1_vres_U}
      {MODELNAME spmm_fifo_w1031_d8_A RTLNAME spmm_fifo_w1031_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcache_bank1_result_U}
      {MODELNAME spmm_fifo_w6_d16_S RTLNAME spmm_fifo_w6_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank2_vres_U}
      {MODELNAME spmm_fifo_w1031_d8_A RTLNAME spmm_fifo_w1031_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcache_bank2_result_U}
      {MODELNAME spmm_fifo_w6_d16_S RTLNAME spmm_fifo_w6_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank3_cres_U}
      {MODELNAME spmm_fifo_w1031_d8_A RTLNAME spmm_fifo_w1031_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcache_bank3_result_U}
      {MODELNAME spmm_fifo_w6_d16_S RTLNAME spmm_fifo_w6_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank4_cres_U}
      {MODELNAME spmm_fifo_w1031_d8_A RTLNAME spmm_fifo_w1031_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcache_bank4_result_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_res_vfinal_U}
      {MODELNAME spmm_fifo_w6_d2_S RTLNAME spmm_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_res_cfinal_U}
      {MODELNAME spmm_fifo_w1031_d8_S RTLNAME spmm_fifo_w1031_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank1_vresult1_U}
      {MODELNAME spmm_fifo_w1031_d8_S RTLNAME spmm_fifo_w1031_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vcache_bank1_cresult1_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe1_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mc_pe1_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish1_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe2_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mc_pe2_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish2_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe3_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mc_pe3_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish3_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe4_U}
      {MODELNAME spmm_fifo_w66_d2_S RTLNAME spmm_fifo_w66_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mc_pe4_U}
      {MODELNAME spmm_fifo_w1_d2_S RTLNAME spmm_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish4_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe2_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe3_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe4_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe2_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe3_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe4_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_1_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_2_U}
      {MODELNAME spmm_fifo_w66_d1000_A_x2 RTLNAME spmm_fifo_w66_d1000_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_3_U}
      {MODELNAME spmm_fifo_w32_d16_S RTLNAME spmm_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME final_len_1_U}
      {MODELNAME spmm_fifo_w32_d16_S RTLNAME spmm_fifo_w32_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME final_len_2_U}
      {MODELNAME spmm_arcsr_m_axi RTLNAME spmm_arcsr_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_acid_m_axi RTLNAME spmm_acid_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_aval_m_axi RTLNAME spmm_aval_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_brcsr1_m_axi RTLNAME spmm_brcsr1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_brcsr2_m_axi RTLNAME spmm_brcsr2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_brcsr3_m_axi RTLNAME spmm_brcsr3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_brcsr4_m_axi RTLNAME spmm_brcsr4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bval1_m_axi RTLNAME spmm_bval1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bcid1_m_axi RTLNAME spmm_bcid1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bval2_m_axi RTLNAME spmm_bval2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bcid2_m_axi RTLNAME spmm_bcid2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bval3_m_axi RTLNAME spmm_bval3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bcid3_m_axi RTLNAME spmm_bcid3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bval4_m_axi RTLNAME spmm_bval4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bcid4_m_axi RTLNAME spmm_bcid4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bv1_m_axi RTLNAME spmm_bv1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bc1_m_axi RTLNAME spmm_bc1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bv2_m_axi RTLNAME spmm_bv2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bc2_m_axi RTLNAME spmm_bc2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bv3_m_axi RTLNAME spmm_bv3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bc3_m_axi RTLNAME spmm_bc3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bv4_m_axi RTLNAME spmm_bv4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_bc4_m_axi RTLNAME spmm_bc4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_crcsr_m_axi RTLNAME spmm_crcsr_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_ccid_m_axi RTLNAME spmm_ccid_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_cval_m_axi RTLNAME spmm_cval_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME spmm_control_s_axi RTLNAME spmm_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME spmm_ctr_s_axi RTLNAME spmm_ctr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
