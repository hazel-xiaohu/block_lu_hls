#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT/host_adapter/build"
g++ -std=c++17 -O2 \
  -I"$ROOT/hls/src" \
  -I"$ROOT/host_adapter/include" \
  -I"$ROOT/host_adapter/pangulu_cpu/include" \
  "$ROOT/host_adapter/tools/model_rolling_dag_cycles.cpp" \
  "$ROOT/host_adapter/src/pb_mtx_flat_reader.cpp" \
  -o "$ROOT/host_adapter/build/model_rolling_dag_cycles"
echo "built $ROOT/host_adapter/build/model_rolling_dag_cycles"
