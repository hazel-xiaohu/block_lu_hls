# Frozen source provenance

The original three sources were copied from:

`/output/block_lu_hls/pangulu_dual_schedule_fpga_v1/01_hls/src_factor4_packed_all/`

The original hashes remain available by hashing that upstream directory.
`pb_csc_kernels.cpp` now contains the Stage-3 SSSSM optimization behind
`PB_SSSSM_OPT_MERGE_WRITEBACK`; compiling without that macro preserves the
baseline path. `reference/SOURCE_MANIFEST.sha256` tracks the current working
sources rather than claiming that every current file is byte-identical to the
upstream copy.

The stage-1 mapping is:

- GETRF/GESSM/TSTRF: `pb_lu_factor4_shared_engine_v2()`;
- SSSSM: `pb_ssssm_csc_tv_factor4_streammerge4_shadow()`;
- scalar numerical oracle: the four `pb_*_csc[_tv]()` functions.
