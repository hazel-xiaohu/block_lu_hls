#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MATRIX="${1:-$ROOT/input/Zd_Jac3_db_after_symbolic.mtx}"
BLOCK_SIZE="${2:-512}"
CACHES="${3:-4M,16M}"
OUTPUT="${4:-$ROOT/outputs/full_lu_inplace_b${BLOCK_SIZE}_v1}"
LINE_BYTES="${5:-64}"
METHODS="${6:-all}"
bash "$ROOT/build_full_lu_inplace_simulator.sh"
mkdir -p "$OUTPUT"
"$ROOT/build/full_lu_inplace_lru" "$MATRIX" "$BLOCK_SIZE" "$BLOCK_SIZE" "$CACHES" "$OUTPUT" \
  "$LINE_BYTES" "$METHODS" \
  2>&1 | tee "$OUTPUT/run.log"
if [[ "$METHODS" == "all" || "$METHODS" == "ALL" ]]; then
  python3 "$ROOT/summarize_full_lu_inplace.py" "$OUTPUT" | tee "$OUTPUT/summary.log"
fi
