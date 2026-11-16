#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$ROOT"

MATRIX=${1:-input/Zd_Jac3_db_after_symbolic.mtx}
CACHES=${2:-1M,4M,8M,16M,32M}

for block_size in 256 512 1024; do
  bash run_full_lu_inplace_pilot.sh \
    "$MATRIX" "$block_size" "$CACHES" \
    "outputs/full_lu_inplace_b${block_size}_capacity_v1"
done

python3 summarize_full_lu_inplace_grain.py
