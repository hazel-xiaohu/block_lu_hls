#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MATRIX="${1:-$ROOT/input/Zd_Jac3_db_after_symbolic.mtx}"
OUTPUT_ROOT="${2:-$ROOT/outputs/full_lu_scan_v1}"

for block_size in 256 512 1024; do
  python3 "$ROOT/analyze_full_lu.py" \
    --matrix "$MATRIX" \
    --block-size "$block_size" \
    --segment-height "$block_size" \
    --output "$OUTPUT_ROOT/block_b${block_size}"
done

python3 - "$OUTPUT_ROOT" <<'PY'
import csv
import json
import sys
from pathlib import Path

root = Path(sys.argv[1])
rows = []
granularity_rows = []
for block_size in (256, 512, 1024):
    report = json.loads((root / f"block_b{block_size}" / "full_lu_report.json").read_text())
    kernels = {row["kernel"]: row for row in report["kernel_summary"]}
    row = {
        "block_size": block_size,
        "block_count": report["coverage"]["block_count"],
        "tasks": report["dag"]["tasks"],
        "edges": report["dag"]["edges"],
        "peak_ready_tasks": report["dag"]["peak_ready_tasks"],
        "critical_path_tasks": report["dag"]["critical_path_tasks"],
        "work_span_parallelism": report["dag"]["work_span_parallelism"],
        "full_lu_macs": report["coverage"]["scalar_macs"],
        "divisions": report["coverage"]["scalar_divisions"],
        "logical_flops": report["coverage"]["logical_flops"],
        "trailing_fraction": report["trailing_comparison"]["trailing_fraction"],
    }
    for kernel in ("GETRF", "GESSM", "TSTRF", "SSSSM"):
        row[f"{kernel.lower()}_tasks"] = kernels[kernel]["tasks"]
        row[f"{kernel.lower()}_flops"] = kernels[kernel]["logical_flops"]
    rows.append(row)
    block_row = next(
        item for item in report["granularity_comparison"]
        if item["method"] == "block-complete-lu"
    )
    for item in report["granularity_comparison"]:
        if item["method"] == "operation-scalar":
            continue
        granularity_rows.append({
            "block_or_segment_size": block_size,
            "method": item["method"],
            "tasks": item["tasks"],
            "dependency_descriptors": item["dependency_descriptors"],
            "metadata_footprint_bytes": item["metadata_footprint_bytes"],
            "logical_flops": report["coverage"]["logical_flops"],
            "mean_logical_flops_per_task": report["coverage"]["logical_flops"] / item["tasks"],
            "task_count_over_block": item["tasks"] / block_row["tasks"],
            "metadata_over_block": item["metadata_footprint_bytes"] / block_row["metadata_footprint_bytes"],
        })
fields = list(rows[0])
with (root / "full_lu_block_size_scan.csv").open("w", newline="") as handle:
    writer = csv.DictWriter(handle, fieldnames=fields)
    writer.writeheader()
    writer.writerows(rows)
fields = list(granularity_rows[0])
with (root / "full_lu_three_granularity_comparison.csv").open("w", newline="") as handle:
    writer = csv.DictWriter(handle, fieldnames=fields)
    writer.writeheader()
    writer.writerows(granularity_rows)
print(f"PB_FULL_LU_SCAN_PASS output={root / 'full_lu_block_size_scan.csv'}")
PY
