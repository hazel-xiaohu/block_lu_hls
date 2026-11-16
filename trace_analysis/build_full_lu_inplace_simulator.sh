#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$ROOT/build"
TMP_BINARY=$(mktemp "$ROOT/build/full_lu_inplace_lru.tmp.XXXXXX")
trap 'rm -f "$TMP_BINARY"' EXIT
${CXX:-g++} -O3 -DNDEBUG -std=c++17 -pthread \
  "$ROOT/src/full_lu_inplace_lru.cpp" -o "$TMP_BINARY"
chmod 755 "$TMP_BINARY"
mv -f "$TMP_BINARY" "$ROOT/build/full_lu_inplace_lru"
echo "PB_FULL_LU_INPLACE_BUILD_PASS binary=$ROOT/build/full_lu_inplace_lru"
