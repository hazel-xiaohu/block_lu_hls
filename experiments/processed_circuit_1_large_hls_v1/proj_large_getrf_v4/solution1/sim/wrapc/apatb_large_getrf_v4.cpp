#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_a_ptr "../tv/cdatafile/c.large_getrf_v4.autotvin_a_ptr.dat"
#define AUTOTB_TVOUT_a_ptr "../tv/cdatafile/c.large_getrf_v4.autotvout_a_ptr.dat"
#define AUTOTB_TVIN_a_idx "../tv/cdatafile/c.large_getrf_v4.autotvin_a_idx.dat"
#define AUTOTB_TVOUT_a_idx "../tv/cdatafile/c.large_getrf_v4.autotvout_a_idx.dat"
#define AUTOTB_TVIN_a_val "../tv/cdatafile/c.large_getrf_v4.autotvin_a_val.dat"
#define AUTOTB_TVOUT_a_val "../tv/cdatafile/c.large_getrf_v4.autotvout_a_val.dat"
#define AUTOTB_TVIN_l_ptr "../tv/cdatafile/c.large_getrf_v4.autotvin_l_ptr.dat"
#define AUTOTB_TVOUT_l_ptr "../tv/cdatafile/c.large_getrf_v4.autotvout_l_ptr.dat"
#define AUTOTB_TVIN_l_idx "../tv/cdatafile/c.large_getrf_v4.autotvin_l_idx.dat"
#define AUTOTB_TVOUT_l_idx "../tv/cdatafile/c.large_getrf_v4.autotvout_l_idx.dat"
#define AUTOTB_TVIN_l_val "../tv/cdatafile/c.large_getrf_v4.autotvin_l_val.dat"
#define AUTOTB_TVOUT_l_val "../tv/cdatafile/c.large_getrf_v4.autotvout_l_val.dat"
#define AUTOTB_TVIN_u_ptr "../tv/cdatafile/c.large_getrf_v4.autotvin_u_ptr.dat"
#define AUTOTB_TVOUT_u_ptr "../tv/cdatafile/c.large_getrf_v4.autotvout_u_ptr.dat"
#define AUTOTB_TVIN_u_idx "../tv/cdatafile/c.large_getrf_v4.autotvin_u_idx.dat"
#define AUTOTB_TVOUT_u_idx "../tv/cdatafile/c.large_getrf_v4.autotvout_u_idx.dat"
#define AUTOTB_TVIN_u_val "../tv/cdatafile/c.large_getrf_v4.autotvin_u_val.dat"
#define AUTOTB_TVOUT_u_val "../tv/cdatafile/c.large_getrf_v4.autotvout_u_val.dat"
#define AUTOTB_TVIN_u_diag_pos "../tv/cdatafile/c.large_getrf_v4.autotvin_u_diag_pos.dat"
#define AUTOTB_TVOUT_u_diag_pos "../tv/cdatafile/c.large_getrf_v4.autotvout_u_diag_pos.dat"
#define AUTOTB_TVIN_n "../tv/cdatafile/c.large_getrf_v4.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.large_getrf_v4.autotvout_n.dat"
#define AUTOTB_TVIN_pivot_eps "../tv/cdatafile/c.large_getrf_v4.autotvin_pivot_eps.dat"
#define AUTOTB_TVOUT_pivot_eps "../tv/cdatafile/c.large_getrf_v4.autotvout_pivot_eps.dat"
#define AUTOTB_TVIN_status "../tv/cdatafile/c.large_getrf_v4.autotvin_status.dat"
#define AUTOTB_TVOUT_status "../tv/cdatafile/c.large_getrf_v4.autotvout_status.dat"
#define AUTOTB_TVIN_muladds "../tv/cdatafile/c.large_getrf_v4.autotvin_muladds.dat"
#define AUTOTB_TVOUT_muladds "../tv/cdatafile/c.large_getrf_v4.autotvout_muladds.dat"
#define AUTOTB_TVIN_divisions "../tv/cdatafile/c.large_getrf_v4.autotvin_divisions.dat"
#define AUTOTB_TVOUT_divisions "../tv/cdatafile/c.large_getrf_v4.autotvout_divisions.dat"
#define AUTOTB_TVIN_v4a0 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a0.dat"
#define AUTOTB_TVOUT_v4a0 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4a0.dat"
#define AUTOTB_TVIN_v4a1 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a1.dat"
#define AUTOTB_TVOUT_v4a1 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4a1.dat"
#define AUTOTB_TVIN_v4a2 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a2.dat"
#define AUTOTB_TVOUT_v4a2 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4a2.dat"
#define AUTOTB_TVIN_v4l0 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4l0.dat"
#define AUTOTB_TVOUT_v4l0 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4l0.dat"
#define AUTOTB_TVIN_v4l1 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4l1.dat"
#define AUTOTB_TVOUT_v4l1 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4l1.dat"
#define AUTOTB_TVIN_v4l2 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4l2.dat"
#define AUTOTB_TVOUT_v4l2 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4l2.dat"
#define AUTOTB_TVIN_v4u0 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u0.dat"
#define AUTOTB_TVOUT_v4u0 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4u0.dat"
#define AUTOTB_TVIN_v4u1 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u1.dat"
#define AUTOTB_TVOUT_v4u1 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4u1.dat"
#define AUTOTB_TVIN_v4u2 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u2.dat"
#define AUTOTB_TVOUT_v4u2 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4u2.dat"
#define AUTOTB_TVIN_v4u3 "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u3.dat"
#define AUTOTB_TVOUT_v4u3 "../tv/cdatafile/c.large_getrf_v4.autotvout_v4u3.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_status "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_status.dat"
#define AUTOTB_TVOUT_PC_muladds "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_muladds.dat"
#define AUTOTB_TVOUT_PC_divisions "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_divisions.dat"
#define AUTOTB_TVOUT_PC_v4a0 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4a0.dat"
#define AUTOTB_TVOUT_PC_v4a1 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4a1.dat"
#define AUTOTB_TVOUT_PC_v4a2 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4a2.dat"
#define AUTOTB_TVOUT_PC_v4l0 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4l0.dat"
#define AUTOTB_TVOUT_PC_v4l1 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4l1.dat"
#define AUTOTB_TVOUT_PC_v4l2 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4l2.dat"
#define AUTOTB_TVOUT_PC_v4u0 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4u0.dat"
#define AUTOTB_TVOUT_PC_v4u1 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4u1.dat"
#define AUTOTB_TVOUT_PC_v4u2 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4u2.dat"
#define AUTOTB_TVOUT_PC_v4u3 "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4u3.dat"


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
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void large_getrf_v4_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<4>, float, void*, void*, void*);

extern "C"
void apatb_large_getrf_v4_hw(void* __xlx_apatb_param_a_ptr, void* __xlx_apatb_param_a_idx, void* __xlx_apatb_param_a_val, void* __xlx_apatb_param_l_ptr, void* __xlx_apatb_param_l_idx, void* __xlx_apatb_param_l_val, void* __xlx_apatb_param_u_ptr, void* __xlx_apatb_param_u_idx, void* __xlx_apatb_param_u_val, void* __xlx_apatb_param_u_diag_pos, hls::sim::Byte<4> __xlx_apatb_param_n, float __xlx_apatb_param_pivot_eps, void* __xlx_apatb_param_status, void* __xlx_apatb_param_muladds, void* __xlx_apatb_param_divisions)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_a_ptr;
  static hls::sim::Register port0 {
    .name = "a_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_ptr),
#endif
  };
  port0.param = &__xlx_offset_byte_param_a_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_a_idx;
  static hls::sim::Register port1 {
    .name = "a_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_idx),
#endif
  };
  port1.param = &__xlx_offset_byte_param_a_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_a_val;
  static hls::sim::Register port2 {
    .name = "a_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_val),
#endif
  };
  port2.param = &__xlx_offset_byte_param_a_val;

  hls::sim::Byte<4> __xlx_offset_byte_param_l_ptr;
  static hls::sim::Register port3 {
    .name = "l_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_ptr),
#endif
  };
  port3.param = &__xlx_offset_byte_param_l_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_l_idx;
  static hls::sim::Register port4 {
    .name = "l_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_idx),
#endif
  };
  port4.param = &__xlx_offset_byte_param_l_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_l_val;
  static hls::sim::Register port5 {
    .name = "l_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_val),
#endif
  };
  port5.param = &__xlx_offset_byte_param_l_val;

  hls::sim::Byte<4> __xlx_offset_byte_param_u_ptr;
  static hls::sim::Register port6 {
    .name = "u_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_ptr),
#endif
  };
  port6.param = &__xlx_offset_byte_param_u_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_u_idx;
  static hls::sim::Register port7 {
    .name = "u_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_idx),
#endif
  };
  port7.param = &__xlx_offset_byte_param_u_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_u_val;
  static hls::sim::Register port8 {
    .name = "u_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_val),
#endif
  };
  port8.param = &__xlx_offset_byte_param_u_val;

  hls::sim::Byte<4> __xlx_offset_byte_param_u_diag_pos;
  static hls::sim::Register port9 {
    .name = "u_diag_pos",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_diag_pos),
#endif
  };
  port9.param = &__xlx_offset_byte_param_u_diag_pos;

  static hls::sim::Register port10 {
    .name = "n",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_n),
#endif
  };
  port10.param = &__xlx_apatb_param_n;

  static hls::sim::Register port11 {
    .name = "pivot_eps",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_pivot_eps),
#endif
  };
  port11.param = &__xlx_apatb_param_pivot_eps;

  static hls::sim::Register port12 {
    .name = "status",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_status),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_status),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_status),
#endif
  };
  port12.param = __xlx_apatb_param_status;

  static hls::sim::Register port13 {
    .name = "muladds",
    .width = 64,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_muladds),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_muladds),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_muladds),
#endif
  };
  port13.param = __xlx_apatb_param_muladds;

  static hls::sim::Register port14 {
    .name = "divisions",
    .width = 64,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_divisions),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_divisions),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_divisions),
#endif
  };
  port14.param = __xlx_apatb_param_divisions;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port15 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port15 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4a0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4a0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4a0),
#endif
#endif
  };
  port15.param = { __xlx_apatb_param_a_ptr };
  port15.depth = { 2625 };
  port15.offset = {  };
  port15.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port16 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port16 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4a1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4a1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4a1),
#endif
#endif
  };
  port16.param = { __xlx_apatb_param_a_idx };
  port16.depth = { 45624 };
  port16.offset = {  };
  port16.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port17 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4a2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4a2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4a2),
#endif
#endif
  };
  port17.param = { __xlx_apatb_param_a_val };
  port17.depth = { 45624 };
  port17.offset = {  };
  port17.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port18 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4l0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4l0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4l0),
#endif
#endif
  };
  port18.param = { __xlx_apatb_param_l_ptr };
  port18.depth = { 2625 };
  port18.offset = {  };
  port18.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port19 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4l1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4l1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4l1),
#endif
#endif
  };
  port19.param = { __xlx_apatb_param_l_idx };
  port19.depth = { 24124 };
  port19.offset = {  };
  port19.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port20 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4l2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4l2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4l2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4l2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4l2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4l2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4l2),
#endif
#endif
  };
  port20.param = { __xlx_apatb_param_l_val };
  port20.depth = { 24124 };
  port20.offset = {  };
  port20.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port21 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4u0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4u0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4u0),
#endif
#endif
  };
  port21.param = { __xlx_apatb_param_u_ptr };
  port21.depth = { 2625 };
  port21.offset = {  };
  port21.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4u1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4u1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4u1),
#endif
#endif
  };
  port22.param = { __xlx_apatb_param_u_idx };
  port22.depth = { 24124 };
  port22.offset = {  };
  port22.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4u2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4u2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4u2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4u2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4u2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4u2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4u2),
#endif
#endif
  };
  port23.param = { __xlx_apatb_param_u_val };
  port23.depth = { 24124 };
  port23.offset = {  };
  port23.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4u3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4u3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4u3),
#endif
#endif
  };
  port24.param = { __xlx_apatb_param_u_diag_pos };
  port24.depth = { 2624 };
  port24.offset = {  };
  port24.hasWrite = { false };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port12);
    check(port13);
    check(port14);
    check(port20);
    check(port23);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    CodeState = CALL_C_DUT;
    large_getrf_v4_hw_stub_wrapper(__xlx_apatb_param_a_ptr, __xlx_apatb_param_a_idx, __xlx_apatb_param_a_val, __xlx_apatb_param_l_ptr, __xlx_apatb_param_l_idx, __xlx_apatb_param_l_val, __xlx_apatb_param_u_ptr, __xlx_apatb_param_u_idx, __xlx_apatb_param_u_val, __xlx_apatb_param_u_diag_pos, __xlx_apatb_param_n, __xlx_apatb_param_pivot_eps, __xlx_apatb_param_status, __xlx_apatb_param_muladds, __xlx_apatb_param_divisions);
    CodeState = DUMP_OUTPUTS;
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}