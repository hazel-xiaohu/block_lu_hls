#!/usr/bin/env python3
"""Generate a deterministic CSR A/B/C case with many empty rows.

C has exactly the sparsity pattern of A*B and independent nonzero values, so
the C_SUB_AB test exercises read/modify/write updates without adding columns.
"""

from pathlib import Path
import random
import struct


SEED = 20260924
ROWS = 64
INNER = 48
COLS = 64
A_EMPTY = 40
B_EMPTY = 30


def write_u32(path: Path, values):
    path.write_bytes(struct.pack("<{}I".format(len(values)), *values))


def write_f32(path: Path, values):
    path.write_bytes(struct.pack("<{}f".format(len(values)), *values))


def write_csr(path: Path, rows):
    rp = [0]
    ci = []
    va = []
    for row in rows:
        for col, value in row:
            ci.append(col)
            va.append(value)
        rp.append(len(ci))
    write_u32(path / "csr.BIN", rp)
    write_u32(path / "cid.BIN", ci)
    write_f32(path / "val.BIN", va)
    return rp, ci, va


def main():
    rng = random.Random(SEED)
    root = Path(__file__).resolve().parent / "random_many_empty"
    for name in ("A", "B", "C"):
        (root / name).mkdir(parents=True, exist_ok=True)

    # Spread active rows through the matrix so leading, internal and trailing
    # empty rows are all represented.
    active_a = sorted(rng.sample(range(ROWS), ROWS - A_EMPTY))
    active_b = sorted(rng.sample(range(INNER), INNER - B_EMPTY))

    b = [[] for _ in range(INNER)]
    for k in active_b:
        cols = sorted(rng.sample(range(COLS), rng.randint(2, 5)))
        b[k] = [(col, round(rng.uniform(-1.0, 1.0), 5) or 0.5) for col in cols]

    a = [[] for _ in range(ROWS)]
    for row in active_a:
        # Select only rows of B that contain entries so active A rows produce
        # a visible C pattern; other A rows remain genuinely empty.
        ks = sorted(rng.sample(active_b, rng.randint(1, 3)))
        a[row] = [(k, round(rng.uniform(-1.0, 1.0), 5) or -0.75) for k in ks]

    c = [[] for _ in range(ROWS)]
    for row in range(ROWS):
        cols = sorted({col for k, _ in a[row] for col, _ in b[k]})
        c[row] = [(col, round(rng.uniform(-1.0, 1.0), 5) or 0.625) for col in cols]

    a_rp, a_ci, a_va = write_csr(root / "A", a)
    b_rp, b_ci, b_va = write_csr(root / "B", b)
    c_rp, c_ci, c_va = write_csr(root / "C", c)

    metadata = root / "README.txt"
    metadata.write_text(
        "seed={}\nA shape={}x{}, empty_rows={}, nnz={}\n"
        "B shape={}x{}, empty_rows={}, nnz={}\n"
        "C shape={}x{}, empty_rows={}, nnz={}\n"
        "C CSR column pattern is exactly the union pattern of A*B.\n".format(
            SEED, ROWS, INNER, sum(not row for row in a), len(a_ci),
            INNER, COLS, sum(not row for row in b), len(b_ci),
            ROWS, COLS, sum(not row for row in c), len(c_ci)))
    print(metadata.read_text(), end="")
    print("active A rows:", active_a)
    print("active B rows:", active_b)


if __name__ == "__main__":
    main()
