#!/usr/bin/env python3
"""Count operation-, segment-, and block-granularity trailing updates.

This is deliberately a count-only front end.  It never materializes the
operation trace (i, j, k).  The input is the union of the symbolic L and U
patterns after reordering and symbolic factorization.
"""

from __future__ import annotations

import argparse
import csv
import hashlib
import heapq
import json
import sys
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Sequence, Set, Tuple

import numpy as np
from scipy.sparse import coo_matrix


EXPECTED_ZD_JAC3_DB = {
    256: {"block_tasks": 1761, "l_blocks": 301, "u_blocks": 301, "targets": 618},
    512: {"block_tasks": 414, "l_blocks": 104, "u_blocks": 104, "targets": 193},
    1024: {"block_tasks": 147, "l_blocks": 45, "u_blocks": 45, "targets": 80},
}

TASK_DESCRIPTOR_BYTES = 32
DEPENDENCY_DESCRIPTOR_BYTES = 8
OPERATION_VLIW_LANES = 16


def _ceil_div(value: int, divisor: int) -> int:
    return (value + divisor - 1) // divisor


@dataclass(frozen=True)
class Pattern:
    n: int
    lower_rows: Tuple[Tuple[int, ...], ...]
    upper_cols: Tuple[Tuple[int, ...], ...]
    lower_nnz: int
    upper_nnz: int
    diagonal_nnz: int
    source: str


def _read_matrix_market(path: Path) -> Tuple[int, Set[Tuple[int, int]], str]:
    with path.open("r", encoding="utf-8", errors="replace") as handle:
        banner = handle.readline().strip().split()
        if len(banner) != 5 or banner[0].lower() != "%%matrixmarket":
            raise ValueError(f"{path}: not a Matrix Market coordinate file")
        if banner[1].lower() != "matrix" or banner[2].lower() != "coordinate":
            raise ValueError(f"{path}: only Matrix Market coordinate matrices are supported")
        symmetry = banner[4].lower()
        line = handle.readline()
        while line and line.lstrip().startswith("%"):
            line = handle.readline()
        if not line:
            raise ValueError(f"{path}: missing size line")
        dims = line.split()
        if len(dims) < 3:
            raise ValueError(f"{path}: malformed size line")
        rows, cols, declared = map(int, dims[:3])
        if rows != cols:
            raise ValueError(f"{path}: symbolic LU pattern must be square, got {rows}x{cols}")

        coords: Set[Tuple[int, int]] = set()
        records = 0
        for lineno, line in enumerate(handle, start=3):
            stripped = line.strip()
            if not stripped or stripped.startswith("%"):
                continue
            fields = stripped.split()
            if len(fields) < 2:
                raise ValueError(f"{path}:{lineno}: malformed coordinate")
            row = int(fields[0]) - 1
            col = int(fields[1]) - 1
            if row < 0 or col < 0 or row >= rows or col >= cols:
                raise ValueError(f"{path}:{lineno}: coordinate outside declared shape")
            coords.add((row, col))
            if symmetry in {"symmetric", "hermitian", "skew-symmetric"} and row != col:
                coords.add((col, row))
            records += 1
        if records != declared:
            raise ValueError(
                f"{path}: declared {declared} records but parsed {records}; input may be truncated"
            )
    return rows, coords, symmetry


def _confirm_symbolic_input(path: Path, input_kind: str) -> None:
    if input_kind == "symbolic-lu-union":
        return
    lowered = path.name.lower()
    if "symbolic" not in lowered and "after_symbolic" not in lowered:
        raise ValueError(
            "refusing an unmarked input: this experiment requires the post-symbolic L/U union; "
            "rename it with 'symbolic' in the filename or pass "
            "--input-kind symbolic-lu-union after verifying its provenance"
        )


def load_pattern(path: Path, input_kind: str) -> Pattern:
    _confirm_symbolic_input(path, input_kind)
    n, coords, symmetry = _read_matrix_market(path)
    lower: List[Set[int]] = [set() for _ in range(n)]
    upper: List[Set[int]] = [set() for _ in range(n)]
    diagonal = 0
    for row, col in coords:
        if row > col:
            lower[col].add(row)  # L(i,k), indexed by scalar pivot k=col
        elif row < col:
            upper[row].add(col)  # U(k,j), indexed by scalar pivot k=row
        else:
            diagonal += 1
    lower_rows = tuple(tuple(sorted(values)) for values in lower)
    upper_cols = tuple(tuple(sorted(values)) for values in upper)
    lower_nnz = sum(map(len, lower_rows))
    upper_nnz = sum(map(len, upper_cols))
    if lower_nnz == 0 or upper_nnz == 0:
        raise ValueError(
            f"{path}: both strict L and strict U must be present in the symbolic union "
            f"(strict L={lower_nnz}, strict U={upper_nnz})"
        )
    return Pattern(
        n=n,
        lower_rows=lower_rows,
        upper_cols=upper_cols,
        lower_nnz=lower_nnz,
        upper_nnz=upper_nnz,
        diagonal_nnz=diagonal,
        source=str(path.resolve()),
    )


def _group_counts(values: Sequence[int], grain: int) -> Dict[int, int]:
    grouped: Dict[int, int] = defaultdict(int)
    for value in values:
        grouped[value // grain] += 1
    return grouped


def _summary(values: Iterable[int]) -> Dict[str, float | int]:
    array = np.fromiter(values, dtype=np.int64)
    if array.size == 0:
        return {"count": 0, "min": 0, "median": 0.0, "mean": 0.0, "p95": 0.0, "max": 0}
    return {
        "count": int(array.size),
        "min": int(array.min()),
        "median": float(np.median(array)),
        "mean": float(array.mean()),
        "p95": float(np.percentile(array, 95)),
        "max": int(array.max()),
    }


def _histogram(values: Iterable[int]) -> Counter[int]:
    return Counter(int(value) for value in values)


def _criticality_list_schedule(chains: Sequence[Sequence[int]], workers: int) -> Tuple[int, float]:
    """Schedule weighted dependency chains by largest remaining chain work."""
    suffixes: List[List[int]] = []
    ready: List[Tuple[int, int, int]] = []
    total_work = 0
    for chain_id, chain_values in enumerate(chains):
        chain = [int(value) for value in chain_values]
        total_work += sum(chain)
        suffix = [0] * len(chain)
        running = 0
        for pos in range(len(chain) - 1, -1, -1):
            running += chain[pos]
            suffix[pos] = running
        suffixes.append(suffix)
        if chain:
            heapq.heappush(ready, (-suffix[0], chain_id, 0))

    active: List[Tuple[int, int, int]] = []
    now = 0
    free_workers = workers
    while ready or active:
        while free_workers and ready:
            _, chain_id, pos = heapq.heappop(ready)
            cost = int(chains[chain_id][pos])
            if cost == 0:
                next_pos = pos + 1
                if next_pos < len(chains[chain_id]):
                    heapq.heappush(
                        ready,
                        (-suffixes[chain_id][next_pos], chain_id, next_pos),
                    )
                continue
            heapq.heappush(active, (now + cost, chain_id, pos))
            free_workers -= 1
        if not active:
            continue
        now = active[0][0]
        completed: List[Tuple[int, int]] = []
        while active and active[0][0] == now:
            _, chain_id, pos = heapq.heappop(active)
            completed.append((chain_id, pos))
            free_workers += 1
        for chain_id, pos in completed:
            next_pos = pos + 1
            if next_pos < len(chains[chain_id]):
                heapq.heappush(
                    ready,
                    (-suffixes[chain_id][next_pos], chain_id, next_pos),
                )
    utilization = (total_work / (workers * now)) if now else 0.0
    return now, utilization


def _operation_targets(
    pattern: Pattern,
    lower_rows: Sequence[Sequence[int]],
    upper_cols: Sequence[Sequence[int]],
) -> Tuple[int, np.ndarray]:
    """Return scalar A(i,j) targets and update counts using sparse L*U."""
    l_row: List[int] = []
    l_col: List[int] = []
    u_row: List[int] = []
    u_col: List[int] = []
    for k, rows in enumerate(lower_rows):
        l_row.extend(rows)
        l_col.extend([k] * len(rows))
    for k, cols in enumerate(upper_cols):
        u_row.extend([k] * len(cols))
        u_col.extend(cols)
    lmat = coo_matrix(
        (np.ones(len(l_row), dtype=np.int32), (l_row, l_col)),
        shape=(pattern.n, pattern.n),
    ).tocsr()
    umat = coo_matrix(
        (np.ones(len(u_row), dtype=np.int32), (u_row, u_col)),
        shape=(pattern.n, pattern.n),
    ).tocsr()
    product = lmat @ umat
    product.eliminate_zeros()
    return int(product.nnz), product.data.astype(np.int64, copy=False)


def count_granularities(
    pattern: Pattern,
    block_size: int,
    segment_height: int,
    scope: str = "block-trailing",
) -> Dict[str, object]:
    scalar_strict_atomic_updates = sum(
        len(pattern.lower_rows[k]) * len(pattern.upper_cols[k]) for k in range(pattern.n)
    )

    if scope == "block-trailing":
        active_lower = tuple(
            tuple(i for i in pattern.lower_rows[k] if i // block_size > k // block_size)
            for k in range(pattern.n)
        )
        active_upper = tuple(
            tuple(j for j in pattern.upper_cols[k] if j // block_size > k // block_size)
            for k in range(pattern.n)
        )
    elif scope == "scalar-strict":
        active_lower = pattern.lower_rows
        active_upper = pattern.upper_cols
    else:
        raise ValueError(f"unsupported scope: {scope}")

    atomic_updates = sum(len(active_lower[k]) * len(active_upper[k]) for k in range(pattern.n))

    segment_task_macs: Dict[Tuple[int, int], int] = defaultdict(int)
    segment_dependencies = 0
    segment_k_updates: Dict[Tuple[int, int], Set[int]] = defaultdict(set)

    block_task_macs: Dict[Tuple[int, int, int], int] = defaultdict(int)
    block_targets: Set[Tuple[int, int]] = set()
    block_l: Set[Tuple[int, int]] = set()
    block_u: Set[Tuple[int, int]] = set()

    for k in range(pattern.n):
        lrows = active_lower[k]
        ucols = active_upper[k]
        if not lrows or not ucols:
            continue

        segment_rows = _group_counts(lrows, segment_height)
        segment_dependencies += len(segment_rows) * len(ucols)
        for j in ucols:
            for segment, row_count in segment_rows.items():
                segment_task_macs[(j, segment)] += row_count
                segment_k_updates[(j, segment)].add(k)

        kblock = k // block_size
        lblocks = _group_counts(lrows, block_size)
        ublocks = _group_counts(ucols, block_size)
        for iblock in lblocks:
            block_l.add((iblock, kblock))
        for jblock in ublocks:
            block_u.add((kblock, jblock))
        for iblock, lcount in lblocks.items():
            for jblock, ucount in ublocks.items():
                key = (iblock, jblock, kblock)
                block_task_macs[key] += lcount * ucount
                block_targets.add((iblock, jblock))

    if scope == "block-trailing":
        # The frozen Block baseline creates one scheduled update for every
        # occupied L(I,K) x U(K,J) pair.  A scheduled sparse block product may
        # contain zero effective scalar MACs when its two blocks have no common
        # internal scalar pivot.  Retain those tasks: they are real scheduling
        # and metadata overhead and are required to reproduce the baseline.
        l_by_kblock: Dict[int, Set[int]] = defaultdict(set)
        u_by_kblock: Dict[int, Set[int]] = defaultdict(set)
        for iblock, kblock in block_l:
            l_by_kblock[kblock].add(iblock)
        for kblock, jblock in block_u:
            u_by_kblock[kblock].add(jblock)
        scheduled_keys: Set[Tuple[int, int, int]] = set()
        for kblock in set(l_by_kblock) | set(u_by_kblock):
            for iblock in l_by_kblock.get(kblock, ()):
                for jblock in u_by_kblock.get(kblock, ()):
                    scheduled_keys.add((iblock, jblock, kblock))
        for key in scheduled_keys:
            block_task_macs.setdefault(key, 0)
            block_targets.add((key[0], key[1]))

    operation_targets, operation_target_updates = _operation_targets(
        pattern, active_lower, active_upper
    )
    if int(operation_target_updates.sum()) != atomic_updates:
        raise ValueError(
            "internal consistency failure: sparse L*U contribution sum does not match atomic updates"
        )
    if sum(segment_task_macs.values()) != atomic_updates:
        raise ValueError("internal consistency failure: segment MAC sum does not match atomic updates")
    if sum(block_task_macs.values()) != atomic_updates:
        raise ValueError("internal consistency failure: block MAC sum does not match atomic updates")
    operation_vliw_bundles = _ceil_div(atomic_updates, OPERATION_VLIW_LANES)
    operation_padding_slots = operation_vliw_bundles * OPERATION_VLIW_LANES - atomic_updates
    # Under the full-PE simplification every issued bundle has 16 lanes.  The
    # final bundle may contain padding slots; useful scalar MACs remain exact.
    operation_task_hist = (
        Counter({OPERATION_VLIW_LANES: operation_vliw_bundles})
        if operation_vliw_bundles
        else Counter()
    )
    segment_target_updates = [len(ks) for ks in segment_k_updates.values()]
    block_target_updates: Counter[Tuple[int, int]] = Counter()
    for iblock, jblock, _ in block_task_macs:
        block_target_updates[(iblock, jblock)] += 1

    block_chains: Dict[Tuple[int, int], List[Tuple[int, int]]] = defaultdict(list)
    for (iblock, jblock, kblock), macs in block_task_macs.items():
        block_chains[(iblock, jblock)].append((kblock, macs))
    for chain in block_chains.values():
        chain.sort()
    block_critical_target, block_critical_chain = max(
        block_chains.items(), key=lambda item: sum(macs for _, macs in item[1])
    )
    block_critical_macs = sum(macs for _, macs in block_critical_chain)
    block_initial_ready_macs = sum(chain[0][1] for chain in block_chains.values())

    operation_critical_macs = int(operation_target_updates.max()) if operation_target_updates.size else 0
    segment_critical_macs = max(segment_task_macs.values(), default=0)
    update_dag_metrics = [
        {
            "method": "operation",
            "tasks": operation_vliw_bundles,
            "chains_or_independent_targets": operation_targets,
            "peak_ready_tasks": _ceil_div(operation_targets, OPERATION_VLIW_LANES),
            "initial_ready_macs": operation_targets,
            "critical_path_tasks": operation_critical_macs,
            "critical_path_macs": operation_critical_macs,
            "total_macs": atomic_updates,
            "work_span_parallelism": (operation_vliw_bundles / operation_critical_macs)
            if operation_critical_macs
            else 0.0,
        },
        {
            "method": "segment",
            "tasks": len(segment_task_macs),
            "chains_or_independent_targets": len(segment_task_macs),
            "peak_ready_tasks": len(segment_task_macs),
            "initial_ready_macs": atomic_updates,
            "critical_path_tasks": 1 if segment_task_macs else 0,
            "critical_path_macs": segment_critical_macs,
            "total_macs": atomic_updates,
            "work_span_parallelism": (atomic_updates / segment_critical_macs)
            if segment_critical_macs
            else 0.0,
        },
        {
            "method": "block",
            "tasks": len(block_task_macs),
            "chains_or_independent_targets": len(block_chains),
            "peak_ready_tasks": len(block_chains),
            "initial_ready_macs": block_initial_ready_macs,
            "critical_path_tasks": len(block_critical_chain),
            "critical_path_macs": block_critical_macs,
            "total_macs": atomic_updates,
            "work_span_parallelism": (atomic_updates / block_critical_macs)
            if block_critical_macs
            else 0.0,
            "critical_target": f"{block_critical_target[0]}:{block_critical_target[1]}",
        },
    ]
    segment_chains = [[int(macs)] for macs in segment_task_macs.values()]
    block_chain_values = [[int(macs) for _, macs in chain] for chain in block_chains.values()]
    for workers in (4, 8):
        segment_makespan, segment_utilization = _criticality_list_schedule(
            segment_chains, workers
        )
        block_makespan, block_utilization = _criticality_list_schedule(
            block_chain_values, workers
        )
        # Each operation worker is a 16-lane VLIW issue unit.  Padding is only
        # possible in the final bundle; no sparsity-induced lane stalls are modeled.
        operation_makespan = _ceil_div(operation_vliw_bundles, workers)
        operation_utilization = (
            atomic_updates
            / (workers * operation_makespan * OPERATION_VLIW_LANES)
            if operation_makespan
            else 0.0
        )
        schedule_values = {
            "operation": (operation_makespan, operation_utilization),
            "segment": (segment_makespan, segment_utilization),
            "block": (block_makespan, block_utilization),
        }
        for row in update_dag_metrics:
            makespan, utilization = schedule_values[str(row["method"])]
            row[f"criticality_{workers}worker_makespan_cycles"] = makespan
            row[f"criticality_{workers}worker_utilization"] = utilization

    rows = [
        {
            "method": "operation",
            "grain_size": OPERATION_VLIW_LANES,
            "atomic_updates": atomic_updates,
            "tasks": operation_vliw_bundles,
            "dependency_edges": operation_vliw_bundles,
            "targets": operation_targets,
        },
        {
            "method": "segment",
            "grain_size": segment_height,
            "atomic_updates": atomic_updates,
            "tasks": len(segment_task_macs),
            "dependency_edges": segment_dependencies,
            "targets": len(segment_task_macs),
        },
        {
            "method": "block",
            "grain_size": block_size,
            "atomic_updates": atomic_updates,
            "tasks": len(block_task_macs),
            "dependency_edges": len(block_task_macs),
            "targets": len(block_targets),
        },
    ]
    for row in rows:
        row["descriptor_bytes"] = (
            int(row["tasks"]) * TASK_DESCRIPTOR_BYTES
            + int(row["dependency_edges"]) * DEPENDENCY_DESCRIPTOR_BYTES
        )

    task_hists = {
        "operation": operation_task_hist,
        "segment": _histogram(segment_task_macs.values()),
        "block": _histogram(block_task_macs.values()),
    }
    target_hists = {
        "operation": _histogram(operation_target_updates),
        "segment": _histogram(segment_target_updates),
        "block": _histogram(block_target_updates.values()),
    }
    return {
        "summary_rows": rows,
        "atomic_updates": atomic_updates,
        "scalar_strict_atomic_updates": scalar_strict_atomic_updates,
        "block_counts": {
            "block_tasks": len(block_task_macs),
            "l_blocks": len(block_l),
            "u_blocks": len(block_u),
            "targets": len(block_targets),
            "zero_effective_mac_tasks": sum(1 for value in block_task_macs.values() if value == 0),
        },
        "task_mac_summary": {
            "operation": {
                "count": operation_vliw_bundles,
                "min": OPERATION_VLIW_LANES if operation_vliw_bundles else 0,
                "median": float(OPERATION_VLIW_LANES) if operation_vliw_bundles else 0.0,
                "mean": float(OPERATION_VLIW_LANES) if operation_vliw_bundles else 0.0,
                "p95": float(OPERATION_VLIW_LANES) if operation_vliw_bundles else 0.0,
                "max": OPERATION_VLIW_LANES if operation_vliw_bundles else 0,
            },
            "segment": _summary(segment_task_macs.values()),
            "block": _summary(block_task_macs.values()),
        },
        "target_update_summary": {
            "operation": _summary(operation_target_updates),
            "segment": _summary(segment_target_updates),
            "block": _summary(block_target_updates.values()),
        },
        "update_dag_metrics": update_dag_metrics,
        "operation_vliw": {
            "lanes": OPERATION_VLIW_LANES,
            "bundles": operation_vliw_bundles,
            "issued_slots": operation_vliw_bundles * OPERATION_VLIW_LANES,
            "useful_atomic_updates": atomic_updates,
            "padding_slots": operation_padding_slots,
        },
        "task_histograms": task_hists,
        "target_histograms": target_hists,
    }


def _write_csv(path: Path, fieldnames: Sequence[str], rows: Iterable[Dict[str, object]]) -> None:
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _validate_expected(
    matrix: Path,
    block_size: int,
    actual: Dict[str, int],
    enabled: bool,
    scope: str,
) -> Dict[str, object]:
    relevant = (
        scope == "block-trailing"
        and "zd_jac3_db" in matrix.name.lower()
        and block_size in EXPECTED_ZD_JAC3_DB
    )
    if not enabled or not relevant:
        return {"performed": False, "passed": None}
    expected = EXPECTED_ZD_JAC3_DB[block_size]
    differences = {
        key: {"expected": expected[key], "actual": actual[key]}
        for key in expected
        if expected[key] != actual[key]
    }
    return {"performed": True, "passed": not differences, "expected": expected, "differences": differences}


def run_symbolic(args: argparse.Namespace) -> int:
    matrix = Path(args.matrix)
    if args.block_size <= 0 or args.segment_height <= 0:
        raise ValueError("block size and segment height must be positive")
    pattern = load_pattern(matrix, args.input_kind)
    result = count_granularities(pattern, args.block_size, args.segment_height, args.scope)
    validation = _validate_expected(
        matrix,
        args.block_size,
        result["block_counts"],
        not args.no_expected_check,
        args.scope,
    )

    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    summary_rows = result["summary_rows"]
    _write_csv(
        output / "granularity_counts.csv",
        ["method", "grain_size", "atomic_updates", "tasks", "dependency_edges", "targets", "descriptor_bytes"],
        summary_rows,
    )
    scalar_strict = int(result["scalar_strict_atomic_updates"])
    selected_atomic = int(result["atomic_updates"])
    excluded = scalar_strict - selected_atomic
    _write_csv(
        output / "scope_audit.csv",
        [
            "scope",
            "block_size",
            "scalar_strict_atomic_updates",
            "selected_atomic_updates",
            "excluded_panel_or_diagonal_updates",
            "excluded_fraction",
        ],
        [
            {
                "scope": args.scope,
                "block_size": args.block_size,
                "scalar_strict_atomic_updates": scalar_strict,
                "selected_atomic_updates": selected_atomic,
                "excluded_panel_or_diagonal_updates": excluded,
                "excluded_fraction": (excluded / scalar_strict) if scalar_strict else 0.0,
            }
        ],
    )
    task_rows = []
    target_rows = []
    grain = {
        "operation": OPERATION_VLIW_LANES,
        "segment": args.segment_height,
        "block": args.block_size,
    }
    for method, histogram in result["task_histograms"].items():
        for macs, count in sorted(histogram.items()):
            task_rows.append({"method": method, "grain_size": grain[method], "macs_per_task": macs, "task_count": count})
    for method, histogram in result["target_histograms"].items():
        for updates, count in sorted(histogram.items()):
            target_rows.append({"method": method, "grain_size": grain[method], "updates_per_target": updates, "target_count": count})
    _write_csv(output / "task_mac_distribution.csv", ["method", "grain_size", "macs_per_task", "task_count"], task_rows)
    _write_csv(output / "target_update_distribution.csv", ["method", "grain_size", "updates_per_target", "target_count"], target_rows)
    _write_csv(
        output / "update_dag_metrics.csv",
        [
            "method",
            "tasks",
            "chains_or_independent_targets",
            "peak_ready_tasks",
            "initial_ready_macs",
            "critical_path_tasks",
            "critical_path_macs",
            "total_macs",
            "work_span_parallelism",
            "criticality_4worker_makespan_cycles",
            "criticality_4worker_utilization",
            "criticality_8worker_makespan_cycles",
            "criticality_8worker_utilization",
            "critical_target",
        ],
        result["update_dag_metrics"],
    )

    report = {
        "schema": "granularity-count-v2",
        "input": {
            "matrix": pattern.source,
            "matrix_sha256": _sha256(matrix),
            "confirmed_kind": "post-symbolic-lu-union",
            "n": pattern.n,
            "strict_l_nnz": pattern.lower_nnz,
            "strict_u_nnz": pattern.upper_nnz,
            "diagonal_nnz": pattern.diagonal_nnz,
        },
        "configuration": {
            "scope": args.scope,
            "scope_definition": (
                "I=floor(i/B)>K=floor(k/B) and J=floor(j/B)>K"
                if args.scope == "block-trailing"
                else "i>k and j>k"
            ),
            "scalar_strict_atomic_updates_before_block_scope": result[
                "scalar_strict_atomic_updates"
            ],
            "value_type": "fp32",
            "value_bytes": 4,
            "index_type": "int32",
            "index_bytes": 4,
            "cache_line_bytes": 64,
            "block_size": args.block_size,
            "segment_height": args.segment_height,
            "task_descriptor_bytes": TASK_DESCRIPTOR_BYTES,
            "dependency_descriptor_bytes": DEPENDENCY_DESCRIPTOR_BYTES,
            "operation_vliw_lanes": OPERATION_VLIW_LANES,
            "operation_vliw_full_load_assumption": True,
            "operation_vliw_padding_slots": result["operation_vliw"]["padding_slots"],
            "dependency_edges_semantics": "contribution descriptors; not the later full execution DAG",
            "full_operation_trace_materialized": False,
        },
        "counts": summary_rows,
        "coverage_audit": {
            "scalar_strict_atomic_updates": scalar_strict,
            "selected_atomic_updates": selected_atomic,
            "excluded_panel_or_diagonal_updates": excluded,
            "excluded_fraction": (excluded / scalar_strict) if scalar_strict else 0.0,
        },
        "block_factor_counts": result["block_counts"],
        "task_mac_summary": result["task_mac_summary"],
        "target_update_summary": result["target_update_summary"],
        "update_only_dag": {
            "scope": "SSSSM updates only; factor-production GETRF/GESSM/TSTRF dependencies excluded",
            "ordering": "same scalar/block A target updates are ordered by k/K; distinct targets are independent",
            "metrics": result["update_dag_metrics"],
        },
        "expected_block_baseline_validation": validation,
    }
    with (output / "pilot_report.json").open("w", encoding="utf-8") as handle:
        json.dump(report, handle, indent=2, sort_keys=True)
        handle.write("\n")

    for row in summary_rows:
        print(
            f"{row['method']:9s} grain={row['grain_size']:5d} atomic={row['atomic_updates']:12d} "
            f"tasks={row['tasks']:12d} deps={row['dependency_edges']:12d} targets={row['targets']:10d}"
        )
    print("block factors:", json.dumps(result["block_counts"], sort_keys=True))
    if validation["performed"]:
        print("expected baseline:", "PASS" if validation["passed"] else "FAIL")
        if not validation["passed"]:
            print(json.dumps(validation["differences"], indent=2, sort_keys=True), file=sys.stderr)
            return 2
    print(f"outputs: {output.resolve()}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)
    symbolic = subparsers.add_parser("symbolic", help="count a post-symbolic L/U union pattern")
    symbolic.add_argument("--matrix", required=True)
    symbolic.add_argument("--block-size", type=int, required=True)
    symbolic.add_argument("--segment-height", type=int, help="defaults to block size")
    symbolic.add_argument(
        "--scope",
        choices=("block-trailing", "scalar-strict"),
        default="block-trailing",
        help=(
            "block-trailing reproduces the frozen Block schedule using I>K,J>K; "
            "scalar-strict is a diagnostic i>k,j>k count"
        ),
    )
    symbolic.add_argument("--output", required=True)
    symbolic.add_argument(
        "--input-kind",
        choices=("auto", "symbolic-lu-union"),
        default="auto",
        help="explicit override is required if the filename is not marked as symbolic",
    )
    symbolic.add_argument("--no-expected-check", action="store_true")
    # Accepted for compatibility with the later cache-simulation command line.
    symbolic.add_argument("--cache-sizes", default=None, help=argparse.SUPPRESS)
    symbolic.add_argument("--lookahead-windows", default=None, help=argparse.SUPPRESS)
    symbolic.set_defaults(func=run_symbolic)
    return parser


def main(argv: Sequence[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    if args.command == "symbolic" and args.segment_height is None:
        args.segment_height = args.block_size
    try:
        return int(args.func(args))
    except (OSError, ValueError, MemoryError) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
