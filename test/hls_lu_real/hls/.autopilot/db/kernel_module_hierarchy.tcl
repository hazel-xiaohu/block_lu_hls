set ModuleHierarchy {[{
"Name" : "sparse_lu_shared", "RefName" : "sparse_lu_shared","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2_fu_663", "RefName" : "sparse_lu_shared_Pipeline_VITIS_LOOP_23_1_VITIS_LOOP_24_2","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_23_1_VITIS_LOOP_24_2","RefName" : "VITIS_LOOP_23_1_VITIS_LOOP_24_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_fu_682", "RefName" : "sparse_lu_shared_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","RefName" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_cache_triangular_pattern_fu_767", "RefName" : "cache_triangular_pattern","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_68_1","RefName" : "VITIS_LOOP_68_1","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2_fu_264", "RefName" : "cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_76_2","RefName" : "VITIS_LOOP_76_2","ID" : "8","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_run_cached_tstrf_fu_800", "RefName" : "run_cached_tstrf","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_168_1","RefName" : "VITIS_LOOP_168_1","ID" : "10","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_169_2","RefName" : "VITIS_LOOP_169_2","ID" : "11","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_tstrf_Pipeline_VITIS_LOOP_171_3_fu_950", "RefName" : "run_cached_tstrf_Pipeline_VITIS_LOOP_171_3","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_171_3","RefName" : "VITIS_LOOP_171_3","ID" : "13","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_309_1","RefName" : "VITIS_LOOP_309_1","ID" : "14","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_314_2","RefName" : "VITIS_LOOP_314_2","ID" : "15","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_tstrf_Pipeline_VITIS_LOOP_329_4_fu_1000", "RefName" : "run_cached_tstrf_Pipeline_VITIS_LOOP_329_4","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_329_4","RefName" : "VITIS_LOOP_329_4","ID" : "17","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_run_cached_gessm_fu_849", "RefName" : "run_cached_gessm","ID" : "18","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_149_1","RefName" : "VITIS_LOOP_149_1","ID" : "19","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_150_2","RefName" : "VITIS_LOOP_150_2","ID" : "20","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_gessm_Pipeline_VITIS_LOOP_152_3_fu_347", "RefName" : "run_cached_gessm_Pipeline_VITIS_LOOP_152_3","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_152_3","RefName" : "VITIS_LOOP_152_3","ID" : "22","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_279_1","RefName" : "VITIS_LOOP_279_1","ID" : "23","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_280_2","RefName" : "VITIS_LOOP_280_2","ID" : "24","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_gessm_Pipeline_VITIS_LOOP_283_3_fu_388", "RefName" : "run_cached_gessm_Pipeline_VITIS_LOOP_283_3","ID" : "25","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_283_3","RefName" : "VITIS_LOOP_283_3","ID" : "26","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_run_cached_getrf_fu_927", "RefName" : "run_cached_getrf","ID" : "27","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_cache_triangular_pattern_fu_687", "RefName" : "cache_triangular_pattern","ID" : "28","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_68_1","RefName" : "VITIS_LOOP_68_1","ID" : "29","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2_fu_264", "RefName" : "cache_triangular_pattern_Pipeline_VITIS_LOOP_76_2","ID" : "30","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_76_2","RefName" : "VITIS_LOOP_76_2","ID" : "31","Type" : "pipeline"},]},]},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_202_1","RefName" : "VITIS_LOOP_202_1","ID" : "32","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_run_cached_getrf_Pipeline_VITIS_LOOP_210_2_fu_741", "RefName" : "run_cached_getrf_Pipeline_VITIS_LOOP_210_2","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_210_2","RefName" : "VITIS_LOOP_210_2","ID" : "34","Type" : "pipeline"},]},]},
		{"Name" : "VITIS_LOOP_128_1","RefName" : "VITIS_LOOP_128_1","ID" : "35","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_129_2","RefName" : "VITIS_LOOP_129_2","ID" : "36","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_getrf_Pipeline_VITIS_LOOP_131_3_fu_780", "RefName" : "run_cached_getrf_Pipeline_VITIS_LOOP_131_3","ID" : "37","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_131_3","RefName" : "VITIS_LOOP_131_3","ID" : "38","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_229_3","RefName" : "VITIS_LOOP_229_3","ID" : "39","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_230_4","RefName" : "VITIS_LOOP_230_4","ID" : "40","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_run_cached_getrf_Pipeline_VITIS_LOOP_238_5_fu_806", "RefName" : "run_cached_getrf_Pipeline_VITIS_LOOP_238_5","ID" : "41","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_238_5","RefName" : "VITIS_LOOP_238_5","ID" : "42","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_256_7","RefName" : "VITIS_LOOP_256_7","ID" : "43","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_run_cached_getrf_Pipeline_VITIS_LOOP_257_8_fu_831", "RefName" : "run_cached_getrf_Pipeline_VITIS_LOOP_257_8","ID" : "44","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_257_8","RefName" : "VITIS_LOOP_257_8","ID" : "45","Type" : "pipeline"},]},
		{"Name" : "grp_run_cached_getrf_Pipeline_VITIS_LOOP_262_9_fu_853", "RefName" : "run_cached_getrf_Pipeline_VITIS_LOOP_262_9","ID" : "46","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_262_9","RefName" : "VITIS_LOOP_262_9","ID" : "47","Type" : "pipeline"},]},]},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_102_1","RefName" : "VITIS_LOOP_102_1","ID" : "48","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_sparse_lu_shared_Pipeline_VITIS_LOOP_110_2_fu_720", "RefName" : "sparse_lu_shared_Pipeline_VITIS_LOOP_110_2","ID" : "49","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_110_2","RefName" : "VITIS_LOOP_110_2","ID" : "50","Type" : "pipeline"},]},]},
	{"Name" : "VITIS_LOOP_448_1","RefName" : "VITIS_LOOP_448_1","ID" : "51","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_sparse_lu_shared_Pipeline_VITIS_LOOP_449_2_fu_897", "RefName" : "sparse_lu_shared_Pipeline_VITIS_LOOP_449_2","ID" : "52","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_449_2","RefName" : "VITIS_LOOP_449_2","ID" : "53","Type" : "pipeline"},]},]},]
}]}