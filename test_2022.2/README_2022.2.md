# Vitis HLS 2022.2 版本

这是从 `test/` 独立复制出的 2022.2 适配目录。原目录不参与编译，也不会被修改。

## 运行

在本目录执行：

```bash
source /path/to/Vitis/2022.2/settings64.sh
vitis_hls -f run_hls.tcl
```

也可以使用 2022.2 专用 Makefile：

```bash
make -f Makefile.2022.2 csim
make -f Makefile.2022.2 cosim
```

只运行 CSim：

```tcl
# 在 run_hls.tcl 中将 hls_exec 改为 0
set hls_exec 0
```

默认测试 `random_filter_empty` 的 2048 行。也可以在启动前设置：

```bash
export SPMM_TEST_ROWS=50
vitis_hls -f run_hls.tcl
```

## 2022.2 适配点

综合时仍使用 `hls::stream`；CSim 和 RTL 协同仿真的 C 模型使用
`csim_stream.h` 中的线程安全宿主机 FIFO。这样避免 2022.2 的
`hls::stream` 软件队列被 `std::thread` 并发访问。`csim_dataflow.h` 只负责
启动和回收 DATAFLOW 线程。

不要把此目录中的源文件反向覆盖到原 `test/`。
