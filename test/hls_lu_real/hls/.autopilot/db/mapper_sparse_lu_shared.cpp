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
extern "C" void sparse_lu_shared(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, float, volatile void *, volatile void *);
extern "C" void apatb_sparse_lu_shared_hw(int __xlx_apatb_param_operation, volatile void * __xlx_apatb_param_A_rcsr, volatile void * __xlx_apatb_param_A_cid, volatile void * __xlx_apatb_param_A_val_r, volatile void * __xlx_apatb_param_L_rcsr, volatile void * __xlx_apatb_param_L_cid, volatile void * __xlx_apatb_param_L_val_r, volatile void * __xlx_apatb_param_U_rcsr, volatile void * __xlx_apatb_param_U_cid, volatile void * __xlx_apatb_param_U_val_r, volatile void * __xlx_apatb_param_X_rcsr, volatile void * __xlx_apatb_param_X_cid, volatile void * __xlx_apatb_param_X_val_r, int __xlx_apatb_param_n, int __xlx_apatb_param_a_nnz, int __xlx_apatb_param_l_nnz, int __xlx_apatb_param_u_nnz, int __xlx_apatb_param_x_rows, int __xlx_apatb_param_x_cols, int __xlx_apatb_param_x_nnz, float __xlx_apatb_param_pivot_eps, volatile void * __xlx_apatb_param_status, volatile void * __xlx_apatb_param_failed_row) {
using hls::sim::createStream;
  // Collect __xlx_A_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_A_rcsr__tmp_vec;
for (size_t i = 0; i < 65; ++i){
__xlx_A_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_rcsr)[i]);
}
  int __xlx_size_param_A_rcsr = 65;
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
  // Collect __xlx_A_val_r__tmp_vec
std::vector<Byte<4>> __xlx_A_val_r__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_A_val_r__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_A_val_r)[i]);
}
  int __xlx_size_param_A_val_r = 1024;
  int __xlx_offset_param_A_val_r = 0;
  int __xlx_offset_byte_param_A_val_r = 0*4;
  // Collect __xlx_L_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_L_rcsr__tmp_vec;
for (size_t i = 0; i < 65; ++i){
__xlx_L_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_L_rcsr)[i]);
}
  int __xlx_size_param_L_rcsr = 65;
  int __xlx_offset_param_L_rcsr = 0;
  int __xlx_offset_byte_param_L_rcsr = 0*4;
  // Collect __xlx_L_cid__tmp_vec
std::vector<Byte<4>> __xlx_L_cid__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_L_cid__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_L_cid)[i]);
}
  int __xlx_size_param_L_cid = 2048;
  int __xlx_offset_param_L_cid = 0;
  int __xlx_offset_byte_param_L_cid = 0*4;
  // Collect __xlx_L_val_r__tmp_vec
std::vector<Byte<4>> __xlx_L_val_r__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_L_val_r__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_L_val_r)[i]);
}
  int __xlx_size_param_L_val_r = 2048;
  int __xlx_offset_param_L_val_r = 0;
  int __xlx_offset_byte_param_L_val_r = 0*4;
  // Collect __xlx_U_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_U_rcsr__tmp_vec;
for (size_t i = 0; i < 65; ++i){
__xlx_U_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_U_rcsr)[i]);
}
  int __xlx_size_param_U_rcsr = 65;
  int __xlx_offset_param_U_rcsr = 0;
  int __xlx_offset_byte_param_U_rcsr = 0*4;
  // Collect __xlx_U_cid__tmp_vec
std::vector<Byte<4>> __xlx_U_cid__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_U_cid__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_U_cid)[i]);
}
  int __xlx_size_param_U_cid = 2048;
  int __xlx_offset_param_U_cid = 0;
  int __xlx_offset_byte_param_U_cid = 0*4;
  // Collect __xlx_U_val_r__tmp_vec
std::vector<Byte<4>> __xlx_U_val_r__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_U_val_r__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_U_val_r)[i]);
}
  int __xlx_size_param_U_val_r = 2048;
  int __xlx_offset_param_U_val_r = 0;
  int __xlx_offset_byte_param_U_val_r = 0*4;
  // Collect __xlx_X_rcsr__tmp_vec
std::vector<Byte<4>> __xlx_X_rcsr__tmp_vec;
for (size_t i = 0; i < 65; ++i){
__xlx_X_rcsr__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_X_rcsr)[i]);
}
  int __xlx_size_param_X_rcsr = 65;
  int __xlx_offset_param_X_rcsr = 0;
  int __xlx_offset_byte_param_X_rcsr = 0*4;
  // Collect __xlx_X_cid__tmp_vec
std::vector<Byte<4>> __xlx_X_cid__tmp_vec;
for (size_t i = 0; i < 4096; ++i){
__xlx_X_cid__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_X_cid)[i]);
}
  int __xlx_size_param_X_cid = 4096;
  int __xlx_offset_param_X_cid = 0;
  int __xlx_offset_byte_param_X_cid = 0*4;
  // Collect __xlx_X_val_r__tmp_vec
std::vector<Byte<4>> __xlx_X_val_r__tmp_vec;
for (size_t i = 0; i < 4096; ++i){
__xlx_X_val_r__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_X_val_r)[i]);
}
  int __xlx_size_param_X_val_r = 4096;
  int __xlx_offset_param_X_val_r = 0;
  int __xlx_offset_byte_param_X_val_r = 0*4;
  // DUT call
  sparse_lu_shared(__xlx_A_rcsr__tmp_vec.data(), __xlx_A_cid__tmp_vec.data(), __xlx_A_val_r__tmp_vec.data(), __xlx_L_rcsr__tmp_vec.data(), __xlx_L_cid__tmp_vec.data(), __xlx_L_val_r__tmp_vec.data(), __xlx_U_rcsr__tmp_vec.data(), __xlx_U_cid__tmp_vec.data(), __xlx_U_val_r__tmp_vec.data(), __xlx_X_rcsr__tmp_vec.data(), __xlx_X_cid__tmp_vec.data(), __xlx_X_val_r__tmp_vec.data(), __xlx_apatb_param_operation, __xlx_offset_byte_param_A_rcsr, __xlx_offset_byte_param_A_cid, __xlx_offset_byte_param_A_val_r, __xlx_offset_byte_param_L_rcsr, __xlx_offset_byte_param_L_cid, __xlx_offset_byte_param_L_val_r, __xlx_offset_byte_param_U_rcsr, __xlx_offset_byte_param_U_cid, __xlx_offset_byte_param_U_val_r, __xlx_offset_byte_param_X_rcsr, __xlx_offset_byte_param_X_cid, __xlx_offset_byte_param_X_val_r, __xlx_apatb_param_n, __xlx_apatb_param_a_nnz, __xlx_apatb_param_l_nnz, __xlx_apatb_param_u_nnz, __xlx_apatb_param_x_rows, __xlx_apatb_param_x_cols, __xlx_apatb_param_x_nnz, __xlx_apatb_param_pivot_eps, __xlx_apatb_param_status, __xlx_apatb_param_failed_row);
// print __xlx_apatb_param_A_rcsr
for (size_t i = 0; i < __xlx_size_param_A_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_A_rcsr)[i] = __xlx_A_rcsr__tmp_vec[__xlx_offset_param_A_rcsr+i];
}
// print __xlx_apatb_param_A_cid
for (size_t i = 0; i < __xlx_size_param_A_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_A_cid)[i] = __xlx_A_cid__tmp_vec[__xlx_offset_param_A_cid+i];
}
// print __xlx_apatb_param_A_val_r
for (size_t i = 0; i < __xlx_size_param_A_val_r; ++i) {
((Byte<4>*)__xlx_apatb_param_A_val_r)[i] = __xlx_A_val_r__tmp_vec[__xlx_offset_param_A_val_r+i];
}
// print __xlx_apatb_param_L_rcsr
for (size_t i = 0; i < __xlx_size_param_L_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_L_rcsr)[i] = __xlx_L_rcsr__tmp_vec[__xlx_offset_param_L_rcsr+i];
}
// print __xlx_apatb_param_L_cid
for (size_t i = 0; i < __xlx_size_param_L_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_L_cid)[i] = __xlx_L_cid__tmp_vec[__xlx_offset_param_L_cid+i];
}
// print __xlx_apatb_param_L_val_r
for (size_t i = 0; i < __xlx_size_param_L_val_r; ++i) {
((Byte<4>*)__xlx_apatb_param_L_val_r)[i] = __xlx_L_val_r__tmp_vec[__xlx_offset_param_L_val_r+i];
}
// print __xlx_apatb_param_U_rcsr
for (size_t i = 0; i < __xlx_size_param_U_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_U_rcsr)[i] = __xlx_U_rcsr__tmp_vec[__xlx_offset_param_U_rcsr+i];
}
// print __xlx_apatb_param_U_cid
for (size_t i = 0; i < __xlx_size_param_U_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_U_cid)[i] = __xlx_U_cid__tmp_vec[__xlx_offset_param_U_cid+i];
}
// print __xlx_apatb_param_U_val_r
for (size_t i = 0; i < __xlx_size_param_U_val_r; ++i) {
((Byte<4>*)__xlx_apatb_param_U_val_r)[i] = __xlx_U_val_r__tmp_vec[__xlx_offset_param_U_val_r+i];
}
// print __xlx_apatb_param_X_rcsr
for (size_t i = 0; i < __xlx_size_param_X_rcsr; ++i) {
((Byte<4>*)__xlx_apatb_param_X_rcsr)[i] = __xlx_X_rcsr__tmp_vec[__xlx_offset_param_X_rcsr+i];
}
// print __xlx_apatb_param_X_cid
for (size_t i = 0; i < __xlx_size_param_X_cid; ++i) {
((Byte<4>*)__xlx_apatb_param_X_cid)[i] = __xlx_X_cid__tmp_vec[__xlx_offset_param_X_cid+i];
}
// print __xlx_apatb_param_X_val_r
for (size_t i = 0; i < __xlx_size_param_X_val_r; ++i) {
((Byte<4>*)__xlx_apatb_param_X_val_r)[i] = __xlx_X_val_r__tmp_vec[__xlx_offset_param_X_val_r+i];
}
}
