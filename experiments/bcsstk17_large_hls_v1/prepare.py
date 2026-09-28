#!/usr/bin/env python3
"""Prepare exact fixed-pattern whole and 2x2 LU inputs for the large HLS kernels."""
from __future__ import annotations

import argparse
import json
import time
from pathlib import Path

import numpy as np
from scipy.io import mmread
from scipy.sparse import csc_matrix, csr_matrix
from scipy.sparse.linalg import splu, spsolve_triangular


def factor(a):
    t0 = time.perf_counter()
    f = splu(a.tocsc(), permc_spec="NATURAL", diag_pivot_thresh=0.0,
             options={"Equil": False})
    elapsed = time.perf_counter() - t0
    n = a.shape[0]
    if not np.array_equal(f.perm_r, np.arange(n)) or not np.array_equal(f.perm_c, np.arange(n)):
        raise RuntimeError("natural/no-pivot reference unexpectedly permuted the matrix")
    return f, elapsed


def left_sparse_solve(tmat, bmat, *, lower, unit_diagonal):
    """Solve T X=B one nonempty sparse RHS column at a time."""
    bmat = bmat.tocsc()
    rows, cols, data = [], [], []
    active = 0
    t0 = time.perf_counter()
    for j in range(bmat.shape[1]):
        begin, end = bmat.indptr[j], bmat.indptr[j + 1]
        if begin == end:
            continue
        active += 1
        rhs = np.zeros(bmat.shape[0], dtype=np.float64)
        rhs[bmat.indices[begin:end]] = bmat.data[begin:end]
        x = spsolve_triangular(tmat, rhs, lower=lower,
                              unit_diagonal=unit_diagonal)
        nz = np.flatnonzero(x != 0.0)
        rows.extend(nz.tolist())
        cols.extend([j] * nz.size)
        data.extend(x[nz].tolist())
    xmat = csc_matrix((data, (rows, cols)), shape=bmat.shape)
    return xmat, time.perf_counter() - t0, active


def save_sparse(root: Path, name: str, matrix, fmt: str):
    matrix = matrix.tocsr() if fmt == "csr" else matrix.tocsc()
    matrix.sort_indices()
    base = root / name
    np.asarray(matrix.indptr, dtype=np.uint32).tofile(str(base) + "_ptr.bin")
    np.asarray(matrix.indices, dtype=np.uint32).tofile(str(base) + "_idx.bin")
    np.asarray(matrix.data, dtype=np.float32).tofile(str(base) + "_val.bin")
    return {"format": fmt, "rows": matrix.shape[0], "cols": matrix.shape[1],
            "nnz": int(matrix.nnz)}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("matrix", type=Path)
    ap.add_argument("--out", type=Path, default=Path("prepared"))
    args = ap.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)

    t0 = time.perf_counter()
    a = mmread(args.matrix).tocsc().astype(np.float64)
    if a.shape[0] != a.shape[1]:
        raise ValueError("matrix must be square")
    a.sum_duplicates(); a.sort_indices()
    if (a - a.T).nnz:
        raise ValueError("this regression expects the symmetric bcsstk17 matrix")
    load_s = time.perf_counter() - t0
    n = a.shape[0]
    n1 = n // 2

    whole, whole_s = factor(a)
    a11, a12 = a[:n1, :n1], a[:n1, n1:]
    a21, a22 = a[n1:, :n1], a[n1:, n1:]
    f1, getrf1_s = factor(a11)
    l11, u11 = f1.L.tocsr(), f1.U.tocsr()
    u12, gessm_s, gessm_active = left_sparse_solve(
        l11, a12, lower=True, unit_diagonal=True)
    l21_t, tstrf_s, tstrf_active = left_sparse_solve(
        u11.T.tocsr(), a21.T, lower=True, unit_diagonal=False)
    l21 = l21_t.T.tocsr()
    t1 = time.perf_counter()
    product = (l21 @ u12).tocsc()
    schur = (a22 - product).tocsc(); schur.eliminate_zeros(); schur.sort_indices()
    ssssm_s = time.perf_counter() - t1
    f2, getrf2_s = factor(schur)

    items = {}
    def put(name, m, fmt): items[name] = save_sparse(args.out, name, m, fmt)
    put("whole_A", a, "csr"); put("whole_L", whole.L, "csr"); put("whole_U", whole.U, "csr")
    put("A11", a11, "csr"); put("L11", f1.L, "csr"); put("U11", f1.U, "csr")
    put("L11_csc", f1.L, "csc"); put("U11_csc", f1.U, "csc")
    put("A12", a12, "csc"); put("U12", u12, "csc"); put("U12_csr", u12, "csr")
    put("A21", a21, "csr"); put("L21", l21, "csr")
    put("A22", a22, "csr"); put("Schur", schur, "csr")
    put("L22", f2.L, "csr"); put("U22", f2.U, "csr")

    manifest = {
        "matrix": str(args.matrix.resolve()), "n": n, "split": [n1, n - n1],
        "load_seconds": load_s, "arrays": items,
        "reference_seconds": {
            "whole_getrf": whole_s, "getrf_1": getrf1_s,
            "gessm": gessm_s, "tstrf": tstrf_s, "ssssm": ssssm_s,
            "getrf_2": getrf2_s,
            "blocked_total": getrf1_s + gessm_s + tstrf_s + ssssm_s + getrf2_s,
        },
        "active_rhs": {"gessm_columns": gessm_active, "tstrf_rows": tstrf_active},
        "reference": "SciPy SuperLU, NATURAL ordering, pivot threshold 0, equilibration disabled",
    }
    (args.out / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(json.dumps(manifest, indent=2))


if __name__ == "__main__":
    main()
