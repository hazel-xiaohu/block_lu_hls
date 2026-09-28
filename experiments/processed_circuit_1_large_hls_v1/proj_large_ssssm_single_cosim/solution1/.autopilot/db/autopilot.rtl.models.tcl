set SynModuleInfo {
  {SRCNAME large_ssssm_Pipeline_VITIS_LOOP_173_2 MODELNAME large_ssssm_Pipeline_VITIS_LOOP_173_2 RTLNAME large_ssssm_large_ssssm_Pipeline_VITIS_LOOP_173_2
    SUBMODULES {
      {MODELNAME large_ssssm_flow_control_loop_pipe_sequential_init RTLNAME large_ssssm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME large_ssssm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME large_ssssm_Pipeline_VITIS_LOOP_176_3 MODELNAME large_ssssm_Pipeline_VITIS_LOOP_176_3 RTLNAME large_ssssm_large_ssssm_Pipeline_VITIS_LOOP_176_3}
  {SRCNAME large_ssssm_Pipeline_VITIS_LOOP_183_5 MODELNAME large_ssssm_Pipeline_VITIS_LOOP_183_5 RTLNAME large_ssssm_large_ssssm_Pipeline_VITIS_LOOP_183_5
    SUBMODULES {
      {MODELNAME large_ssssm_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME large_ssssm_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_ssssm_Pipeline_VITIS_LOOP_189_6 MODELNAME large_ssssm_Pipeline_VITIS_LOOP_189_6 RTLNAME large_ssssm_large_ssssm_Pipeline_VITIS_LOOP_189_6}
  {SRCNAME large_ssssm MODELNAME large_ssssm RTLNAME large_ssssm IS_TOP 1
    SUBMODULES {
      {MODELNAME large_ssssm_faddfsub_32ns_32ns_32_8_full_dsp_1 RTLNAME large_ssssm_faddfsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME large_ssssm_sa0_m_axi RTLNAME large_ssssm_sa0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sa1_m_axi RTLNAME large_ssssm_sa1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sa2_m_axi RTLNAME large_ssssm_sa2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sl0_m_axi RTLNAME large_ssssm_sl0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sl1_m_axi RTLNAME large_ssssm_sl1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sl2_m_axi RTLNAME large_ssssm_sl2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_su0_m_axi RTLNAME large_ssssm_su0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_su1_m_axi RTLNAME large_ssssm_su1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_su2_m_axi RTLNAME large_ssssm_su2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_ss0_m_axi RTLNAME large_ssssm_ss0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_ss1_m_axi RTLNAME large_ssssm_ss1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_ss2_m_axi RTLNAME large_ssssm_ss2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sw0_m_axi RTLNAME large_ssssm_sw0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_sw1_m_axi RTLNAME large_ssssm_sw1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_ssssm_control_s_axi RTLNAME large_ssssm_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
