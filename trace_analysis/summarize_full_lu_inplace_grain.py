#!/usr/bin/env python3
"""Combine complete-LU in-place capacity results across block sizes."""

from __future__ import annotations

import argparse
import csv
from pathlib import Path


DEFAULT_INPUTS = {
    256: Path("outputs/full_lu_inplace_b256_capacity_v1"),
    512: Path("outputs/full_lu_inplace_b512_capacity_v1"),
    1024: Path("outputs/full_lu_inplace_b1024_capacity_v1"),
}


def read_rows(path: Path) -> list[dict[str, str]]:
    with path.open(newline="", encoding="utf-8") as handle:
        return list(csv.DictReader(handle))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("outputs/full_lu_inplace_grain_capacity_v1.csv"),
    )
    args = parser.parse_args()

    combined: list[dict[str, str | int]] = []
    reference_audit: tuple[str, ...] | None = None
    audit_fields = (
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

    for block_size, directory in DEFAULT_INPUTS.items():
        summary = directory / "full_lu_inplace_summary.csv"
        audit = directory / "full_lu_inplace_event_audit.csv"
        if not summary.exists() or not audit.exists():
            raise SystemExit(f"missing completed result under {directory}")

        audit_rows = read_rows(audit)
        if len(audit_rows) not in (4, 10):
            raise SystemExit(f"unexpected audit row count under {directory}")
        signatures = {tuple(row[field] for field in audit_fields) for row in audit_rows}
        if len(signatures) != 1:
            raise SystemExit(f"within-B event audit mismatch under {directory}")
        signature = next(iter(signatures))
        if reference_audit is None:
            reference_audit = signature
        elif signature != reference_audit:
            raise SystemExit(f"cross-B canonical event audit mismatch under {directory}")

        for row in read_rows(summary):
            combined.append({"block_size": block_size, **row})

    args.output.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = ["block_size", *read_rows(DEFAULT_INPUTS[512] / "full_lu_inplace_summary.csv")[0].keys()]
    with args.output.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(combined)

    print(
        "PB_FULL_LU_INPLACE_GRAIN_SUMMARY_PASS "
        f"rows={len(combined)} event_signature_identical=1 output={args.output}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
