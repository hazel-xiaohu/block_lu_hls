set SynModuleInfo {
  {SRCNAME large_tstrf_Pipeline_VITIS_LOOP_133_2 MODELNAME large_tstrf_Pipeline_VITIS_LOOP_133_2 RTLNAME large_tstrf_large_tstrf_Pipeline_VITIS_LOOP_133_2
    SUBMODULES {
      {MODELNAME large_tstrf_flow_control_loop_pipe_sequential_init RTLNAME large_tstrf_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME large_tstrf_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME large_tstrf_Pipeline_VITIS_LOOP_134_3 MODELNAME large_tstrf_Pipeline_VITIS_LOOP_134_3 RTLNAME large_tstrf_large_tstrf_Pipeline_VITIS_LOOP_134_3}
  {SRCNAME large_tstrf_Pipeline_VITIS_LOOP_136_5 MODELNAME large_tstrf_Pipeline_VITIS_LOOP_136_5 RTLNAME large_tstrf_large_tstrf_Pipeline_VITIS_LOOP_136_5
    SUBMODULES {
      {MODELNAME large_tstrf_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME large_tstrf_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_tstrf_Pipeline_VITIS_LOOP_144_6 MODELNAME large_tstrf_Pipeline_VITIS_LOOP_144_6 RTLNAME large_tstrf_large_tstrf_Pipeline_VITIS_LOOP_144_6}
  {SRCNAME large_tstrf MODELNAME large_tstrf RTLNAME large_tstrf IS_TOP 1
    SUBMODULES {
      {MODELNAME large_tstrf_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME large_tstrf_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME large_tstrf_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME large_tstrf_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME large_tstrf_faddfsub_32ns_32ns_32_8_full_dsp_1 RTLNAME large_tstrf_faddfsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME large_tstrf_tu0_m_axi RTLNAME large_tstrf_tu0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tu1_m_axi RTLNAME large_tstrf_tu1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tu2_m_axi RTLNAME large_tstrf_tu2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tu3_m_axi RTLNAME large_tstrf_tu3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tu4_m_axi RTLNAME large_tstrf_tu4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tb0_m_axi RTLNAME large_tstrf_tb0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tb1_m_axi RTLNAME large_tstrf_tb1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tb2_m_axi RTLNAME large_tstrf_tb2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tx0_m_axi RTLNAME large_tstrf_tx0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tx1_m_axi RTLNAME large_tstrf_tx1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tx2_m_axi RTLNAME large_tstrf_tx2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_ta0_m_axi RTLNAME large_tstrf_ta0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_tw0_m_axi RTLNAME large_tstrf_tw0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_tstrf_control_s_axi RTLNAME large_tstrf_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
