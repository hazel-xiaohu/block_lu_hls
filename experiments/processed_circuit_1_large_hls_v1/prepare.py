#!/usr/bin/env python3
"""Prepare exact fixed-pattern whole and 2x2 LU inputs for the large HLS kernels."""
from __future__ import annotations

import argparse
import json
import time
import heapq
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


def symbolic_lu_pattern(a):
    """Structural no-pivot LU pattern, retaining zero-valued structural slots."""
    a = a.tocsr()
    n = a.shape[0]
    arows = [set(a.indices[a.indptr[i]:a.indptr[i + 1]].tolist()) for i in range(n)]
    urows = []
    lrows = []
    for i in range(n):
        cols = set(arows[i]); cols.add(i)
        lower = [j for j in cols if j < i]
        heapq.heapify(lower); queued = set(lower)
        while lower:
            k = heapq.heappop(lower)
            for j in urows[k]:
                if j not in cols:
                    cols.add(j)
                    if j < i and j not in queued:
                        heapq.heappush(lower, j); queued.add(j)
        lrows.append(sorted(j for j in cols if j <= i))
        urows.append(sorted(j for j in cols if j >= i))
    return lrows, urows


def row_sets(matrix):
    m = matrix.tocsr()
    return [set(m.indices[m.indptr[i]:m.indptr[i + 1]].tolist())
            for i in range(m.shape[0])]


def union_row_sets(*mats):
    rows = [set() for _ in range(mats[0].shape[0])]
    for m in mats:
        for i, cols in enumerate(row_sets(m)):
            rows[i].update(cols)
    return rows


def overlay_values(factor_matrix, rows):
    """Use numerical factor values on a structural row pattern; missing slots=0."""
    f = factor_matrix.tocsr()
    data = {(i, int(j)): float(f.data[p])
            for i in range(f.shape[0])
            for p, j in zip(range(f.indptr[i], f.indptr[i + 1]), f.indices[f.indptr[i]:f.indptr[i + 1]])}
    indptr = [0]; indices = []; values = []
    for i, cols in enumerate(rows):
        for j in cols:
            indices.append(j); values.append(data.get((i, j), 0.0))
        indptr.append(len(indices))
    return csr_matrix((np.asarray(values, dtype=np.float64),
                       np.asarray(indices, dtype=np.int32),
                       np.asarray(indptr, dtype=np.int32)), shape=f.shape)


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
    load_s = time.perf_counter() - t0
    n = a.shape[0]
    n1 = n // 2

    whole, whole_s = factor(a)
    whole_lrows, whole_urows = symbolic_lu_pattern(a)
    a11, a12 = a[:n1, :n1], a[:n1, n1:]
    a21, a22 = a[n1:, :n1], a[n1:, n1:]
    f1, getrf1_s = factor(a11)
    l11_rows, u11_rows = symbolic_lu_pattern(a11)
    l11, u11 = overlay_values(f1.L, l11_rows), overlay_values(f1.U, u11_rows)
    u12, gessm_s, gessm_active = left_sparse_solve(
        l11, a12, lower=True, unit_diagonal=True)
    l21_t, tstrf_s, tstrf_active = left_sparse_solve(
        u11.T.tocsr(), a21.T, lower=True, unit_diagonal=False)
    l21 = l21_t.T.tocsr()
    t1 = time.perf_counter()
    product = (l21 @ u12).tocsc()
    schur = (a22 - product).tocsc(); schur.eliminate_zeros(); schur.sort_indices()
    # SSSSM must retain every structural position touched by A22 or L21*U12,
    # including positions whose numerical value cancels to exactly zero.
    l21_bool = l21.copy().tocsr(); l21_bool.data[:] = 1.0
    u12_bool = u12.copy().tocsr(); u12_bool.data[:] = 1.0
    product_bool = (l21_bool @ u12_bool).tocsr()
    s_rows = union_row_sets(a22, product_bool)
    schur_struct = overlay_values(schur.tocsr(), s_rows)
    ssssm_s = time.perf_counter() - t1
    f2, getrf2_s = factor(schur)
    schur_lrows, schur_urows = symbolic_lu_pattern(schur_struct)

    items = {}
    def put(name, m, fmt): items[name] = save_sparse(args.out, name, m, fmt)
    put("whole_A", a, "csr"); put("whole_L", overlay_values(whole.L, whole_lrows), "csr"); put("whole_U", overlay_values(whole.U, whole_urows), "csr")
    put("A11", a11, "csr"); put("L11", l11, "csr"); put("U11", u11, "csr")
    put("L11_csc", l11, "csc"); put("U11_csc", u11, "csc")
    put("A12", a12, "csc"); put("U12", u12, "csc"); put("U12_csr", u12, "csr")
    put("A21", a21, "csr"); put("L21", l21, "csr")
    put("A22", a22, "csr"); put("Schur", schur_struct, "csr")
    put("L22", overlay_values(f2.L, schur_lrows), "csr"); put("U22", overlay_values(f2.U, schur_urows), "csr")

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
