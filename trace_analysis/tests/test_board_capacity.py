#!/usr/bin/env python3
from __future__ import annotations

import json
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
HYBRID = Path("/output/pangulu_hybrid_salut_ssssm_v1")
UTIL = HYBRID / "vivado_parallel4x4_v1/project/pangulu_parallel4x4_zu15eg.runs/impl_1/pangulu_parallel4x4_bd_wrapper_utilization_placed.rpt"
HIER = HYBRID / "vivado_parallel4x4_v1/output/utilization_hier.rpt"
TIMING = HYBRID / "vivado_parallel4x4_v1/output/timing_summary.rpt"


def main() -> None:
    for path in (UTIL, HIER, TIMING):
        if not path.is_file():
            raise RuntimeError(f"missing board report fixture: {path}")
    with tempfile.TemporaryDirectory(prefix="pb_board_capacity_test_") as temp:
        output = Path(temp)
        subprocess.run(
            [
                "python3",
                str(ROOT / "derive_board_capacity.py"),
                "--utilization-report",
                str(UTIL),
                "--hierarchical-report",
                str(HIER),
                "--timing-report",
                str(TIMING),
                "--output",
                str(output),
            ],
            check=True,
        )
        result = json.loads((output / "board_capacity_budget.json").read_text())
        assert result["vivado"]["device"] == "xczu15eg-ffvb1156-2-i"
        assert result["placed_design_fixed"]["ramb36"] == 294
        assert result["placed_design_fixed"]["ramb18"] == 11
        assert result["placed_design_fixed"]["uram288"] == 8
        assert result["worker_breakdown"]["lu_workers_0_3"]["ramb36"] == 256
        assert result["worker_breakdown"]["ssssm_workers_4_7"]["ramb36"] == 16
        assert result["worker_breakdown"]["non_worker_pool_fifo_scheduler_control"]["ramb36"] == 22
        assert result["lua_net_capacity"]["cache_line_aligned_bytes"] == 5_882_112
        assert result["reports"]["timing"]["wns_ns"] == 5.475
    print("PB_BOARD_CAPACITY_TEST_PASS")


if __name__ == "__main__":
    main()
