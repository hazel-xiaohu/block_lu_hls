set SynModuleInfo {
  {SRCNAME large_gessm_Pipeline_VITIS_LOOP_93_2 MODELNAME large_gessm_Pipeline_VITIS_LOOP_93_2 RTLNAME large_gessm_large_gessm_Pipeline_VITIS_LOOP_93_2
    SUBMODULES {
      {MODELNAME large_gessm_flow_control_loop_pipe_sequential_init RTLNAME large_gessm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME large_gessm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME large_gessm_Pipeline_VITIS_LOOP_94_3 MODELNAME large_gessm_Pipeline_VITIS_LOOP_94_3 RTLNAME large_gessm_large_gessm_Pipeline_VITIS_LOOP_94_3}
  {SRCNAME large_gessm_Pipeline_VITIS_LOOP_96_5 MODELNAME large_gessm_Pipeline_VITIS_LOOP_96_5 RTLNAME large_gessm_large_gessm_Pipeline_VITIS_LOOP_96_5
    SUBMODULES {
      {MODELNAME large_gessm_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME large_gessm_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_gessm_Pipeline_VITIS_LOOP_100_6 MODELNAME large_gessm_Pipeline_VITIS_LOOP_100_6 RTLNAME large_gessm_large_gessm_Pipeline_VITIS_LOOP_100_6}
  {SRCNAME large_gessm MODELNAME large_gessm RTLNAME large_gessm IS_TOP 1
    SUBMODULES {
      {MODELNAME large_gessm_faddfsub_32ns_32ns_32_8_full_dsp_1 RTLNAME large_gessm_faddfsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME large_gessm_gl0_m_axi RTLNAME large_gessm_gl0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gl1_m_axi RTLNAME large_gessm_gl1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gl2_m_axi RTLNAME large_gessm_gl2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gb0_m_axi RTLNAME large_gessm_gb0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gb1_m_axi RTLNAME large_gessm_gb1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gb2_m_axi RTLNAME large_gessm_gb2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gx0_m_axi RTLNAME large_gessm_gx0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gx1_m_axi RTLNAME large_gessm_gx1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gx2_m_axi RTLNAME large_gessm_gx2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gx3_m_axi RTLNAME large_gessm_gx3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gx4_m_axi RTLNAME large_gessm_gx4_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_ga0_m_axi RTLNAME large_gessm_ga0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_gw0_m_axi RTLNAME large_gessm_gw0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_gessm_control_s_axi RTLNAME large_gessm_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
