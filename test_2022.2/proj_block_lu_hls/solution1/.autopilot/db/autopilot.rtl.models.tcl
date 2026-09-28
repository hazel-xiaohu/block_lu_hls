set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME spmm_entry_proc}
  {SRCNAME A_row_reader_Pipeline_VITIS_LOOP_13_1 MODELNAME A_row_reader_Pipeline_VITIS_LOOP_13_1 RTLNAME spmm_A_row_reader_Pipeline_VITIS_LOOP_13_1
    SUBMODULES {
      {MODELNAME spmm_flow_control_loop_pipe_sequential_init RTLNAME spmm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME A_row_reader MODELNAME A_row_reader RTLNAME spmm_A_row_reader}
  {SRCNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_203_1 MODELNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_203_1 RTLNAME spmm_prepare_b_rcsr_Pipeline_VITIS_LOOP_203_1}
  {SRCNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_211_2 MODELNAME prepare_b_rcsr_Pipeline_VITIS_LOOP_211_2 RTLNAME spmm_prepare_b_rcsr_Pipeline_VITIS_LOOP_211_2}
  {SRCNAME prepare_b_rcsr MODELNAME prepare_b_rcsr RTLNAME spmm_prepare_b_rcsr}
  {SRCNAME A_element_filter_Pipeline_VITIS_LOOP_64_2 MODELNAME A_element_filter_Pipeline_VITIS_LOOP_64_2 RTLNAME spmm_A_element_filter_Pipeline_VITIS_LOOP_64_2}
  {SRCNAME A_element_filter MODELNAME A_element_filter RTLNAME spmm_A_element_filter}
  {SRCNAME A_element_distributor_Pipeline_VITIS_LOOP_96_1 MODELNAME A_element_distributor_Pipeline_VITIS_LOOP_96_1 RTLNAME spmm_A_element_distributor_Pipeline_VITIS_LOOP_96_1}
  {SRCNAME A_element_distributor MODELNAME A_element_distributor RTLNAME spmm_A_element_distributor}
  {SRCNAME rrequest_splitter_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter MODELNAME rrequest_splitter RTLNAME spmm_rrequest_splitter}
  {SRCNAME rrequest_manager_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager MODELNAME rrequest_manager RTLNAME spmm_rrequest_manager}
  {SRCNAME rschedule_access_Pipeline_VITIS_LOOP_91_3 MODELNAME rschedule_access_Pipeline_VITIS_LOOP_91_3 RTLNAME spmm_rschedule_access_Pipeline_VITIS_LOOP_91_3}
  {SRCNAME rschedule_access MODELNAME rschedule_access RTLNAME spmm_rschedule_access
    SUBMODULES {
      {MODELNAME spmm_rschedule_access_Bridx_V_RAM_AUTO_1R1W RTLNAME spmm_rschedule_access_Bridx_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rrequest_merger_Pipeline_VITIS_LOOP_129_1 MODELNAME rrequest_merger_Pipeline_VITIS_LOOP_129_1 RTLNAME spmm_rrequest_merger_Pipeline_VITIS_LOOP_129_1}
  {SRCNAME rrequest_merger MODELNAME rrequest_merger RTLNAME spmm_rrequest_merger}
  {SRCNAME rcollector MODELNAME rcollector RTLNAME spmm_rcollector}
  {SRCNAME rcrequest_manager MODELNAME rcrequest_manager RTLNAME spmm_rcrequest_manager
    SUBMODULES {
      {MODELNAME spmm_fifo_w230_d64_A RTLNAME spmm_fifo_w230_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w230_d64_A RTLNAME spmm_fifo_w230_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w230_d64_A RTLNAME spmm_fifo_w230_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w230_d64_A RTLNAME spmm_fifo_w230_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d64_A RTLNAME spmm_fifo_w160_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w230_d64_A RTLNAME spmm_fifo_w230_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.54_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_54_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_54_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.54 MODELNAME rrequest_splitter_54 RTLNAME spmm_rrequest_splitter_54}
  {SRCNAME rrequest_manager.55_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_55_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_55_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.55 MODELNAME rrequest_manager_55 RTLNAME spmm_rrequest_manager_55}
  {SRCNAME rschedule_access.56_Pipeline_VITIS_LOOP_91_3 MODELNAME rschedule_access_56_Pipeline_VITIS_LOOP_91_3 RTLNAME spmm_rschedule_access_56_Pipeline_VITIS_LOOP_91_3}
  {SRCNAME rschedule_access.56 MODELNAME rschedule_access_56 RTLNAME spmm_rschedule_access_56}
  {SRCNAME rrequest_merger.57_Pipeline_VITIS_LOOP_129_1 MODELNAME rrequest_merger_57_Pipeline_VITIS_LOOP_129_1 RTLNAME spmm_rrequest_merger_57_Pipeline_VITIS_LOOP_129_1}
  {SRCNAME rrequest_merger.57 MODELNAME rrequest_merger_57 RTLNAME spmm_rrequest_merger_57}
  {SRCNAME rcollector.58 MODELNAME rcollector_58 RTLNAME spmm_rcollector_58}
  {SRCNAME rcrequest_manager.1 MODELNAME rcrequest_manager_1 RTLNAME spmm_rcrequest_manager_1
    SUBMODULES {
      {MODELNAME spmm_fifo_w230_d64_A_x RTLNAME spmm_fifo_w230_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w230_d64_A_x RTLNAME spmm_fifo_w230_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w230_d64_A_x RTLNAME spmm_fifo_w230_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w230_d64_A_x RTLNAME spmm_fifo_w230_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d64_A_x RTLNAME spmm_fifo_w160_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w230_d64_A_x RTLNAME spmm_fifo_w230_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.59_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_59_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_59_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.59 MODELNAME rrequest_splitter_59 RTLNAME spmm_rrequest_splitter_59}
  {SRCNAME rrequest_manager.60_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_60_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_60_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.60 MODELNAME rrequest_manager_60 RTLNAME spmm_rrequest_manager_60}
  {SRCNAME rschedule_access.61_Pipeline_VITIS_LOOP_91_3 MODELNAME rschedule_access_61_Pipeline_VITIS_LOOP_91_3 RTLNAME spmm_rschedule_access_61_Pipeline_VITIS_LOOP_91_3}
  {SRCNAME rschedule_access.61 MODELNAME rschedule_access_61 RTLNAME spmm_rschedule_access_61}
  {SRCNAME rrequest_merger.62_Pipeline_VITIS_LOOP_129_1 MODELNAME rrequest_merger_62_Pipeline_VITIS_LOOP_129_1 RTLNAME spmm_rrequest_merger_62_Pipeline_VITIS_LOOP_129_1}
  {SRCNAME rrequest_merger.62 MODELNAME rrequest_merger_62 RTLNAME spmm_rrequest_merger_62}
  {SRCNAME rcollector.63 MODELNAME rcollector_63 RTLNAME spmm_rcollector_63}
  {SRCNAME rcrequest_manager.2 MODELNAME rcrequest_manager_2 RTLNAME spmm_rcrequest_manager_2
    SUBMODULES {
      {MODELNAME spmm_fifo_w230_d64_A_x0 RTLNAME spmm_fifo_w230_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w230_d64_A_x0 RTLNAME spmm_fifo_w230_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w230_d64_A_x0 RTLNAME spmm_fifo_w230_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w230_d64_A_x0 RTLNAME spmm_fifo_w230_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d64_A_x0 RTLNAME spmm_fifo_w160_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w230_d64_A_x0 RTLNAME spmm_fifo_w230_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME rrequest_splitter.64_Pipeline_VITIS_LOOP_9_1 MODELNAME rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1 RTLNAME spmm_rrequest_splitter_64_Pipeline_VITIS_LOOP_9_1}
  {SRCNAME rrequest_splitter.64 MODELNAME rrequest_splitter_64 RTLNAME spmm_rrequest_splitter_64}
  {SRCNAME rrequest_manager.65_Pipeline_VITIS_LOOP_40_1 MODELNAME rrequest_manager_65_Pipeline_VITIS_LOOP_40_1 RTLNAME spmm_rrequest_manager_65_Pipeline_VITIS_LOOP_40_1}
  {SRCNAME rrequest_manager.65 MODELNAME rrequest_manager_65 RTLNAME spmm_rrequest_manager_65}
  {SRCNAME rschedule_access.66_Pipeline_VITIS_LOOP_91_3 MODELNAME rschedule_access_66_Pipeline_VITIS_LOOP_91_3 RTLNAME spmm_rschedule_access_66_Pipeline_VITIS_LOOP_91_3}
  {SRCNAME rschedule_access.66 MODELNAME rschedule_access_66 RTLNAME spmm_rschedule_access_66}
  {SRCNAME rrequest_merger.67_Pipeline_VITIS_LOOP_129_1 MODELNAME rrequest_merger_67_Pipeline_VITIS_LOOP_129_1 RTLNAME spmm_rrequest_merger_67_Pipeline_VITIS_LOOP_129_1}
  {SRCNAME rrequest_merger.67 MODELNAME rrequest_merger_67 RTLNAME spmm_rrequest_merger_67}
  {SRCNAME rcollector.68 MODELNAME rcollector_68 RTLNAME spmm_rcollector_68}
  {SRCNAME rcrequest_manager.3 MODELNAME rcrequest_manager_3 RTLNAME spmm_rcrequest_manager_3
    SUBMODULES {
      {MODELNAME spmm_fifo_w230_d64_A_x1 RTLNAME spmm_fifo_w230_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rrequest_U}
      {MODELNAME spmm_fifo_w230_d64_A_x1 RTLNAME spmm_fifo_w230_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcollec_U}
      {MODELNAME spmm_fifo_w230_d64_A_x1 RTLNAME spmm_fifo_w230_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rscheduler_U}
      {MODELNAME spmm_fifo_w230_d64_A_x1 RTLNAME spmm_fifo_w230_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_first_U}
      {MODELNAME spmm_fifo_w160_d64_A_x1 RTLNAME spmm_fifo_w160_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME roff_U}
      {MODELNAME spmm_fifo_w230_d64_A_x1 RTLNAME spmm_fifo_w230_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME r_req_U}
    }
  }
  {SRCNAME merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 MODELNAME merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 RTLNAME spmm_merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1}
  {SRCNAME merge_4_to_1_rrequest MODELNAME merge_4_to_1_rrequest RTLNAME spmm_merge_4_to_1_rrequest}
  {SRCNAME request_to_rbanks_Pipeline_VITIS_LOOP_257_1 MODELNAME request_to_rbanks_Pipeline_VITIS_LOOP_257_1 RTLNAME spmm_request_to_rbanks_Pipeline_VITIS_LOOP_257_1}
  {SRCNAME request_to_rbanks MODELNAME request_to_rbanks RTLNAME spmm_request_to_rbanks}
  {SRCNAME rcache_Pipeline_VITIS_LOOP_336_1 MODELNAME rcache_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_rcache_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME rcache MODELNAME rcache RTLNAME spmm_rcache
    SUBMODULES {
      {MODELNAME spmm_rcache_p_data_V_RAM_1P_BRAM_1R1W RTLNAME spmm_rcache_p_data_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_rcache_p_tag_V_RAM_1P_LUTRAM_1R1W RTLNAME spmm_rcache_p_tag_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_rcache_p_lru_count_1_RAM_T2P_BRAM_1R1W RTLNAME spmm_rcache_p_lru_count_1_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rcache.4_Pipeline_VITIS_LOOP_336_1 MODELNAME rcache_4_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_rcache_4_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME rcache.4 MODELNAME rcache_4 RTLNAME spmm_rcache_4}
  {SRCNAME rcache.5_Pipeline_VITIS_LOOP_336_1 MODELNAME rcache_5_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_rcache_5_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME rcache.5 MODELNAME rcache_5 RTLNAME spmm_rcache_5}
  {SRCNAME rcache.6_Pipeline_VITIS_LOOP_336_1 MODELNAME rcache_6_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_rcache_6_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME rcache.6 MODELNAME rcache_6 RTLNAME spmm_rcache_6}
  {SRCNAME distributer_mi_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi MODELNAME distributer_mi RTLNAME spmm_distributer_mi}
  {SRCNAME distributer_mi.7_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_7_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_7_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.7 MODELNAME distributer_mi_7 RTLNAME spmm_distributer_mi_7}
  {SRCNAME distributer_mi.8_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_8_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_8_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.8 MODELNAME distributer_mi_8 RTLNAME spmm_distributer_mi_8}
  {SRCNAME distributer_mi.9_Pipeline_VITIS_LOOP_120_1 MODELNAME distributer_mi_9_Pipeline_VITIS_LOOP_120_1 RTLNAME spmm_distributer_mi_9_Pipeline_VITIS_LOOP_120_1}
  {SRCNAME distributer_mi.9 MODELNAME distributer_mi_9 RTLNAME spmm_distributer_mi_9}
  {SRCNAME merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi MODELNAME merge_4_to_1_mi RTLNAME spmm_merge_4_to_1_mi}
  {SRCNAME merge_4_to_1_mi.10_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_10_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.10 MODELNAME merge_4_to_1_mi_10 RTLNAME spmm_merge_4_to_1_mi_10}
  {SRCNAME merge_4_to_1_mi.11_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_11_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_11_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.11 MODELNAME merge_4_to_1_mi_11 RTLNAME spmm_merge_4_to_1_mi_11}
  {SRCNAME merge_4_to_1_mi.12_Pipeline_VITIS_LOOP_86_1 MODELNAME merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1 RTLNAME spmm_merge_4_to_1_mi_12_Pipeline_VITIS_LOOP_86_1}
  {SRCNAME merge_4_to_1_mi.12 MODELNAME merge_4_to_1_mi_12 RTLNAME spmm_merge_4_to_1_mi_12}
  {SRCNAME distributer_rresponse_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse MODELNAME distributer_rresponse RTLNAME spmm_distributer_rresponse}
  {SRCNAME distributer_rresponse.13_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_13_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_13_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.13 MODELNAME distributer_rresponse_13 RTLNAME spmm_distributer_rresponse_13}
  {SRCNAME distributer_rresponse.14_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_14_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_14_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.14 MODELNAME distributer_rresponse_14 RTLNAME spmm_distributer_rresponse_14}
  {SRCNAME distributer_rresponse.15_Pipeline_VITIS_LOOP_92_1 MODELNAME distributer_rresponse_15_Pipeline_VITIS_LOOP_92_1 RTLNAME spmm_distributer_rresponse_15_Pipeline_VITIS_LOOP_92_1}
  {SRCNAME distributer_rresponse.15 MODELNAME distributer_rresponse_15 RTLNAME spmm_distributer_rresponse_15}
  {SRCNAME merge_4_to_1_rresponse MODELNAME merge_4_to_1_rresponse RTLNAME spmm_merge_4_to_1_rresponse
    SUBMODULES {
      {MODELNAME spmm_flow_control_loop_pipe RTLNAME spmm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmm_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME merge_4_to_1_rresponse.16 MODELNAME merge_4_to_1_rresponse_16 RTLNAME spmm_merge_4_to_1_rresponse_16}
  {SRCNAME merge_4_to_1_rresponse.17 MODELNAME merge_4_to_1_rresponse_17 RTLNAME spmm_merge_4_to_1_rresponse_17}
  {SRCNAME merge_4_to_1_rresponse.18 MODELNAME merge_4_to_1_rresponse_18 RTLNAME spmm_merge_4_to_1_rresponse_18}
  {SRCNAME from_rcache_result_to_B_vcrequest MODELNAME from_rcache_result_to_B_vcrequest RTLNAME spmm_from_rcache_result_to_B_vcrequest}
  {SRCNAME from_rcache_result_to_B_vcrequest.19 MODELNAME from_rcache_result_to_B_vcrequest_19 RTLNAME spmm_from_rcache_result_to_B_vcrequest_19}
  {SRCNAME from_rcache_result_to_B_vcrequest.20 MODELNAME from_rcache_result_to_B_vcrequest_20 RTLNAME spmm_from_rcache_result_to_B_vcrequest_20}
  {SRCNAME from_rcache_result_to_B_vcrequest.21 MODELNAME from_rcache_result_to_B_vcrequest_21 RTLNAME spmm_from_rcache_result_to_B_vcrequest_21}
  {SRCNAME generate_data MODELNAME generate_data RTLNAME spmm_generate_data}
  {SRCNAME generate_data.22 MODELNAME generate_data_22 RTLNAME spmm_generate_data_22}
  {SRCNAME generate_data.23 MODELNAME generate_data_23 RTLNAME spmm_generate_data_23}
  {SRCNAME generate_data.24 MODELNAME generate_data_24 RTLNAME spmm_generate_data_24}
  {SRCNAME vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter MODELNAME vcrequest_splitter RTLNAME spmm_vcrequest_splitter}
  {SRCNAME request_manager_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager MODELNAME request_manager RTLNAME spmm_request_manager}
  {SRCNAME schedule_access_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access MODELNAME schedule_access RTLNAME spmm_schedule_access}
  {SRCNAME request_manager.69_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_69_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_69_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.69 MODELNAME request_manager_69 RTLNAME spmm_request_manager_69}
  {SRCNAME schedule_access.70_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_70_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_70_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.70 MODELNAME schedule_access_70 RTLNAME spmm_schedule_access_70}
  {SRCNAME request_merger_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger MODELNAME request_merger RTLNAME spmm_request_merger}
  {SRCNAME request_merger.71_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_71_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_71_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.71 MODELNAME request_merger_71 RTLNAME spmm_request_merger_71}
  {SRCNAME collector_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector MODELNAME collector RTLNAME spmm_collector}
  {SRCNAME collector.72_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_72_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_72_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.72 MODELNAME collector_72 RTLNAME spmm_collector_72}
  {SRCNAME vcrequest_manager MODELNAME vcrequest_manager RTLNAME spmm_vcrequest_manager
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d64_A RTLNAME spmm_fifo_w68_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w209_d64_A RTLNAME spmm_fifo_w209_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d64_A RTLNAME spmm_fifo_w128_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w209_d64_A RTLNAME spmm_fifo_w209_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S RTLNAME spmm_fifo_w1_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w209_d64_A RTLNAME spmm_fifo_w209_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d64_A RTLNAME spmm_fifo_w128_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w209_d64_A RTLNAME spmm_fifo_w209_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S RTLNAME spmm_fifo_w1_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter.73_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_73_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.73 MODELNAME vcrequest_splitter_73 RTLNAME spmm_vcrequest_splitter_73}
  {SRCNAME request_manager.74_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_74_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_74_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.74 MODELNAME request_manager_74 RTLNAME spmm_request_manager_74}
  {SRCNAME schedule_access.75_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_75_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_75_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.75 MODELNAME schedule_access_75 RTLNAME spmm_schedule_access_75}
  {SRCNAME request_manager.76_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_76_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_76_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.76 MODELNAME request_manager_76 RTLNAME spmm_request_manager_76}
  {SRCNAME schedule_access.77_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_77_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_77_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.77 MODELNAME schedule_access_77 RTLNAME spmm_schedule_access_77}
  {SRCNAME request_merger.78_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_78_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_78_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.78 MODELNAME request_merger_78 RTLNAME spmm_request_merger_78}
  {SRCNAME request_merger.79_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_79_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_79_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.79 MODELNAME request_merger_79 RTLNAME spmm_request_merger_79}
  {SRCNAME collector.80_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_80_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_80_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.80 MODELNAME collector_80 RTLNAME spmm_collector_80}
  {SRCNAME collector.81_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_81_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_81_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.81 MODELNAME collector_81 RTLNAME spmm_collector_81}
  {SRCNAME vcrequest_manager.25 MODELNAME vcrequest_manager_25 RTLNAME spmm_vcrequest_manager_25
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d64_A_x RTLNAME spmm_fifo_w68_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w209_d64_A_x RTLNAME spmm_fifo_w209_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x RTLNAME spmm_fifo_w128_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x RTLNAME spmm_fifo_w209_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x RTLNAME spmm_fifo_w1_d16_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w209_d64_A_x RTLNAME spmm_fifo_w209_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x RTLNAME spmm_fifo_w128_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x RTLNAME spmm_fifo_w209_d64_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x RTLNAME spmm_fifo_w1_d16_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter.82_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_82_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.82 MODELNAME vcrequest_splitter_82 RTLNAME spmm_vcrequest_splitter_82}
  {SRCNAME request_manager.83_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_83_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_83_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.83 MODELNAME request_manager_83 RTLNAME spmm_request_manager_83}
  {SRCNAME schedule_access.84_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_84_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_84_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.84 MODELNAME schedule_access_84 RTLNAME spmm_schedule_access_84}
  {SRCNAME request_manager.85_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_85_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_85_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.85 MODELNAME request_manager_85 RTLNAME spmm_request_manager_85}
  {SRCNAME schedule_access.86_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_86_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_86_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.86 MODELNAME schedule_access_86 RTLNAME spmm_schedule_access_86}
  {SRCNAME request_merger.87_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_87_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_87_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.87 MODELNAME request_merger_87 RTLNAME spmm_request_merger_87}
  {SRCNAME request_merger.88_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_88_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_88_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.88 MODELNAME request_merger_88 RTLNAME spmm_request_merger_88}
  {SRCNAME collector.89_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_89_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_89_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.89 MODELNAME collector_89 RTLNAME spmm_collector_89}
  {SRCNAME collector.90_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_90_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_90_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.90 MODELNAME collector_90 RTLNAME spmm_collector_90}
  {SRCNAME vcrequest_manager.26 MODELNAME vcrequest_manager_26 RTLNAME spmm_vcrequest_manager_26
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d64_A_x0 RTLNAME spmm_fifo_w68_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w209_d64_A_x0 RTLNAME spmm_fifo_w209_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x0 RTLNAME spmm_fifo_w128_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x0 RTLNAME spmm_fifo_w209_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x0 RTLNAME spmm_fifo_w1_d16_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w209_d64_A_x0 RTLNAME spmm_fifo_w209_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x0 RTLNAME spmm_fifo_w128_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x0 RTLNAME spmm_fifo_w209_d64_A_x0 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x0 RTLNAME spmm_fifo_w1_d16_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME vcrequest_splitter.91_Pipeline_VITIS_LOOP_12_1 MODELNAME vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1 RTLNAME spmm_vcrequest_splitter_91_Pipeline_VITIS_LOOP_12_1}
  {SRCNAME vcrequest_splitter.91 MODELNAME vcrequest_splitter_91 RTLNAME spmm_vcrequest_splitter_91}
  {SRCNAME request_manager.92_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_92_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_92_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.92 MODELNAME request_manager_92 RTLNAME spmm_request_manager_92}
  {SRCNAME schedule_access.93_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_93_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_93_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.93 MODELNAME schedule_access_93 RTLNAME spmm_schedule_access_93}
  {SRCNAME request_manager.94_Pipeline_VITIS_LOOP_48_1 MODELNAME request_manager_94_Pipeline_VITIS_LOOP_48_1 RTLNAME spmm_request_manager_94_Pipeline_VITIS_LOOP_48_1}
  {SRCNAME request_manager.94 MODELNAME request_manager_94 RTLNAME spmm_request_manager_94}
  {SRCNAME schedule_access.95_Pipeline_VITIS_LOOP_112_4 MODELNAME schedule_access_95_Pipeline_VITIS_LOOP_112_4 RTLNAME spmm_schedule_access_95_Pipeline_VITIS_LOOP_112_4}
  {SRCNAME schedule_access.95 MODELNAME schedule_access_95 RTLNAME spmm_schedule_access_95}
  {SRCNAME request_merger.96_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_96_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_96_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.96 MODELNAME request_merger_96 RTLNAME spmm_request_merger_96}
  {SRCNAME request_merger.97_Pipeline_VITIS_LOOP_152_1 MODELNAME request_merger_97_Pipeline_VITIS_LOOP_152_1 RTLNAME spmm_request_merger_97_Pipeline_VITIS_LOOP_152_1}
  {SRCNAME request_merger.97 MODELNAME request_merger_97 RTLNAME spmm_request_merger_97}
  {SRCNAME collector.98_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_98_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_98_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.98 MODELNAME collector_98 RTLNAME spmm_collector_98}
  {SRCNAME collector.99_Pipeline_VITIS_LOOP_185_2 MODELNAME collector_99_Pipeline_VITIS_LOOP_185_2 RTLNAME spmm_collector_99_Pipeline_VITIS_LOOP_185_2}
  {SRCNAME collector.99 MODELNAME collector_99 RTLNAME spmm_collector_99}
  {SRCNAME vcrequest_manager.27 MODELNAME vcrequest_manager_27 RTLNAME spmm_vcrequest_manager_27
    SUBMODULES {
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest_U}
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vcollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ccollector_U}
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vscheduler_U}
      {MODELNAME spmm_fifo_w68_d64_A_x1 RTLNAME spmm_fifo_w68_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cscheduler_U}
      {MODELNAME spmm_fifo_w209_d64_A_x1 RTLNAME spmm_fifo_w209_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x1 RTLNAME spmm_fifo_w128_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME voff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x1 RTLNAME spmm_fifo_w209_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME v_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x1 RTLNAME spmm_fifo_w1_d16_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME v_hit_U}
      {MODELNAME spmm_fifo_w209_d64_A_x1 RTLNAME spmm_fifo_w209_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_first_U}
      {MODELNAME spmm_fifo_w128_d64_A_x1 RTLNAME spmm_fifo_w128_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME coff_U}
      {MODELNAME spmm_fifo_w209_d64_A_x1 RTLNAME spmm_fifo_w209_d64_A_x1 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME c_req_U}
      {MODELNAME spmm_fifo_w1_d16_S_x1 RTLNAME spmm_fifo_w1_d16_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME c_hit_U}
    }
  }
  {SRCNAME request_to_vcbanks_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks MODELNAME request_to_vcbanks RTLNAME spmm_request_to_vcbanks}
  {SRCNAME request_to_vcbanks.28_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_28_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.28 MODELNAME request_to_vcbanks_28 RTLNAME spmm_request_to_vcbanks_28}
  {SRCNAME request_to_vcbanks.29_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_29_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.29 MODELNAME request_to_vcbanks_29 RTLNAME spmm_request_to_vcbanks_29}
  {SRCNAME request_to_vcbanks.30_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_30_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_30_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.30 MODELNAME request_to_vcbanks_30 RTLNAME spmm_request_to_vcbanks_30}
  {SRCNAME request_to_vcbanks.31_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_31_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_31_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.31 MODELNAME request_to_vcbanks_31 RTLNAME spmm_request_to_vcbanks_31}
  {SRCNAME request_to_vcbanks.32_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_32_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_32_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.32 MODELNAME request_to_vcbanks_32 RTLNAME spmm_request_to_vcbanks_32}
  {SRCNAME request_to_vcbanks.33_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_33_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_33_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.33 MODELNAME request_to_vcbanks_33 RTLNAME spmm_request_to_vcbanks_33}
  {SRCNAME request_to_vcbanks.34_Pipeline_VITIS_LOOP_253_1 MODELNAME request_to_vcbanks_34_Pipeline_VITIS_LOOP_253_1 RTLNAME spmm_request_to_vcbanks_34_Pipeline_VITIS_LOOP_253_1}
  {SRCNAME request_to_vcbanks.34 MODELNAME request_to_vcbanks_34 RTLNAME spmm_request_to_vcbanks_34}
  {SRCNAME merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_210_1 MODELNAME merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_210_1 RTLNAME spmm_merge_4_to_1_vcrequest_Pipeline_VITIS_LOOP_210_1}
  {SRCNAME merge_4_to_1_vcrequest MODELNAME merge_4_to_1_vcrequest RTLNAME spmm_merge_4_to_1_vcrequest}
  {SRCNAME merge_4_to_1_vcrequest.35_Pipeline_VITIS_LOOP_210_1 MODELNAME merge_4_to_1_vcrequest_35_Pipeline_VITIS_LOOP_210_1 RTLNAME spmm_merge_4_to_1_vcrequest_35_Pipeline_VITIS_LOOP_210_1}
  {SRCNAME merge_4_to_1_vcrequest.35 MODELNAME merge_4_to_1_vcrequest_35 RTLNAME spmm_merge_4_to_1_vcrequest_35}
  {SRCNAME merge_4_to_1_vcrequest.36_Pipeline_VITIS_LOOP_210_1 MODELNAME merge_4_to_1_vcrequest_36_Pipeline_VITIS_LOOP_210_1 RTLNAME spmm_merge_4_to_1_vcrequest_36_Pipeline_VITIS_LOOP_210_1}
  {SRCNAME merge_4_to_1_vcrequest.36 MODELNAME merge_4_to_1_vcrequest_36 RTLNAME spmm_merge_4_to_1_vcrequest_36}
  {SRCNAME merge_4_to_1_vcrequest.37_Pipeline_VITIS_LOOP_210_1 MODELNAME merge_4_to_1_vcrequest_37_Pipeline_VITIS_LOOP_210_1 RTLNAME spmm_merge_4_to_1_vcrequest_37_Pipeline_VITIS_LOOP_210_1}
  {SRCNAME merge_4_to_1_vcrequest.37 MODELNAME merge_4_to_1_vcrequest_37 RTLNAME spmm_merge_4_to_1_vcrequest_37}
  {SRCNAME vcache_Pipeline_VITIS_LOOP_336_1 MODELNAME vcache_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_vcache_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME vcache MODELNAME vcache RTLNAME spmm_vcache
    SUBMODULES {
      {MODELNAME spmm_mux_164_8_1_1 RTLNAME spmm_mux_164_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME spmm_vcache_p_filled_V_RAM_AUTO_1R1W RTLNAME spmm_vcache_p_filled_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_vcache_p_data_V_RAM_1P_URAM_1R1W RTLNAME spmm_vcache_p_data_V_RAM_1P_URAM_1R1W BINDTYPE storage TYPE ram_1p IMPL uram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_vcache_p_tag_V_RAM_1P_LUTRAM_1R1W RTLNAME spmm_vcache_p_tag_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vcache.38_Pipeline_VITIS_LOOP_336_1 MODELNAME vcache_38_Pipeline_VITIS_LOOP_336_1 RTLNAME spmm_vcache_38_Pipeline_VITIS_LOOP_336_1}
  {SRCNAME vcache.38 MODELNAME vcache_38 RTLNAME spmm_vcache_38}
  {SRCNAME ccache_Pipeline_VITIS_LOOP_627_1 MODELNAME ccache_Pipeline_VITIS_LOOP_627_1 RTLNAME spmm_ccache_Pipeline_VITIS_LOOP_627_1}
  {SRCNAME ccache MODELNAME ccache RTLNAME spmm_ccache}
  {SRCNAME ccache.39_Pipeline_VITIS_LOOP_627_1 MODELNAME ccache_39_Pipeline_VITIS_LOOP_627_1 RTLNAME spmm_ccache_39_Pipeline_VITIS_LOOP_627_1}
  {SRCNAME ccache.39 MODELNAME ccache_39 RTLNAME spmm_ccache_39}
  {SRCNAME merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_711_1 MODELNAME merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_711_1 RTLNAME spmm_merge_2_to_1_vcresponse_Pipeline_VITIS_LOOP_711_1}
  {SRCNAME merge_2_to_1_vcresponse MODELNAME merge_2_to_1_vcresponse RTLNAME spmm_merge_2_to_1_vcresponse}
  {SRCNAME merge_2_to_1_vcresponse.40_Pipeline_VITIS_LOOP_711_1 MODELNAME merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1 RTLNAME spmm_merge_2_to_1_vcresponse_40_Pipeline_VITIS_LOOP_711_1}
  {SRCNAME merge_2_to_1_vcresponse.40 MODELNAME merge_2_to_1_vcresponse_40 RTLNAME spmm_merge_2_to_1_vcresponse_40}
  {SRCNAME distributer_vcresponse_Pipeline_VITIS_LOOP_278_1 MODELNAME distributer_vcresponse_Pipeline_VITIS_LOOP_278_1 RTLNAME spmm_distributer_vcresponse_Pipeline_VITIS_LOOP_278_1}
  {SRCNAME distributer_vcresponse MODELNAME distributer_vcresponse RTLNAME spmm_distributer_vcresponse}
  {SRCNAME distributer_vcresponse.41_Pipeline_VITIS_LOOP_278_1 MODELNAME distributer_vcresponse_41_Pipeline_VITIS_LOOP_278_1 RTLNAME spmm_distributer_vcresponse_41_Pipeline_VITIS_LOOP_278_1}
  {SRCNAME distributer_vcresponse.41 MODELNAME distributer_vcresponse_41 RTLNAME spmm_distributer_vcresponse_41}
  {SRCNAME merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_529_1 MODELNAME merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_529_1 RTLNAME spmm_merge_2_to_1_vcresult_Pipeline_VITIS_LOOP_529_1}
  {SRCNAME merge_2_to_1_vcresult MODELNAME merge_2_to_1_vcresult RTLNAME spmm_merge_2_to_1_vcresult}
  {SRCNAME merge_2_to_1_vcresult.42_Pipeline_VITIS_LOOP_529_1 MODELNAME merge_2_to_1_vcresult_42_Pipeline_VITIS_LOOP_529_1 RTLNAME spmm_merge_2_to_1_vcresult_42_Pipeline_VITIS_LOOP_529_1}
  {SRCNAME merge_2_to_1_vcresult.42 MODELNAME merge_2_to_1_vcresult_42 RTLNAME spmm_merge_2_to_1_vcresult_42}
  {SRCNAME distributer_vcresult MODELNAME distributer_vcresult RTLNAME spmm_distributer_vcresult}
  {SRCNAME distributer_vcresult.43 MODELNAME distributer_vcresult_43 RTLNAME spmm_distributer_vcresult_43}
  {SRCNAME pe_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_Pipeline_VITIS_LOOP_35_2
    SUBMODULES {
      {MODELNAME spmm_fmul_32ns_32ns_32_5_full_dsp_1 RTLNAME spmm_fmul_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fmul IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pe MODELNAME pe RTLNAME spmm_pe}
  {SRCNAME pe.44_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_44_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_44_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe.44 MODELNAME pe_44 RTLNAME spmm_pe_44}
  {SRCNAME pe.45_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_45_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_45_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe.45 MODELNAME pe_45 RTLNAME spmm_pe_45}
  {SRCNAME pe.46_Pipeline_VITIS_LOOP_35_2 MODELNAME pe_46_Pipeline_VITIS_LOOP_35_2 RTLNAME spmm_pe_46_Pipeline_VITIS_LOOP_35_2}
  {SRCNAME pe.46 MODELNAME pe_46 RTLNAME spmm_pe_46}
  {SRCNAME convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_906_2 MODELNAME convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_906_2 RTLNAME spmm_convert_pblock_to_mergeitem_Pipeline_VITIS_LOOP_906_2}
  {SRCNAME convert_pblock_to_mergeitem MODELNAME convert_pblock_to_mergeitem RTLNAME spmm_convert_pblock_to_mergeitem}
  {SRCNAME convert_pblock_to_mergeitem.47_Pipeline_VITIS_LOOP_906_2 MODELNAME convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_906_2 RTLNAME spmm_convert_pblock_to_mergeitem_47_Pipeline_VITIS_LOOP_906_2}
  {SRCNAME convert_pblock_to_mergeitem.47 MODELNAME convert_pblock_to_mergeitem_47 RTLNAME spmm_convert_pblock_to_mergeitem_47}
  {SRCNAME convert_pblock_to_mergeitem.48_Pipeline_VITIS_LOOP_906_2 MODELNAME convert_pblock_to_mergeitem_48_Pipeline_VITIS_LOOP_906_2 RTLNAME spmm_convert_pblock_to_mergeitem_48_Pipeline_VITIS_LOOP_906_2}
  {SRCNAME convert_pblock_to_mergeitem.48 MODELNAME convert_pblock_to_mergeitem_48 RTLNAME spmm_convert_pblock_to_mergeitem_48}
  {SRCNAME convert_pblock_to_mergeitem.49_Pipeline_VITIS_LOOP_906_2 MODELNAME convert_pblock_to_mergeitem_49_Pipeline_VITIS_LOOP_906_2 RTLNAME spmm_convert_pblock_to_mergeitem_49_Pipeline_VITIS_LOOP_906_2}
  {SRCNAME convert_pblock_to_mergeitem.49 MODELNAME convert_pblock_to_mergeitem_49 RTLNAME spmm_convert_pblock_to_mergeitem_49}
  {SRCNAME flush_three MODELNAME flush_three RTLNAME spmm_flush_three
    SUBMODULES {
      {MODELNAME spmm_fadd_32ns_32ns_32_8_full_dsp_1 RTLNAME spmm_fadd_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME _merge_temp MODELNAME p_merge_temp RTLNAME spmm_p_merge_temp}
  {SRCNAME merge_two_sub MODELNAME merge_two_sub RTLNAME spmm_merge_two_sub
    SUBMODULES {
      {MODELNAME spmm_fifo_w80_d1000_A RTLNAME spmm_fifo_w80_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping_U}
      {MODELNAME spmm_fifo_w80_d1000_A RTLNAME spmm_fifo_w80_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong_U}
      {MODELNAME spmm_fifo_w80_d1000_A RTLNAME spmm_fifo_w80_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ping1_U}
      {MODELNAME spmm_fifo_w80_d1000_A RTLNAME spmm_fifo_w80_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pong1_U}
    }
  }
  {SRCNAME merger MODELNAME merger RTLNAME spmm_merger}
  {SRCNAME merger.50 MODELNAME merger_50 RTLNAME spmm_merger_50}
  {SRCNAME merger.51 MODELNAME merger_51 RTLNAME spmm_merger_51}
  {SRCNAME merger.52 MODELNAME merger_52 RTLNAME spmm_merger_52}
  {SRCNAME sub_final_merger_Pipeline_VITIS_LOOP_842_2 MODELNAME sub_final_merger_Pipeline_VITIS_LOOP_842_2 RTLNAME spmm_sub_final_merger_Pipeline_VITIS_LOOP_842_2}
  {SRCNAME sub_final_merger MODELNAME sub_final_merger RTLNAME spmm_sub_final_merger}
  {SRCNAME sub_final_merger.53_Pipeline_VITIS_LOOP_842_2 MODELNAME sub_final_merger_53_Pipeline_VITIS_LOOP_842_2 RTLNAME spmm_sub_final_merger_53_Pipeline_VITIS_LOOP_842_2}
  {SRCNAME sub_final_merger.53 MODELNAME sub_final_merger_53 RTLNAME spmm_sub_final_merger_53}
  {SRCNAME final_merger_Pipeline_VITIS_LOOP_769_2 MODELNAME final_merger_Pipeline_VITIS_LOOP_769_2 RTLNAME spmm_final_merger_Pipeline_VITIS_LOOP_769_2}
  {SRCNAME final_merger MODELNAME final_merger RTLNAME spmm_final_merger}
  {SRCNAME write_C_sub MODELNAME write_C_sub RTLNAME spmm_write_C_sub
    SUBMODULES {
      {MODELNAME spmm_fsub_32ns_32ns_32_8_full_dsp_1 RTLNAME spmm_fsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME spmm MODELNAME spmm RTLNAME spmm IS_TOP 1
    SUBMODULES {
      {MODELNAME spmm_p_B_rcsr_copy1_V_RAM_AUTO_1R1W_memcore RTLNAME spmm_p_B_rcsr_copy1_V_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_p_B_rcsr_copy1_V_RAM_AUTO_1R1W RTLNAME spmm_p_B_rcsr_copy1_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME spmm_fifo_w32_d7_S RTLNAME spmm_fifo_w32_d7_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c170_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c172_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c173_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c174_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c175_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c176_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c177_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c178_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c179_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c181_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c182_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c183_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c184_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c185_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c186_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c187_U}
      {MODELNAME spmm_fifo_w32_d8_S RTLNAME spmm_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c188_U}
      {MODELNAME spmm_fifo_w64_d128_A RTLNAME spmm_fifo_w64_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_A_reader_rs_U}
      {MODELNAME spmm_fifo_w2831_d1_S RTLNAME spmm_fifo_w2831_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_B_keep_col1_U}
      {MODELNAME spmm_fifo_w98_d256_A RTLNAME spmm_fifo_w98_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_A_element_as_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe1_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe2_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe3_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pe4_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm1_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm2_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm3_idle_U}
      {MODELNAME spmm_fifo_w1_d128_S RTLNAME spmm_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rm4_idle_U}
      {MODELNAME spmm_fifo_w66_d128_A RTLNAME spmm_fifo_w66_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pe1_job_U}
      {MODELNAME spmm_fifo_w66_d128_A RTLNAME spmm_fifo_w66_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pe2_job_U}
      {MODELNAME spmm_fifo_w66_d128_A RTLNAME spmm_fifo_w66_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pe3_job_U}
      {MODELNAME spmm_fifo_w66_d128_A RTLNAME spmm_fifo_w66_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME pe4_job_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_stream1_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_stream2_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_stream3_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_stream4_U}
      {MODELNAME spmm_fifo_w230_d4_S RTLNAME spmm_fifo_w230_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest1_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse1_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rblock1_U}
      {MODELNAME spmm_fifo_w230_d4_S RTLNAME spmm_fifo_w230_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest2_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse2_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rblock2_U}
      {MODELNAME spmm_fifo_w230_d4_S RTLNAME spmm_fifo_w230_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest3_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse3_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rblock3_U}
      {MODELNAME spmm_fifo_w230_d4_S RTLNAME spmm_fifo_w230_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequest4_U}
      {MODELNAME spmm_fifo_w168_d16_A RTLNAME spmm_fifo_w168_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rresponse4_U}
      {MODELNAME spmm_fifo_w230_d64_A_x2 RTLNAME spmm_fifo_w230_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rblock4_U}
      {MODELNAME spmm_fifo_w230_d4_S RTLNAME spmm_fifo_w230_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rrequestf_U}
      {MODELNAME spmm_fifo_w230_d8_A RTLNAME spmm_fifo_w230_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank1_U}
      {MODELNAME spmm_fifo_w230_d8_A RTLNAME spmm_fifo_w230_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank2_U}
      {MODELNAME spmm_fifo_w230_d8_A RTLNAME spmm_fifo_w230_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank3_U}
      {MODELNAME spmm_fifo_w230_d8_A RTLNAME spmm_fifo_w230_d8_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_re_bank4_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c167_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c168_U}
      {MODELNAME spmm_fifo_w32_d2_S RTLNAME spmm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_rcsr_base_c169_U}
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
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank1_b_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank1_d_U}
      {MODELNAME spmm_fifo_w32_d64_A RTLNAME spmm_fifo_w32_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME B_rlen_pe1_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank2_b_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank2_d_U}
      {MODELNAME spmm_fifo_w32_d64_A RTLNAME spmm_fifo_w32_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME B_rlen_pe2_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank3_b_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank3_d_U}
      {MODELNAME spmm_fifo_w32_d64_A RTLNAME spmm_fifo_w32_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME B_rlen_pe3_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank4_b_U}
      {MODELNAME spmm_fifo_w68_d64_A_x2 RTLNAME spmm_fifo_w68_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rcache_result_bank4_d_U}
      {MODELNAME spmm_fifo_w32_d64_A RTLNAME spmm_fifo_w32_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME B_rlen_pe4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock1d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock1d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock2d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock2d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock3d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock3d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock4d_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock4d_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest1_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest1_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse1_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse1_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vresult1_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cresult1_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock1_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock1_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest2_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest2_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse2_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse2_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vresult2_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cresult2_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock2_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock2_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest3_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest3_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse3_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse3_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vresult3_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cresult3_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock3_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock3_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vrequest4_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME crequest4_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vresponse4_U}
      {MODELNAME spmm_fifo_w6_d64_S RTLNAME spmm_fifo_w6_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cresponse4_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vresult4_U}
      {MODELNAME spmm_fifo_w1024_d32_A RTLNAME spmm_fifo_w1024_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cresult4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vblock4_U}
      {MODELNAME spmm_fifo_w134_d100_A RTLNAME spmm_fifo_w134_d100_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cblock4_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe1_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe1_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_val_base_c171_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe2_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe2_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe3_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe3_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe4_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe4_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe5_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe5_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c_U}
      {MODELNAME spmm_fifo_w32_d3_S RTLNAME spmm_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME B_cid_base_c180_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe6_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe6_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe7_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe7_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_pe8_U}
      {MODELNAME spmm_fifo_w209_d8_S RTLNAME spmm_fifo_w209_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_pe8_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank1_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank2_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank3_U}
      {MODELNAME spmm_fifo_w209_d64_A_x2 RTLNAME spmm_fifo_w209_d64_A_x2 BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME vccache_re_bank4_U}
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
      {MODELNAME spmm_fifo_w66_d64_A RTLNAME spmm_fifo_w66_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mc_pe1_U}
      {MODELNAME spmm_fifo_w1_d64_S RTLNAME spmm_fifo_w1_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish1_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe2_U}
      {MODELNAME spmm_fifo_w66_d64_A RTLNAME spmm_fifo_w66_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mc_pe2_U}
      {MODELNAME spmm_fifo_w1_d64_S RTLNAME spmm_fifo_w1_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish2_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe3_U}
      {MODELNAME spmm_fifo_w66_d64_A RTLNAME spmm_fifo_w66_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mc_pe3_U}
      {MODELNAME spmm_fifo_w1_d64_S RTLNAME spmm_fifo_w1_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish3_U}
      {MODELNAME spmm_fifo_w263_d1000_A RTLNAME spmm_fifo_w263_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_pe4_U}
      {MODELNAME spmm_fifo_w66_d64_A RTLNAME spmm_fifo_w66_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mc_pe4_U}
      {MODELNAME spmm_fifo_w1_d64_S RTLNAME spmm_fifo_w1_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME efinish4_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe1_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe2_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe3_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME m_pe4_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe1_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe2_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe3_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_pe4_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_1_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_2_U}
      {MODELNAME spmm_fifo_w66_d1000_A RTLNAME spmm_fifo_w66_d1000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_merger_3_U}
      {MODELNAME spmm_fifo_w32_d2050_A RTLNAME spmm_fifo_w32_d2050_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_len_1_U}
      {MODELNAME spmm_fifo_w32_d2050_A RTLNAME spmm_fifo_w32_d2050_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME final_len_2_U}
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
