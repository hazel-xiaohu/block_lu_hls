#!/usr/bin/env python3
from __future__ import annotations

import csv
import json
import sys
from pathlib import Path


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: summarize_multi_matrix_validation.py OUTPUT_ROOT")
    root = Path(sys.argv[1])
    rows: list[dict[str, str]] = []
    for directory in sorted(path for path in root.iterdir() if path.is_dir()):
        report = json.loads((directory / "cache_pilot_report.json").read_text())
        if not report["unique_address_sets_identical"] or not report["canonical_event_multisets_identical"]:
            raise RuntimeError(f"equivalence audit failed: {directory}")
        with (directory / "cache_traffic.csv").open(newline="") as handle:
            for row in csv.DictReader(handle):
                rows.append({"matrix": directory.name, **row})
    if not rows:
        raise RuntimeError(f"no completed matrix directories below {root}")
    with (root / "multi_matrix_cache_validation.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)
    print(f"PB_MULTI_MATRIX_SUMMARY_PASS matrices={len(set(row['matrix'] for row in rows))} rows={len(rows)}")


if __name__ == "__main__":
    main()
