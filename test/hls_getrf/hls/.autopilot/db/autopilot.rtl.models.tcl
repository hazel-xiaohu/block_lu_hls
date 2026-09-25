set SynModuleInfo {
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_84_1 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_84_1 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_84_1
    SUBMODULES {
      {MODELNAME sparse_getrf_flow_control_loop_pipe_sequential_init RTLNAME sparse_getrf_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sparse_getrf_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_88_2 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_88_2 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_88_2}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_103_4 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_103_4 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_103_4}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_120_5 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_120_5 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_120_5}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_13_1 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_13_1 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_13_1}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_13_11 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_13_11 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_13_11}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_13_12 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_13_12 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_13_12}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_206_12 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_206_12 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_206_12}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_198_11 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_198_11 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_198_11}
  {SRCNAME sparse_getrf_Pipeline_VITIS_LOOP_13_13 MODELNAME sparse_getrf_Pipeline_VITIS_LOOP_13_13 RTLNAME sparse_getrf_sparse_getrf_Pipeline_VITIS_LOOP_13_13}
  {SRCNAME sparse_getrf MODELNAME sparse_getrf RTLNAME sparse_getrf IS_TOP 1
    SUBMODULES {
      {MODELNAME sparse_getrf_fsub_32ns_32ns_32_8_full_dsp_1 RTLNAME sparse_getrf_fsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME sparse_getrf_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME sparse_getrf_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME sparse_getrf_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME sparse_getrf_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME sparse_getrf_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME sparse_getrf_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME sparse_getrf_a_row_m_axi RTLNAME sparse_getrf_a_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_a_col_m_axi RTLNAME sparse_getrf_a_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_a_val_m_axi RTLNAME sparse_getrf_a_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_l_row_m_axi RTLNAME sparse_getrf_l_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_l_col_m_axi RTLNAME sparse_getrf_l_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_l_val_m_axi RTLNAME sparse_getrf_l_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_u_row_m_axi RTLNAME sparse_getrf_u_row_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_u_col_m_axi RTLNAME sparse_getrf_u_col_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_u_val_m_axi RTLNAME sparse_getrf_u_val_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_getrf_control_s_axi RTLNAME sparse_getrf_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sparse_getrf_control_r_s_axi RTLNAME sparse_getrf_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
