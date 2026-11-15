#!/usr/bin/env python3
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))

from analyze_reuse import count_granularities, load_pattern


def main() -> int:
    matrix = Path(__file__).with_name("synthetic_after_symbolic.mtx")
    pattern = load_pattern(matrix, "auto")
    result = count_granularities(
        pattern, block_size=2, segment_height=2, scope="scalar-strict"
    )
    rows = {row["method"]: row for row in result["summary_rows"]}
    assert result["atomic_updates"] == 10, result
    assert rows["operation"]["grain_size"] == 16
    assert rows["operation"]["tasks"] == 1
    assert rows["operation"]["dependency_edges"] == 1
    assert rows["operation"]["targets"] == 8
    assert result["operation_vliw"] == {
        "lanes": 16,
        "bundles": 1,
        "issued_slots": 16,
        "useful_atomic_updates": 10,
        "padding_slots": 6,
    }
    assert {key: result["block_counts"][key] for key in ("block_tasks", "l_blocks", "u_blocks", "targets")} == {
        "block_tasks": 4,
        "l_blocks": 2,
        "u_blocks": 2,
        "targets": 4,
    }, result["block_counts"]
    assert sum(
        macs * count for macs, count in result["task_histograms"]["segment"].items()
    ) == 10
    assert sum(
        macs * count for macs, count in result["task_histograms"]["block"].items()
    ) == 10
    print("PB_GRANULARITY_COUNT_TEST_PASS atomic=10 block_tasks=4 block_targets=4")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
