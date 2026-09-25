
set TopModule "spmm"
set ClockPeriod 5
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix spmm_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set RtlWriterOptions {}
set CbcGenFlag 0
set CasGenFlag 0
set CasMonitorFlag 0
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu15eg:-ffvb1156:-2-i
set SourceFiles {sc {} c {../../sparse_lu_shared_cached.cpp ../../vccache.cpp ../../util.cpp ../../rcache.cpp ../../pe.cpp ../../core.cpp}}
set SourceFlags {sc {} c {{-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB} {-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB} {-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB} {-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB} {-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB} {-DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB}}}
set DirectiveFile {}
set TBFiles {verilog /home/huz/project/SpMM_TCAD/test/tb_lu_spmm_cascade.cpp bc /home/huz/project/SpMM_TCAD/test/tb_lu_spmm_cascade.cpp vhdl /home/huz/project/SpMM_TCAD/test/tb_lu_spmm_cascade.cpp sc /home/huz/project/SpMM_TCAD/test/tb_lu_spmm_cascade.cpp cas /home/huz/project/SpMM_TCAD/test/tb_lu_spmm_cascade.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
