#!/usr/bin/env python3
from __future__ import annotations

import csv
import sys
from pathlib import Path

import matplotlib.pyplot as plt


METHODS = [
    "operation",
    "operation-block-order",
    "segment-native",
    "segment-l-affinity",
    "segment-cache-aware",
    "block",
]


def main() -> None:
    root = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent / "outputs/capacity_grain_scan"
    with (root / "capacity_grain_scan.csv").open(newline="") as handle:
        rows = list(csv.DictReader(handle))
    fig, axes = plt.subplots(1, 3, figsize=(14.5, 4.2), sharey=True)
    for axis, block_size in zip(axes, (256, 512, 1024)):
        selected = [row for row in rows if int(row["block_size"]) == block_size]
        for method in METHODS:
            points = sorted(
                (
                    int(row["cache_bytes"]) / (1024 * 1024),
                    float(row["traffic_amplification"]),
                )
                for row in selected
                if row["method"] == method
            )
            axis.plot([p[0] for p in points], [p[1] for p in points], marker="o", label=method)
        axis.axhline(1.0, color="black", linewidth=0.8, linestyle="--")
        axis.set_xscale("log", base=2)
        axis.set_yscale("log")
        axis.set_xticks([1, 4, 8, 16, 32], labels=["1", "4", "8", "16", "32"])
        axis.set_title(f"B = S = {block_size}")
        axis.set_xlabel("LRU capacity (MiB)")
        axis.grid(True, which="both", linestyle=":", alpha=0.45)
    axes[0].set_ylabel("Traffic amplification over compulsory bound")
    handles, labels = axes[-1].get_legend_handles_labels()
    fig.legend(handles, labels, loc="upper center", ncol=3, frameon=False)
    fig.tight_layout(rect=(0, 0, 1, 0.84))
    fig.savefig(root / "traffic_amplification_capacity_grain.png", dpi=220)
    fig.savefig(root / "traffic_amplification_capacity_grain.pdf")
    print(f"PB_CAPACITY_GRAIN_PLOT_PASS output={root}")


if __name__ == "__main__":
    main()
