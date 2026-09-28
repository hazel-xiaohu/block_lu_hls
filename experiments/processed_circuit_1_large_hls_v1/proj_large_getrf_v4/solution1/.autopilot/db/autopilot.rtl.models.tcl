set SynModuleInfo {
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_47_1 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_47_1 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_47_1
    SUBMODULES {
      {MODELNAME large_getrf_v4_flow_control_loop_pipe_sequential_init RTLNAME large_getrf_v4_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME large_getrf_v4_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_53_3 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_53_3 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_53_3}
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_57_4 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_57_4 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_57_4}
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_61_5 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_61_5 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_61_5
    SUBMODULES {
      {MODELNAME large_getrf_v4_fadd_32ns_32ns_32_6_no_dsp_1 RTLNAME large_getrf_v4_fadd_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_mux_42_32_1_1 RTLNAME large_getrf_v4_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_80_7 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_80_7 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_80_7}
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_98_11 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_98_11 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_98_11
    SUBMODULES {
      {MODELNAME large_getrf_v4_mux_42_1_1_1 RTLNAME large_getrf_v4_mux_42_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_107_13 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_107_13 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_107_13
    SUBMODULES {
      {MODELNAME large_getrf_v4_fsub_32ns_32ns_32_8_full_dsp_1 RTLNAME large_getrf_v4_fsub_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_fmul_32ns_32ns_32_5_max_dsp_1 RTLNAME large_getrf_v4_fmul_32ns_32ns_32_5_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_101_12 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_101_12 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_101_12}
  {SRCNAME large_getrf_v4_Pipeline_VITIS_LOOP_116_14 MODELNAME large_getrf_v4_Pipeline_VITIS_LOOP_116_14 RTLNAME large_getrf_v4_large_getrf_v4_Pipeline_VITIS_LOOP_116_14}
  {SRCNAME large_getrf_v4 MODELNAME large_getrf_v4 RTLNAME large_getrf_v4 IS_TOP 1
    SUBMODULES {
      {MODELNAME large_getrf_v4_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME large_getrf_v4_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME large_getrf_v4_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_work_bank_RAM_2P_BRAM_1R1W RTLNAME large_getrf_v4_work_bank_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_inv_diag_RAM_2P_BRAM_1R1W RTLNAME large_getrf_v4_inv_diag_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_row_idx_RAM_1P_BRAM_1R1W RTLNAME large_getrf_v4_row_idx_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME large_getrf_v4_v4a0_m_axi RTLNAME large_getrf_v4_v4a0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4a1_m_axi RTLNAME large_getrf_v4_v4a1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4a2_m_axi RTLNAME large_getrf_v4_v4a2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4l0_m_axi RTLNAME large_getrf_v4_v4l0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4l1_m_axi RTLNAME large_getrf_v4_v4l1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4l2_m_axi RTLNAME large_getrf_v4_v4l2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4u0_m_axi RTLNAME large_getrf_v4_v4u0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4u1_m_axi RTLNAME large_getrf_v4_v4u1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4u2_m_axi RTLNAME large_getrf_v4_v4u2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_v4u3_m_axi RTLNAME large_getrf_v4_v4u3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME large_getrf_v4_control_s_axi RTLNAME large_getrf_v4_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
