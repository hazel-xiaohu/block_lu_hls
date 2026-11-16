#!/usr/bin/env python3
"""Compare Block and segment-cache-aware traffic at the board-derived capacity."""

from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path


METHODS = ("block", "segment-cache-aware")


def summarize(budget_path: Path, traffic_path: Path) -> tuple[list[dict[str, object]], dict[str, object]]:
    budget = json.loads(budget_path.read_text())
    capacity = int(budget["lua_net_capacity"]["cache_line_aligned_bytes"])
    with traffic_path.open(newline="") as handle:
        candidates = list(csv.DictReader(handle))
    selected: dict[str, dict[str, str]] = {}
    for row in candidates:
        if row["method"] in METHODS and int(row["cache_bytes"]) == capacity:
            if row["method"] in selected:
                raise ValueError(f"duplicate traffic row for {row['method']}")
            selected[row["method"]] = row
    if set(selected) != set(METHODS):
        raise ValueError(f"missing methods at cache_bytes={capacity}: {set(METHODS) - set(selected)}")

    rows: list[dict[str, object]] = []
    for method in METHODS:
        row = selected[method]
        data_bytes = int(row["data_bytes"])
        metadata = int(row["metadata_footprint_bytes"])
        streamed_metadata = int(row["metadata_streamed_bytes_per_run"])
        total = int(row["streamed_total_bytes_per_run"])
        flops = int(row["logical_flops"])
        rows.append(
            {
                "method": method,
                "cache_bytes": capacity,
                "cache_mib": capacity / (1024 * 1024),
                "data_bytes": data_bytes,
                "data_gib": data_bytes / (1024**3),
                "control_metadata_footprint_bytes": metadata,
                "control_metadata_streamed_bytes_per_run": streamed_metadata,
                "total_streamed_bytes_per_run": total,
                "logical_flops": flops,
                "data_bytes_per_flop": data_bytes / flops,
                "control_bytes_per_flop": streamed_metadata / flops,
                "total_bytes_per_flop": total / flops,
                "l_misses": int(row["l_misses"]),
                "u_misses": int(row["u_misses"]),
                "a_reads": int(row["a_reads"]),
                "a_writebacks": int(row["a_writebacks"]),
            }
        )

    by_method = {str(row["method"]): row for row in rows}
    block = by_method["block"]
    segment = by_method["segment-cache-aware"]
    control_saved = int(segment["control_metadata_footprint_bytes"]) - int(
        block["control_metadata_footprint_bytes"]
    )
    data_delta = int(block["data_bytes"]) - int(segment["data_bytes"])
    comparison = {
        "schema": "board-capacity-block-vs-segment-v1",
        "cache_bytes": capacity,
        "cache_mib": capacity / (1024 * 1024),
        "block_control_space_saved_bytes": control_saved,
        "block_control_space_saved_percent_vs_segment": 100.0
        * control_saved
        / int(segment["control_metadata_footprint_bytes"]),
        "block_data_traffic_delta_bytes_vs_segment": data_delta,
        "block_data_traffic_change_percent_vs_segment": 100.0 * data_delta / int(segment["data_bytes"]),
        "block_total_stream_delta_bytes_vs_segment": int(block["total_streamed_bytes_per_run"])
        - int(segment["total_streamed_bytes_per_run"]),
        "block_total_stream_change_percent_vs_segment": 100.0
        * (
            int(block["total_streamed_bytes_per_run"])
            - int(segment["total_streamed_bytes_per_run"])
        )
        / int(segment["total_streamed_bytes_per_run"]),
        "positive_data_delta_means_block_moves_more": True,
        "methods": rows,
    }
    return rows, comparison


def write_outputs(rows: list[dict[str, object]], comparison: dict[str, object], output_dir: Path) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    with (output_dir / "board_capacity_comparison.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    (output_dir / "board_capacity_comparison.json").write_text(
        json.dumps(comparison, indent=2, sort_keys=True) + "\n"
    )

    by_method = {str(row["method"]): row for row in rows}
    block = by_method["block"]
    segment = by_method["segment-cache-aware"]
    markdown = f"""# Board-derived capacity: Block vs Segment-cache-aware

- Net L/U/A capacity: `{comparison['cache_bytes']:,}` B (`{comparison['cache_mib']:.6f}` MiB).
- Resource basis: placed `xczu15eg-ffvb1156-2-i` 4-LU + 4-SSSSM design.
- Positive data delta means Block moves more matrix data than Segment-cache-aware.

| Method | Matrix data traffic | Control metadata footprint | Total streamed/run | Data B/FLOP | Total B/FLOP |
|---|---:|---:|---:|---:|---:|
| Block | {int(block['data_bytes']):,} B | {int(block['control_metadata_footprint_bytes']):,} B | {int(block['total_streamed_bytes_per_run']):,} B | {float(block['data_bytes_per_flop']):.6f} | {float(block['total_bytes_per_flop']):.6f} |
| Segment-cache-aware | {int(segment['data_bytes']):,} B | {int(segment['control_metadata_footprint_bytes']):,} B | {int(segment['total_streamed_bytes_per_run']):,} B | {float(segment['data_bytes_per_flop']):.6f} | {float(segment['total_bytes_per_flop']):.6f} |

Block saves `{int(comparison['block_control_space_saved_bytes']):,}` B of control space
(`{float(comparison['block_control_space_saved_percent_vs_segment']):.6f}%`) and changes matrix-data
traffic by `{int(comparison['block_data_traffic_delta_bytes_vs_segment']):+,}` B
(`{float(comparison['block_data_traffic_change_percent_vs_segment']):+.6f}%`) relative to
Segment-cache-aware.  Under the stream-each-run metadata interpretation, Block changes total
traffic by `{int(comparison['block_total_stream_delta_bytes_vs_segment']):+,}` B
(`{float(comparison['block_total_stream_change_percent_vs_segment']):+.6f}%`).

The capacity is a physical-bit upper bound. The replay is an ideal fully-associative LRU and
does not model tag/LRU storage, banking/port constraints, fragmentation, or implementation margin.
"""
    (output_dir / "BOARD_CAPACITY_RESULTS.md").write_text(markdown)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--budget", required=True, type=Path)
    parser.add_argument("--traffic", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    rows, comparison = summarize(args.budget, args.traffic)
    write_outputs(rows, comparison, args.output)
    print(f"PB_BOARD_CAPACITY_SUMMARY_PASS output={args.output}")


if __name__ == "__main__":
    main()
