#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/outputs/full_lu_inplace_synthetic_v1"
bash "$ROOT/build_full_lu_inplace_simulator.sh"
"$ROOT/build/full_lu_inplace_lru" \
  "$ROOT/tests/synthetic_full_lu_after_symbolic.mtx" 2 2 64,128 "$OUT"
python3 - "$OUT" <<'PY'
import csv
import json
import sys
from pathlib import Path

root = Path(sys.argv[1])
report = json.loads((root / "full_lu_inplace_report.json").read_text())
assert report["schema"] == "full-lu-inplace-lru-v4-eight-trajectories", report
assert report["factor_kernel_semantics"] == (
    "GETRF and GESSM are column-oriented j,k,i; TSTRF is row-oriented i,k,j; "
    "GETRF/TSTRF divisions precede same-pivot updates"
), report
assert report["block_semantics"].endswith("every SSSSM block uses j,k,i atoms"), report
assert report["macs"] == 14, report
assert report["divisions"] == 6, report
assert report["logical_flops"] == 34, report
assert report["event_multisets_identical"] is True
assert report["address_sets_identical"] is True
rows = list(csv.DictReader((root / "full_lu_inplace_event_audit.csv").open()))
assert {row["method"] for row in rows} == {
    "operation-column-order", "operation-segment-order",
    "operation-block-order", "segment-native", "segment-l-affinity",
    "segment-cache-aware", "block", "block-kij-jki-inner"
}
assert len(rows) == 8
assert len({row["event_hash_sum"] for row in rows}) == 1
assert len({row["read_hash"] for row in rows}) == 1
assert all(int(row["unique_events"]) == 20 for row in rows)

traffic = list(csv.DictReader((root / "full_lu_inplace_cache_traffic.csv").open()))
assert len(traffic) == 16
by_method_capacity = {(row["method"], row["capacity_bytes"]): row for row in traffic}
for capacity in {row["capacity_bytes"] for row in traffic}:
    for matched, grouped in {
        "operation-segment-order": "segment-native",
        "operation-block-order": "block",
    }.items():
        lhs = by_method_capacity[(matched, capacity)]
        rhs = by_method_capacity[(grouped, capacity)]
        for field in ("data_bytes", "read_misses", "writebacks"):
            assert lhs[field] == rhs[field]
    block = by_method_capacity[("block", capacity)]
    for method in ("block-kij-jki-inner",):
        row = by_method_capacity[(method, capacity)]
        for field in ("tasks", "dependencies", "metadata_bytes"):
            assert row[field] == block[field]
print("PB_FULL_LU_INPLACE_TEST_PASS macs=14 divisions=6 events=20")
PY
