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
        assert len(audit) == 10
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
        assert len(traffic) == 20
        for row in traffic:
            if row["method"] in {
                "operation",
                "operation-column-order",
                "operation-segment-order",
                "operation-block-order",
            }:
                assert int(row["grain_size"]) == 16
            if int(row["cache_bytes"]) == 64:
                # With 8-byte FP32+int32 records, some synthetic entries share
                # a 64-byte line.  Exact values are validated by the audit.
                assert int(row["l_misses"]) > 0
                assert int(row["u_misses"]) > 0
                assert int(row["a_reads"]) > 0
                assert int(row["a_writebacks"]) > 0

        by_method_capacity = {
            (row["method"], row["cache_bytes"]): row for row in traffic
        }
        for capacity in {row["cache_bytes"] for row in traffic}:
            for matched, grouped in {
                "operation-block-order": "block",
                "operation-segment-order": "segment-native",
            }.items():
                lhs = by_method_capacity[(matched, capacity)]
                rhs = by_method_capacity[(grouped, capacity)]
                for field in ("l_misses", "u_misses", "a_reads", "a_writebacks", "data_bytes"):
                    assert lhs[field] == rhs[field]

            # The two Block traversals differ only in task order.  Task
            # partition/cardinality and normalized metadata must stay equal.
            block = by_method_capacity[("block", capacity)]
            block_kij = by_method_capacity[("block-kij-order", capacity)]
            block_kij_jki = by_method_capacity[("block-kij-jki-inner", capacity)]
            for field in ("grain_size", "metadata_footprint_bytes", "metadata_bytes"):
                assert block[field] == block_kij[field]
                assert block[field] == block_kij_jki[field]

        report = json.loads((output / "cache_pilot_report.json").read_text())
        assert report["scope"] == "SSSSM/block-trailing"
        assert report["unique_address_sets_identical"] is True
        assert report["canonical_event_multisets_identical"] is True
        assert report["operation_vliw_lanes"] == 16
        assert report["operation_vliw_bundles"] == 1
        assert report["operation_padding_slots"] == 10
        assert report["block_kij_order_reuses_exact_block_task_partition"] is True
        assert report["block_kij_jki_inner_reuses_exact_block_task_partition"] is True
        assert "8B AoS records" in report["address_layout"]

        with (output / "descriptor_width_scan.csv").open(newline="") as handle:
            width_scan = list(csv.DictReader(handle))
        assert len(width_scan) == 10 * 2 * 8
    print("PB_LRU_TEST_PASS")


if __name__ == "__main__":
    main()
