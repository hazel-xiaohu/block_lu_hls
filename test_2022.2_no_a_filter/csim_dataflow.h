#ifndef SPMM_CSIM_DATAFLOW_H
#define SPMM_CSIM_DATAFLOW_H

// DATAFLOW is a hardware scheduling directive. C simulation must also run the
// stages concurrently because this design contains task/idle feedback cycles.
#ifdef __SYNTHESIS__
#define SPMM_DATAFLOW_BEGIN()
#define SPMM_STAGE(call) call
#define SPMM_DATAFLOW_END()
#else
#include <thread>
#include <vector>

class spmm_csim_dataflow {
    std::vector<std::thread> workers;
public:
    template<class Function>
    void launch(Function function) {
        workers.emplace_back(function);
    }
    void join() {
        for (auto& worker : workers)
            if (worker.joinable()) {
                worker.join();
            }
    }
    ~spmm_csim_dataflow() { join(); }
};

#define SPMM_DATAFLOW_BEGIN() spmm_csim_dataflow spmm_csim_workers
#define SPMM_STAGE(call) spmm_csim_workers.launch([&] { call; })
// Join before the function's local stream objects are destroyed.
#define SPMM_DATAFLOW_END() spmm_csim_workers.join()
#endif
#endif
