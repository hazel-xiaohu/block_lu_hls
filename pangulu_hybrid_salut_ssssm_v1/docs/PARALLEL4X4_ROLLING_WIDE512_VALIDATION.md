# Rolling 4-LU + 4-SSSSM 宽前沿验证

## 目的

验证 `processed_circuit_1` 左上角 `1024x1024` 子矩阵在 `NB=16` 时形成的宽前沿 DAG 能否由硬件容量化后的 rolling scheduler 表示，而不是只在软件模型中成立。该子图包含 510 个任务、922 条依赖边，最大 ready frontier 为 40；事件调度模型在同一时刻达到 4 个 LU worker 和 4 个 SSSSM worker。

## 容量化实现

综合脚本 `hls/scripts/run_parallel4x4_rolling_csynth.tcl` 已将原来硬编码的容量改为环境变量：

| 宏 | 默认值 | 本次宽版本 |
|---|---:|---:|
| `PB_ROLL_MAX_TASKS` | 64 | 512 |
| `PB_ROLL_MAX_EDGES` | 256 | 1024 |
| `PB_ROLL_MAX_MATRICES` | 64 | 512 |
| `PB_ROLL_PTR_POOL_CAP` | 8192 | 8192 |
| `PB_ROLL_LANE_POOL_CAP` | 8192 | 8192 |
| `PB_STAGED_PTR_CAP` | 脚本默认 | 257 |
| `PB_STAGED_LANE_CAP` | 脚本默认 | 512 |

可复现命令：

```bash
cd /output/pangulu_hybrid_salut_ssssm_v1
PB_ROLL_CSYNTH_BUILD=$PWD/hls/build/parallel4x4_rolling_wide512_csynth \
PB_ROLL_MAX_TASKS=512 PB_ROLL_MAX_EDGES=1024 PB_ROLL_MAX_MATRICES=512 \
PB_STAGED_PTR_CAP=257 PB_STAGED_LANE_CAP=512 \
./run_parallel4x4_rolling_csynth.sh
```

本次 HLS 综合正常结束，生成的工程在 `hls/build/parallel4x4_rolling_wide512_csynth/`。

## CSim：完整 510-task DAG

输入为 `hls/tb/data/processed_circuit_1_top1024.mtx`，`NB=16`。结果：

```text
PB_ROLLING_MTX_PASS n=1024 nb=16 blocks=64 tasks=510 edges=922
levels=106 ready_width=40 lu_width=40 ss_width=9
issued=510 completed=510 structural=0 numeric=0 status=0 errors=0
```

这里的 CSim 调度循环在非综合路径中是顺序参考执行，因此其 `max_inflight=1` 不代表硬件并发度；并发度由下面的 DAG 事件模型验证。

## 真实 kernel RTL 代表任务

四类 kernel 的代表性任务均已完成 C/RTL co-simulation，结果为 PASS。RTL 时钟为 10 ns；cycle 由 `(​done_ps-start_ps)/10000` 取整得到：

| kernel | 任务来源 | cycles | 状态 |
|---|---:|---:|---|
| GETRF | task 0 | 22,814 | PASS |
| GESSM | task 1 | 27,650 | PASS |
| TSTRF | task 3 | 9,701 | PASS |
| SSSSM | task 12 | 10,073 | PASS |

逐项记录保存在 `artifacts/representative_task_rtl_cycles.csv`。这些是代表性稀疏任务的实测 RTL latency，用于事件调度估算；它们还不是 510 个任务各自校准后的 latency。

## 宽前沿事件调度结果

使用上表四类 RTL cycle，对完整 510-task/922-edge DAG 进行 rolling ready-queue 调度：

```text
counts = GETRF 64, GESSM 104, TSTRF 104, SSSSM 238
levels = 106, max_level_width = 40
serial = 7,741,974 cycles
barrier = 2,949,522 cycles
rolling = 2,138,040 cycles
completed = 510, max_inflight = 8
max_lu = 4, max_ss = 4
lu_util = 0.624942, ss_util = 0.280324
rolling_vs_barrier = 1.379545
```

`rolling_vs_barrier` 定义为 `barrier/rolling`，表示去掉 wave 全局屏障后，事件驱动滚动调度的模型周期约比 wave barrier 少 27.5%。`max_lu=4` 与 `max_ss=4` 说明该 DAG 确实提供了同时填满两类 worker 的 ready frontier。

## 综合资源与时序

`parallel4x4_rolling_wide512_csynth` 顶层报告给出：

| 资源 | 使用量 |
|---|---:|
| BRAM | 1331 (89%) |
| DSP | 288 (8%) |
| FF | 135,993 (19%) |
| LUT | 202,934 (59%) |
| URAM | 0 |

HLS 估计 Fmax 为 **83.68 MHz**，相对 10 ns 约束的 slack 为 **-4.65 ns**。因此容量化已经完成且资源没有因 64→512 task 上限显著增加（主要资源来自 4 个 LU/4 个 SSSSM worker），但该版本尚未达到 100 MHz 时序闭合，不能直接据此生成生产 bitstream。

## 当前结论与边界

1. 510-task 宽前沿不是软件假象：完整 DAG CSim、容量为 512 的 HLS 综合和事件调度模型均通过。
2. 4-LU + 4-SSSSM 的并发能力在事件模型中被实际触发；共享 DDR pool 和滚动 ready queue 没有复制 8 份完整矩阵池。
3. 当前仍缺少“完整 510-task DAG 的 RTL co-simulation”。四类 kernel 的代表任务 RTL 已通过，但不能把代表任务 PASS 误报为完整 DAG RTL PASS。
4. 下一步应在不改变调度协议的前提下修复 -4.65 ns 关键路径（优先检查 worker dispatch/ready queue 和跨 worker AXI 组合路径），再进行完整 rolling top 的 RTL 回归，最后才进入 Vivado implementation/bitstream。

## 2026-10-22 复核记录

本次重新生成了 `artifacts/rolling_top1024_nb16.flat.bin`，并用 512-task 宏配置重新执行 CSim；结果仍为 `tasks=510`、`edges=922`、`issued=510`、`completed=510`、`structural=0`、`numeric=0`、`status=0`。可直接复现：

```bash
cd /output/pangulu_hybrid_salut_ssssm_v1
PB_ROLL_CSIM_BUILD=$PWD/hls/build/parallel4x4_rolling_nb16_wide512_csim \
PB_ROLL_MAX_TASKS=512 PB_ROLL_MAX_EDGES=1024 PB_ROLL_MAX_MATRICES=512 \
PB_STAGED_PTR_CAP=257 PB_STAGED_LANE_CAP=512 \
./run_parallel4x4_rolling_nb16_wide512_validation.sh
```

综合结果来自 `hls/build/parallel4x4_rolling_wide512_csynth/solution1/syn/report/csynth.rpt`。与 64-task ready-queue 版本相比，BRAM 仍为 1331、DSP 仍为 288，说明这次容量扩展没有复制计算 worker；FF 从 135,641 增至 135,993，LUT 从 202,511 增至 202,934，增加主要来自更宽的 DAG/描述符状态存储。两版 HLS 估计 Fmax 均为 83.68 MHz，10 ns 约束 slack 均为 -4.65 ns。

事件模型结果已保存到 `artifacts/rolling_top1024_nb16_dag_cycles.log`，四类代表性 RTL cycle 记录在 `artifacts/representative_task_rtl_cycles.csv`。本轮没有把完整 510-task DAG 宣称为 RTL co-simulation PASS：当前证据是完整 DAG CSim + 512-task HLS 综合 + 完整 DAG 事件模型 + 四类代表任务 RTL PASS。
