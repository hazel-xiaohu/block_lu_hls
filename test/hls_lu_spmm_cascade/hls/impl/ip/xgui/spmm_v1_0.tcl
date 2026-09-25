# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set group_0 [ipgui::add_group $IPINST -name "group 0" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_acid}]
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_ENABLE_ID_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_ID_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_DATA_WIDTH" -parent ${group_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_ENABLE_USER_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_AWUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_WUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_BUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_ARUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_RUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_USER_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_PROT_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACID_CACHE_VALUE" -parent ${group_0}

  #Adding Group
  set group_1 [ipgui::add_group $IPINST -name "group 1" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_arcsr}]
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_ENABLE_ID_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_ID_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_DATA_WIDTH" -parent ${group_1} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_ENABLE_USER_PORTS" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_AWUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_WUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_BUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_ARUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_RUSER_WIDTH" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_USER_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_PROT_VALUE" -parent ${group_1}
  ipgui::add_param $IPINST -name "C_M_AXI_ARCSR_CACHE_VALUE" -parent ${group_1}

  #Adding Group
  set group_2 [ipgui::add_group $IPINST -name "group 2" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_aval}]
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_ENABLE_ID_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_ID_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_DATA_WIDTH" -parent ${group_2} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_ENABLE_USER_PORTS" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_AWUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_WUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_BUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_ARUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_RUSER_WIDTH" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_USER_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_PROT_VALUE" -parent ${group_2}
  ipgui::add_param $IPINST -name "C_M_AXI_AVAL_CACHE_VALUE" -parent ${group_2}

  #Adding Group
  set group_3 [ipgui::add_group $IPINST -name "group 3" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bc1}]
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_ENABLE_ID_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_ID_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_DATA_WIDTH" -parent ${group_3} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_ENABLE_USER_PORTS" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_AWUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_WUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_BUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_ARUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_RUSER_WIDTH" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_USER_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_PROT_VALUE" -parent ${group_3}
  ipgui::add_param $IPINST -name "C_M_AXI_BC1_CACHE_VALUE" -parent ${group_3}

  #Adding Group
  set group_4 [ipgui::add_group $IPINST -name "group 4" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bc2}]
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_ENABLE_ID_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_ID_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_DATA_WIDTH" -parent ${group_4} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_ENABLE_USER_PORTS" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_AWUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_WUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_BUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_ARUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_RUSER_WIDTH" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_USER_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_PROT_VALUE" -parent ${group_4}
  ipgui::add_param $IPINST -name "C_M_AXI_BC2_CACHE_VALUE" -parent ${group_4}

  #Adding Group
  set group_5 [ipgui::add_group $IPINST -name "group 5" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bc3}]
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_ENABLE_ID_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_ID_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_DATA_WIDTH" -parent ${group_5} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_ENABLE_USER_PORTS" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_AWUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_WUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_BUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_ARUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_RUSER_WIDTH" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_USER_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_PROT_VALUE" -parent ${group_5}
  ipgui::add_param $IPINST -name "C_M_AXI_BC3_CACHE_VALUE" -parent ${group_5}

  #Adding Group
  set group_6 [ipgui::add_group $IPINST -name "group 6" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bc4}]
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_ENABLE_ID_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_ID_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_DATA_WIDTH" -parent ${group_6} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_ENABLE_USER_PORTS" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_AWUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_WUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_BUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_ARUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_RUSER_WIDTH" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_USER_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_PROT_VALUE" -parent ${group_6}
  ipgui::add_param $IPINST -name "C_M_AXI_BC4_CACHE_VALUE" -parent ${group_6}

  #Adding Group
  set group_7 [ipgui::add_group $IPINST -name "group 7" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bcid1}]
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_ENABLE_ID_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_ID_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_DATA_WIDTH" -parent ${group_7} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_ENABLE_USER_PORTS" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_AWUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_WUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_BUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_ARUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_RUSER_WIDTH" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_USER_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_PROT_VALUE" -parent ${group_7}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID1_CACHE_VALUE" -parent ${group_7}

  #Adding Group
  set group_8 [ipgui::add_group $IPINST -name "group 8" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bcid2}]
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_ENABLE_ID_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_ID_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_DATA_WIDTH" -parent ${group_8} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_ENABLE_USER_PORTS" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_AWUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_WUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_BUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_ARUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_RUSER_WIDTH" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_USER_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_PROT_VALUE" -parent ${group_8}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID2_CACHE_VALUE" -parent ${group_8}

  #Adding Group
  set group_9 [ipgui::add_group $IPINST -name "group 9" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bcid3}]
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_ENABLE_ID_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_ID_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_DATA_WIDTH" -parent ${group_9} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_ENABLE_USER_PORTS" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_AWUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_WUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_BUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_ARUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_RUSER_WIDTH" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_USER_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_PROT_VALUE" -parent ${group_9}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID3_CACHE_VALUE" -parent ${group_9}

  #Adding Group
  set group_10 [ipgui::add_group $IPINST -name "group 10" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bcid4}]
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_ENABLE_ID_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_ID_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_DATA_WIDTH" -parent ${group_10} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_ENABLE_USER_PORTS" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_AWUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_WUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_BUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_ARUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_RUSER_WIDTH" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_USER_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_PROT_VALUE" -parent ${group_10}
  ipgui::add_param $IPINST -name "C_M_AXI_BCID4_CACHE_VALUE" -parent ${group_10}

  #Adding Group
  set group_11 [ipgui::add_group $IPINST -name "group 11" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_brcsr1}]
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_ENABLE_ID_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_ID_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_DATA_WIDTH" -parent ${group_11} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_ENABLE_USER_PORTS" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_AWUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_WUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_BUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_ARUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_RUSER_WIDTH" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_USER_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_PROT_VALUE" -parent ${group_11}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR1_CACHE_VALUE" -parent ${group_11}

  #Adding Group
  set group_12 [ipgui::add_group $IPINST -name "group 12" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_brcsr2}]
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_ENABLE_ID_PORTS" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_ID_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_DATA_WIDTH" -parent ${group_12} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_ENABLE_USER_PORTS" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_AWUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_WUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_BUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_ARUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_RUSER_WIDTH" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_USER_VALUE" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_PROT_VALUE" -parent ${group_12}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR2_CACHE_VALUE" -parent ${group_12}

  #Adding Group
  set group_13 [ipgui::add_group $IPINST -name "group 13" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_brcsr3}]
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_ENABLE_ID_PORTS" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_ID_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_DATA_WIDTH" -parent ${group_13} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_ENABLE_USER_PORTS" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_AWUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_WUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_BUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_ARUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_RUSER_WIDTH" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_USER_VALUE" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_PROT_VALUE" -parent ${group_13}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR3_CACHE_VALUE" -parent ${group_13}

  #Adding Group
  set group_14 [ipgui::add_group $IPINST -name "group 14" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_brcsr4}]
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_ENABLE_ID_PORTS" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_ID_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_DATA_WIDTH" -parent ${group_14} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_ENABLE_USER_PORTS" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_AWUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_WUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_BUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_ARUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_RUSER_WIDTH" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_USER_VALUE" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_PROT_VALUE" -parent ${group_14}
  ipgui::add_param $IPINST -name "C_M_AXI_BRCSR4_CACHE_VALUE" -parent ${group_14}

  #Adding Group
  set group_15 [ipgui::add_group $IPINST -name "group 15" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bv1}]
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_ENABLE_ID_PORTS" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_ID_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_DATA_WIDTH" -parent ${group_15} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_ENABLE_USER_PORTS" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_AWUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_WUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_BUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_ARUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_RUSER_WIDTH" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_USER_VALUE" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_PROT_VALUE" -parent ${group_15}
  ipgui::add_param $IPINST -name "C_M_AXI_BV1_CACHE_VALUE" -parent ${group_15}

  #Adding Group
  set group_16 [ipgui::add_group $IPINST -name "group 16" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bv2}]
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_ENABLE_ID_PORTS" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_ID_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_DATA_WIDTH" -parent ${group_16} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_ENABLE_USER_PORTS" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_AWUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_WUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_BUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_ARUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_RUSER_WIDTH" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_USER_VALUE" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_PROT_VALUE" -parent ${group_16}
  ipgui::add_param $IPINST -name "C_M_AXI_BV2_CACHE_VALUE" -parent ${group_16}

  #Adding Group
  set group_17 [ipgui::add_group $IPINST -name "group 17" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bv3}]
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_ENABLE_ID_PORTS" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_ID_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_DATA_WIDTH" -parent ${group_17} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_ENABLE_USER_PORTS" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_AWUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_WUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_BUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_ARUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_RUSER_WIDTH" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_USER_VALUE" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_PROT_VALUE" -parent ${group_17}
  ipgui::add_param $IPINST -name "C_M_AXI_BV3_CACHE_VALUE" -parent ${group_17}

  #Adding Group
  set group_18 [ipgui::add_group $IPINST -name "group 18" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bv4}]
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_ENABLE_ID_PORTS" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_ID_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_DATA_WIDTH" -parent ${group_18} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_ENABLE_USER_PORTS" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_AWUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_WUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_BUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_ARUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_RUSER_WIDTH" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_USER_VALUE" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_PROT_VALUE" -parent ${group_18}
  ipgui::add_param $IPINST -name "C_M_AXI_BV4_CACHE_VALUE" -parent ${group_18}

  #Adding Group
  set group_19 [ipgui::add_group $IPINST -name "group 19" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bval1}]
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_ENABLE_ID_PORTS" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_ID_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_DATA_WIDTH" -parent ${group_19} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_ENABLE_USER_PORTS" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_AWUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_WUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_BUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_ARUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_RUSER_WIDTH" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_USER_VALUE" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_PROT_VALUE" -parent ${group_19}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL1_CACHE_VALUE" -parent ${group_19}

  #Adding Group
  set group_20 [ipgui::add_group $IPINST -name "group 20" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bval2}]
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_ENABLE_ID_PORTS" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_ID_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_DATA_WIDTH" -parent ${group_20} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_ENABLE_USER_PORTS" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_AWUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_WUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_BUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_ARUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_RUSER_WIDTH" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_USER_VALUE" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_PROT_VALUE" -parent ${group_20}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL2_CACHE_VALUE" -parent ${group_20}

  #Adding Group
  set group_21 [ipgui::add_group $IPINST -name "group 21" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bval3}]
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_ENABLE_ID_PORTS" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_ID_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_DATA_WIDTH" -parent ${group_21} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_ENABLE_USER_PORTS" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_AWUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_WUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_BUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_ARUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_RUSER_WIDTH" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_USER_VALUE" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_PROT_VALUE" -parent ${group_21}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL3_CACHE_VALUE" -parent ${group_21}

  #Adding Group
  set group_22 [ipgui::add_group $IPINST -name "group 22" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_bval4}]
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_ENABLE_ID_PORTS" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_ID_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_DATA_WIDTH" -parent ${group_22} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_ENABLE_USER_PORTS" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_AWUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_WUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_BUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_ARUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_RUSER_WIDTH" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_USER_VALUE" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_PROT_VALUE" -parent ${group_22}
  ipgui::add_param $IPINST -name "C_M_AXI_BVAL4_CACHE_VALUE" -parent ${group_22}

  #Adding Group
  set group_23 [ipgui::add_group $IPINST -name "group 23" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_ccid}]
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_ENABLE_ID_PORTS" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_ID_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_DATA_WIDTH" -parent ${group_23} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_ENABLE_USER_PORTS" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_AWUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_WUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_BUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_ARUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_RUSER_WIDTH" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_USER_VALUE" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_PROT_VALUE" -parent ${group_23}
  ipgui::add_param $IPINST -name "C_M_AXI_CCID_CACHE_VALUE" -parent ${group_23}

  #Adding Group
  set group_24 [ipgui::add_group $IPINST -name "group 24" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_crcsr}]
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_ENABLE_ID_PORTS" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_ID_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_DATA_WIDTH" -parent ${group_24} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_ENABLE_USER_PORTS" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_AWUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_WUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_BUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_ARUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_RUSER_WIDTH" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_USER_VALUE" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_PROT_VALUE" -parent ${group_24}
  ipgui::add_param $IPINST -name "C_M_AXI_CRCSR_CACHE_VALUE" -parent ${group_24}

  #Adding Group
  set group_25 [ipgui::add_group $IPINST -name "group 25" -parent ${Page_0} -display_name {AXI4 Master Interface m_axi_cval}]
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_ENABLE_ID_PORTS" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_ID_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_DATA_WIDTH" -parent ${group_25} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_ENABLE_USER_PORTS" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_AWUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_WUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_BUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_ARUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_RUSER_WIDTH" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_USER_VALUE" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_PROT_VALUE" -parent ${group_25}
  ipgui::add_param $IPINST -name "C_M_AXI_CVAL_CACHE_VALUE" -parent ${group_25}



}

proc update_PARAM_VALUE.C_M_AXI_ACID_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_ACID_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_ACID_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_ACID_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_ACID_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH { PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH { PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH { PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH { PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_ACID_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_ACID_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_ACID_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_ACID_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ACID_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ACID_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_USER_VALUE { PARAM_VALUE.C_M_AXI_ACID_USER_VALUE } {
	# Procedure called to update C_M_AXI_ACID_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_USER_VALUE { PARAM_VALUE.C_M_AXI_ACID_USER_VALUE } {
	# Procedure called to validate C_M_AXI_ACID_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE { PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE } {
	# Procedure called to update C_M_AXI_ACID_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE { PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_ACID_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE { PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_ACID_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE { PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_ACID_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_ARCSR_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_ARCSR_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_ARCSR_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_ARCSR_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_ARCSR_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARCSR_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARCSR_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE } {
	# Procedure called to update C_M_AXI_ARCSR_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE } {
	# Procedure called to validate C_M_AXI_ARCSR_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE } {
	# Procedure called to update C_M_AXI_ARCSR_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_ARCSR_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_ARCSR_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_ARCSR_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_AVAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_AVAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_AVAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_AVAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_AVAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_AVAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_AVAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_AVAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AVAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AVAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE { PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_AVAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE { PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_AVAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_AVAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_AVAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_AVAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_AVAL_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BC1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BC1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BC1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BC1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_USER_VALUE { PARAM_VALUE.C_M_AXI_BC1_USER_VALUE } {
	# Procedure called to update C_M_AXI_BC1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_USER_VALUE { PARAM_VALUE.C_M_AXI_BC1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BC1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BC1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BC1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BC1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BC1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BC2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BC2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BC2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BC2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_USER_VALUE { PARAM_VALUE.C_M_AXI_BC2_USER_VALUE } {
	# Procedure called to update C_M_AXI_BC2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_USER_VALUE { PARAM_VALUE.C_M_AXI_BC2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BC2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BC2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BC2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BC2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BC2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BC3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BC3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BC3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BC3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_USER_VALUE { PARAM_VALUE.C_M_AXI_BC3_USER_VALUE } {
	# Procedure called to update C_M_AXI_BC3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_USER_VALUE { PARAM_VALUE.C_M_AXI_BC3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BC3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BC3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BC3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BC3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BC3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BC4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BC4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BC4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BC4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BC4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BC4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BC4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BC4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_USER_VALUE { PARAM_VALUE.C_M_AXI_BC4_USER_VALUE } {
	# Procedure called to update C_M_AXI_BC4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_USER_VALUE { PARAM_VALUE.C_M_AXI_BC4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BC4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BC4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BC4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BC4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BC4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BCID1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BCID1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BCID1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BCID1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE } {
	# Procedure called to update C_M_AXI_BCID1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BCID1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BCID1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BCID1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BCID1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BCID1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BCID2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BCID2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BCID2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BCID2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE } {
	# Procedure called to update C_M_AXI_BCID2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BCID2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BCID2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BCID2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BCID2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BCID2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BCID3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BCID3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BCID3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BCID3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE } {
	# Procedure called to update C_M_AXI_BCID3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BCID3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BCID3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BCID3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BCID3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BCID3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BCID4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BCID4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BCID4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BCID4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BCID4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BCID4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BCID4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BCID4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE } {
	# Procedure called to update C_M_AXI_BCID4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE { PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BCID4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BCID4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BCID4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BCID4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BCID4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BRCSR4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BRCSR4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BRCSR4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BRCSR4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BRCSR4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BRCSR4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BRCSR4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BV1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BV1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BV1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BV1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_USER_VALUE { PARAM_VALUE.C_M_AXI_BV1_USER_VALUE } {
	# Procedure called to update C_M_AXI_BV1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_USER_VALUE { PARAM_VALUE.C_M_AXI_BV1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BV1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BV1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BV1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BV1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BV1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BV2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BV2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BV2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BV2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_USER_VALUE { PARAM_VALUE.C_M_AXI_BV2_USER_VALUE } {
	# Procedure called to update C_M_AXI_BV2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_USER_VALUE { PARAM_VALUE.C_M_AXI_BV2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BV2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BV2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BV2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BV2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BV2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BV3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BV3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BV3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BV3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_USER_VALUE { PARAM_VALUE.C_M_AXI_BV3_USER_VALUE } {
	# Procedure called to update C_M_AXI_BV3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_USER_VALUE { PARAM_VALUE.C_M_AXI_BV3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BV3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BV3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BV3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BV3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BV3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BV4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BV4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BV4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BV4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BV4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BV4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BV4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BV4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_USER_VALUE { PARAM_VALUE.C_M_AXI_BV4_USER_VALUE } {
	# Procedure called to update C_M_AXI_BV4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_USER_VALUE { PARAM_VALUE.C_M_AXI_BV4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BV4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BV4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BV4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BV4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BV4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BVAL1_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL1_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BVAL1_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL1_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL1_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE } {
	# Procedure called to update C_M_AXI_BVAL1_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL1_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BVAL1_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL1_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BVAL1_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL1_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BVAL2_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL2_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BVAL2_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL2_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL2_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE } {
	# Procedure called to update C_M_AXI_BVAL2_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL2_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BVAL2_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL2_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BVAL2_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL2_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BVAL3_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL3_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BVAL3_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL3_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL3_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL3_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL3_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE } {
	# Procedure called to update C_M_AXI_BVAL3_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL3_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BVAL3_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL3_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BVAL3_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL3_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_BVAL4_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL4_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_BVAL4_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_BVAL4_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_BVAL4_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BVAL4_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BVAL4_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE } {
	# Procedure called to update C_M_AXI_BVAL4_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL4_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE } {
	# Procedure called to update C_M_AXI_BVAL4_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL4_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_BVAL4_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE { PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_BVAL4_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CCID_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_CCID_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CCID_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_CCID_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH { PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH { PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CCID_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_CCID_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CCID_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_CCID_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CCID_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CCID_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_USER_VALUE { PARAM_VALUE.C_M_AXI_CCID_USER_VALUE } {
	# Procedure called to update C_M_AXI_CCID_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_USER_VALUE { PARAM_VALUE.C_M_AXI_CCID_USER_VALUE } {
	# Procedure called to validate C_M_AXI_CCID_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE { PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE } {
	# Procedure called to update C_M_AXI_CCID_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE { PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_CCID_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_CCID_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_CCID_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_CRCSR_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_CRCSR_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_CRCSR_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CRCSR_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_CRCSR_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CRCSR_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CRCSR_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE } {
	# Procedure called to update C_M_AXI_CRCSR_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE } {
	# Procedure called to validate C_M_AXI_CRCSR_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE } {
	# Procedure called to update C_M_AXI_CRCSR_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_CRCSR_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_CRCSR_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_CRCSR_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CVAL_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_CVAL_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_CVAL_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_CVAL_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CVAL_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_CVAL_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_CVAL_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_CVAL_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_CVAL_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_CVAL_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE { PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE } {
	# Procedure called to update C_M_AXI_CVAL_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE { PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE } {
	# Procedure called to validate C_M_AXI_CVAL_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE } {
	# Procedure called to update C_M_AXI_CVAL_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE { PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_CVAL_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_CVAL_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE { PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_CVAL_CACHE_VALUE
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CONTROL_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 9 ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CTR_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CTR_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "C_S_AXI_CTR_ADDR_WIDTH". Setting updated value from the model parameter.
set_property value 10 ${MODELPARAM_VALUE.C_S_AXI_CTR_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_ID_WIDTH PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ACID_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_ACID_USER_VALUE PARAM_VALUE.C_M_AXI_ACID_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ACID_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_ACID_PROT_VALUE PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ACID_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ACID_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_ARCSR_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_AVAL_USER_VALUE PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_AVAL_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_ID_WIDTH PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BC1_USER_VALUE PARAM_VALUE.C_M_AXI_BC1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BC1_PROT_VALUE PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_ID_WIDTH PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BC2_USER_VALUE PARAM_VALUE.C_M_AXI_BC2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BC2_PROT_VALUE PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_ID_WIDTH PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BC3_USER_VALUE PARAM_VALUE.C_M_AXI_BC3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BC3_PROT_VALUE PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_ID_WIDTH PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BC4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BC4_USER_VALUE PARAM_VALUE.C_M_AXI_BC4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BC4_PROT_VALUE PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BC4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID1_USER_VALUE PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID2_USER_VALUE PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID3_USER_VALUE PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID4_USER_VALUE PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BCID4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BRCSR4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_ID_WIDTH PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BV1_USER_VALUE PARAM_VALUE.C_M_AXI_BV1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BV1_PROT_VALUE PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_ID_WIDTH PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BV2_USER_VALUE PARAM_VALUE.C_M_AXI_BV2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BV2_PROT_VALUE PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_ID_WIDTH PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BV3_USER_VALUE PARAM_VALUE.C_M_AXI_BV3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BV3_PROT_VALUE PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_ID_WIDTH PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BV4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BV4_USER_VALUE PARAM_VALUE.C_M_AXI_BV4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BV4_PROT_VALUE PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BV4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL1_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL2_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL3_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_BVAL4_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_ID_WIDTH PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CCID_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_CCID_USER_VALUE PARAM_VALUE.C_M_AXI_CCID_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CCID_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_CCID_PROT_VALUE PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CCID_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CCID_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CRCSR_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_CVAL_USER_VALUE PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_CVAL_CACHE_VALUE}
}

