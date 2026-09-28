#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
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
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
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
extern "C" void large_gessm(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, volatile void *, volatile void *);
extern "C" void apatb_large_gessm_hw(volatile void * __xlx_apatb_param_l_ptr, volatile void * __xlx_apatb_param_l_idx, volatile void * __xlx_apatb_param_l_val, volatile void * __xlx_apatb_param_b_ptr, volatile void * __xlx_apatb_param_b_idx, volatile void * __xlx_apatb_param_b_val, volatile void * __xlx_apatb_param_x_ptr, volatile void * __xlx_apatb_param_x_idx, volatile void * __xlx_apatb_param_x_val_csc, volatile void * __xlx_apatb_param_x_csc_to_csr, volatile void * __xlx_apatb_param_x_val_csr, volatile void * __xlx_apatb_param_active_cols, int __xlx_apatb_param_active_count, volatile void * __xlx_apatb_param_work, int __xlx_apatb_param_n, volatile void * __xlx_apatb_param_status, volatile void * __xlx_apatb_param_muladds) {
using hls::sim::createStream;
  // Collect __xlx_l_ptr__tmp_vec
std::vector<Byte<4>> __xlx_l_ptr__tmp_vec;
for (size_t i = 0; i < 1313; ++i){
__xlx_l_ptr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_l_ptr)[i]);
}
  int __xlx_size_param_l_ptr = 1313;
  int __xlx_offset_param_l_ptr = 0;
  int __xlx_offset_byte_param_l_ptr = 0*4;
  // Collect __xlx_l_idx__tmp_vec
std::vector<Byte<4>> __xlx_l_idx__tmp_vec;
for (size_t i = 0; i < 4106; ++i){
__xlx_l_idx__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_l_idx)[i]);
}
  int __xlx_size_param_l_idx = 4106;
  int __xlx_offset_param_l_idx = 0;
  int __xlx_offset_byte_param_l_idx = 0*4;
  // Collect __xlx_l_val__tmp_vec
std::vector<Byte<4>> __xlx_l_val__tmp_vec;
for (size_t i = 0; i < 4106; ++i){
__xlx_l_val__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_l_val)[i]);
}
  int __xlx_size_param_l_val = 4106;
  int __xlx_offset_param_l_val = 0;
  int __xlx_offset_byte_param_l_val = 0*4;
  // Collect __xlx_b_ptr__tmp_vec
std::vector<Byte<4>> __xlx_b_ptr__tmp_vec;
for (size_t i = 0; i < 1313; ++i){
__xlx_b_ptr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_ptr)[i]);
}
  int __xlx_size_param_b_ptr = 1313;
  int __xlx_offset_param_b_ptr = 0;
  int __xlx_offset_byte_param_b_ptr = 0*4;
  // Collect __xlx_b_idx__tmp_vec
std::vector<Byte<4>> __xlx_b_idx__tmp_vec;
for (size_t i = 0; i < 7063; ++i){
__xlx_b_idx__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_idx)[i]);
}
  int __xlx_size_param_b_idx = 7063;
  int __xlx_offset_param_b_idx = 0;
  int __xlx_offset_byte_param_b_idx = 0*4;
  // Collect __xlx_b_val__tmp_vec
std::vector<Byte<4>> __xlx_b_val__tmp_vec;
for (size_t i = 0; i < 7063; ++i){
__xlx_b_val__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_val)[i]);
}
  int __xlx_size_param_b_val = 7063;
  int __xlx_offset_param_b_val = 0;
  int __xlx_offset_byte_param_b_val = 0*4;
  // Collect __xlx_x_ptr__tmp_vec
std::vector<Byte<4>> __xlx_x_ptr__tmp_vec;
for (size_t i = 0; i < 1313; ++i){
__xlx_x_ptr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x_ptr)[i]);
}
  int __xlx_size_param_x_ptr = 1313;
  int __xlx_offset_param_x_ptr = 0;
  int __xlx_offset_byte_param_x_ptr = 0*4;
  // Collect __xlx_x_idx__tmp_vec
std::vector<Byte<4>> __xlx_x_idx__tmp_vec;
for (size_t i = 0; i < 6997; ++i){
__xlx_x_idx__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x_idx)[i]);
}
  int __xlx_size_param_x_idx = 6997;
  int __xlx_offset_param_x_idx = 0;
  int __xlx_offset_byte_param_x_idx = 0*4;
  // Collect __xlx_x_val_csc__tmp_vec
std::vector<Byte<4>> __xlx_x_val_csc__tmp_vec;
for (size_t i = 0; i < 6997; ++i){
__xlx_x_val_csc__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x_val_csc)[i]);
}
  int __xlx_size_param_x_val_csc = 6997;
  int __xlx_offset_param_x_val_csc = 0;
  int __xlx_offset_byte_param_x_val_csc = 0*4;
  // Collect __xlx_x_csc_to_csr__tmp_vec
std::vector<Byte<4>> __xlx_x_csc_to_csr__tmp_vec;
for (size_t i = 0; i < 6997; ++i){
__xlx_x_csc_to_csr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x_csc_to_csr)[i]);
}
  int __xlx_size_param_x_csc_to_csr = 6997;
  int __xlx_offset_param_x_csc_to_csr = 0;
  int __xlx_offset_byte_param_x_csc_to_csr = 0*4;
  // Collect __xlx_x_val_csr__tmp_vec
std::vector<Byte<4>> __xlx_x_val_csr__tmp_vec;
for (size_t i = 0; i < 6997; ++i){
__xlx_x_val_csr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_x_val_csr)[i]);
}
  int __xlx_size_param_x_val_csr = 6997;
  int __xlx_offset_param_x_val_csr = 0;
  int __xlx_offset_byte_param_x_val_csr = 0*4;
  // Collect __xlx_active_cols__tmp_vec
std::vector<Byte<4>> __xlx_active_cols__tmp_vec;
for (size_t i = 0; i < 1312; ++i){
__xlx_active_cols__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_active_cols)[i]);
}
  int __xlx_size_param_active_cols = 1312;
  int __xlx_offset_param_active_cols = 0;
  int __xlx_offset_byte_param_active_cols = 0*4;
  // Collect __xlx_work__tmp_vec
std::vector<Byte<4>> __xlx_work__tmp_vec;
for (size_t i = 0; i < 1312; ++i){
__xlx_work__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_work)[i]);
}
  int __xlx_size_param_work = 1312;
  int __xlx_offset_param_work = 0;
  int __xlx_offset_byte_param_work = 0*4;
  // DUT call
  large_gessm(__xlx_l_ptr__tmp_vec.data(), __xlx_l_idx__tmp_vec.data(), __xlx_l_val__tmp_vec.data(), __xlx_b_ptr__tmp_vec.data(), __xlx_b_idx__tmp_vec.data(), __xlx_b_val__tmp_vec.data(), __xlx_x_ptr__tmp_vec.data(), __xlx_x_idx__tmp_vec.data(), __xlx_x_val_csc__tmp_vec.data(), __xlx_x_csc_to_csr__tmp_vec.data(), __xlx_x_val_csr__tmp_vec.data(), __xlx_active_cols__tmp_vec.data(), __xlx_work__tmp_vec.data(), __xlx_offset_byte_param_l_ptr, __xlx_offset_byte_param_l_idx, __xlx_offset_byte_param_l_val, __xlx_offset_byte_param_b_ptr, __xlx_offset_byte_param_b_idx, __xlx_offset_byte_param_b_val, __xlx_offset_byte_param_x_ptr, __xlx_offset_byte_param_x_idx, __xlx_offset_byte_param_x_val_csc, __xlx_offset_byte_param_x_csc_to_csr, __xlx_offset_byte_param_x_val_csr, __xlx_offset_byte_param_active_cols, __xlx_apatb_param_active_count, __xlx_offset_byte_param_work, __xlx_apatb_param_n, __xlx_apatb_param_status, __xlx_apatb_param_muladds);
// print __xlx_apatb_param_l_ptr
for (size_t i = 0; i < __xlx_size_param_l_ptr; ++i) {
((Byte<4>*)__xlx_apatb_param_l_ptr)[i] = __xlx_l_ptr__tmp_vec[__xlx_offset_param_l_ptr+i];
}
// print __xlx_apatb_param_l_idx
for (size_t i = 0; i < __xlx_size_param_l_idx; ++i) {
((Byte<4>*)__xlx_apatb_param_l_idx)[i] = __xlx_l_idx__tmp_vec[__xlx_offset_param_l_idx+i];
}
// print __xlx_apatb_param_l_val
for (size_t i = 0; i < __xlx_size_param_l_val; ++i) {
((Byte<4>*)__xlx_apatb_param_l_val)[i] = __xlx_l_val__tmp_vec[__xlx_offset_param_l_val+i];
}
// print __xlx_apatb_param_b_ptr
for (size_t i = 0; i < __xlx_size_param_b_ptr; ++i) {
((Byte<4>*)__xlx_apatb_param_b_ptr)[i] = __xlx_b_ptr__tmp_vec[__xlx_offset_param_b_ptr+i];
}
// print __xlx_apatb_param_b_idx
for (size_t i = 0; i < __xlx_size_param_b_idx; ++i) {
((Byte<4>*)__xlx_apatb_param_b_idx)[i] = __xlx_b_idx__tmp_vec[__xlx_offset_param_b_idx+i];
}
// print __xlx_apatb_param_b_val
for (size_t i = 0; i < __xlx_size_param_b_val; ++i) {
((Byte<4>*)__xlx_apatb_param_b_val)[i] = __xlx_b_val__tmp_vec[__xlx_offset_param_b_val+i];
}
// print __xlx_apatb_param_x_ptr
for (size_t i = 0; i < __xlx_size_param_x_ptr; ++i) {
((Byte<4>*)__xlx_apatb_param_x_ptr)[i] = __xlx_x_ptr__tmp_vec[__xlx_offset_param_x_ptr+i];
}
// print __xlx_apatb_param_x_idx
for (size_t i = 0; i < __xlx_size_param_x_idx; ++i) {
((Byte<4>*)__xlx_apatb_param_x_idx)[i] = __xlx_x_idx__tmp_vec[__xlx_offset_param_x_idx+i];
}
// print __xlx_apatb_param_x_val_csc
for (size_t i = 0; i < __xlx_size_param_x_val_csc; ++i) {
((Byte<4>*)__xlx_apatb_param_x_val_csc)[i] = __xlx_x_val_csc__tmp_vec[__xlx_offset_param_x_val_csc+i];
}
// print __xlx_apatb_param_x_csc_to_csr
for (size_t i = 0; i < __xlx_size_param_x_csc_to_csr; ++i) {
((Byte<4>*)__xlx_apatb_param_x_csc_to_csr)[i] = __xlx_x_csc_to_csr__tmp_vec[__xlx_offset_param_x_csc_to_csr+i];
}
// print __xlx_apatb_param_x_val_csr
for (size_t i = 0; i < __xlx_size_param_x_val_csr; ++i) {
((Byte<4>*)__xlx_apatb_param_x_val_csr)[i] = __xlx_x_val_csr__tmp_vec[__xlx_offset_param_x_val_csr+i];
}
// print __xlx_apatb_param_active_cols
for (size_t i = 0; i < __xlx_size_param_active_cols; ++i) {
((Byte<4>*)__xlx_apatb_param_active_cols)[i] = __xlx_active_cols__tmp_vec[__xlx_offset_param_active_cols+i];
}
// print __xlx_apatb_param_work
for (size_t i = 0; i < __xlx_size_param_work; ++i) {
((Byte<4>*)__xlx_apatb_param_work)[i] = __xlx_work__tmp_vec[__xlx_offset_param_work+i];
}
}
