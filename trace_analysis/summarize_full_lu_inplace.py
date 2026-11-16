#!/usr/bin/env python3
"""Summarize the complete-LU in-place cache pilot."""

from __future__ import annotations

import argparse
import csv
from pathlib import Path


METHOD_ORDER_V3 = (
    "operation-column-order",
    "operation-segment-order",
    "operation-block-order",
    "segment-native",
    "segment-l-affinity",
    "segment-cache-aware",
    "block",
    "block-kij-jki-inner",
)

METHOD_ORDER_V2 = (
    "operation",
    "operation-column-order",
    "operation-segment-order",
    "operation-block-order",
    "segment-native",
    "segment-l-affinity",
    "segment-cache-aware",
    "block",
    "block-kij-order",
    "block-kij-jki-inner",
)

METHOD_ORDER_V1 = (
    "operation",
    "operation-block-order",
    "segment-column",
    "segment-l-affinity",
    "block",
)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("output")
    args = parser.parse_args()
    root = Path(args.output)
    source = root / "full_lu_inplace_cache_traffic.csv"
    rows = list(csv.DictReader(source.open(newline="")))
    present = {row["method"] for row in rows}
    if present == set(METHOD_ORDER_V3):
        method_order = METHOD_ORDER_V3
        baseline_method = "operation-column-order"
    elif set(METHOD_ORDER_V2).issubset(present):
        method_order = METHOD_ORDER_V2
        baseline_method = "operation"
    elif set(METHOD_ORDER_V1).issubset(present):
        method_order = METHOD_ORDER_V1
        baseline_method = "operation"
    else:
        raise SystemExit(f"unrecognized method set: {sorted(present)}")
    rows.sort(key=lambda row: (int(row["capacity_bytes"]), method_order.index(row["method"])))

    fields = [
        "capacity_mib",
        "method",
        "baseline_method",
        "tasks",
        "data_mib",
        "metadata_mib",
        "total_mib_stream_metadata",
        "traffic_amplification",
        "data_bytes_per_flop",
        "data_speedup_vs_baseline",
        "total_speedup_vs_baseline",
    ]
    normalized = []
    by_capacity = {}
    for row in rows:
        by_capacity.setdefault(int(row["capacity_bytes"]), {})[row["method"]] = row
    for capacity, methods in sorted(by_capacity.items()):
        baseline = methods[baseline_method]
        baseline_data = int(baseline["data_bytes"])
        baseline_total = int(baseline["total_bytes_with_metadata"])
        for method in method_order:
            row = methods[method]
            data = int(row["data_bytes"])
            metadata = int(row["metadata_bytes"])
            total = int(row["total_bytes_with_metadata"])
            normalized.append({
                "capacity_mib": capacity / 2**20,
                "method": method,
                "baseline_method": baseline_method,
                "tasks": row["tasks"],
                "data_mib": data / 2**20,
                "metadata_mib": metadata / 2**20,
                "total_mib_stream_metadata": total / 2**20,
                "traffic_amplification": row["traffic_amplification"],
                "data_bytes_per_flop": row["data_bytes_per_flop"],
                "data_speedup_vs_baseline": baseline_data / data,
                "total_speedup_vs_baseline": baseline_total / total,
            })
    with (root / "full_lu_inplace_summary.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        writer.writerows(normalized)

    print("capacity_mib,method,data_mib,metadata_mib,total_mib,TA")
    for row in normalized:
        print(
            f"{row['capacity_mib']:g},{row['method']},"
            f"{row['data_mib']:.3f},{row['metadata_mib']:.3f},"
            f"{row['total_mib_stream_metadata']:.3f},{float(row['traffic_amplification']):.4f}"
        )
    print(f"PB_FULL_LU_INPLACE_SUMMARY_PASS output={root / 'full_lu_inplace_summary.csv'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
