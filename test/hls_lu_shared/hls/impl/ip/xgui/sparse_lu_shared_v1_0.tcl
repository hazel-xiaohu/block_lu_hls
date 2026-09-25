# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set group_0 [ipgui::add_group $IPINST -name "group 0" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_a_row}]
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_ENABLE_ID_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_ID_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_DATA_WIDTH" -parent ${group_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_ENABLE_USER_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_AWUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_WUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_BUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_ARUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_RUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_USER_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_PROT_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_A_ROW_CACHE_VALUE" -parent ${group_0}

  #Adding Group
  set group_1 [ipgui::add_group $IPINST -name "group 1" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_a_col}]
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_ENABLE_ID_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_ID_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_DATA_WIDTH" -parent ${group_1} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_ENABLE_USER_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_AWUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_WUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_BUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_ARUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_RUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_USER_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_PROT_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_A_COL_CACHE_VALUE" -parent ${group_1}

  #Adding Group
  set group_2 [ipgui::add_group $IPINST -name "group 2" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_a_val}]
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_ENABLE_ID_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_ID_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_DATA_WIDTH" -parent ${group_2} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_ENABLE_USER_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_AWUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_WUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_BUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_ARUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_RUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_USER_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_PROT_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_A_VAL_CACHE_VALUE" -parent ${group_2}

  #Adding Group
  set group_3 [ipgui::add_group $IPINST -name "group 3" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_l_row}]
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_ENABLE_ID_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_ID_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_DATA_WIDTH" -parent ${group_3} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_ENABLE_USER_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_AWUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_WUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_BUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_ARUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_RUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_USER_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_PROT_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_L_ROW_CACHE_VALUE" -parent ${group_3}

  #Adding Group
  set group_4 [ipgui::add_group $IPINST -name "group 4" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_l_col}]
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_ENABLE_ID_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_ID_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_DATA_WIDTH" -parent ${group_4} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_ENABLE_USER_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_AWUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_WUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_BUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_ARUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_RUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_USER_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_PROT_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_L_COL_CACHE_VALUE" -parent ${group_4}

  #Adding Group
  set group_5 [ipgui::add_group $IPINST -name "group 5" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_l_val}]
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_ENABLE_ID_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_ID_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_DATA_WIDTH" -parent ${group_5} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_ENABLE_USER_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_AWUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_WUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_BUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_ARUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_RUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_USER_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_PROT_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_L_VAL_CACHE_VALUE" -parent ${group_5}

  #Adding Group
  set group_6 [ipgui::add_group $IPINST -name "group 6" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_u_row}]
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_ENABLE_ID_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_ID_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_DATA_WIDTH" -parent ${group_6} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_ENABLE_USER_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_AWUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_WUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_BUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_ARUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_RUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_USER_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_PROT_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_U_ROW_CACHE_VALUE" -parent ${group_6}

  #Adding Group
  set group_7 [ipgui::add_group $IPINST -name "group 7" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_u_col}]
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_ENABLE_ID_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_ID_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_DATA_WIDTH" -parent ${group_7} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_ENABLE_USER_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_AWUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_WUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_BUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_ARUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_RUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_USER_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_PROT_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_U_COL_CACHE_VALUE" -parent ${group_7}

  #Adding Group
  set group_8 [ipgui::add_group $IPINST -name "group 8" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_u_val}]
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_ENABLE_ID_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_ID_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_DATA_WIDTH" -parent ${group_8} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_ENABLE_USER_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_AWUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_WUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_BUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_ARUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_RUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_USER_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_PROT_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_U_VAL_CACHE_VALUE" -parent ${group_8}

  #Adding Group
  set group_9 [ipgui::add_group $IPINST -name "group 9" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_x_row}]
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_ENABLE_ID_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_ID_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_DATA_WIDTH" -parent ${group_9} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_ENABLE_USER_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_AWUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_WUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_BUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_ARUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_RUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_USER_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_PROT_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_X_ROW_CACHE_VALUE" -parent ${group_9}

  #Adding Group
  set group_10 [ipgui::add_group $IPINST -name "group 10" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_x_col}]
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_ENABLE_ID_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_ID_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_DATA_WIDTH" -parent ${group_10} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_ENABLE_USER_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_AWUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_WUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_BUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_ARUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_RUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_USER_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_PROT_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_X_COL_CACHE_VALUE" -parent ${group_10}

  #Adding Group
  set group_11 [ipgui::add_group $IPINST -name "group 11" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_x_val}]
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_ENABLE_ID_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_ID_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_DATA_WIDTH" -parent ${group_11} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_ENABLE_USER_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_AWUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_WUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_BUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_ARUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_RUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_USER_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_PROT_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_X_VAL_CACHE_VALUE" -parent ${group_11}



}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_A_ROW_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_A_ROW_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_A_ROW_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_ROW_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_A_ROW_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_ROW_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_ROW_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE } {
	# Procedure called to update C_M_AXI_A_ROW_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE } {
	# Procedure called to validate C_M_AXI_A_ROW_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE } {
	# Procedure called to update C_M_AXI_A_ROW_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_A_ROW_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_A_ROW_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_A_ROW_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_COL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_A_COL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_COL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_A_COL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_COL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_A_COL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_COL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_A_COL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_COL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_COL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE } {
	# Procedure called to update C_M_AXI_A_COL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_A_COL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_A_COL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_A_COL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_A_COL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_A_COL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_A_VAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_A_VAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_A_VAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_A_VAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_A_VAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_A_VAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_A_VAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_A_VAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_A_VAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_A_VAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_A_VAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_A_VAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_A_VAL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_L_ROW_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_L_ROW_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_L_ROW_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_ROW_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_L_ROW_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_ROW_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_ROW_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE } {
	# Procedure called to update C_M_AXI_L_ROW_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE } {
	# Procedure called to validate C_M_AXI_L_ROW_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE } {
	# Procedure called to update C_M_AXI_L_ROW_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_L_ROW_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_L_ROW_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_L_ROW_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_COL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_L_COL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_COL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_L_COL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_COL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_L_COL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_COL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_L_COL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_COL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_COL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE } {
	# Procedure called to update C_M_AXI_L_COL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_L_COL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_L_COL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_L_COL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_L_COL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_L_COL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_L_VAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_L_VAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_L_VAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_L_VAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_L_VAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_L_VAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_L_VAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_L_VAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_L_VAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_L_VAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_L_VAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_L_VAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_L_VAL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_U_ROW_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_U_ROW_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_U_ROW_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_ROW_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_U_ROW_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_ROW_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_ROW_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE } {
	# Procedure called to update C_M_AXI_U_ROW_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE } {
	# Procedure called to validate C_M_AXI_U_ROW_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE } {
	# Procedure called to update C_M_AXI_U_ROW_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_U_ROW_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_U_ROW_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_U_ROW_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_COL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_U_COL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_COL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_U_COL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_COL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_U_COL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_COL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_U_COL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_COL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_COL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE } {
	# Procedure called to update C_M_AXI_U_COL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_U_COL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_U_COL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_U_COL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_U_COL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_U_COL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_U_VAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_U_VAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_U_VAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_U_VAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_U_VAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_U_VAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_U_VAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_U_VAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_U_VAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_U_VAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_U_VAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_U_VAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_U_VAL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_X_ROW_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_X_ROW_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_X_ROW_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_ROW_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_X_ROW_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_ROW_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_ROW_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE } {
	# Procedure called to update C_M_AXI_X_ROW_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE } {
	# Procedure called to validate C_M_AXI_X_ROW_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE } {
	# Procedure called to update C_M_AXI_X_ROW_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_X_ROW_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_X_ROW_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_X_ROW_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_COL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_X_COL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_COL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_X_COL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_COL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_X_COL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_COL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_X_COL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_COL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_COL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE } {
	# Procedure called to update C_M_AXI_X_COL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE { PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_X_COL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_X_COL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_X_COL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_X_COL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_X_COL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_X_VAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_X_VAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_X_VAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_X_VAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_X_VAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_X_VAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_X_VAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_X_VAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_X_VAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_X_VAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_X_VAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_X_VAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_X_VAL_CACHE_VALUE
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 7 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_R_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_R_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_R_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 8 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_R_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_ROW_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_A_COL_USER_VALUE PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_COL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_A_VAL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_ROW_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_L_COL_USER_VALUE PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_COL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_L_VAL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_ROW_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_U_COL_USER_VALUE PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_COL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_U_VAL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_ROW_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_X_COL_USER_VALUE PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_COL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_X_VAL_CACHE_VALUE}
}

