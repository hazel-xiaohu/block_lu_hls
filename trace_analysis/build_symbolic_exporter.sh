#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
lblu_root=${LBLU_ROOT:-/output/LBLU-main}
mpi_cxx=${MPICXX:-/openbayes/home/mpich-install/bin/mpic++}
cuda_root=${CUDA_ROOT:-/usr/local/cuda-12.1}
metis_archive=${METIS_ARCHIVE:-/openbayes/home/PanguLU-main-bak/metis/build/Linux-x86_64/libmetis/libmetis.a}
out_dir="$trace_root/bin"

mkdir -p "$out_dir"

if [[ ! -f "$lblu_root/src/pangulu_cuda.o" ]]; then
  make -C "$lblu_root/src" pangulu_cuda.o
fi
if [[ ! -f "$lblu_root/test/test.o" ]]; then
  make -C "$lblu_root/test" test.o
fi

(
  cd "$lblu_root/src"
  "$mpi_cxx" -O3 -Wall -std=c++11 -lm -lpthread -fopenmp \
    -I../include -I"$cuda_root/include" \
    -c pangulu.cpp -o "$out_dir/pangulu_symbolic_export.o" -fPIC
  ar rcs "$out_dir/libpangulu_symbolic_export.a" \
    "$out_dir/pangulu_symbolic_export.o" pangulu_cuda.o
  "$mpi_cxx" ../test/test.o "$out_dir/libpangulu_symbolic_export.a" \
    -I../include -lpthread -lm -I"$cuda_root/include" \
    -L"$cuda_root/lib64" -lcudart -lcusparse "$metis_archive" -fopenmp \
    -o "$out_dir/PanguLU_symbolic_export"
)

echo "PANGULU_SYMBOLIC_EXPORTER_BUILD_PASS path=$out_dir/PanguLU_symbolic_export"
