# Empty-row regression

The fix covers both HLS entry points, `spmm` and `spmm_row_wise`.

## Root causes

- The original A element reader advanced through row metadata only after reading
  a nonzero. A zero-length row therefore assigned the following nonzero to the
  wrong row and could leave trailing metadata unread.
- B access computed `(start + length - 1) / 4` for length zero. At offset zero
  this underflowed; at nonaligned offsets it could fetch an unwanted packed word,
  leaving unread values in the stream.
- The PE merger inferred output row boundaries from changes in task row IDs.
  Missing rows (including rows assigned exclusively to another PE) and unused PEs
  did not produce matching delimiters. Final mergers also treated the first token
  of a row as data even when it was an empty-row delimiter.
- The row-wise path issued no control message for an empty A row. Its initial
  merger control dropped the first task's end-of-row flag, zero-length tasks
  selected a buffer without moving its accumulated data, and the CSR writer
  omitted the final row pointer.

## Protocol and related repairs

The main scheduler now sends an explicit row-end job to every PE for every A row.
A row-end job consumes neither a B row length nor an idle credit. A multiply task
with an empty B row still consumes its zero length and receives exactly one
completion credit, without issuing a B values/columns read. Each PE emits one
row delimiter per A row, so the existing final merge tree stays aligned.
The A metadata stream has a distinct terminator and is fully drained.

The row-wise path represents an empty A row with a zero-length task marked as
last-in-row. It avoids zero-length bursts and B accesses and writes all row
pointers plus the output nonzero count. Partial-data and final-output terminators are consumed,
and scheduler idle credits do not accumulate between invocations.

The main PE's final flush previously passed an incorrect intermediate length to
its second merge, which failed especially for zero/one partial result. It now
merges the three live buffers directly, retaining the four-buffer accumulation
scheme. Zero-length tasks do not advance the nonempty-buffer iteration count.
Data token marker bits are initialized on the sum paths. The float bit conversion
uses a 32-bit scalar, not reinterpretation of an `ap_uint` C++ object (whose host
object size need not equal four bytes). The hard-coded GMP include path is replaced
with `<gmp.h>`.

Simulation-only loop exits/increments were removed: those caused C++ execution to
skip tasks, cache requests and result rows instead of simulating the hardware logic.
The design has feedback streams. `HLS/csim_dataflow.h` now schedules the actual
stages concurrently for normal C simulation and registers them with the Vitis
stream checker. Under `__SYNTHESIS__` it expands to direct function calls.

## Run

```sh
HLS_INCLUDE=/path/to/Vitis/include python3 tests/run_empty_rows.py
HLS_INCLUDE=/path/to/Vitis/include SANITIZE=1 python3 tests/run_empty_rows.py
```

Requires Python 3, g++, pthreads, GMP, and Vitis arbitrary-precision headers.
`SANITIZE=1` enables AddressSanitizer and UBSan. LeakSanitizer is disabled by
default because it cannot inspect processes in ptrace-based sandboxes; on an
unrestricted host, use `ASAN_OPTIONS=detect_leaks=1` to enable it.
The runner creates temporary source copies and gives streams their declared
finite capacity (default: two entries). It uses the same simulation scheduling
helper as the actual Vitis csim flow.
The test-only headers implement blocking FIFO and burst behavior. The synthesis
sources are never changed by the runner. It is not a general HLS simulator. Tests time out rather than waiting forever on a blocked FIFO.

Both complete top-level pipelines, including caches, are checked against an
independent CPU CSR reference. Cases include leading/internal/trailing/consecutive
empty rows, entirely empty A/B, zero dimensions, one multiply with idle PEs,
unaligned empty B rows, a 2049-empty-row stress case, cached rows mixed with empty
rows, many partials, and 20 deterministic randomized inputs. Direct-access tests
pass null B pointers for zero lengths at five offsets. Tests check all CSR row
pointers, nonzero counts, column IDs, values and output guard elements.

This is host functional/backpressure validation, not RTL co-simulation. The Vitis
headers are also used to syntax-check the uninstrumented sources. Synthesis,
resource usage, achieved II and FPGA timing must be rechecked in the target Vitis
project: broadcasting row delimiters adds control traffic and the final flush
implementation has changed. The existing 1000-entry buffering limit is unchanged.


## Actual Vitis flow and cache ordering

See [the real test project](../test/README.md) for the command used by this repo:
`make run TARGET=csim XPART=xczu15eg-ffvb1156-2-i` in `test/`. Its configuration
now reads `../HLS/`, rather than independently copied sources.

The regression also includes a >32-element cached row with an off-chip tail,
a deterministic test that delivers the tail before the cache prefix, and tests
that partial fills miss until all requested words are present in both value and
column caches. Collectors now consume explicit hit/miss status; cache entries
track per-word validity and have initialized replacement counters. The cache
response end tokens are consumed after the request end tokens have been sent.
