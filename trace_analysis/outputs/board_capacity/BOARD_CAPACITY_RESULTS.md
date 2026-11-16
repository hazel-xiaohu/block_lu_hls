# Board-derived capacity: Block vs Segment-cache-aware

- Net L/U/A capacity: `5,882,112` B (`5.609619` MiB).
- Resource basis: placed `xczu15eg-ffvb1156-2-i` 4-LU + 4-SSSSM design.
- Positive data delta means Block moves more matrix data than Segment-cache-aware.

| Method | Matrix data traffic | Control metadata footprint | Total streamed/run | Data B/FLOP | Total B/FLOP |
|---|---:|---:|---:|---:|---:|
| Block | 112,546,752 B | 16,560 B | 112,563,312 B | 0.080187 | 0.080198 |
| Segment-cache-aware | 109,439,616 B | 40,683,200 B | 150,122,816 B | 0.077973 | 0.106958 |

Block saves `40,666,640` B of control space
(`99.959295%`) and changes matrix-data
traffic by `+3,107,136` B
(`+2.839133%`) relative to
Segment-cache-aware.  Under the stream-each-run metadata interpretation, Block changes total
traffic by `-37,559,504` B
(`-25.019184%`).

The capacity is a physical-bit upper bound. The replay is an ideal fully-associative LRU and
does not model tag/LRU storage, banking/port constraints, fragmentation, or implementation margin.
