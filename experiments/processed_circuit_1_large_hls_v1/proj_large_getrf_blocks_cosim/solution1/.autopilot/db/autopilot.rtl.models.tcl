set SynModuleInfo {
  {SRCNAME large_getrf_Pipeline_VITIS_LOOP_31_2 MODELNAME large_getrf_Pipeline_VITIS_LOOP_31_2 RTLNAME large_getrf_large_getrf_Pipeline_VITIS_LOOP_31_2
    SUBMODULES {
      {MODELNAME large_getrf_flow_control_loop_pipe_sequential_init RTLNAME large_getrf_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME large_getrf_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME large_getrf_Pipeline_VITIS_LOOP_35_3 MODELNAME large_getrf_Pipeline_VITIS_LOOP_35_3 RTLNAME large_getrf_large_getrf_Pipeline_VITIS_LOOP_35_3}
  {SRCNAME large_getrf_Pipeline_VITIS_LOOP_39_4 MODELNAME large_getrf_Pipeline_VITIS_LOOP_39_4 RTLNAME large_getrf_large_getrf_Pipeline_VITIS_LOOP_39_4}
  {SRCNAME large_getrf_Pipeline_VITIS_LOOP_52_6 MODELNAME large_getrf_Pipeline_VITIS_LOOP_52_6 RTLNAME large_getrf_large_getrf_Pipeline_VITIS_LOOP_52_6
    SUBMODULES {
      {MODELNAME large_getrf_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME large_getrf_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_getrf_Pipeline_VITIS_LOOP_59_7 MODELNAME large_getrf_Pipeline_VITIS_LOOP_59_7 RTLNAME large_getrf_large_getrf_Pipeline_VITIS_LOOP_59_7}
  {SRCNAME large_getrf MODELNAME large_getrf RTLNAME large_getrf IS_TOP 1
    SUBMODULES {
      {MODELNAME large_getrf_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME large_getrf_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME large_getrf_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_faddfsub_32ns_32ns_32_6_no_dsp_1 RTLNAME large_getrf_faddfsub_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_a0_m_axi RTLNAME large_getrf_a0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_a1_m_axi RTLNAME large_getrf_a1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_a2_m_axi RTLNAME large_getrf_a2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_l0_m_axi RTLNAME large_getrf_l0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_l1_m_axi RTLNAME large_getrf_l1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_l2_m_axi RTLNAME large_getrf_l2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_u0_m_axi RTLNAME large_getrf_u0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_u1_m_axi RTLNAME large_getrf_u1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_u2_m_axi RTLNAME large_getrf_u2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_u3_m_axi RTLNAME large_getrf_u3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_w0_m_axi RTLNAME large_getrf_w0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_w1_m_axi RTLNAME large_getrf_w1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_control_s_axi RTLNAME large_getrf_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
