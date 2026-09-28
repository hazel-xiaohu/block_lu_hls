#ifndef SPMM_CSIM_STREAM_H
#define SPMM_CSIM_STREAM_H

// Vitis HLS 2022.2 models hls::stream as a C++ queue, but the model is not a
// host-thread synchronization primitive.  The C model of this design uses
// std::thread to emulate DATAFLOW, so use a host-only blocking FIFO during
// CSim.  Synthesis still uses the real hls::stream type (see core.h).

#include <condition_variable>
#include <cstddef>
#include <deque>
#include <mutex>

template<typename T, int Depth = 0>
class spmm_csim_stream {
    std::deque<T> queue_;
    mutable std::mutex mutex_;
    std::condition_variable readable_;

public:
    spmm_csim_stream() = default;
    spmm_csim_stream(const spmm_csim_stream&) = delete;
    spmm_csim_stream& operator=(const spmm_csim_stream&) = delete;

    void write(const T& value) {
        {
            std::lock_guard<std::mutex> lock(mutex_);
            queue_.push_back(value);
        }
        readable_.notify_one();
    }

    bool write_nb(const T& value) {
        write(value);
        return true;
    }

    T read() {
        std::unique_lock<std::mutex> lock(mutex_);
        readable_.wait(lock, [this] { return !queue_.empty(); });
        T value = queue_.front();
        queue_.pop_front();
        return value;
    }

    bool read_nb(T& value) {
        std::lock_guard<std::mutex> lock(mutex_);
        if (queue_.empty())
            return false;
        value = queue_.front();
        queue_.pop_front();
        return true;
    }

    bool empty() const {
        std::lock_guard<std::mutex> lock(mutex_);
        return queue_.empty();
    }

    // CSim streams are unbounded in the HLS software model.  Returning false
    // preserves the existing non-blocking producer logic in util.cpp.
    bool full() const { return false; }

    std::size_t size() const {
        std::lock_guard<std::mutex> lock(mutex_);
        return queue_.size();
    }
};

#endif
