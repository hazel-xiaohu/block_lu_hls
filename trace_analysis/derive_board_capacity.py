#!/usr/bin/env python3
"""Derive a unified L/U/A storage budget from placed Vivado reports."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
from dataclasses import dataclass
from pathlib import Path


BRAM36_BYTES = 36 * 1024 // 8
BRAM18_BYTES = 18 * 1024 // 8
URAM288_BYTES = 288 * 1024 // 8
CACHE_LINE_BYTES = 64


@dataclass(frozen=True)
class MemoryResources:
    ramb36: float
    ramb18: float
    uram: float

    @property
    def bytes(self) -> int:
        return round(
            self.ramb36 * BRAM36_BYTES
            + self.ramb18 * BRAM18_BYTES
            + self.uram * URAM288_BYTES
        )

    def minus(self, other: "MemoryResources") -> "MemoryResources":
        return MemoryResources(
            self.ramb36 - other.ramb36,
            self.ramb18 - other.ramb18,
            self.uram - other.uram,
        )

    def plus(self, other: "MemoryResources") -> "MemoryResources":
        return MemoryResources(
            self.ramb36 + other.ramb36,
            self.ramb18 + other.ramb18,
            self.uram + other.uram,
        )


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _header(text: str, field: str) -> str:
    match = re.search(rf"^\|\s*{re.escape(field)}\s*:\s*(.*?)\s*\|?$", text, re.MULTILINE)
    if not match:
        raise ValueError(f"missing Vivado header field: {field}")
    return match.group(1).strip()


def _resource_row(text: str, name: str) -> tuple[float, float]:
    pattern = rf"^\|\s*{re.escape(name)}\s*\|\s*([0-9.]+)\s*\|.*?\|\s*([0-9.]+)\s*\|\s*[0-9.]+\s*\|$"
    match = re.search(pattern, text, re.MULTILINE)
    if not match:
        raise ValueError(f"missing utilization row: {name}")
    return float(match.group(1)), float(match.group(2))


def parse_placed_summary(path: Path) -> tuple[dict[str, str], MemoryResources, MemoryResources]:
    text = path.read_text(errors="replace")
    bram_tiles_used, bram_tiles_available = _resource_row(text, "Block RAM Tile")
    uram_used, uram_available = _resource_row(text, "URAM")

    ramb36_match = re.search(r"^\|\s*RAMB36/FIFO\*\s*\|\s*([0-9.]+)", text, re.MULTILINE)
    ramb18_match = re.search(r"^\|\s*RAMB18\s*\|\s*([0-9.]+)", text, re.MULTILINE)
    if not ramb36_match or not ramb18_match:
        raise ValueError("missing RAMB36/RAMB18 primitive rows")
    ramb36_used = float(ramb36_match.group(1))
    ramb18_used = float(ramb18_match.group(1))
    if abs(bram_tiles_used - (ramb36_used + ramb18_used / 2.0)) > 1e-9:
        raise ValueError("Block RAM tile total does not match RAMB36 + RAMB18/2")

    metadata = {
        "tool_version": _header(text, "Tool Version"),
        "date": _header(text, "Date"),
        "design": _header(text, "Design"),
        "device": _header(text, "Device"),
        "design_state": _header(text, "Design State"),
    }
    used = MemoryResources(ramb36_used, ramb18_used, uram_used)
    available = MemoryResources(bram_tiles_available, 0.0, uram_available)
    return metadata, used, available


def parse_worker_hierarchy(path: Path) -> tuple[MemoryResources, MemoryResources, list[dict[str, float | int]]]:
    workers: list[dict[str, float | int]] = []
    row = re.compile(
        r"^\|\s*pb_roll_worker_([0-7])_U0\s*\|.*?\|\s*([0-9.]+)\s*\|\s*([0-9.]+)\s*\|\s*([0-9.]+)\s*\|\s*([0-9.]+)\s*\|$"
    )
    for line in path.read_text(errors="replace").splitlines():
        match = row.match(line)
        if not match:
            continue
        worker_id = int(match.group(1))
        workers.append(
            {
                "worker_id": worker_id,
                "ramb36": float(match.group(2)),
                "ramb18": float(match.group(3)),
                "uram": float(match.group(4)),
                "dsp": float(match.group(5)),
            }
        )
    if [int(worker["worker_id"]) for worker in workers] != list(range(8)):
        raise ValueError("hierarchical report must contain direct worker rows 0..7 exactly once")

    def sum_group(group: list[dict[str, float | int]]) -> MemoryResources:
        return MemoryResources(
            sum(float(worker["ramb36"]) for worker in group),
            sum(float(worker["ramb18"]) for worker in group),
            sum(float(worker["uram"]) for worker in group),
        )

    return sum_group(workers[:4]), sum_group(workers[4:]), workers


def parse_timing(path: Path | None) -> dict[str, float | str] | None:
    if path is None:
        return None
    text = path.read_text(errors="replace")
    summary = re.search(
        r"^\s*([-0-9.]+)\s+([-0-9.]+)\s+\d+\s+\d+\s+([-0-9.]+)\s+([-0-9.]+)\s+\d+\s+\d+",
        text,
        re.MULTILINE,
    )
    if not summary:
        raise ValueError("cannot parse timing summary WNS/TNS/WHS/THS")
    return {
        "report": str(path),
        "sha256": _sha256(path),
        "wns_ns": float(summary.group(1)),
        "tns_ns": float(summary.group(2)),
        "whs_ns": float(summary.group(3)),
        "ths_ns": float(summary.group(4)),
    }


def _resource_dict(resources: MemoryResources) -> dict[str, float | int]:
    return {
        "ramb36": resources.ramb36,
        "ramb18": resources.ramb18,
        "uram288": resources.uram,
        "physical_bytes": resources.bytes,
        "mib": resources.bytes / (1024 * 1024),
    }


def derive(
    utilization_report: Path,
    hierarchical_report: Path,
    timing_report: Path | None,
) -> dict[str, object]:
    metadata, used, available = parse_placed_summary(utilization_report)
    if metadata["device"] != "xczu15eg-ffvb1156-2-i":
        raise ValueError(f"unexpected target device: {metadata['device']}")
    if "Placed" not in metadata["design_state"] and "postRoute" not in metadata["design_state"]:
        raise ValueError(f"resource report is not a placed/routed design: {metadata['design_state']}")

    lu_workers, ssssm_workers, worker_rows = parse_worker_hierarchy(hierarchical_report)
    all_workers = lu_workers.plus(ssssm_workers)
    non_worker = used.minus(all_workers)
    # The device table exposes BRAM availability in 36-Kibit tile units, while
    # the used design may contain half-tile RAMB18 primitives.  Normalize the
    # free BRAM pool to RAMB36-equivalent tiles before converting to bytes.
    net = MemoryResources(
        available.ramb36 - used.ramb36 - used.ramb18 / 2.0,
        0.0,
        available.uram - used.uram,
    )
    for name, value in (("RAMB36", net.ramb36), ("RAMB18", net.ramb18), ("URAM", net.uram)):
        if value < 0:
            raise ValueError(f"negative free resource count for {name}")
    net_line_aligned = net.bytes - net.bytes % CACHE_LINE_BYTES

    return {
        "schema": "board-capacity-budget-v1",
        "budget_semantics": (
            "Unified BRAM+URAM physical-bit upper bound remaining after the complete placed 4-LU+4-SSSSM "
            "design; existing worker windows, pool cache, FIFOs, scheduler and control are already deducted."
        ),
        "cache_model_boundary": (
            "The replay treats the remaining storage as one ideal fully-associative LRU. Tag/LRU logic, banking, "
            "ports, fragmentation and routing margin for a future physical cache are not modeled."
        ),
        "vivado": metadata,
        "reports": {
            "utilization": {"path": str(utilization_report), "sha256": _sha256(utilization_report)},
            "hierarchical_utilization": {
                "path": str(hierarchical_report),
                "sha256": _sha256(hierarchical_report),
            },
            "timing": parse_timing(timing_report),
        },
        "resource_units": {
            "ramb36_bytes": BRAM36_BYTES,
            "ramb18_bytes": BRAM18_BYTES,
            "uram288_bytes": URAM288_BYTES,
            "cache_line_bytes": CACHE_LINE_BYTES,
        },
        "board_total": _resource_dict(available),
        "placed_design_fixed": _resource_dict(used),
        "worker_breakdown": {
            "lu_workers_0_3": _resource_dict(lu_workers),
            "ssssm_workers_4_7": _resource_dict(ssssm_workers),
            "non_worker_pool_fifo_scheduler_control": _resource_dict(non_worker),
            "direct_worker_rows": worker_rows,
        },
        "lua_net_capacity": {
            **_resource_dict(net),
            "cache_line_aligned_bytes": net_line_aligned,
            "cache_line_aligned_mib": net_line_aligned / (1024 * 1024),
        },
    }


def write_outputs(result: dict[str, object], output_dir: Path) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    (output_dir / "board_capacity_budget.json").write_text(
        json.dumps(result, indent=2, sort_keys=True) + "\n"
    )
    categories = [
        ("board_total", result["board_total"]),
        ("placed_design_fixed", result["placed_design_fixed"]),
        ("lu_workers_0_3", result["worker_breakdown"]["lu_workers_0_3"]),
        ("ssssm_workers_4_7", result["worker_breakdown"]["ssssm_workers_4_7"]),
        (
            "non_worker_pool_fifo_scheduler_control",
            result["worker_breakdown"]["non_worker_pool_fifo_scheduler_control"],
        ),
        ("lua_net_capacity", result["lua_net_capacity"]),
    ]
    with (output_dir / "board_resource_breakdown.csv").open("w", newline="") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=["category", "ramb36", "ramb18", "uram288", "physical_bytes", "mib"],
        )
        writer.writeheader()
        for category, values in categories:
            writer.writerow({"category": category, **{field: values[field] for field in writer.fieldnames[1:]}})


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--utilization-report", required=True, type=Path)
    parser.add_argument("--hierarchical-report", required=True, type=Path)
    parser.add_argument("--timing-report", type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    result = derive(args.utilization_report, args.hierarchical_report, args.timing_report)
    write_outputs(result, args.output)
    capacity = result["lua_net_capacity"]["cache_line_aligned_bytes"]
    print(f"PB_BOARD_CAPACITY_PASS cache_bytes={capacity} output={args.output}")


if __name__ == "__main__":
    main()
