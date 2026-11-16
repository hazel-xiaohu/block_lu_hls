#!/usr/bin/env python3
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))

from analyze_full_lu import build_complete_tasks, dag_metrics
from analyze_reuse import load_pattern


def main() -> int:
    pattern = load_pattern(Path(__file__).with_name("synthetic_after_symbolic.mtx"), "auto")
    tasks, coverage = build_complete_tasks(pattern, block_size=2)
    dag = dag_metrics(tasks)
    by_kernel = {}
    for kernel in ("GETRF", "GESSM", "TSTRF", "SSSSM"):
        selected = [task for task in tasks if task.kernel == kernel]
        by_kernel[kernel] = (
            len(selected),
            sum(task.macs for task in selected),
            sum(task.divisions for task in selected),
        )
    assert coverage == {
        "block_count": 2,
        "scalar_macs": 10,
        "scalar_divisions": 5,
        "logical_flops": 25,
        "scheduled_tasks": 5,
    }, coverage
    assert by_kernel == {
        "GETRF": (2, 1, 2),
        "GESSM": (1, 2, 0),
        "TSTRF": (1, 1, 3),
        "SSSSM": (1, 6, 0),
    }, by_kernel
    assert dag["tasks"] == 5
    assert dag["edges"] == 5
    assert dag["initial_ready_tasks"] == 1
    assert dag["peak_ready_tasks"] == 2
    assert dag["critical_path_tasks"] == 4
    print("PB_FULL_LU_TEST_PASS tasks=5 edges=5 macs=10 divisions=5 flops=25")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
