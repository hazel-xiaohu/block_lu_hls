#!/usr/bin/env python3
"""Compare the selected complete-LU trajectories at 32-B and 64-B lines."""

from __future__ import annotations

import argparse
import csv
from pathlib import Path

import matplotlib.pyplot as plt


METHODS = {
    "operation-column-order": "OC",
    "segment-native": "SN",
    "segment-l-affinity": "SL",
    "block-kij-jki-inner": "BRJ",
}
COLORS = {"OC": "#1f77b4", "SN": "#ff7f0e", "SL": "#2ca02c", "BRJ": "#d62728"}
MARKERS = {"OC": "o", "SN": "s", "SL": "^", "BRJ": "D"}


def read_selected(path: Path) -> dict[tuple[int, str], dict[str, str]]:
    rows = list(csv.DictReader(path.open(newline="")))
    selected = {
        (int(row["capacity_bytes"]), METHODS[row["method"]]): row
        for row in rows
        if row["method"] in METHODS
    }
    return selected


def capacity_label(value: int) -> str:
    if value < 2**20:
        return f"{value // 2**10} KiB"
    return f"{value // 2**20} MiB"


def rank_at(data: dict[tuple[int, str], dict[str, str]], capacity: int) -> list[str]:
    return sorted(METHODS.values(), key=lambda method: int(data[(capacity, method)]["data_bytes"]))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("line32_csv", type=Path)
    parser.add_argument("line64_csv", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)

    line32 = read_selected(args.line32_csv)
    line64 = read_selected(args.line64_csv)
    capacities = sorted({capacity for capacity, _ in line32})
    if capacities != sorted({capacity for capacity, _ in line64}):
        raise SystemExit("32-B and 64-B capacity sets differ")
    expected = {(capacity, method) for capacity in capacities for method in METHODS.values()}
    if set(line32) != expected or set(line64) != expected:
        raise SystemExit("one or more selected method/capacity records are missing")

    detail_fields = [
        "capacity_bytes", "capacity_label", "method", "rank_32", "rank_64",
        "read_gib_32", "writeback_gib_32", "data_gib_32", "traffic_amplification_32",
        "bytes_per_flop_32", "data_gib_64", "traffic_amplification_64",
        "line32_over_line64", "line64_over_line32",
    ]
    detail_rows = []
    ranking_rows = []
    previous32: list[str] | None = None
    for capacity in capacities:
        ranking32 = rank_at(line32, capacity)
        ranking64 = rank_at(line64, capacity)
        ranking_rows.append({
            "capacity_bytes": capacity,
            "capacity_label": capacity_label(capacity),
            "ranking_32": " < ".join(ranking32),
            "ranking_64": " < ".join(ranking64),
            "winner_32": ranking32[0],
            "winner_64": ranking64[0],
            "changed_from_previous_32": int(previous32 is not None and ranking32 != previous32),
            "changed_vs_64": int(ranking32 != ranking64),
        })
        previous32 = ranking32
        ranks32 = {method: index + 1 for index, method in enumerate(ranking32)}
        ranks64 = {method: index + 1 for index, method in enumerate(ranking64)}
        for method in METHODS.values():
            row32 = line32[(capacity, method)]
            row64 = line64[(capacity, method)]
            line_bytes = int(row32.get("cache_line_bytes", "32"))
            reads32 = int(row32["read_misses"]) * line_bytes
            writes32 = int(row32["writebacks"]) * line_bytes
            data32 = int(row32["data_bytes"])
            data64 = int(row64["data_bytes"])
            detail_rows.append({
                "capacity_bytes": capacity,
                "capacity_label": capacity_label(capacity),
                "method": method,
                "rank_32": ranks32[method],
                "rank_64": ranks64[method],
                "read_gib_32": reads32 / 2**30,
                "writeback_gib_32": writes32 / 2**30,
                "data_gib_32": data32 / 2**30,
                "traffic_amplification_32": float(row32["traffic_amplification"]),
                "bytes_per_flop_32": float(row32["data_bytes_per_flop"]),
                "data_gib_64": data64 / 2**30,
                "traffic_amplification_64": float(row64["traffic_amplification"]),
                "line32_over_line64": data32 / data64,
                "line64_over_line32": data64 / data32,
            })

    with (args.output / "line32_four_trajectory_traffic.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=detail_fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(detail_rows)
    rank_fields = list(ranking_rows[0])
    with (args.output / "line32_ranking_changes.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=rank_fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(ranking_rows)

    labels = [capacity_label(capacity) for capacity in capacities]
    x = list(range(len(capacities)))
    plt.rcParams.update({
        "font.family": "serif",
        "font.serif": ["Times New Roman", "Times", "Liberation Serif", "DejaVu Serif"],
        "font.size": 10,
        "axes.grid": True,
        "grid.alpha": 0.25,
    })
    fig, axes = plt.subplots(1, 3, figsize=(15.2, 4.5), constrained_layout=True)
    for method in METHODS.values():
        y32 = [int(line32[(capacity, method)]["data_bytes"]) / 2**30 for capacity in capacities]
        y64 = [int(line64[(capacity, method)]["data_bytes"]) / 2**30 for capacity in capacities]
        style = dict(color=COLORS[method], marker=MARKERS[method], linewidth=1.8,
                     markersize=4.5, label=method)
        axes[0].plot(x, y32, **style)
        axes[1].plot(x, y64, **style)
        axes[2].plot(x, [a / b for a, b in zip(y64, y32)], **style)

    for axis in axes:
        axis.set_xticks(x)
        axis.set_xticklabels(labels, rotation=45, ha="right")
        axis.set_xlabel("Cache capacity")
    axes[0].set_yscale("log")
    axes[1].set_yscale("log")
    axes[0].set_ylabel("Data traffic (GiB, log scale)")
    axes[1].set_ylabel("Data traffic (GiB, log scale)")
    axes[2].set_ylabel("Traffic reduction, $T_{64}/T_{32}$")
    axes[0].set_title("(a) 32-B cache line")
    axes[1].set_title("(b) 64-B baseline")
    axes[2].set_title("(c) Benefit of 32-B lines")
    axes[2].axhline(1.0, color="black", linewidth=0.9, linestyle="--")
    axes[0].legend(ncol=2, frameon=False, loc="best")
    fig.savefig(args.output / "line32_vs_line64_three_panel.png", dpi=300)
    fig.savefig(args.output / "line32_vs_line64_three_panel.pdf")
    plt.close(fig)

    changed_capacity = [row["capacity_label"] for row in ranking_rows if row["changed_vs_64"]]
    transitions = [row["capacity_label"] for row in ranking_rows if row["changed_from_previous_32"]]
    report = [
        "# 32-B cache-line comparison for complete in-place LU",
        "",
        "The experiment keeps the original ten cache-capacity points and compares OC, SN, SL, and BRJ.",
        "All four 32-B traces cover the same complete-LU event multiset.",
        "",
        "## Ranking by total data traffic (lower is better)",
        "",
        "| Capacity | 32-B ranking | 64-B ranking | Changed vs 64 B? |",
        "|---:|---|---|:---:|",
    ]
    for row in ranking_rows:
        report.append(
            f"| {row['capacity_label']} | {row['ranking_32']} | {row['ranking_64']} | "
            f"{'yes' if row['changed_vs_64'] else 'no'} |"
        )
    report += [
        "",
        f"The 32-B ranking changes as capacity grows at: {', '.join(transitions) or 'none'}.",
        f"Relative to the 64-B baseline, the ordering differs at: {', '.join(changed_capacity) or 'none'}.",
        "",
        "The plotted traffic includes all cache-line fills and dirty writebacks under the same fully associative, write-back/write-allocate LRU policy.",
    ]
    (args.output / "CACHE_LINE32_RESULTS.md").write_text("\n".join(report) + "\n")
    print(f"PB_CACHE_LINE32_ANALYSIS_PASS output={args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
