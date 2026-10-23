# Architecture

## Target data path

```text
PS symbolic DAG
      |
      v
PL ready queues and dependency counters
      |------------------------------|
      v                              v
shared LU PE pool                 SSSSM array
GETRF/GESSM/TSTRF                4 target PEs
opcode controlled               4 multipliers/PE
4 FMA lanes/PE                   private merge/PE
2 shared reciprocal pipes       2+1 final merge tree
      |------------------------------|
                     |
           four packed factor banks
```

Stage 1 intentionally contains only one transaction engine. It freezes the
numeric semantics and the common packed CSC4 ABI before introducing task-level
parallelism. Stage 3 validates the logical PE binding and Stage 4 introduces
the real command/completion protocol described in
`docs/STAGE4_PHYSICAL_POOL_PLAN.md`.

## Initial implementation target

- LU pool: 4 PEs, 4 FP32 FMA lanes per PE.
- Division: 2 shared pipelined reciprocal units.
- SSSSM: 4 PEs, each consuming one packed 128-bit factor word and producing
  four products per issue.
- Scheduler: GETRF critical-path priority, followed by TSTRF/GESSM; SSSSM has
  an independent queue.
- Canonical storage: Block-CSC. SSSSM consumes the zero-copy transpose view.

## Resource guardrails

| Resource | Device | Project ceiling before route |
|---|---:|---:|
| LUT | 341,280 | 200,000 |
| FF | 682,560 | 300,000 |
| DSP48E2 | 3,528 | 320 |
| BRAM36 | 744 | 340 |
| URAM | 112 | 88 |

The ceilings preserve routing space for SmartConnect, clock conversion, and
the PL scheduler. More PEs are permitted only after measured DDR utilization
and queue occupancy demonstrate that the existing PEs are not bandwidth bound.

## Memory-port plan

- HPM0 FPD: AXI-Lite control.
- HP0--HP3: four packed factor banks.
- HPC0: target A/C and SSSSM writeback.
- HPC1: LU panel traffic and L/U writeback.

The current production design's many-to-one HPC0 interconnect is not copied
into this project.

## Physical completion protocol

The scheduler must consume worker `done` events rather than estimated task
durations before physical replication is considered complete. Commands and
completion records are defined in `hls/src/hybrid_worker_events.h`; a worker
retains its command until the completion handshake is accepted.
