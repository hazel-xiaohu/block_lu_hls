#pragma once
#include <mutex>
#include <condition_variable>
#include <deque>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <string>
namespace hls {
template<class T, int Depth=0> class stream {
    std::mutex m; std::condition_variable cv; std::deque<T> q;
    size_t capacity = Depth ? Depth : 2;
    std::string name;
public:
    stream(const char* n="unnamed") : name(n) {}
    void set_capacity(size_t n, const char* label) { capacity=n; name=label; }
    bool empty() { std::lock_guard<std::mutex> l(m); return q.empty(); }
    bool full() { std::lock_guard<std::mutex> l(m); return q.size()>=capacity; }
    T read() {
        std::unique_lock<std::mutex> l(m);
        if (!cv.wait_for(l,std::chrono::seconds(20),[&]{return !q.empty();})) {
            fprintf(stderr,"FIFO read timeout: %s\n",name.c_str()); abort();
        }
        T v=q.front(); q.pop_front(); cv.notify_all(); return v;
    }
    void write(const T& v) {
        std::unique_lock<std::mutex> l(m);
        if (!cv.wait_for(l,std::chrono::seconds(20),[&]{return q.size()<capacity;})) {
            fprintf(stderr,"FIFO write timeout: %s\n",name.c_str()); abort();
        }
        q.push_back(v); cv.notify_all();
    }
};
}
