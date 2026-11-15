#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
input_dir="$trace_root/input"
archive="$input_dir/Zd_Jac3_db.tar.gz"
raw_dir="$input_dir/raw_extract"
raw_matrix="$raw_dir/Zd_Jac3_db/Zd_Jac3_db.mtx"
symbolic_matrix="$input_dir/Zd_Jac3_db_after_symbolic.mtx"
download_url="https://www.cise.ufl.edu/research/sparse/MM/VanVelzen/Zd_Jac3_db.tar.gz"
archive_sha256="79218bd1e3b25ee566c67496ba025342853bbce3594572c362f03b7b683db7ac"
raw_sha256="cca5c10066179ca58465a57ec4965ddee56c466cb2846ea64b29d225a1c40ce8"

mkdir -p "$input_dir" "$raw_dir"
if [[ ! -f "$archive" ]]; then
  curl -k -L --fail --connect-timeout 15 --max-time 300 --retry 3 \
    -o "$archive.download" "$download_url"
  mv "$archive.download" "$archive"
fi
echo "$archive_sha256  $archive" | sha256sum -c -

if [[ ! -f "$raw_matrix" ]]; then
  tar -xzf "$archive" -C "$raw_dir"
fi
echo "$raw_sha256  $raw_matrix" | sha256sum -c -

"$trace_root/build_symbolic_exporter.sh"
PANGULU_EXPORT_SYMBOLIC_MTX="$symbolic_matrix" \
PANGULU_EXPORT_SYMBOLIC_ONLY=1 \
  "$trace_root/bin/PanguLU_symbolic_export" -F "$raw_matrix"

head -n 4 "$symbolic_matrix"
sha256sum "$symbolic_matrix"
echo "PANGULU_SYMBOLIC_INPUT_PREPARE_PASS path=$symbolic_matrix"
