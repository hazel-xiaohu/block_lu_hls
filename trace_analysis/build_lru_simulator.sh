#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
mkdir -p "$trace_root/bin"

g++ -O3 -march=native -DNDEBUG -std=c++17 -pthread \
  "$trace_root/src/granularity_lru.cpp" \
  -o "$trace_root/bin/granularity_lru"

echo "PB_LRU_BUILD_PASS binary=$trace_root/bin/granularity_lru"
