# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA0_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SA2_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL0_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SL2_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS0_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SS2_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU0_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SU2_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW0_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_CACHE_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_PROT_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_USER_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_SW1_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state14" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state15" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state16" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state18" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state19" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state20" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state21" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state22" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state23" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state24" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state25" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state26" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state27" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state28" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state29" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state30" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state31" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state32" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state33" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state34" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state35" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state36" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state37" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state38" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state39" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state40" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state41" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state42" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state43" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state44" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state45" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state46" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state47" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state48" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state49" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state50" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state51" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state52" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state53" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state54" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state55" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state56" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state57" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state58" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state59" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state60" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state61" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state62" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state63" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state64" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state65" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state66" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state67" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state68" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state69" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_fsm_state9" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SA0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SA0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SA0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SA0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_USER_VALUE { PARAM_VALUE.C_M_AXI_SA0_USER_VALUE } {
	# Procedure called to update C_M_AXI_SA0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_USER_VALUE { PARAM_VALUE.C_M_AXI_SA0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SA0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SA1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SA1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SA1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SA1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_USER_VALUE { PARAM_VALUE.C_M_AXI_SA1_USER_VALUE } {
	# Procedure called to update C_M_AXI_SA1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_USER_VALUE { PARAM_VALUE.C_M_AXI_SA1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SA1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SA2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SA2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SA2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SA2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_USER_VALUE { PARAM_VALUE.C_M_AXI_SA2_USER_VALUE } {
	# Procedure called to update C_M_AXI_SA2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_USER_VALUE { PARAM_VALUE.C_M_AXI_SA2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SA2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SA2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SA2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SL0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SL0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SL0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SL0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_USER_VALUE { PARAM_VALUE.C_M_AXI_SL0_USER_VALUE } {
	# Procedure called to update C_M_AXI_SL0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_USER_VALUE { PARAM_VALUE.C_M_AXI_SL0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SL0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SL1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SL1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SL1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SL1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_USER_VALUE { PARAM_VALUE.C_M_AXI_SL1_USER_VALUE } {
	# Procedure called to update C_M_AXI_SL1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_USER_VALUE { PARAM_VALUE.C_M_AXI_SL1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SL1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SL2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SL2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SL2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SL2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_USER_VALUE { PARAM_VALUE.C_M_AXI_SL2_USER_VALUE } {
	# Procedure called to update C_M_AXI_SL2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_USER_VALUE { PARAM_VALUE.C_M_AXI_SL2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SL2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SL2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SL2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SS0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SS0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SS0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SS0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_USER_VALUE { PARAM_VALUE.C_M_AXI_SS0_USER_VALUE } {
	# Procedure called to update C_M_AXI_SS0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_USER_VALUE { PARAM_VALUE.C_M_AXI_SS0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SS0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SS1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SS1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SS1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SS1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_USER_VALUE { PARAM_VALUE.C_M_AXI_SS1_USER_VALUE } {
	# Procedure called to update C_M_AXI_SS1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_USER_VALUE { PARAM_VALUE.C_M_AXI_SS1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SS1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SS2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SS2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SS2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SS2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_USER_VALUE { PARAM_VALUE.C_M_AXI_SS2_USER_VALUE } {
	# Procedure called to update C_M_AXI_SS2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_USER_VALUE { PARAM_VALUE.C_M_AXI_SS2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SS2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SS2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SS2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SU0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SU0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SU0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SU0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_USER_VALUE { PARAM_VALUE.C_M_AXI_SU0_USER_VALUE } {
	# Procedure called to update C_M_AXI_SU0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_USER_VALUE { PARAM_VALUE.C_M_AXI_SU0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SU0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SU1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SU1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SU1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SU1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_USER_VALUE { PARAM_VALUE.C_M_AXI_SU1_USER_VALUE } {
	# Procedure called to update C_M_AXI_SU1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_USER_VALUE { PARAM_VALUE.C_M_AXI_SU1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SU1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SU2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SU2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH { PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SU2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE { PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SU2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_USER_VALUE { PARAM_VALUE.C_M_AXI_SU2_USER_VALUE } {
	# Procedure called to update C_M_AXI_SU2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_USER_VALUE { PARAM_VALUE.C_M_AXI_SU2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SU2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SU2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SU2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SW0_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SW0_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH { PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SW0_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE { PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SW0_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_USER_VALUE { PARAM_VALUE.C_M_AXI_SW0_USER_VALUE } {
	# Procedure called to update C_M_AXI_SW0_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_USER_VALUE { PARAM_VALUE.C_M_AXI_SW0_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SW0_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW0_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW0_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_SW1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_SW1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH { PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_SW1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE { PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_SW1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_USER_VALUE { PARAM_VALUE.C_M_AXI_SW1_USER_VALUE } {
	# Procedure called to update C_M_AXI_SW1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_USER_VALUE { PARAM_VALUE.C_M_AXI_SW1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_SW1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_SW1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_SW1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_WSTRB_WIDTH } {
	# Procedure called to update C_M_AXI_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WSTRB_WIDTH { PARAM_VALUE.C_M_AXI_WSTRB_WIDTH } {
	# Procedure called to validate C_M_AXI_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to update C_S_AXI_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to validate C_S_AXI_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state1 { PARAM_VALUE.ap_ST_fsm_state1 } {
	# Procedure called to update ap_ST_fsm_state1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state1 { PARAM_VALUE.ap_ST_fsm_state1 } {
	# Procedure called to validate ap_ST_fsm_state1
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state10 { PARAM_VALUE.ap_ST_fsm_state10 } {
	# Procedure called to update ap_ST_fsm_state10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state10 { PARAM_VALUE.ap_ST_fsm_state10 } {
	# Procedure called to validate ap_ST_fsm_state10
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state11 { PARAM_VALUE.ap_ST_fsm_state11 } {
	# Procedure called to update ap_ST_fsm_state11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state11 { PARAM_VALUE.ap_ST_fsm_state11 } {
	# Procedure called to validate ap_ST_fsm_state11
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state12 { PARAM_VALUE.ap_ST_fsm_state12 } {
	# Procedure called to update ap_ST_fsm_state12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state12 { PARAM_VALUE.ap_ST_fsm_state12 } {
	# Procedure called to validate ap_ST_fsm_state12
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state13 { PARAM_VALUE.ap_ST_fsm_state13 } {
	# Procedure called to update ap_ST_fsm_state13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state13 { PARAM_VALUE.ap_ST_fsm_state13 } {
	# Procedure called to validate ap_ST_fsm_state13
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state14 { PARAM_VALUE.ap_ST_fsm_state14 } {
	# Procedure called to update ap_ST_fsm_state14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state14 { PARAM_VALUE.ap_ST_fsm_state14 } {
	# Procedure called to validate ap_ST_fsm_state14
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state15 { PARAM_VALUE.ap_ST_fsm_state15 } {
	# Procedure called to update ap_ST_fsm_state15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state15 { PARAM_VALUE.ap_ST_fsm_state15 } {
	# Procedure called to validate ap_ST_fsm_state15
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state16 { PARAM_VALUE.ap_ST_fsm_state16 } {
	# Procedure called to update ap_ST_fsm_state16 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state16 { PARAM_VALUE.ap_ST_fsm_state16 } {
	# Procedure called to validate ap_ST_fsm_state16
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state17 { PARAM_VALUE.ap_ST_fsm_state17 } {
	# Procedure called to update ap_ST_fsm_state17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state17 { PARAM_VALUE.ap_ST_fsm_state17 } {
	# Procedure called to validate ap_ST_fsm_state17
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state18 { PARAM_VALUE.ap_ST_fsm_state18 } {
	# Procedure called to update ap_ST_fsm_state18 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state18 { PARAM_VALUE.ap_ST_fsm_state18 } {
	# Procedure called to validate ap_ST_fsm_state18
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state19 { PARAM_VALUE.ap_ST_fsm_state19 } {
	# Procedure called to update ap_ST_fsm_state19 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state19 { PARAM_VALUE.ap_ST_fsm_state19 } {
	# Procedure called to validate ap_ST_fsm_state19
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state2 { PARAM_VALUE.ap_ST_fsm_state2 } {
	# Procedure called to update ap_ST_fsm_state2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state2 { PARAM_VALUE.ap_ST_fsm_state2 } {
	# Procedure called to validate ap_ST_fsm_state2
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state20 { PARAM_VALUE.ap_ST_fsm_state20 } {
	# Procedure called to update ap_ST_fsm_state20 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state20 { PARAM_VALUE.ap_ST_fsm_state20 } {
	# Procedure called to validate ap_ST_fsm_state20
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state21 { PARAM_VALUE.ap_ST_fsm_state21 } {
	# Procedure called to update ap_ST_fsm_state21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state21 { PARAM_VALUE.ap_ST_fsm_state21 } {
	# Procedure called to validate ap_ST_fsm_state21
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state22 { PARAM_VALUE.ap_ST_fsm_state22 } {
	# Procedure called to update ap_ST_fsm_state22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state22 { PARAM_VALUE.ap_ST_fsm_state22 } {
	# Procedure called to validate ap_ST_fsm_state22
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state23 { PARAM_VALUE.ap_ST_fsm_state23 } {
	# Procedure called to update ap_ST_fsm_state23 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state23 { PARAM_VALUE.ap_ST_fsm_state23 } {
	# Procedure called to validate ap_ST_fsm_state23
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state24 { PARAM_VALUE.ap_ST_fsm_state24 } {
	# Procedure called to update ap_ST_fsm_state24 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state24 { PARAM_VALUE.ap_ST_fsm_state24 } {
	# Procedure called to validate ap_ST_fsm_state24
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state25 { PARAM_VALUE.ap_ST_fsm_state25 } {
	# Procedure called to update ap_ST_fsm_state25 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state25 { PARAM_VALUE.ap_ST_fsm_state25 } {
	# Procedure called to validate ap_ST_fsm_state25
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state26 { PARAM_VALUE.ap_ST_fsm_state26 } {
	# Procedure called to update ap_ST_fsm_state26 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state26 { PARAM_VALUE.ap_ST_fsm_state26 } {
	# Procedure called to validate ap_ST_fsm_state26
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state27 { PARAM_VALUE.ap_ST_fsm_state27 } {
	# Procedure called to update ap_ST_fsm_state27 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state27 { PARAM_VALUE.ap_ST_fsm_state27 } {
	# Procedure called to validate ap_ST_fsm_state27
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state28 { PARAM_VALUE.ap_ST_fsm_state28 } {
	# Procedure called to update ap_ST_fsm_state28 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state28 { PARAM_VALUE.ap_ST_fsm_state28 } {
	# Procedure called to validate ap_ST_fsm_state28
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state29 { PARAM_VALUE.ap_ST_fsm_state29 } {
	# Procedure called to update ap_ST_fsm_state29 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state29 { PARAM_VALUE.ap_ST_fsm_state29 } {
	# Procedure called to validate ap_ST_fsm_state29
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state3 { PARAM_VALUE.ap_ST_fsm_state3 } {
	# Procedure called to update ap_ST_fsm_state3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state3 { PARAM_VALUE.ap_ST_fsm_state3 } {
	# Procedure called to validate ap_ST_fsm_state3
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state30 { PARAM_VALUE.ap_ST_fsm_state30 } {
	# Procedure called to update ap_ST_fsm_state30 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state30 { PARAM_VALUE.ap_ST_fsm_state30 } {
	# Procedure called to validate ap_ST_fsm_state30
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state31 { PARAM_VALUE.ap_ST_fsm_state31 } {
	# Procedure called to update ap_ST_fsm_state31 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state31 { PARAM_VALUE.ap_ST_fsm_state31 } {
	# Procedure called to validate ap_ST_fsm_state31
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state32 { PARAM_VALUE.ap_ST_fsm_state32 } {
	# Procedure called to update ap_ST_fsm_state32 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state32 { PARAM_VALUE.ap_ST_fsm_state32 } {
	# Procedure called to validate ap_ST_fsm_state32
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state33 { PARAM_VALUE.ap_ST_fsm_state33 } {
	# Procedure called to update ap_ST_fsm_state33 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state33 { PARAM_VALUE.ap_ST_fsm_state33 } {
	# Procedure called to validate ap_ST_fsm_state33
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state34 { PARAM_VALUE.ap_ST_fsm_state34 } {
	# Procedure called to update ap_ST_fsm_state34 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state34 { PARAM_VALUE.ap_ST_fsm_state34 } {
	# Procedure called to validate ap_ST_fsm_state34
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state35 { PARAM_VALUE.ap_ST_fsm_state35 } {
	# Procedure called to update ap_ST_fsm_state35 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state35 { PARAM_VALUE.ap_ST_fsm_state35 } {
	# Procedure called to validate ap_ST_fsm_state35
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state36 { PARAM_VALUE.ap_ST_fsm_state36 } {
	# Procedure called to update ap_ST_fsm_state36 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state36 { PARAM_VALUE.ap_ST_fsm_state36 } {
	# Procedure called to validate ap_ST_fsm_state36
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state37 { PARAM_VALUE.ap_ST_fsm_state37 } {
	# Procedure called to update ap_ST_fsm_state37 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state37 { PARAM_VALUE.ap_ST_fsm_state37 } {
	# Procedure called to validate ap_ST_fsm_state37
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state38 { PARAM_VALUE.ap_ST_fsm_state38 } {
	# Procedure called to update ap_ST_fsm_state38 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state38 { PARAM_VALUE.ap_ST_fsm_state38 } {
	# Procedure called to validate ap_ST_fsm_state38
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state39 { PARAM_VALUE.ap_ST_fsm_state39 } {
	# Procedure called to update ap_ST_fsm_state39 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state39 { PARAM_VALUE.ap_ST_fsm_state39 } {
	# Procedure called to validate ap_ST_fsm_state39
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state4 { PARAM_VALUE.ap_ST_fsm_state4 } {
	# Procedure called to update ap_ST_fsm_state4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state4 { PARAM_VALUE.ap_ST_fsm_state4 } {
	# Procedure called to validate ap_ST_fsm_state4
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state40 { PARAM_VALUE.ap_ST_fsm_state40 } {
	# Procedure called to update ap_ST_fsm_state40 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state40 { PARAM_VALUE.ap_ST_fsm_state40 } {
	# Procedure called to validate ap_ST_fsm_state40
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state41 { PARAM_VALUE.ap_ST_fsm_state41 } {
	# Procedure called to update ap_ST_fsm_state41 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state41 { PARAM_VALUE.ap_ST_fsm_state41 } {
	# Procedure called to validate ap_ST_fsm_state41
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state42 { PARAM_VALUE.ap_ST_fsm_state42 } {
	# Procedure called to update ap_ST_fsm_state42 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state42 { PARAM_VALUE.ap_ST_fsm_state42 } {
	# Procedure called to validate ap_ST_fsm_state42
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state43 { PARAM_VALUE.ap_ST_fsm_state43 } {
	# Procedure called to update ap_ST_fsm_state43 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state43 { PARAM_VALUE.ap_ST_fsm_state43 } {
	# Procedure called to validate ap_ST_fsm_state43
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state44 { PARAM_VALUE.ap_ST_fsm_state44 } {
	# Procedure called to update ap_ST_fsm_state44 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state44 { PARAM_VALUE.ap_ST_fsm_state44 } {
	# Procedure called to validate ap_ST_fsm_state44
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state45 { PARAM_VALUE.ap_ST_fsm_state45 } {
	# Procedure called to update ap_ST_fsm_state45 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state45 { PARAM_VALUE.ap_ST_fsm_state45 } {
	# Procedure called to validate ap_ST_fsm_state45
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state46 { PARAM_VALUE.ap_ST_fsm_state46 } {
	# Procedure called to update ap_ST_fsm_state46 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state46 { PARAM_VALUE.ap_ST_fsm_state46 } {
	# Procedure called to validate ap_ST_fsm_state46
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state47 { PARAM_VALUE.ap_ST_fsm_state47 } {
	# Procedure called to update ap_ST_fsm_state47 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state47 { PARAM_VALUE.ap_ST_fsm_state47 } {
	# Procedure called to validate ap_ST_fsm_state47
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state48 { PARAM_VALUE.ap_ST_fsm_state48 } {
	# Procedure called to update ap_ST_fsm_state48 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state48 { PARAM_VALUE.ap_ST_fsm_state48 } {
	# Procedure called to validate ap_ST_fsm_state48
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state49 { PARAM_VALUE.ap_ST_fsm_state49 } {
	# Procedure called to update ap_ST_fsm_state49 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state49 { PARAM_VALUE.ap_ST_fsm_state49 } {
	# Procedure called to validate ap_ST_fsm_state49
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state5 { PARAM_VALUE.ap_ST_fsm_state5 } {
	# Procedure called to update ap_ST_fsm_state5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state5 { PARAM_VALUE.ap_ST_fsm_state5 } {
	# Procedure called to validate ap_ST_fsm_state5
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state50 { PARAM_VALUE.ap_ST_fsm_state50 } {
	# Procedure called to update ap_ST_fsm_state50 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state50 { PARAM_VALUE.ap_ST_fsm_state50 } {
	# Procedure called to validate ap_ST_fsm_state50
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state51 { PARAM_VALUE.ap_ST_fsm_state51 } {
	# Procedure called to update ap_ST_fsm_state51 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state51 { PARAM_VALUE.ap_ST_fsm_state51 } {
	# Procedure called to validate ap_ST_fsm_state51
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state52 { PARAM_VALUE.ap_ST_fsm_state52 } {
	# Procedure called to update ap_ST_fsm_state52 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state52 { PARAM_VALUE.ap_ST_fsm_state52 } {
	# Procedure called to validate ap_ST_fsm_state52
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state53 { PARAM_VALUE.ap_ST_fsm_state53 } {
	# Procedure called to update ap_ST_fsm_state53 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state53 { PARAM_VALUE.ap_ST_fsm_state53 } {
	# Procedure called to validate ap_ST_fsm_state53
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state54 { PARAM_VALUE.ap_ST_fsm_state54 } {
	# Procedure called to update ap_ST_fsm_state54 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state54 { PARAM_VALUE.ap_ST_fsm_state54 } {
	# Procedure called to validate ap_ST_fsm_state54
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state55 { PARAM_VALUE.ap_ST_fsm_state55 } {
	# Procedure called to update ap_ST_fsm_state55 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state55 { PARAM_VALUE.ap_ST_fsm_state55 } {
	# Procedure called to validate ap_ST_fsm_state55
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state56 { PARAM_VALUE.ap_ST_fsm_state56 } {
	# Procedure called to update ap_ST_fsm_state56 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state56 { PARAM_VALUE.ap_ST_fsm_state56 } {
	# Procedure called to validate ap_ST_fsm_state56
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state57 { PARAM_VALUE.ap_ST_fsm_state57 } {
	# Procedure called to update ap_ST_fsm_state57 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state57 { PARAM_VALUE.ap_ST_fsm_state57 } {
	# Procedure called to validate ap_ST_fsm_state57
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state58 { PARAM_VALUE.ap_ST_fsm_state58 } {
	# Procedure called to update ap_ST_fsm_state58 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state58 { PARAM_VALUE.ap_ST_fsm_state58 } {
	# Procedure called to validate ap_ST_fsm_state58
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state59 { PARAM_VALUE.ap_ST_fsm_state59 } {
	# Procedure called to update ap_ST_fsm_state59 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state59 { PARAM_VALUE.ap_ST_fsm_state59 } {
	# Procedure called to validate ap_ST_fsm_state59
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state6 { PARAM_VALUE.ap_ST_fsm_state6 } {
	# Procedure called to update ap_ST_fsm_state6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state6 { PARAM_VALUE.ap_ST_fsm_state6 } {
	# Procedure called to validate ap_ST_fsm_state6
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state60 { PARAM_VALUE.ap_ST_fsm_state60 } {
	# Procedure called to update ap_ST_fsm_state60 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state60 { PARAM_VALUE.ap_ST_fsm_state60 } {
	# Procedure called to validate ap_ST_fsm_state60
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state61 { PARAM_VALUE.ap_ST_fsm_state61 } {
	# Procedure called to update ap_ST_fsm_state61 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state61 { PARAM_VALUE.ap_ST_fsm_state61 } {
	# Procedure called to validate ap_ST_fsm_state61
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state62 { PARAM_VALUE.ap_ST_fsm_state62 } {
	# Procedure called to update ap_ST_fsm_state62 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state62 { PARAM_VALUE.ap_ST_fsm_state62 } {
	# Procedure called to validate ap_ST_fsm_state62
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state63 { PARAM_VALUE.ap_ST_fsm_state63 } {
	# Procedure called to update ap_ST_fsm_state63 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state63 { PARAM_VALUE.ap_ST_fsm_state63 } {
	# Procedure called to validate ap_ST_fsm_state63
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state64 { PARAM_VALUE.ap_ST_fsm_state64 } {
	# Procedure called to update ap_ST_fsm_state64 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state64 { PARAM_VALUE.ap_ST_fsm_state64 } {
	# Procedure called to validate ap_ST_fsm_state64
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state65 { PARAM_VALUE.ap_ST_fsm_state65 } {
	# Procedure called to update ap_ST_fsm_state65 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state65 { PARAM_VALUE.ap_ST_fsm_state65 } {
	# Procedure called to validate ap_ST_fsm_state65
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state66 { PARAM_VALUE.ap_ST_fsm_state66 } {
	# Procedure called to update ap_ST_fsm_state66 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state66 { PARAM_VALUE.ap_ST_fsm_state66 } {
	# Procedure called to validate ap_ST_fsm_state66
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state67 { PARAM_VALUE.ap_ST_fsm_state67 } {
	# Procedure called to update ap_ST_fsm_state67 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state67 { PARAM_VALUE.ap_ST_fsm_state67 } {
	# Procedure called to validate ap_ST_fsm_state67
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state68 { PARAM_VALUE.ap_ST_fsm_state68 } {
	# Procedure called to update ap_ST_fsm_state68 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state68 { PARAM_VALUE.ap_ST_fsm_state68 } {
	# Procedure called to validate ap_ST_fsm_state68
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state69 { PARAM_VALUE.ap_ST_fsm_state69 } {
	# Procedure called to update ap_ST_fsm_state69 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state69 { PARAM_VALUE.ap_ST_fsm_state69 } {
	# Procedure called to validate ap_ST_fsm_state69
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state7 { PARAM_VALUE.ap_ST_fsm_state7 } {
	# Procedure called to update ap_ST_fsm_state7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state7 { PARAM_VALUE.ap_ST_fsm_state7 } {
	# Procedure called to validate ap_ST_fsm_state7
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state8 { PARAM_VALUE.ap_ST_fsm_state8 } {
	# Procedure called to update ap_ST_fsm_state8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state8 { PARAM_VALUE.ap_ST_fsm_state8 } {
	# Procedure called to validate ap_ST_fsm_state8
	return true
}

proc update_PARAM_VALUE.ap_ST_fsm_state9 { PARAM_VALUE.ap_ST_fsm_state9 } {
	# Procedure called to update ap_ST_fsm_state9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_fsm_state9 { PARAM_VALUE.ap_ST_fsm_state9 } {
	# Procedure called to validate ap_ST_fsm_state9
	return true
}


proc update_MODELPARAM_VALUE.ap_ST_fsm_state1 { MODELPARAM_VALUE.ap_ST_fsm_state1 PARAM_VALUE.ap_ST_fsm_state1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state1}] ${MODELPARAM_VALUE.ap_ST_fsm_state1}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state2 { MODELPARAM_VALUE.ap_ST_fsm_state2 PARAM_VALUE.ap_ST_fsm_state2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state2}] ${MODELPARAM_VALUE.ap_ST_fsm_state2}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state3 { MODELPARAM_VALUE.ap_ST_fsm_state3 PARAM_VALUE.ap_ST_fsm_state3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state3}] ${MODELPARAM_VALUE.ap_ST_fsm_state3}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state4 { MODELPARAM_VALUE.ap_ST_fsm_state4 PARAM_VALUE.ap_ST_fsm_state4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state4}] ${MODELPARAM_VALUE.ap_ST_fsm_state4}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state5 { MODELPARAM_VALUE.ap_ST_fsm_state5 PARAM_VALUE.ap_ST_fsm_state5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state5}] ${MODELPARAM_VALUE.ap_ST_fsm_state5}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state6 { MODELPARAM_VALUE.ap_ST_fsm_state6 PARAM_VALUE.ap_ST_fsm_state6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state6}] ${MODELPARAM_VALUE.ap_ST_fsm_state6}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state7 { MODELPARAM_VALUE.ap_ST_fsm_state7 PARAM_VALUE.ap_ST_fsm_state7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state7}] ${MODELPARAM_VALUE.ap_ST_fsm_state7}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state8 { MODELPARAM_VALUE.ap_ST_fsm_state8 PARAM_VALUE.ap_ST_fsm_state8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state8}] ${MODELPARAM_VALUE.ap_ST_fsm_state8}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state9 { MODELPARAM_VALUE.ap_ST_fsm_state9 PARAM_VALUE.ap_ST_fsm_state9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state9}] ${MODELPARAM_VALUE.ap_ST_fsm_state9}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state10 { MODELPARAM_VALUE.ap_ST_fsm_state10 PARAM_VALUE.ap_ST_fsm_state10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state10}] ${MODELPARAM_VALUE.ap_ST_fsm_state10}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state11 { MODELPARAM_VALUE.ap_ST_fsm_state11 PARAM_VALUE.ap_ST_fsm_state11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state11}] ${MODELPARAM_VALUE.ap_ST_fsm_state11}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state12 { MODELPARAM_VALUE.ap_ST_fsm_state12 PARAM_VALUE.ap_ST_fsm_state12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state12}] ${MODELPARAM_VALUE.ap_ST_fsm_state12}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state13 { MODELPARAM_VALUE.ap_ST_fsm_state13 PARAM_VALUE.ap_ST_fsm_state13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state13}] ${MODELPARAM_VALUE.ap_ST_fsm_state13}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state14 { MODELPARAM_VALUE.ap_ST_fsm_state14 PARAM_VALUE.ap_ST_fsm_state14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state14}] ${MODELPARAM_VALUE.ap_ST_fsm_state14}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state15 { MODELPARAM_VALUE.ap_ST_fsm_state15 PARAM_VALUE.ap_ST_fsm_state15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state15}] ${MODELPARAM_VALUE.ap_ST_fsm_state15}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state16 { MODELPARAM_VALUE.ap_ST_fsm_state16 PARAM_VALUE.ap_ST_fsm_state16 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state16}] ${MODELPARAM_VALUE.ap_ST_fsm_state16}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state17 { MODELPARAM_VALUE.ap_ST_fsm_state17 PARAM_VALUE.ap_ST_fsm_state17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state17}] ${MODELPARAM_VALUE.ap_ST_fsm_state17}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state18 { MODELPARAM_VALUE.ap_ST_fsm_state18 PARAM_VALUE.ap_ST_fsm_state18 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state18}] ${MODELPARAM_VALUE.ap_ST_fsm_state18}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state19 { MODELPARAM_VALUE.ap_ST_fsm_state19 PARAM_VALUE.ap_ST_fsm_state19 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state19}] ${MODELPARAM_VALUE.ap_ST_fsm_state19}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state20 { MODELPARAM_VALUE.ap_ST_fsm_state20 PARAM_VALUE.ap_ST_fsm_state20 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state20}] ${MODELPARAM_VALUE.ap_ST_fsm_state20}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state21 { MODELPARAM_VALUE.ap_ST_fsm_state21 PARAM_VALUE.ap_ST_fsm_state21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state21}] ${MODELPARAM_VALUE.ap_ST_fsm_state21}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state22 { MODELPARAM_VALUE.ap_ST_fsm_state22 PARAM_VALUE.ap_ST_fsm_state22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state22}] ${MODELPARAM_VALUE.ap_ST_fsm_state22}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state23 { MODELPARAM_VALUE.ap_ST_fsm_state23 PARAM_VALUE.ap_ST_fsm_state23 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state23}] ${MODELPARAM_VALUE.ap_ST_fsm_state23}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state24 { MODELPARAM_VALUE.ap_ST_fsm_state24 PARAM_VALUE.ap_ST_fsm_state24 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state24}] ${MODELPARAM_VALUE.ap_ST_fsm_state24}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state25 { MODELPARAM_VALUE.ap_ST_fsm_state25 PARAM_VALUE.ap_ST_fsm_state25 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state25}] ${MODELPARAM_VALUE.ap_ST_fsm_state25}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state26 { MODELPARAM_VALUE.ap_ST_fsm_state26 PARAM_VALUE.ap_ST_fsm_state26 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state26}] ${MODELPARAM_VALUE.ap_ST_fsm_state26}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state27 { MODELPARAM_VALUE.ap_ST_fsm_state27 PARAM_VALUE.ap_ST_fsm_state27 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state27}] ${MODELPARAM_VALUE.ap_ST_fsm_state27}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state28 { MODELPARAM_VALUE.ap_ST_fsm_state28 PARAM_VALUE.ap_ST_fsm_state28 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state28}] ${MODELPARAM_VALUE.ap_ST_fsm_state28}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state29 { MODELPARAM_VALUE.ap_ST_fsm_state29 PARAM_VALUE.ap_ST_fsm_state29 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state29}] ${MODELPARAM_VALUE.ap_ST_fsm_state29}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state30 { MODELPARAM_VALUE.ap_ST_fsm_state30 PARAM_VALUE.ap_ST_fsm_state30 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state30}] ${MODELPARAM_VALUE.ap_ST_fsm_state30}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state31 { MODELPARAM_VALUE.ap_ST_fsm_state31 PARAM_VALUE.ap_ST_fsm_state31 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state31}] ${MODELPARAM_VALUE.ap_ST_fsm_state31}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state32 { MODELPARAM_VALUE.ap_ST_fsm_state32 PARAM_VALUE.ap_ST_fsm_state32 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state32}] ${MODELPARAM_VALUE.ap_ST_fsm_state32}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state33 { MODELPARAM_VALUE.ap_ST_fsm_state33 PARAM_VALUE.ap_ST_fsm_state33 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state33}] ${MODELPARAM_VALUE.ap_ST_fsm_state33}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state34 { MODELPARAM_VALUE.ap_ST_fsm_state34 PARAM_VALUE.ap_ST_fsm_state34 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state34}] ${MODELPARAM_VALUE.ap_ST_fsm_state34}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state35 { MODELPARAM_VALUE.ap_ST_fsm_state35 PARAM_VALUE.ap_ST_fsm_state35 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state35}] ${MODELPARAM_VALUE.ap_ST_fsm_state35}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state36 { MODELPARAM_VALUE.ap_ST_fsm_state36 PARAM_VALUE.ap_ST_fsm_state36 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state36}] ${MODELPARAM_VALUE.ap_ST_fsm_state36}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state37 { MODELPARAM_VALUE.ap_ST_fsm_state37 PARAM_VALUE.ap_ST_fsm_state37 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state37}] ${MODELPARAM_VALUE.ap_ST_fsm_state37}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state38 { MODELPARAM_VALUE.ap_ST_fsm_state38 PARAM_VALUE.ap_ST_fsm_state38 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state38}] ${MODELPARAM_VALUE.ap_ST_fsm_state38}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state39 { MODELPARAM_VALUE.ap_ST_fsm_state39 PARAM_VALUE.ap_ST_fsm_state39 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state39}] ${MODELPARAM_VALUE.ap_ST_fsm_state39}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state40 { MODELPARAM_VALUE.ap_ST_fsm_state40 PARAM_VALUE.ap_ST_fsm_state40 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state40}] ${MODELPARAM_VALUE.ap_ST_fsm_state40}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state41 { MODELPARAM_VALUE.ap_ST_fsm_state41 PARAM_VALUE.ap_ST_fsm_state41 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state41}] ${MODELPARAM_VALUE.ap_ST_fsm_state41}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state42 { MODELPARAM_VALUE.ap_ST_fsm_state42 PARAM_VALUE.ap_ST_fsm_state42 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state42}] ${MODELPARAM_VALUE.ap_ST_fsm_state42}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state43 { MODELPARAM_VALUE.ap_ST_fsm_state43 PARAM_VALUE.ap_ST_fsm_state43 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state43}] ${MODELPARAM_VALUE.ap_ST_fsm_state43}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state44 { MODELPARAM_VALUE.ap_ST_fsm_state44 PARAM_VALUE.ap_ST_fsm_state44 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state44}] ${MODELPARAM_VALUE.ap_ST_fsm_state44}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state45 { MODELPARAM_VALUE.ap_ST_fsm_state45 PARAM_VALUE.ap_ST_fsm_state45 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state45}] ${MODELPARAM_VALUE.ap_ST_fsm_state45}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state46 { MODELPARAM_VALUE.ap_ST_fsm_state46 PARAM_VALUE.ap_ST_fsm_state46 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state46}] ${MODELPARAM_VALUE.ap_ST_fsm_state46}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state47 { MODELPARAM_VALUE.ap_ST_fsm_state47 PARAM_VALUE.ap_ST_fsm_state47 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state47}] ${MODELPARAM_VALUE.ap_ST_fsm_state47}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state48 { MODELPARAM_VALUE.ap_ST_fsm_state48 PARAM_VALUE.ap_ST_fsm_state48 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state48}] ${MODELPARAM_VALUE.ap_ST_fsm_state48}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state49 { MODELPARAM_VALUE.ap_ST_fsm_state49 PARAM_VALUE.ap_ST_fsm_state49 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state49}] ${MODELPARAM_VALUE.ap_ST_fsm_state49}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state50 { MODELPARAM_VALUE.ap_ST_fsm_state50 PARAM_VALUE.ap_ST_fsm_state50 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state50}] ${MODELPARAM_VALUE.ap_ST_fsm_state50}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state51 { MODELPARAM_VALUE.ap_ST_fsm_state51 PARAM_VALUE.ap_ST_fsm_state51 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state51}] ${MODELPARAM_VALUE.ap_ST_fsm_state51}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state52 { MODELPARAM_VALUE.ap_ST_fsm_state52 PARAM_VALUE.ap_ST_fsm_state52 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state52}] ${MODELPARAM_VALUE.ap_ST_fsm_state52}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state53 { MODELPARAM_VALUE.ap_ST_fsm_state53 PARAM_VALUE.ap_ST_fsm_state53 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state53}] ${MODELPARAM_VALUE.ap_ST_fsm_state53}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state54 { MODELPARAM_VALUE.ap_ST_fsm_state54 PARAM_VALUE.ap_ST_fsm_state54 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state54}] ${MODELPARAM_VALUE.ap_ST_fsm_state54}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state55 { MODELPARAM_VALUE.ap_ST_fsm_state55 PARAM_VALUE.ap_ST_fsm_state55 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state55}] ${MODELPARAM_VALUE.ap_ST_fsm_state55}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state56 { MODELPARAM_VALUE.ap_ST_fsm_state56 PARAM_VALUE.ap_ST_fsm_state56 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state56}] ${MODELPARAM_VALUE.ap_ST_fsm_state56}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state57 { MODELPARAM_VALUE.ap_ST_fsm_state57 PARAM_VALUE.ap_ST_fsm_state57 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state57}] ${MODELPARAM_VALUE.ap_ST_fsm_state57}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state58 { MODELPARAM_VALUE.ap_ST_fsm_state58 PARAM_VALUE.ap_ST_fsm_state58 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state58}] ${MODELPARAM_VALUE.ap_ST_fsm_state58}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state59 { MODELPARAM_VALUE.ap_ST_fsm_state59 PARAM_VALUE.ap_ST_fsm_state59 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state59}] ${MODELPARAM_VALUE.ap_ST_fsm_state59}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state60 { MODELPARAM_VALUE.ap_ST_fsm_state60 PARAM_VALUE.ap_ST_fsm_state60 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state60}] ${MODELPARAM_VALUE.ap_ST_fsm_state60}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state61 { MODELPARAM_VALUE.ap_ST_fsm_state61 PARAM_VALUE.ap_ST_fsm_state61 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state61}] ${MODELPARAM_VALUE.ap_ST_fsm_state61}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state62 { MODELPARAM_VALUE.ap_ST_fsm_state62 PARAM_VALUE.ap_ST_fsm_state62 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state62}] ${MODELPARAM_VALUE.ap_ST_fsm_state62}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state63 { MODELPARAM_VALUE.ap_ST_fsm_state63 PARAM_VALUE.ap_ST_fsm_state63 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state63}] ${MODELPARAM_VALUE.ap_ST_fsm_state63}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state64 { MODELPARAM_VALUE.ap_ST_fsm_state64 PARAM_VALUE.ap_ST_fsm_state64 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state64}] ${MODELPARAM_VALUE.ap_ST_fsm_state64}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state65 { MODELPARAM_VALUE.ap_ST_fsm_state65 PARAM_VALUE.ap_ST_fsm_state65 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state65}] ${MODELPARAM_VALUE.ap_ST_fsm_state65}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state66 { MODELPARAM_VALUE.ap_ST_fsm_state66 PARAM_VALUE.ap_ST_fsm_state66 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state66}] ${MODELPARAM_VALUE.ap_ST_fsm_state66}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state67 { MODELPARAM_VALUE.ap_ST_fsm_state67 PARAM_VALUE.ap_ST_fsm_state67 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state67}] ${MODELPARAM_VALUE.ap_ST_fsm_state67}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state68 { MODELPARAM_VALUE.ap_ST_fsm_state68 PARAM_VALUE.ap_ST_fsm_state68 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state68}] ${MODELPARAM_VALUE.ap_ST_fsm_state68}
}

proc update_MODELPARAM_VALUE.ap_ST_fsm_state69 { MODELPARAM_VALUE.ap_ST_fsm_state69 PARAM_VALUE.ap_ST_fsm_state69 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_fsm_state69}] ${MODELPARAM_VALUE.ap_ST_fsm_state69}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_ID_WIDTH PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SA0_USER_VALUE PARAM_VALUE.C_M_AXI_SA0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SA0_PROT_VALUE PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_ID_WIDTH PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SA1_USER_VALUE PARAM_VALUE.C_M_AXI_SA1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SA1_PROT_VALUE PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_ID_WIDTH PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SA2_USER_VALUE PARAM_VALUE.C_M_AXI_SA2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SA2_PROT_VALUE PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SA2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_ID_WIDTH PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SL0_USER_VALUE PARAM_VALUE.C_M_AXI_SL0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SL0_PROT_VALUE PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_ID_WIDTH PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SL1_USER_VALUE PARAM_VALUE.C_M_AXI_SL1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SL1_PROT_VALUE PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_ID_WIDTH PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SL2_USER_VALUE PARAM_VALUE.C_M_AXI_SL2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SL2_PROT_VALUE PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SL2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_ID_WIDTH PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SS0_USER_VALUE PARAM_VALUE.C_M_AXI_SS0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SS0_PROT_VALUE PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_ID_WIDTH PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SS1_USER_VALUE PARAM_VALUE.C_M_AXI_SS1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SS1_PROT_VALUE PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_ID_WIDTH PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SS2_USER_VALUE PARAM_VALUE.C_M_AXI_SS2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SS2_PROT_VALUE PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SS2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_ID_WIDTH PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SU0_USER_VALUE PARAM_VALUE.C_M_AXI_SU0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SU0_PROT_VALUE PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_ID_WIDTH PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SU1_USER_VALUE PARAM_VALUE.C_M_AXI_SU1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SU1_PROT_VALUE PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_ID_WIDTH PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SU2_USER_VALUE PARAM_VALUE.C_M_AXI_SU2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SU2_PROT_VALUE PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SU2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_ID_WIDTH PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SW0_USER_VALUE PARAM_VALUE.C_M_AXI_SW0_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW0_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SW0_PROT_VALUE PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW0_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW0_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_ID_WIDTH PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_SW1_USER_VALUE PARAM_VALUE.C_M_AXI_SW1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_SW1_PROT_VALUE PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_SW1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SW0_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU2_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SU0_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS2_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SS0_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL2_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SL0_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA2_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA1_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH { MODELPARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_SA0_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH { MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH}
}

