set SynModuleInfo {
  {SRCNAME sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2 MODELNAME sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2 RTLNAME sparse_lu_shared_sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2
    SUBMODULES {
      {MODELNAME sparse_lu_shared_flow_control_loop_pipe_sequential_init RTLNAME sparse_lu_shared_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sparse_lu_shared_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 MODELNAME sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 RTLNAME sparse_lu_shared_sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2}
  {SRCNAME sparse_lu_shared_Pipeline_VITIS_LOOP_110_2 MODELNAME sparse_lu_shared_Pipeline_VITIS_LOOP_110_2 RTLNAME sparse_lu_shared_sparse_lu_shared_Pipeline_VITIS_LOOP_110_2}
  {SRCNAME cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2 MODELNAME cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2 RTLNAME sparse_lu_shared_cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME cache_triangular_pattern MODELNAME cache_triangular_pattern RTLNAME sparse_lu_shared_cache_triangular_pattern
    SUBMODULES {
      {MODELNAME sparse_lu_shared_sparsemux_9_2_12_1_1 RTLNAME sparse_lu_shared_sparsemux_9_2_12_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME run_cached_tstrf_Pipeline_VITIS_LOOP_171_3 MODELNAME run_cached_tstrf_Pipeline_VITIS_LOOP_171_3 RTLNAME sparse_lu_shared_run_cached_tstrf_Pipeline_VITIS_LOOP_171_3
    SUBMODULES {
      {MODELNAME sparse_lu_shared_sparsemux_9_2_13_1_1 RTLNAME sparse_lu_shared_sparsemux_9_2_13_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME run_cached_tstrf_Pipeline_VITIS_LOOP_329_4 MODELNAME run_cached_tstrf_Pipeline_VITIS_LOOP_329_4 RTLNAME sparse_lu_shared_run_cached_tstrf_Pipeline_VITIS_LOOP_329_4
    SUBMODULES {
      {MODELNAME sparse_lu_shared_sparsemux_9_2_32_1_1 RTLNAME sparse_lu_shared_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME run_cached_tstrf MODELNAME run_cached_tstrf RTLNAME sparse_lu_shared_run_cached_tstrf}
  {SRCNAME run_cached_gessm_Pipeline_VITIS_LOOP_152_3 MODELNAME run_cached_gessm_Pipeline_VITIS_LOOP_152_3 RTLNAME sparse_lu_shared_run_cached_gessm_Pipeline_VITIS_LOOP_152_3}
  {SRCNAME run_cached_gessm_Pipeline_VITIS_LOOP_283_3 MODELNAME run_cached_gessm_Pipeline_VITIS_LOOP_283_3 RTLNAME sparse_lu_shared_run_cached_gessm_Pipeline_VITIS_LOOP_283_3}
  {SRCNAME run_cached_gessm MODELNAME run_cached_gessm RTLNAME sparse_lu_shared_run_cached_gessm}
  {SRCNAME sparse_lu_shared_Pipeline_VITIS_LOOP_449_2 MODELNAME sparse_lu_shared_Pipeline_VITIS_LOOP_449_2 RTLNAME sparse_lu_shared_sparse_lu_shared_Pipeline_VITIS_LOOP_449_2}
  {SRCNAME run_cached_getrf_Pipeline_VITIS_LOOP_210_2 MODELNAME run_cached_getrf_Pipeline_VITIS_LOOP_210_2 RTLNAME sparse_lu_shared_run_cached_getrf_Pipeline_VITIS_LOOP_210_2}
  {SRCNAME run_cached_getrf_Pipeline_VITIS_LOOP_131_3 MODELNAME run_cached_getrf_Pipeline_VITIS_LOOP_131_3 RTLNAME sparse_lu_shared_run_cached_getrf_Pipeline_VITIS_LOOP_131_3}
  {SRCNAME run_cached_getrf_Pipeline_VITIS_LOOP_238_5 MODELNAME run_cached_getrf_Pipeline_VITIS_LOOP_238_5 RTLNAME sparse_lu_shared_run_cached_getrf_Pipeline_VITIS_LOOP_238_5
    SUBMODULES {
      {MODELNAME sparse_lu_shared_sparsemux_9_2_12_1_1_x RTLNAME sparse_lu_shared_sparsemux_9_2_12_1_1_x BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME sparse_lu_shared_sparsemux_9_2_32_1_1_x RTLNAME sparse_lu_shared_sparsemux_9_2_32_1_1_x BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME run_cached_getrf_Pipeline_VITIS_LOOP_257_8 MODELNAME run_cached_getrf_Pipeline_VITIS_LOOP_257_8 RTLNAME sparse_lu_shared_run_cached_getrf_Pipeline_VITIS_LOOP_257_8}
  {SRCNAME run_cached_getrf_Pipeline_VITIS_LOOP_262_9 MODELNAME run_cached_getrf_Pipeline_VITIS_LOOP_262_9 RTLNAME sparse_lu_shared_run_cached_getrf_Pipeline_VITIS_LOOP_262_9}
  {SRCNAME run_cached_getrf MODELNAME run_cached_getrf RTLNAME sparse_lu_shared_run_cached_getrf}
  {SRCNAME sparse_lu_shared MODELNAME sparse_lu_shared RTLNAME sparse_lu_shared IS_TOP 1
    SUBMODULES {
      {MODELNAME sparse_lu_shared_mul_32ns_31ns_62_1_1 RTLNAME sparse_lu_shared_mul_32ns_31ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_mul_7ns_5ns_11_1_1 RTLNAME sparse_lu_shared_mul_7ns_5ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME sparse_lu_shared_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME sparse_lu_shared_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_fsub_32ns_32ns_32_8_full_dsp_1 RTLNAME sparse_lu_shared_fsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME sparse_lu_shared_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_lower_pos_RAM_AUTO_1R1W RTLNAME sparse_lu_shared_lower_pos_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_factor_RAM_1WNR_AUTO_1R1W RTLNAME sparse_lu_shared_factor_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_block_pos_RAM_AUTO_1R1W RTLNAME sparse_lu_shared_block_pos_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_block_RAM_1WNR_AUTO_1R1W RTLNAME sparse_lu_shared_block_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sparse_lu_shared_a_row_m_axi RTLNAME sparse_lu_shared_a_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_a_col_m_axi RTLNAME sparse_lu_shared_a_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_a_val_m_axi RTLNAME sparse_lu_shared_a_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_l_row_m_axi RTLNAME sparse_lu_shared_l_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_l_col_m_axi RTLNAME sparse_lu_shared_l_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_l_val_m_axi RTLNAME sparse_lu_shared_l_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_u_row_m_axi RTLNAME sparse_lu_shared_u_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_u_col_m_axi RTLNAME sparse_lu_shared_u_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_u_val_m_axi RTLNAME sparse_lu_shared_u_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_x_row_m_axi RTLNAME sparse_lu_shared_x_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_x_col_m_axi RTLNAME sparse_lu_shared_x_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_x_val_m_axi RTLNAME sparse_lu_shared_x_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_lu_shared_control_s_axi RTLNAME sparse_lu_shared_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sparse_lu_shared_control_r_s_axi RTLNAME sparse_lu_shared_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
