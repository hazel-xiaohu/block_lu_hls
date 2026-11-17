# 32-B cache-line comparison for complete in-place LU

The experiment keeps the original ten cache-capacity points and compares OC, SN, SL, and BRJ.
All four 32-B traces cover the same complete-LU event multiset.

## Ranking by total data traffic (lower is better)

| Capacity | 32-B ranking | 64-B ranking | Changed vs 64 B? |
|---:|---|---|:---:|
| 32 KiB | OC < BRJ < SN < SL | OC < SN < BRJ < SL | yes |
| 64 KiB | BRJ < OC < SN < SL | OC < BRJ < SN < SL | yes |
| 128 KiB | BRJ < OC < SN < SL | BRJ < OC < SN < SL | no |
| 256 KiB | BRJ < OC < SN < SL | BRJ < OC < SN < SL | no |
| 512 KiB | BRJ < OC < SN < SL | BRJ < OC < SN < SL | no |
| 1 MiB | BRJ < OC < SN < SL | BRJ < OC < SN < SL | no |
| 4 MiB | BRJ < SL < SN < OC | BRJ < SL < SN < OC | no |
| 8 MiB | SL < BRJ < SN < OC | SL < BRJ < SN < OC | no |
| 16 MiB | SL < BRJ < SN < OC | SL < BRJ < SN < OC | no |
| 32 MiB | SL < BRJ < SN < OC | SL < BRJ < SN < OC | no |

The 32-B ranking changes as capacity grows at: 64 KiB, 4 MiB, 8 MiB.
Relative to the 64-B baseline, the ordering differs at: 32 KiB, 64 KiB.

The plotted traffic includes all cache-line fills and dirty writebacks under the same fully associative, write-back/write-allocate LRU policy.
