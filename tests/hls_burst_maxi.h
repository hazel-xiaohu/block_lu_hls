#pragma once
#include <cassert>
namespace hls {
template<class T> class burst_maxi {
    T* p; unsigned pos=0, remaining=0;
public:
    burst_maxi(T* v) : p(v) {}
    void read_request(unsigned begin, unsigned length) { assert(length>0 && remaining==0); pos=begin; remaining=length; }
    T read() { assert(remaining); --remaining; return p[pos++]; }
};
}
