
set TopModule "spmm"
set ClockPeriod 5
set ClockList ap_clk
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
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu15eg:-ffvb1156:-2-i
set SourceFiles {sc {} c {../../core.cpp ../../pe.cpp ../../rcache.cpp ../../util.cpp ../../vccache.cpp}}
set SourceFlags {sc {} c {{ -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB} {} { -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB} {} { -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB} {} { -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB} {} { -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB} {}}}
set DirectiveFile /output/block_lu_hls/test_2022.2_no_a_filter/proj_block_lu_hls/solution1/solution1.directive
set TBFiles {verilog ../../tb.cpp bc ../../tb.cpp sc ../../tb.cpp vhdl ../../tb.cpp c {} cas ../../tb.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0
