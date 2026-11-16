#!/usr/bin/env python3
"""Analyze the complete right-looking Block-LU task graph.

The existing P3--P6 experiment is intentionally frozen to the SSSSM-only
block-trailing scope I>K,J>K.  This companion analysis uses the same
post-symbolic L/U union but covers every strict scalar elimination update
i>k,j>k and classifies it as GETRF, GESSM, TSTRF, or SSSSM by block
coordinates.  Strict-L divisions are counted separately (division = 1
logical FLOP), matching the project's SALUT FLOP convention.

No scalar (i,j,k) stream is materialized.  Counts and the Block-LU DAG are
constructed from grouped symbolic rows/columns.
"""

from __future__ import annotations

import argparse
import csv
import hashlib
import heapq
import json
from collections import Counter, defaultdict, deque
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, Iterable, List, Sequence, Set, Tuple

from analyze_reuse import (
    DEPENDENCY_DESCRIPTOR_BYTES,
    OPERATION_VLIW_LANES,
    TASK_DESCRIPTOR_BYTES,
    Pattern,
    _ceil_div,
    _group_counts,
    load_pattern,
)


KERNELS = ("GETRF", "GESSM", "TSTRF", "SSSSM")


@dataclass
class Task:
    task_id: int
    kernel: str
    kblock: int
    iblock: int
    jblock: int
    macs: int = 0
    divisions: int = 0
    dependencies: Set[int] = field(default_factory=set)

    @property
    def flops(self) -> int:
        return 2 * self.macs + self.divisions

    @property
    def key(self) -> Tuple[str, int, int, int]:
        return (self.kernel, self.kblock, self.iblock, self.jblock)


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _write_csv(path: Path, fieldnames: Sequence[str], rows: Iterable[Dict[str, object]]) -> None:
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def _kernel_for(iblock: int, jblock: int, kblock: int) -> str:
    if iblock == kblock and jblock == kblock:
        return "GETRF"
    if iblock == kblock:
        return "GESSM"
    if jblock == kblock:
        return "TSTRF"
    return "SSSSM"


def _task_key(kernel: str, kblock: int, iblock: int, jblock: int) -> Tuple[str, int, int, int]:
    return (kernel, kblock, iblock, jblock)


def build_complete_tasks(pattern: Pattern, block_size: int) -> Tuple[List[Task], Dict[str, object]]:
    block_count = _ceil_div(pattern.n, block_size)
    macs: Counter[Tuple[str, int, int, int]] = Counter()
    divisions: Counter[Tuple[str, int, int, int]] = Counter()
    lblocks_by_k: Dict[int, Set[int]] = defaultdict(set)
    ublocks_by_k: Dict[int, Set[int]] = defaultdict(set)

    # Aggregate the complete strict scalar update set.  Because i>k and j>k,
    # I,J can only equal or exceed K, so the four cases form a disjoint and
    # exhaustive partition of the LU arithmetic.
    for k in range(pattern.n):
        kb = k // block_size
        lcounts = _group_counts(pattern.lower_rows[k], block_size)
        ucounts = _group_counts(pattern.upper_cols[k], block_size)
        lblocks_by_k[kb].update(lcounts)
        ublocks_by_k[kb].update(ucounts)
        for ib, lcount in lcounts.items():
            div_kernel = "GETRF" if ib == kb else "TSTRF"
            div_key = _task_key(div_kernel, kb, ib, kb)
            divisions[div_key] += lcount
            for jb, ucount in ucounts.items():
                kernel = _kernel_for(ib, jb, kb)
                macs[_task_key(kernel, kb, ib, jb)] += lcount * ucount

    # Create the scheduled Block-LU tasks, including structurally scheduled
    # tasks with zero effective scalar MACs.  GETRF exists for every diagonal
    # block; panels are determined by occupied symbolic factor blocks.
    scheduled: Set[Tuple[str, int, int, int]] = set()
    for kb in range(block_count):
        scheduled.add(_task_key("GETRF", kb, kb, kb))
        lower_panels = sorted(ib for ib in lblocks_by_k.get(kb, ()) if ib > kb)
        upper_panels = sorted(jb for jb in ublocks_by_k.get(kb, ()) if jb > kb)
        for jb in upper_panels:
            scheduled.add(_task_key("GESSM", kb, kb, jb))
        for ib in lower_panels:
            scheduled.add(_task_key("TSTRF", kb, ib, kb))
        for ib in lower_panels:
            for jb in upper_panels:
                scheduled.add(_task_key("SSSSM", kb, ib, jb))
    scheduled.update(macs)
    scheduled.update(divisions)

    tasks: List[Task] = []
    task_by_key: Dict[Tuple[str, int, int, int], Task] = {}
    last_update: Dict[Tuple[int, int], int] = {}

    def add_task(key: Tuple[str, int, int, int], deps: Iterable[int]) -> Task:
        task = Task(
            task_id=len(tasks),
            kernel=key[0],
            kblock=key[1],
            iblock=key[2],
            jblock=key[3],
            macs=int(macs[key]),
            divisions=int(divisions[key]),
            dependencies=set(deps),
        )
        tasks.append(task)
        task_by_key[key] = task
        return task

    # Right-looking execution DAG.  A target's previous update must complete
    # before it is factored/solved or receives its next update.
    for kb in range(block_count):
        diag_key = _task_key("GETRF", kb, kb, kb)
        diag_deps: Set[int] = set()
        if (kb, kb) in last_update:
            diag_deps.add(last_update[(kb, kb)])
        diag = add_task(diag_key, diag_deps)

        upper_panels = sorted(
            key[3] for key in scheduled if key[0] == "GESSM" and key[1] == kb
        )
        lower_panels = sorted(
            key[2] for key in scheduled if key[0] == "TSTRF" and key[1] == kb
        )
        gessm: Dict[int, Task] = {}
        tstrf: Dict[int, Task] = {}
        for jb in upper_panels:
            deps = {diag.task_id}
            if (kb, jb) in last_update:
                deps.add(last_update[(kb, jb)])
            gessm[jb] = add_task(_task_key("GESSM", kb, kb, jb), deps)
        for ib in lower_panels:
            deps = {diag.task_id}
            if (ib, kb) in last_update:
                deps.add(last_update[(ib, kb)])
            tstrf[ib] = add_task(_task_key("TSTRF", kb, ib, kb), deps)
        for ib in lower_panels:
            for jb in upper_panels:
                key = _task_key("SSSSM", kb, ib, jb)
                if key not in scheduled:
                    continue
                deps = {gessm[jb].task_id, tstrf[ib].task_id}
                if (ib, jb) in last_update:
                    deps.add(last_update[(ib, jb)])
                update = add_task(key, deps)
                last_update[(ib, jb)] = update.task_id

    if len(task_by_key) != len(scheduled):
        missing = sorted(scheduled - set(task_by_key))
        raise ValueError(f"scheduled tasks were not placed in DAG: {missing[:8]}")

    total_macs = sum(task.macs for task in tasks)
    total_divisions = sum(task.divisions for task in tasks)
    scalar_macs = sum(
        len(pattern.lower_rows[k]) * len(pattern.upper_cols[k]) for k in range(pattern.n)
    )
    scalar_divisions = sum(len(rows) for rows in pattern.lower_rows)
    if total_macs != scalar_macs or total_divisions != scalar_divisions:
        raise ValueError(
            "complete arithmetic coverage mismatch: "
            f"tasks mac/div={total_macs}/{total_divisions}, "
            f"scalar={scalar_macs}/{scalar_divisions}"
        )
    return tasks, {
        "block_count": block_count,
        "scalar_macs": scalar_macs,
        "scalar_divisions": scalar_divisions,
        "logical_flops": 2 * scalar_macs + scalar_divisions,
        "scheduled_tasks": len(scheduled),
    }


def dag_metrics(tasks: Sequence[Task]) -> Dict[str, object]:
    successors: List[List[int]] = [[] for _ in tasks]
    indegree = [0] * len(tasks)
    for task in tasks:
        indegree[task.task_id] = len(task.dependencies)
        for dep in task.dependencies:
            successors[dep].append(task.task_id)

    ready = deque(i for i, degree in enumerate(indegree) if degree == 0)
    initial_ready = len(ready)
    peak_ready = initial_ready
    topo: List[int] = []
    indegree_work = indegree[:]
    while ready:
        node = ready.popleft()
        topo.append(node)
        for succ in successors[node]:
            indegree_work[succ] -= 1
            if indegree_work[succ] == 0:
                ready.append(succ)
        peak_ready = max(peak_ready, len(ready))
    if len(topo) != len(tasks):
        raise ValueError("complete Block-LU task graph contains a cycle")

    # Two spans are useful: structural task span and arithmetic-weighted span.
    task_span = [0] * len(tasks)
    flop_span = [0] * len(tasks)
    predecessor_task = [-1] * len(tasks)
    predecessor_flop = [-1] * len(tasks)
    for node in topo:
        task = tasks[node]
        if task.dependencies:
            pt = max(task.dependencies, key=lambda dep: task_span[dep])
            pf = max(task.dependencies, key=lambda dep: flop_span[dep])
            task_span[node] = task_span[pt] + 1
            flop_span[node] = flop_span[pf] + max(1, task.flops)
            predecessor_task[node] = pt
            predecessor_flop[node] = pf
        else:
            task_span[node] = 1
            flop_span[node] = max(1, task.flops)

    task_end = max(range(len(tasks)), key=lambda i: task_span[i]) if tasks else -1
    flop_end = max(range(len(tasks)), key=lambda i: flop_span[i]) if tasks else -1

    def path(end: int, pred: Sequence[int]) -> List[int]:
        result: List[int] = []
        while end >= 0:
            result.append(end)
            end = pred[end]
        result.reverse()
        return result

    total_flops = sum(task.flops for task in tasks)
    return {
        "tasks": len(tasks),
        "edges": sum(len(task.dependencies) for task in tasks),
        "initial_ready_tasks": initial_ready,
        "peak_ready_tasks": peak_ready,
        "critical_path_tasks": task_span[task_end] if task_end >= 0 else 0,
        "critical_path_flops": flop_span[flop_end] if flop_end >= 0 else 0,
        "work_span_parallelism": (
            total_flops / flop_span[flop_end] if flop_end >= 0 and flop_span[flop_end] else 0.0
        ),
        "structural_critical_path": path(task_end, predecessor_task),
        "weighted_critical_path": path(flop_end, predecessor_flop),
    }


def list_schedule(tasks: Sequence[Task], workers: int) -> Dict[str, object]:
    successors: List[List[int]] = [[] for _ in tasks]
    remaining = [len(task.dependencies) for task in tasks]
    for task in tasks:
        for dep in task.dependencies:
            successors[dep].append(task.task_id)

    # Upward rank (longest remaining weighted path) drives deterministic
    # criticality-first scheduling on generic workers.
    rank = [0] * len(tasks)
    for task in reversed(tasks):
        tail = max((rank[succ] for succ in successors[task.task_id]), default=0)
        rank[task.task_id] = max(1, task.flops) + tail
    ready: List[Tuple[int, int]] = []
    for task in tasks:
        if remaining[task.task_id] == 0:
            heapq.heappush(ready, (-rank[task.task_id], task.task_id))
    active: List[Tuple[int, int]] = []
    now = 0
    completed = 0
    busy = 0
    while ready or active:
        while len(active) < workers and ready:
            _, node = heapq.heappop(ready)
            duration = max(1, tasks[node].flops)
            busy += duration
            heapq.heappush(active, (now + duration, node))
        if not active:
            raise ValueError("list scheduler stalled")
        now = active[0][0]
        finished: List[int] = []
        while active and active[0][0] == now:
            _, node = heapq.heappop(active)
            finished.append(node)
            completed += 1
        for node in finished:
            for succ in successors[node]:
                remaining[succ] -= 1
                if remaining[succ] == 0:
                    heapq.heappush(ready, (-rank[succ], succ))
    return {
        "workers": workers,
        "completed": completed,
        "makespan_flop_units": now,
        "worker_utilization": busy / (workers * now) if now else 0.0,
    }


def segment_counts(pattern: Pattern, segment_height: int) -> Dict[str, int]:
    mac_tasks: Set[Tuple[int, int]] = set()
    mac_contributions = 0
    division_tasks: Set[Tuple[int, int]] = set()
    for k in range(pattern.n):
        segments = {i // segment_height for i in pattern.lower_rows[k]}
        for j in pattern.upper_cols[k]:
            for segment in segments:
                mac_tasks.add((j, segment))
                mac_contributions += 1
        for segment in segments:
            division_tasks.add((k, segment))
    return {
        "mac_tasks": len(mac_tasks),
        "division_tasks": len(division_tasks),
        "tasks": len(mac_tasks) + len(division_tasks),
        "mac_contribution_descriptors": mac_contributions,
        "division_contribution_descriptors": sum(len(rows) for rows in pattern.lower_rows),
    }


def run(args: argparse.Namespace) -> int:
    matrix = Path(args.matrix)
    pattern = load_pattern(matrix, args.input_kind)
    tasks, coverage = build_complete_tasks(pattern, args.block_size)
    dag = dag_metrics(tasks)
    schedules = [list_schedule(tasks, workers) for workers in (4, 8)]
    segments = segment_counts(pattern, args.segment_height)
    output = Path(args.output)
    output.mkdir(parents=True, exist_ok=True)

    kernel_rows: List[Dict[str, object]] = []
    for kernel in KERNELS:
        selected = [task for task in tasks if task.kernel == kernel]
        macs = sum(task.macs for task in selected)
        divisions = sum(task.divisions for task in selected)
        kernel_rows.append(
            {
                "kernel": kernel,
                "tasks": len(selected),
                "zero_mac_tasks": sum(task.macs == 0 for task in selected),
                "macs": macs,
                "divisions": divisions,
                "logical_flops": 2 * macs + divisions,
                "flop_fraction": (2 * macs + divisions) / coverage["logical_flops"]
                if coverage["logical_flops"]
                else 0.0,
            }
        )

    task_rows = [
        {
            "task_id": task.task_id,
            "kernel": task.kernel,
            "K": task.kblock,
            "I": task.iblock,
            "J": task.jblock,
            "macs": task.macs,
            "divisions": task.divisions,
            "logical_flops": task.flops,
            "dependency_count": len(task.dependencies),
            "dependencies": ";".join(map(str, sorted(task.dependencies))),
        }
        for task in tasks
    ]
    _write_csv(
        output / "full_lu_kernel_summary.csv",
        ["kernel", "tasks", "zero_mac_tasks", "macs", "divisions", "logical_flops", "flop_fraction"],
        kernel_rows,
    )
    _write_csv(
        output / "full_lu_tasks.csv",
        ["task_id", "kernel", "K", "I", "J", "macs", "divisions", "logical_flops", "dependency_count", "dependencies"],
        task_rows,
    )

    trailing_macs = sum(
        sum(1 for i in pattern.lower_rows[k] if i // args.block_size > k // args.block_size)
        * sum(1 for j in pattern.upper_cols[k] if j // args.block_size > k // args.block_size)
        for k in range(pattern.n)
    )
    operation_scalar_tasks = coverage["scalar_macs"] + coverage["scalar_divisions"]
    operation_vliw_tasks = _ceil_div(coverage["scalar_macs"], OPERATION_VLIW_LANES) + _ceil_div(
        coverage["scalar_divisions"], OPERATION_VLIW_LANES
    )
    comparison_rows = [
        {
            "method": "operation-scalar",
            "tasks": operation_scalar_tasks,
            "dependency_descriptors": operation_scalar_tasks,
            "metadata_footprint_bytes": operation_scalar_tasks
            * (TASK_DESCRIPTOR_BYTES + DEPENDENCY_DESCRIPTOR_BYTES),
            "note": "one scalar MAC or division per task",
        },
        {
            "method": "operation-vliw16-ideal",
            "tasks": operation_vliw_tasks,
            "dependency_descriptors": operation_vliw_tasks,
            "metadata_footprint_bytes": operation_vliw_tasks
            * (TASK_DESCRIPTOR_BYTES + DEPENDENCY_DESCRIPTOR_BYTES),
            "note": "ideal full-lane bundles; MAC and division bundles kept separate",
        },
        {
            "method": "segment",
            "tasks": segments["tasks"],
            "dependency_descriptors": segments["mac_contribution_descriptors"]
            + segments["division_contribution_descriptors"],
            "metadata_footprint_bytes": segments["tasks"] * TASK_DESCRIPTOR_BYTES
            + (segments["mac_contribution_descriptors"] + segments["division_contribution_descriptors"])
            * DEPENDENCY_DESCRIPTOR_BYTES,
            "note": "(j,segment) MAC tasks plus (k,segment) division tasks",
        },
        {
            "method": "block-complete-lu",
            "tasks": len(tasks),
            "dependency_descriptors": dag["edges"],
            "metadata_footprint_bytes": len(tasks) * TASK_DESCRIPTOR_BYTES
            + dag["edges"] * DEPENDENCY_DESCRIPTOR_BYTES,
            "note": "complete GETRF/GESSM/TSTRF/SSSSM DAG",
        },
    ]
    _write_csv(
        output / "full_lu_granularity_comparison.csv",
        ["method", "tasks", "dependency_descriptors", "metadata_footprint_bytes", "note"],
        comparison_rows,
    )
    _write_csv(
        output / "full_lu_dag_summary.csv",
        [
            "tasks",
            "edges",
            "initial_ready_tasks",
            "peak_ready_tasks",
            "critical_path_tasks",
            "critical_path_flops",
            "work_span_parallelism",
        ],
        [{key: dag[key] for key in (
            "tasks", "edges", "initial_ready_tasks", "peak_ready_tasks", "critical_path_tasks",
            "critical_path_flops", "work_span_parallelism"
        )}],
    )
    _write_csv(
        output / "full_lu_vs_trailing.csv",
        ["block_size", "trailing_ssssm_macs", "full_lu_macs", "panel_and_diagonal_macs", "trailing_fraction"],
        [{
            "block_size": args.block_size,
            "trailing_ssssm_macs": trailing_macs,
            "full_lu_macs": coverage["scalar_macs"],
            "panel_and_diagonal_macs": coverage["scalar_macs"] - trailing_macs,
            "trailing_fraction": trailing_macs / coverage["scalar_macs"] if coverage["scalar_macs"] else 0.0,
        }],
    )

    report = {
        "schema": "complete-block-lu-analysis-v1",
        "input": {
            "matrix": pattern.source,
            "matrix_sha256": _sha256(matrix),
            "kind": "post-symbolic-lu-union",
            "n": pattern.n,
            "strict_l_nnz": pattern.lower_nnz,
            "strict_u_nnz": pattern.upper_nnz,
            "diagonal_nnz": pattern.diagonal_nnz,
        },
        "configuration": {
            "block_size": args.block_size,
            "segment_height": args.segment_height,
            "scope": "complete strict LU arithmetic",
            "mac_condition": "i>k and j>k",
            "classification": {
                "GETRF": "I=K,J=K",
                "GESSM": "I=K,J>K",
                "TSTRF": "I>K,J=K",
                "SSSSM": "I>K,J>K",
            },
            "flop_convention": "multiply-subtract=2, division=1",
            "dag_schedule": "right-looking",
        },
        "coverage": coverage,
        "kernel_summary": kernel_rows,
        "trailing_comparison": {
            "ssssm_trailing_macs": trailing_macs,
            "full_lu_macs": coverage["scalar_macs"],
            "panel_and_diagonal_macs": coverage["scalar_macs"] - trailing_macs,
            "trailing_fraction": trailing_macs / coverage["scalar_macs"]
            if coverage["scalar_macs"]
            else 0.0,
        },
        "dag": dag,
        "dag_metric_semantics": {
            "peak_ready_tasks": "largest ready-set size under deterministic topological completion order",
            "critical_path_flops": "longest path with max(1, logical_flops_per_task) node weight",
            "work_span_parallelism": "total logical FLOPs divided by weighted critical-path cost",
        },
        "generic_worker_schedules": schedules,
        "granularity_comparison": comparison_rows,
        "limitations": [
            "Cache-traffic P3-P5 remains frozen to SSSSM/block-trailing and is not relabeled as complete LU.",
            "This complete-LU stage reports exact symbolic arithmetic/task/DAG coverage; a factor-producing read/write address model is required before claiming complete-LU cache traffic.",
            "The generic worker schedule uses logical FLOPs as task duration and is an analytical parallelism bound, not measured FPGA cycles.",
        ],
    }
    with (output / "full_lu_report.json").open("w", encoding="utf-8") as handle:
        json.dump(report, handle, indent=2, sort_keys=True)
        handle.write("\n")

    print(
        "PB_FULL_LU_PASS "
        f"n={pattern.n} block_size={args.block_size} tasks={len(tasks)} edges={dag['edges']} "
        f"macs={coverage['scalar_macs']} divisions={coverage['scalar_divisions']} "
        f"flops={coverage['logical_flops']} trailing_fraction={trailing_macs / coverage['scalar_macs']:.6f} "
        f"output={output.resolve()}"
    )
    for row in kernel_rows:
        print(
            f"  {row['kernel']:6s} tasks={row['tasks']:6d} macs={row['macs']:12d} "
            f"div={row['divisions']:10d} flops={row['logical_flops']:12d}"
        )
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--matrix", required=True)
    parser.add_argument("--block-size", type=int, required=True)
    parser.add_argument("--segment-height", type=int)
    parser.add_argument("--output", required=True)
    parser.add_argument(
        "--input-kind", choices=("auto", "symbolic-lu-union"), default="auto"
    )
    return parser


def main(argv: Sequence[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    if args.block_size <= 0:
        raise SystemExit("block size must be positive")
    if args.segment_height is None:
        args.segment_height = args.block_size
    if args.segment_height <= 0:
        raise SystemExit("segment height must be positive")
    return run(args)


if __name__ == "__main__":
    raise SystemExit(main())
