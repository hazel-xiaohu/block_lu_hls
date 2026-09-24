#!/usr/bin/env python3
"""Generate a deterministic CSR case that exercises A->empty-B filtering."""

from pathlib import Path
import random
import struct


SEED = 20260925
ROWS, INNER, COLS = 2048, 2048, 2048
A_EMPTY, B_EMPTY = 1024, 1024
FULLY_FILTERED_ROWS = 512


def write_u32(path: Path, values):
    path.write_bytes(struct.pack("<{}I".format(len(values)), *values))


def write_f32(path: Path, values):
    path.write_bytes(struct.pack("<{}f".format(len(values)), *values))


def write_csr(path: Path, rows):
    rowptr, colind, values = [0], [], []
    for row in rows:
        for col, value in row:
            colind.append(col)
            values.append(value)
        rowptr.append(len(colind))
    write_u32(path / "csr.BIN", rowptr)
    write_u32(path / "cid.BIN", colind)
    write_f32(path / "val.BIN", values)
    return rowptr, colind, values


def nonzero(rng, fallback):
    value = round(rng.uniform(-1.0, 1.0), 5)
    return value if value else fallback


def main():
    rng = random.Random(SEED)
    root = Path(__file__).resolve().parent / "random_filter_empty"
    for name in ("A", "B", "C"):
        (root / name).mkdir(parents=True, exist_ok=True)

    active_a = sorted(rng.sample(range(ROWS), ROWS - A_EMPTY))
    active_b = sorted(rng.sample(range(INNER), INNER - B_EMPTY))
    empty_b = sorted(set(range(INNER)) - set(active_b))

    b = [[] for _ in range(INNER)]
    for k in active_b:
        cols = sorted(rng.sample(range(COLS), rng.randint(2, 5)))
        b[k] = [(col, nonzero(rng, 0.5)) for col in cols]

    a = [[] for _ in range(ROWS)]
    filtered = 0
    for ordinal, row in enumerate(active_a):
        if ordinal < FULLY_FILTERED_ROWS:
            ks = sorted(rng.sample(empty_b, rng.randint(2, 3)))
        else:
            # Every remaining active A row has at least one removable entry.
            ks = sorted(set([rng.choice(empty_b)] + rng.sample(active_b, rng.randint(1, 3))))
        a[row] = [(k, nonzero(rng, -0.75)) for k in ks]
        filtered += sum(k in empty_b for k in ks)

    c = [[] for _ in range(ROWS)]
    for row in range(ROWS):
        cols = sorted({col for k, _ in a[row] for col, _ in b[k]})
        c[row] = [(col, nonzero(rng, 0.625)) for col in cols]

    _, a_ci, _ = write_csr(root / "A", a)
    _, b_ci, _ = write_csr(root / "B", b)
    _, c_ci, _ = write_csr(root / "C", c)
    (root / "README.txt").write_text(
        f"seed={SEED}\n"
        f"A shape={ROWS}x{INNER}, empty_rows={sum(not row for row in a)}, nnz={len(a_ci)}\n"
        f"B shape={INNER}x{COLS}, empty_rows={sum(not row for row in b)}, nnz={len(b_ci)}\n"
        f"C shape={ROWS}x{COLS}, empty_rows={sum(not row for row in c)}, nnz={len(c_ci)}\n"
        f"A entries referencing empty B rows={filtered}\n"
        f"C empty rows={sum(not row for row in c)}\n"
        f"A rows fully filtered={sum(1 for row in a if row and not any(b[k] for k, _ in row))}\n"
        "C CSR column pattern is exactly the union pattern of A*B.\n"
    )
    print((root / "README.txt").read_text(), end="")


if __name__ == "__main__":
    main()
