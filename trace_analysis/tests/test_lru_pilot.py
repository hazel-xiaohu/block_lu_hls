#!/usr/bin/env python3
from __future__ import annotations

import csv
import json
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BINARY = ROOT / "bin" / "granularity_lru"
MATRIX = ROOT / "tests" / "synthetic_after_symbolic.mtx"


def main() -> None:
    subprocess.run(["bash", str(ROOT / "build_lru_simulator.sh")], check=True)
    with tempfile.TemporaryDirectory(prefix="pb_lru_test_") as temp:
        output = Path(temp)
        subprocess.run(
            [str(BINARY), str(MATRIX), "2", "2", "64,1024", str(output)],
            check=True,
        )
        with (output / "address_set_audit.csv").open(newline="") as handle:
            audit = list(csv.DictReader(handle))
        assert len(audit) == 6
        assert {int(row["atomic_updates"]) for row in audit} == {6}
        assert {int(row["canonical_event_ids"]) for row in audit} == {6}
        assert {int(row["duplicate_event_ids"]) for row in audit} == {0}
        assert len({(row["l_hash"], row["u_hash"], row["a_hash"]) for row in audit}) == 1
        assert len(
            {
                (row["event_hash_sum"], row["event_hash_xor"], row["event_hash_sum2"])
                for row in audit
            }
        ) == 1

        with (output / "cache_traffic.csv").open(newline="") as handle:
            traffic = list(csv.DictReader(handle))
        assert len(traffic) == 12
        for row in traffic:
            if row["method"] in {"operation", "operation-block-order"}:
                assert int(row["grain_size"]) == 16
            if int(row["cache_bytes"]) == 64:
                # With 8-byte FP32+int32 records, some synthetic entries share
                # a 64-byte line.  Exact values are validated by the audit.
                assert int(row["l_misses"]) > 0
                assert int(row["u_misses"]) > 0
                assert int(row["a_reads"]) > 0
                assert int(row["a_writebacks"]) > 0

        report = json.loads((output / "cache_pilot_report.json").read_text())
        assert report["scope"] == "SSSSM/block-trailing"
        assert report["unique_address_sets_identical"] is True
        assert report["canonical_event_multisets_identical"] is True
        assert report["operation_vliw_lanes"] == 16
        assert report["operation_vliw_bundles"] == 1
        assert report["operation_padding_slots"] == 10
        assert "8B AoS records" in report["address_layout"]

        with (output / "descriptor_width_scan.csv").open(newline="") as handle:
            width_scan = list(csv.DictReader(handle))
        assert len(width_scan) == 6 * 2 * 8
    print("PB_LRU_TEST_PASS")


if __name__ == "__main__":
    main()
