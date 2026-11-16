# P8: target-board-derived capacity point

## Scope and provenance

P8 preserves the P5 1/4/8/16/32 MiB sweep and adds one board-derived point for
the placed `xczu15eg-ffvb1156-2-i` design in
`/output/pangulu_hybrid_salut_ssssm_v1/vivado_parallel4x4_v1`.

The referenced bitstream architecture contains four LU workers and four
SSSSM workers.  Vivado 2022.2 reports a fully placed design, and the saved
timing summary passes with WNS = 5.475 ns and TNS = 0.000 ns.  File hashes and
the exact source paths are recorded in
`outputs/board_capacity/resource/board_capacity_budget.json`.

The replay retains the frozen `Zd_Jac3_db`, `B=S=512`, SSSSM/block-trailing,
FP32-value + int32-index, 64-byte-line conventions.  Block and
Segment-cache-aware execute the same 701,781,110 scalar updates and pass the
canonical-event/address-set audit.

## Resource-derived capacity

Vivado's placed resource totals are:

| Resource group | RAMB36 | RAMB18 | URAM288 | Physical bytes |
|---|---:|---:|---:|---:|
| ZU15EG total | 744 | 0 | 112 | 7,557,120 |
| Complete placed design | 294 | 11 | 8 | 1,675,008 |
| LU workers 0--3 | 256 | 0 | 0 | 1,179,648 |
| SSSSM workers 4--7 | 16 | 0 | 0 | 73,728 |
| Non-worker pool/FIFO/scheduler/control remainder | 22 | 11 | 8 | 421,632 |
| **Net L/U/A upper bound** | **444.5 equivalent** | **0** | **104** | **5,882,112** |

The byte conversion uses the physical primitive capacities: RAMB36 = 36
Kibit, RAMB18 = 18 Kibit, and URAM288 = 288 Kibit.  The result is already
64-byte aligned and equals 5.609619 MiB.

The subtraction includes all BRAM/URAM already occupied by worker-local
A/L/U windows, the pool cache, FIFOs and the rolling design.  The control and
data SmartConnect blocks use no BRAM/URAM in the hierarchical report; ready
queues and dependency state mapped to LUTRAM are charged to LUT resources and
therefore do not reduce the separate BRAM/URAM physical-bit pool.

## Exact replay result at 5,882,112 bytes

| Method | Matrix data traffic | Control metadata footprint | Streamed total/run | Data B/FLOP | Total B/FLOP |
|---|---:|---:|---:|---:|---:|
| Block | 112,546,752 B | 16,560 B | 112,563,312 B | 0.080187 | 0.080198 |
| Segment-cache-aware | 109,439,616 B | 40,683,200 B | 150,122,816 B | 0.077973 | 0.106958 |

Relative to Segment-cache-aware, Block:

- saves **40,666,640 B (99.959295%)** of static control-description space;
- moves **3,107,136 B (2.839133%) more** matrix data;
- moves **37,559,504 B (25.019184%) less** in total under the conservative
  stream-each-run metadata interpretation.

The matrix-data trade is traceable to line traffic.  Block has 35,311 fewer L
misses, but 75,908 more U misses plus 3,976 additional A reads and 3,976
additional A writebacks.  The net increase is 48,549 cache-line transfers, or
3,107,136 bytes.

Thus, at the storage budget actually left by this ZU15EG design, the compact
Block description is overwhelmingly smaller in control space.  Its data
locality is slightly worse than Segment-cache-aware, but the 2.84% matrix-data
penalty is much smaller than the control-footprint reduction under the frozen
normalized descriptor model.

## Interpretation boundary

The 5.61 MiB point is a physical-bit **upper bound**, not a completed hardware
cache proof.  The exact replay treats the remaining BRAM and URAM as one fully
associative LRU store.  It does not reserve capacity for cache tags/LRU state,
banking and port constraints, primitive-depth fragmentation, or additional
placement/routing margin.  A physical cache implementation must subtract
those costs and rerun the same script with its resulting usable capacity.

Reproduce with:

```bash
cd /output/block_lu_hls
bash trace_analysis/run_board_capacity_experiment.sh
python3 trace_analysis/tests/test_board_capacity.py
```
