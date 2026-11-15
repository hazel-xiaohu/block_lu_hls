#!/usr/bin/env python3
from __future__ import annotations

import csv
import json
import sys
from pathlib import Path


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: summarize_capacity_grain_scan.py OUTPUT_ROOT")
    root = Path(sys.argv[1])
    combined: list[dict[str, str | int]] = []
    audits: list[dict[str, str | int]] = []
    for directory in sorted(root.glob("block_b*"), key=lambda p: int(p.name.removeprefix("block_b"))):
        block_size = int(directory.name.removeprefix("block_b"))
        report = json.loads((directory / "cache_pilot_report.json").read_text())
        if not report["unique_address_sets_identical"] or not report["canonical_event_multisets_identical"]:
            raise RuntimeError(f"failed equivalence audit: {directory}")
        with (directory / "cache_traffic.csv").open(newline="") as handle:
            for row in csv.DictReader(handle):
                combined.append({"block_size": block_size, **row})
        with (directory / "address_set_audit.csv").open(newline="") as handle:
            for row in csv.DictReader(handle):
                audits.append({"block_size": block_size, **row})

    if not combined:
        raise RuntimeError(f"no block_b*/cache_traffic.csv below {root}")
    with (root / "capacity_grain_scan.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(combined[0]))
        writer.writeheader()
        writer.writerows(combined)
    with (root / "event_equivalence_audit.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(audits[0]))
        writer.writeheader()
        writer.writerows(audits)
    print(f"PB_CAPACITY_GRAIN_SUMMARY_PASS rows={len(combined)} output={root}")


if __name__ == "__main__":
    main()
