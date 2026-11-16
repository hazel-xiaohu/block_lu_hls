#!/usr/bin/env python3
"""Consolidate complete-LU in-place results from multiple matrices."""

from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path


AUDIT_FIELDS = (
    "macs",
    "divisions",
    "unique_events",
    "duplicate_events",
    "event_hash_sum",
    "event_hash_xor",
    "event_hash_sum2",
    "unique_read_lines",
    "unique_write_lines",
    "read_hash",
    "write_hash",
)


def rows(path: Path) -> list[dict[str, str]]:
    with path.open(newline="", encoding="utf-8") as handle:
        return list(csv.DictReader(handle))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "root",
        nargs="?",
        type=Path,
        default=Path("outputs/full_lu_inplace_multi_b512_v1"),
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("outputs/full_lu_inplace_multi_b512_v1.csv"),
    )
    args = parser.parse_args()

    output_rows: list[dict[str, str | int]] = []
    matrices = 0
    for directory in sorted(path for path in args.root.iterdir() if path.is_dir()):
        audit_path = directory / "full_lu_inplace_event_audit.csv"
        summary_path = directory / "full_lu_inplace_summary.csv"
        report_path = directory / "full_lu_inplace_report.json"
        if not (audit_path.exists() and summary_path.exists() and report_path.exists()):
            continue

        audit = rows(audit_path)
        signatures = {tuple(row[field] for field in AUDIT_FIELDS) for row in audit}
        if len(audit) not in (4, 10) or len(signatures) != 1:
            raise SystemExit(f"event audit failed for {directory.name}")
        if any(row["duplicate_events"] != "0" for row in audit):
            raise SystemExit(f"duplicate canonical events for {directory.name}")

        report = json.loads(report_path.read_text(encoding="utf-8"))
        for row in rows(summary_path):
            output_rows.append(
                {
                    "matrix": directory.name,
                    "macs": report["macs"],
                    "divisions": report["divisions"],
                    "compulsory_bytes": report["compulsory_bytes"],
                    **row,
                }
            )
        matrices += 1

    if not output_rows:
        raise SystemExit(f"no completed matrix outputs under {args.root}")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = list(output_rows[0].keys())
    with args.output.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(output_rows)
    print(
        "PB_FULL_LU_INPLACE_MULTI_SUMMARY_PASS "
        f"matrices={matrices} rows={len(output_rows)} output={args.output}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
