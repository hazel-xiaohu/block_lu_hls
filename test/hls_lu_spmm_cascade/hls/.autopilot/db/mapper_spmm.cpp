#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
extern "C" void spmm(Byte<4>*, Byte<4>*, Byte<4>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<16>*, Byte<4>*, Byte<4>*, Byte<4>*, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_spmm_hw(volatile void * __xlx_apatb_param_A_rcsr, volatile void * __xlx_apatb_param_A_cid, volatile void * __xlx_apatb_param_A_val, int __xlx_apatb_param_arnum, int __xlx_apatb_param_atnum, volatile void * __xlx_apatb_param_B_rcsr1, volatile void * __xlx_apatb_param_B_rcsr2, volatile void * __xlx_apatb_param_B_rcsr3, volatile void * __xlx_apatb_param_B_rcsr4, volatile void * __xlx_apatb_param_B_val1, volatile void * __xlx_apatb_param_B_cid1, volatile void * __xlx_apatb_param_B_val2, volatile void * __xlx_apatb_param_B_cid2, volatile void * __xlx_apatb_param_B_val3, volatile void * __xlx_apatb_param_B_cid3, volatile void * __xlx_apatb_param_B_val4, volatile void * __xlx_apatb_param_B_cid4, int __xlx_apatb_param_brnum, int __xlx_apatb_param_btnum, volatile void * __xlx_apatb_param_B_val_port1, volatile void * __xlx_apatb_param_B_cid_port1, volatile void * __xlx_apatb_param_B_val_port2, volatile void * __xlx_apatb_param_B_cid_port2, volatile void * __xlx_apatb_param_B_val_port3, volatile void * __xlx_apatb_param_B_cid_port3, volatile void * __xlx_apatb_param_B_val_port4, volatile void * __xlx_apatb_param_B_cid_port4, volatile void * __xlx_apatb_param_C_rcsr, volatile void * __xlx_apatb_param_C_cid, volatile void * __xlx_apatb_param_C_val, int __xlx_apatb_param_B_rcsr_base, int __xlx_apatb_param_B_val_base, int __xlx_apatb_param_B_cid_base, volatile void * __xlx_apatb_param_r1acc, volatile void * __xlx_apatb_param_r1hit, volatile void * __xlx_apatb_param_r2acc, volatile void * __xlx_apatb_param_r2hit, volatile void * __xlx_apatb_param_r3acc, volatile void * __xlx_apatb_param_r3hit, volatile void * __xlx_apatb_param_r4acc, volatile void * __xlx_apatb_param_r4hit, volatile void * __xlx_apatb_param_r5acc, volatile void * __xlx_apatb_param_r5hit, volatile void * __xlx_apatb_param_r6acc, volatile void * __xlx_apatb_param_r6hit, volatile void * __xlx_apatb_param_r7acc, volatile void * __xlx_apatb_param_r7hit, volatile void * __xlx_apatb_param_r8acc, volatile void * __xlx_apatb_param_r8hit, volatile void * __xlx_apatb_param_vc1acc, volatile void * __xlx_apatb_param_vc1hit, volatile void * __xlx_apatb_param_vc2acc, volatile void * __xlx_apatb_param_vc2hit, volatile void * __xlx_apatb_param_vc3acc, volatile void * __xlx_apatb_param_vc3hit, volatile void * __xlx_apatb_param_vc4acc, volatile void * __xlx_apatb_param_vc4hit, volatile void * __xlx_apatb_param_vc5acc, volatile void * __xlx_apatb_param_vc5hit, volatile void * __xlx_apatb_param_vc6acc, volatile void * __xlx_apatb_param_vc6hit, volatile void * __xlx_apatb_param_vc7acc, volatile void * __xlx_apatb_param_vc7hit, volatile void * __xlx_apatb_param_vc8acc, volatile void * __xlx_apatb_param_vc8hit, volatile void * __xlx_apatb_param_fnum, volatile void * __xlx_apatb_param_workload_counter1, volatile void * __xlx_apatb_param_workload_counter2, volatile void * __xlx_apatb_param_workload_counter3, volatile void * __xlx_apatb_param_workload_counter4) {
using hls::sim::createStream;
  // Collect __xlx_A_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_A_rcsr__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_A_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_rcsr)[i]);
}
  int __xlx_size_param_A_rcsr = 64;
  int __xlx_offset_param_A_rcsr = 0;
  int __xlx_offset_byte_param_A_rcsr = 0*4;
  // Collect __xlx_A_cid__tmp_vec
std::vector<Byte<4>> __xlx_A_cid__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_A_cid__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_cid)[i]);
}
  int __xlx_size_param_A_cid = 1024;
  int __xlx_offset_param_A_cid = 0;
  int __xlx_offset_byte_param_A_cid = 0*4;
  // Collect __xlx_A_val__tmp_vec
std::vector<Byte<4>> __xlx_A_val__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_A_val__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_val)[i]);
}
  int __xlx_size_param_A_val = 1024;
  int __xlx_offset_param_A_val = 0;
  int __xlx_offset_byte_param_A_val = 0*4;
  // Collect __xlx_B_rcsr1__tmp_vec
std::vector<Byte<16>> __xlx_B_rcsr1__tmp_vec;
for (size_t i = 0; i < 16; ++i){
__xlx_B_rcsr1__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_rcsr1)[i]);
}
  int __xlx_size_param_B_rcsr1 = 16;
  int __xlx_offset_param_B_rcsr1 = 0;
  int __xlx_offset_byte_param_B_rcsr1 = 0*16;
  // Collect __xlx_B_rcsr2__tmp_vec
std::vector<Byte<16>> __xlx_B_rcsr2__tmp_vec;
for (size_t i = 0; i < 16; ++i){
__xlx_B_rcsr2__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_rcsr2)[i]);
}
  int __xlx_size_param_B_rcsr2 = 16;
  int __xlx_offset_param_B_rcsr2 = 0;
  int __xlx_offset_byte_param_B_rcsr2 = 0*16;
  // Collect __xlx_B_rcsr3__tmp_vec
std::vector<Byte<16>> __xlx_B_rcsr3__tmp_vec;
for (size_t i = 0; i < 16; ++i){
__xlx_B_rcsr3__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_rcsr3)[i]);
}
  int __xlx_size_param_B_rcsr3 = 16;
  int __xlx_offset_param_B_rcsr3 = 0;
  int __xlx_offset_byte_param_B_rcsr3 = 0*16;
  // Collect __xlx_B_rcsr4__tmp_vec
std::vector<Byte<16>> __xlx_B_rcsr4__tmp_vec;
for (size_t i = 0; i < 16; ++i){
__xlx_B_rcsr4__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_rcsr4)[i]);
}
  int __xlx_size_param_B_rcsr4 = 16;
  int __xlx_offset_param_B_rcsr4 = 0;
  int __xlx_offset_byte_param_B_rcsr4 = 0*16;
  // Collect __xlx_B_val1__tmp_vec
std::vector<Byte<16>> __xlx_B_val1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val1__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val1)[i]);
}
  int __xlx_size_param_B_val1 = 256;
  int __xlx_offset_param_B_val1 = 0;
  int __xlx_offset_byte_param_B_val1 = 0*16;
  // Collect __xlx_B_cid1__tmp_vec
std::vector<Byte<16>> __xlx_B_cid1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid1__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid1)[i]);
}
  int __xlx_size_param_B_cid1 = 256;
  int __xlx_offset_param_B_cid1 = 0;
  int __xlx_offset_byte_param_B_cid1 = 0*16;
  // Collect __xlx_B_val2__tmp_vec
std::vector<Byte<16>> __xlx_B_val2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val2__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val2)[i]);
}
  int __xlx_size_param_B_val2 = 256;
  int __xlx_offset_param_B_val2 = 0;
  int __xlx_offset_byte_param_B_val2 = 0*16;
  // Collect __xlx_B_cid2__tmp_vec
std::vector<Byte<16>> __xlx_B_cid2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid2__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid2)[i]);
}
  int __xlx_size_param_B_cid2 = 256;
  int __xlx_offset_param_B_cid2 = 0;
  int __xlx_offset_byte_param_B_cid2 = 0*16;
  // Collect __xlx_B_val3__tmp_vec
std::vector<Byte<16>> __xlx_B_val3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val3__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val3)[i]);
}
  int __xlx_size_param_B_val3 = 256;
  int __xlx_offset_param_B_val3 = 0;
  int __xlx_offset_byte_param_B_val3 = 0*16;
  // Collect __xlx_B_cid3__tmp_vec
std::vector<Byte<16>> __xlx_B_cid3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid3__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid3)[i]);
}
  int __xlx_size_param_B_cid3 = 256;
  int __xlx_offset_param_B_cid3 = 0;
  int __xlx_offset_byte_param_B_cid3 = 0*16;
  // Collect __xlx_B_val4__tmp_vec
std::vector<Byte<16>> __xlx_B_val4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val4__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val4)[i]);
}
  int __xlx_size_param_B_val4 = 256;
  int __xlx_offset_param_B_val4 = 0;
  int __xlx_offset_byte_param_B_val4 = 0*16;
  // Collect __xlx_B_cid4__tmp_vec
std::vector<Byte<16>> __xlx_B_cid4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid4__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid4)[i]);
}
  int __xlx_size_param_B_cid4 = 256;
  int __xlx_offset_param_B_cid4 = 0;
  int __xlx_offset_byte_param_B_cid4 = 0*16;
  // Collect __xlx_B_val_port1__tmp_vec
std::vector<Byte<16>> __xlx_B_val_port1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val_port1__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val_port1)[i]);
}
  int __xlx_size_param_B_val_port1 = 256;
  int __xlx_offset_param_B_val_port1 = 0;
  int __xlx_offset_byte_param_B_val_port1 = 0*16;
  // Collect __xlx_B_cid_port1__tmp_vec
std::vector<Byte<16>> __xlx_B_cid_port1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid_port1__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid_port1)[i]);
}
  int __xlx_size_param_B_cid_port1 = 256;
  int __xlx_offset_param_B_cid_port1 = 0;
  int __xlx_offset_byte_param_B_cid_port1 = 0*16;
  // Collect __xlx_B_val_port2__tmp_vec
std::vector<Byte<16>> __xlx_B_val_port2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val_port2__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val_port2)[i]);
}
  int __xlx_size_param_B_val_port2 = 256;
  int __xlx_offset_param_B_val_port2 = 0;
  int __xlx_offset_byte_param_B_val_port2 = 0*16;
  // Collect __xlx_B_cid_port2__tmp_vec
std::vector<Byte<16>> __xlx_B_cid_port2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid_port2__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid_port2)[i]);
}
  int __xlx_size_param_B_cid_port2 = 256;
  int __xlx_offset_param_B_cid_port2 = 0;
  int __xlx_offset_byte_param_B_cid_port2 = 0*16;
  // Collect __xlx_B_val_port3__tmp_vec
std::vector<Byte<16>> __xlx_B_val_port3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val_port3__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val_port3)[i]);
}
  int __xlx_size_param_B_val_port3 = 256;
  int __xlx_offset_param_B_val_port3 = 0;
  int __xlx_offset_byte_param_B_val_port3 = 0*16;
  // Collect __xlx_B_cid_port3__tmp_vec
std::vector<Byte<16>> __xlx_B_cid_port3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid_port3__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid_port3)[i]);
}
  int __xlx_size_param_B_cid_port3 = 256;
  int __xlx_offset_param_B_cid_port3 = 0;
  int __xlx_offset_byte_param_B_cid_port3 = 0*16;
  // Collect __xlx_B_val_port4__tmp_vec
std::vector<Byte<16>> __xlx_B_val_port4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_val_port4__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_val_port4)[i]);
}
  int __xlx_size_param_B_val_port4 = 256;
  int __xlx_offset_param_B_val_port4 = 0;
  int __xlx_offset_byte_param_B_val_port4 = 0*16;
  // Collect __xlx_B_cid_port4__tmp_vec
std::vector<Byte<16>> __xlx_B_cid_port4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_B_cid_port4__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_B_cid_port4)[i]);
}
  int __xlx_size_param_B_cid_port4 = 256;
  int __xlx_offset_param_B_cid_port4 = 0;
  int __xlx_offset_byte_param_B_cid_port4 = 0*16;
  // Collect __xlx_C_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_C_rcsr__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_C_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_C_rcsr)[i]);
}
  int __xlx_size_param_C_rcsr = 64;
  int __xlx_offset_param_C_rcsr = 0;
  int __xlx_offset_byte_param_C_rcsr = 0*4;
  // Collect __xlx_C_cid__tmp_vec
std::vector<Byte<4>> __xlx_C_cid__tmp_vec;
for (size_t i = 0; i < 1025; ++i){
__xlx_C_cid__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_C_cid)[i]);
}
  int __xlx_size_param_C_cid = 1025;
  int __xlx_offset_param_C_cid = 0;
  int __xlx_offset_byte_param_C_cid = 0*4;
  // Collect __xlx_C_val__tmp_vec
std::vector<Byte<4>> __xlx_C_val__tmp_vec;
for (size_t i = 0; i < 1025; ++i){
__xlx_C_val__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_C_val)[i]);
}
  int __xlx_size_param_C_val = 1025;
  int __xlx_offset_param_C_val = 0;
  int __xlx_offset_byte_param_C_val = 0*4;
  // DUT call
  spmm(__xlx_A_rcsr__tmp_vec.data(), __xlx_A_cid__tmp_vec.data(), __xlx_A_val__tmp_vec.data(), __xlx_B_rcsr1__tmp_vec.data(), __xlx_B_rcsr2__tmp_vec.data(), __xlx_B_rcsr3__tmp_vec.data(), __xlx_B_rcsr4__tmp_vec.data(), __xlx_B_val1__tmp_vec.data(), __xlx_B_cid1__tmp_vec.data(), __xlx_B_val2__tmp_vec.data(), __xlx_B_cid2__tmp_vec.data(), __xlx_B_val3__tmp_vec.data(), __xlx_B_cid3__tmp_vec.data(), __xlx_B_val4__tmp_vec.data(), __xlx_B_cid4__tmp_vec.data(), __xlx_B_val_port1__tmp_vec.data(), __xlx_B_cid_port1__tmp_vec.data(), __xlx_B_val_port2__tmp_vec.data(), __xlx_B_cid_port2__tmp_vec.data(), __xlx_B_val_port3__tmp_vec.data(), __xlx_B_cid_port3__tmp_vec.data(), __xlx_B_val_port4__tmp_vec.data(), __xlx_B_cid_port4__tmp_vec.data(), __xlx_C_rcsr__tmp_vec.data(), __xlx_C_cid__tmp_vec.data(), __xlx_C_val__tmp_vec.data(), __xlx_offset_byte_param_A_rcsr, __xlx_offset_byte_param_A_cid, __xlx_offset_byte_param_A_val, __xlx_apatb_param_arnum, __xlx_apatb_param_atnum, __xlx_offset_byte_param_B_rcsr1, __xlx_offset_byte_param_B_rcsr2, __xlx_offset_byte_param_B_rcsr3, __xlx_offset_byte_param_B_rcsr4, __xlx_offset_byte_param_B_val1, __xlx_offset_byte_param_B_cid1, __xlx_offset_byte_param_B_val2, __xlx_offset_byte_param_B_cid2, __xlx_offset_byte_param_B_val3, __xlx_offset_byte_param_B_cid3, __xlx_offset_byte_param_B_val4, __xlx_offset_byte_param_B_cid4, __xlx_apatb_param_brnum, __xlx_apatb_param_btnum, __xlx_offset_byte_param_B_val_port1, __xlx_offset_byte_param_B_cid_port1, __xlx_offset_byte_param_B_val_port2, __xlx_offset_byte_param_B_cid_port2, __xlx_offset_byte_param_B_val_port3, __xlx_offset_byte_param_B_cid_port3, __xlx_offset_byte_param_B_val_port4, __xlx_offset_byte_param_B_cid_port4, __xlx_offset_byte_param_C_rcsr, __xlx_offset_byte_param_C_cid, __xlx_offset_byte_param_C_val, __xlx_apatb_param_B_rcsr_base, __xlx_apatb_param_B_val_base, __xlx_apatb_param_B_cid_base, __xlx_apatb_param_r1acc, __xlx_apatb_param_r1hit, __xlx_apatb_param_r2acc, __xlx_apatb_param_r2hit, __xlx_apatb_param_r3acc, __xlx_apatb_param_r3hit, __xlx_apatb_param_r4acc, __xlx_apatb_param_r4hit, __xlx_apatb_param_r5acc, __xlx_apatb_param_r5hit, __xlx_apatb_param_r6acc, __xlx_apatb_param_r6hit, __xlx_apatb_param_r7acc, __xlx_apatb_param_r7hit, __xlx_apatb_param_r8acc, __xlx_apatb_param_r8hit, __xlx_apatb_param_vc1acc, __xlx_apatb_param_vc1hit, __xlx_apatb_param_vc2acc, __xlx_apatb_param_vc2hit, __xlx_apatb_param_vc3acc, __xlx_apatb_param_vc3hit, __xlx_apatb_param_vc4acc, __xlx_apatb_param_vc4hit, __xlx_apatb_param_vc5acc, __xlx_apatb_param_vc5hit, __xlx_apatb_param_vc6acc, __xlx_apatb_param_vc6hit, __xlx_apatb_param_vc7acc, __xlx_apatb_param_vc7hit, __xlx_apatb_param_vc8acc, __xlx_apatb_param_vc8hit, __xlx_apatb_param_fnum, __xlx_apatb_param_workload_counter1, __xlx_apatb_param_workload_counter2, __xlx_apatb_param_workload_counter3, __xlx_apatb_param_workload_counter4);
// print __xlx_apatb_param_A_rcsr
for (size_t i = 0; i < __xlx_size_param_A_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_A_rcsr)[i] = __xlx_A_rcsr__tmp_vec[__xlx_offset_param_A_rcsr+i];
}
// print __xlx_apatb_param_A_cid
for (size_t i = 0; i < __xlx_size_param_A_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_A_cid)[i] = __xlx_A_cid__tmp_vec[__xlx_offset_param_A_cid+i];
}
// print __xlx_apatb_param_A_val
for (size_t i = 0; i < __xlx_size_param_A_val; ++i) {
((Byte<4>*)__xlx_apatb_param_A_val)[i] = __xlx_A_val__tmp_vec[__xlx_offset_param_A_val+i];
}
// print __xlx_apatb_param_B_rcsr1
for (size_t i = 0; i < __xlx_size_param_B_rcsr1; ++i) {
((Byte<16>*)__xlx_apatb_param_B_rcsr1)[i] = __xlx_B_rcsr1__tmp_vec[__xlx_offset_param_B_rcsr1+i];
}
// print __xlx_apatb_param_B_rcsr2
for (size_t i = 0; i < __xlx_size_param_B_rcsr2; ++i) {
((Byte<16>*)__xlx_apatb_param_B_rcsr2)[i] = __xlx_B_rcsr2__tmp_vec[__xlx_offset_param_B_rcsr2+i];
}
// print __xlx_apatb_param_B_rcsr3
for (size_t i = 0; i < __xlx_size_param_B_rcsr3; ++i) {
((Byte<16>*)__xlx_apatb_param_B_rcsr3)[i] = __xlx_B_rcsr3__tmp_vec[__xlx_offset_param_B_rcsr3+i];
}
// print __xlx_apatb_param_B_rcsr4
for (size_t i = 0; i < __xlx_size_param_B_rcsr4; ++i) {
((Byte<16>*)__xlx_apatb_param_B_rcsr4)[i] = __xlx_B_rcsr4__tmp_vec[__xlx_offset_param_B_rcsr4+i];
}
// print __xlx_apatb_param_B_val1
for (size_t i = 0; i < __xlx_size_param_B_val1; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val1)[i] = __xlx_B_val1__tmp_vec[__xlx_offset_param_B_val1+i];
}
// print __xlx_apatb_param_B_cid1
for (size_t i = 0; i < __xlx_size_param_B_cid1; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid1)[i] = __xlx_B_cid1__tmp_vec[__xlx_offset_param_B_cid1+i];
}
// print __xlx_apatb_param_B_val2
for (size_t i = 0; i < __xlx_size_param_B_val2; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val2)[i] = __xlx_B_val2__tmp_vec[__xlx_offset_param_B_val2+i];
}
// print __xlx_apatb_param_B_cid2
for (size_t i = 0; i < __xlx_size_param_B_cid2; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid2)[i] = __xlx_B_cid2__tmp_vec[__xlx_offset_param_B_cid2+i];
}
// print __xlx_apatb_param_B_val3
for (size_t i = 0; i < __xlx_size_param_B_val3; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val3)[i] = __xlx_B_val3__tmp_vec[__xlx_offset_param_B_val3+i];
}
// print __xlx_apatb_param_B_cid3
for (size_t i = 0; i < __xlx_size_param_B_cid3; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid3)[i] = __xlx_B_cid3__tmp_vec[__xlx_offset_param_B_cid3+i];
}
// print __xlx_apatb_param_B_val4
for (size_t i = 0; i < __xlx_size_param_B_val4; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val4)[i] = __xlx_B_val4__tmp_vec[__xlx_offset_param_B_val4+i];
}
// print __xlx_apatb_param_B_cid4
for (size_t i = 0; i < __xlx_size_param_B_cid4; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid4)[i] = __xlx_B_cid4__tmp_vec[__xlx_offset_param_B_cid4+i];
}
// print __xlx_apatb_param_B_val_port1
for (size_t i = 0; i < __xlx_size_param_B_val_port1; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val_port1)[i] = __xlx_B_val_port1__tmp_vec[__xlx_offset_param_B_val_port1+i];
}
// print __xlx_apatb_param_B_cid_port1
for (size_t i = 0; i < __xlx_size_param_B_cid_port1; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid_port1)[i] = __xlx_B_cid_port1__tmp_vec[__xlx_offset_param_B_cid_port1+i];
}
// print __xlx_apatb_param_B_val_port2
for (size_t i = 0; i < __xlx_size_param_B_val_port2; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val_port2)[i] = __xlx_B_val_port2__tmp_vec[__xlx_offset_param_B_val_port2+i];
}
// print __xlx_apatb_param_B_cid_port2
for (size_t i = 0; i < __xlx_size_param_B_cid_port2; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid_port2)[i] = __xlx_B_cid_port2__tmp_vec[__xlx_offset_param_B_cid_port2+i];
}
// print __xlx_apatb_param_B_val_port3
for (size_t i = 0; i < __xlx_size_param_B_val_port3; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val_port3)[i] = __xlx_B_val_port3__tmp_vec[__xlx_offset_param_B_val_port3+i];
}
// print __xlx_apatb_param_B_cid_port3
for (size_t i = 0; i < __xlx_size_param_B_cid_port3; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid_port3)[i] = __xlx_B_cid_port3__tmp_vec[__xlx_offset_param_B_cid_port3+i];
}
// print __xlx_apatb_param_B_val_port4
for (size_t i = 0; i < __xlx_size_param_B_val_port4; ++i) {
((Byte<16>*)__xlx_apatb_param_B_val_port4)[i] = __xlx_B_val_port4__tmp_vec[__xlx_offset_param_B_val_port4+i];
}
// print __xlx_apatb_param_B_cid_port4
for (size_t i = 0; i < __xlx_size_param_B_cid_port4; ++i) {
((Byte<16>*)__xlx_apatb_param_B_cid_port4)[i] = __xlx_B_cid_port4__tmp_vec[__xlx_offset_param_B_cid_port4+i];
}
// print __xlx_apatb_param_C_rcsr
for (size_t i = 0; i < __xlx_size_param_C_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_C_rcsr)[i] = __xlx_C_rcsr__tmp_vec[__xlx_offset_param_C_rcsr+i];
}
// print __xlx_apatb_param_C_cid
for (size_t i = 0; i < __xlx_size_param_C_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_C_cid)[i] = __xlx_C_cid__tmp_vec[__xlx_offset_param_C_cid+i];
}
// print __xlx_apatb_param_C_val
for (size_t i = 0; i < __xlx_size_param_C_val; ++i) {
((Byte<4>*)__xlx_apatb_param_C_val)[i] = __xlx_C_val__tmp_vec[__xlx_offset_param_C_val+i];
}
}
