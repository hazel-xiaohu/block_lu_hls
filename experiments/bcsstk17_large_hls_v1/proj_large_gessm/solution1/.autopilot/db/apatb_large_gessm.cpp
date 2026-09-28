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
#define AUTOTB_TVIN_l_ptr "../tv/cdatafile/c.large_gessm.autotvin_l_ptr.dat"
#define AUTOTB_TVOUT_l_ptr "../tv/cdatafile/c.large_gessm.autotvout_l_ptr.dat"
#define AUTOTB_TVIN_l_idx "../tv/cdatafile/c.large_gessm.autotvin_l_idx.dat"
#define AUTOTB_TVOUT_l_idx "../tv/cdatafile/c.large_gessm.autotvout_l_idx.dat"
#define AUTOTB_TVIN_l_val "../tv/cdatafile/c.large_gessm.autotvin_l_val.dat"
#define AUTOTB_TVOUT_l_val "../tv/cdatafile/c.large_gessm.autotvout_l_val.dat"
#define AUTOTB_TVIN_b_ptr "../tv/cdatafile/c.large_gessm.autotvin_b_ptr.dat"
#define AUTOTB_TVOUT_b_ptr "../tv/cdatafile/c.large_gessm.autotvout_b_ptr.dat"
#define AUTOTB_TVIN_b_idx "../tv/cdatafile/c.large_gessm.autotvin_b_idx.dat"
#define AUTOTB_TVOUT_b_idx "../tv/cdatafile/c.large_gessm.autotvout_b_idx.dat"
#define AUTOTB_TVIN_b_val "../tv/cdatafile/c.large_gessm.autotvin_b_val.dat"
#define AUTOTB_TVOUT_b_val "../tv/cdatafile/c.large_gessm.autotvout_b_val.dat"
#define AUTOTB_TVIN_x_ptr "../tv/cdatafile/c.large_gessm.autotvin_x_ptr.dat"
#define AUTOTB_TVOUT_x_ptr "../tv/cdatafile/c.large_gessm.autotvout_x_ptr.dat"
#define AUTOTB_TVIN_x_idx "../tv/cdatafile/c.large_gessm.autotvin_x_idx.dat"
#define AUTOTB_TVOUT_x_idx "../tv/cdatafile/c.large_gessm.autotvout_x_idx.dat"
#define AUTOTB_TVIN_x_val_csc "../tv/cdatafile/c.large_gessm.autotvin_x_val_csc.dat"
#define AUTOTB_TVOUT_x_val_csc "../tv/cdatafile/c.large_gessm.autotvout_x_val_csc.dat"
#define AUTOTB_TVIN_x_csc_to_csr "../tv/cdatafile/c.large_gessm.autotvin_x_csc_to_csr.dat"
#define AUTOTB_TVOUT_x_csc_to_csr "../tv/cdatafile/c.large_gessm.autotvout_x_csc_to_csr.dat"
#define AUTOTB_TVIN_x_val_csr "../tv/cdatafile/c.large_gessm.autotvin_x_val_csr.dat"
#define AUTOTB_TVOUT_x_val_csr "../tv/cdatafile/c.large_gessm.autotvout_x_val_csr.dat"
#define AUTOTB_TVIN_active_cols "../tv/cdatafile/c.large_gessm.autotvin_active_cols.dat"
#define AUTOTB_TVOUT_active_cols "../tv/cdatafile/c.large_gessm.autotvout_active_cols.dat"
#define AUTOTB_TVIN_active_count "../tv/cdatafile/c.large_gessm.autotvin_active_count.dat"
#define AUTOTB_TVOUT_active_count "../tv/cdatafile/c.large_gessm.autotvout_active_count.dat"
#define AUTOTB_TVIN_work "../tv/cdatafile/c.large_gessm.autotvin_work.dat"
#define AUTOTB_TVOUT_work "../tv/cdatafile/c.large_gessm.autotvout_work.dat"
#define AUTOTB_TVIN_n "../tv/cdatafile/c.large_gessm.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.large_gessm.autotvout_n.dat"
#define AUTOTB_TVIN_status "../tv/cdatafile/c.large_gessm.autotvin_status.dat"
#define AUTOTB_TVOUT_status "../tv/cdatafile/c.large_gessm.autotvout_status.dat"
#define AUTOTB_TVIN_muladds "../tv/cdatafile/c.large_gessm.autotvin_muladds.dat"
#define AUTOTB_TVOUT_muladds "../tv/cdatafile/c.large_gessm.autotvout_muladds.dat"
#define AUTOTB_TVIN_ga0 "../tv/cdatafile/c.large_gessm.autotvin_ga0.dat"
#define AUTOTB_TVOUT_ga0 "../tv/cdatafile/c.large_gessm.autotvout_ga0.dat"
#define AUTOTB_TVIN_gb0 "../tv/cdatafile/c.large_gessm.autotvin_gb0.dat"
#define AUTOTB_TVOUT_gb0 "../tv/cdatafile/c.large_gessm.autotvout_gb0.dat"
#define AUTOTB_TVIN_gb1 "../tv/cdatafile/c.large_gessm.autotvin_gb1.dat"
#define AUTOTB_TVOUT_gb1 "../tv/cdatafile/c.large_gessm.autotvout_gb1.dat"
#define AUTOTB_TVIN_gb2 "../tv/cdatafile/c.large_gessm.autotvin_gb2.dat"
#define AUTOTB_TVOUT_gb2 "../tv/cdatafile/c.large_gessm.autotvout_gb2.dat"
#define AUTOTB_TVIN_gl0 "../tv/cdatafile/c.large_gessm.autotvin_gl0.dat"
#define AUTOTB_TVOUT_gl0 "../tv/cdatafile/c.large_gessm.autotvout_gl0.dat"
#define AUTOTB_TVIN_gl1 "../tv/cdatafile/c.large_gessm.autotvin_gl1.dat"
#define AUTOTB_TVOUT_gl1 "../tv/cdatafile/c.large_gessm.autotvout_gl1.dat"
#define AUTOTB_TVIN_gl2 "../tv/cdatafile/c.large_gessm.autotvin_gl2.dat"
#define AUTOTB_TVOUT_gl2 "../tv/cdatafile/c.large_gessm.autotvout_gl2.dat"
#define AUTOTB_TVIN_gw0 "../tv/cdatafile/c.large_gessm.autotvin_gw0.dat"
#define AUTOTB_TVOUT_gw0 "../tv/cdatafile/c.large_gessm.autotvout_gw0.dat"
#define AUTOTB_TVIN_gx0 "../tv/cdatafile/c.large_gessm.autotvin_gx0.dat"
#define AUTOTB_TVOUT_gx0 "../tv/cdatafile/c.large_gessm.autotvout_gx0.dat"
#define AUTOTB_TVIN_gx1 "../tv/cdatafile/c.large_gessm.autotvin_gx1.dat"
#define AUTOTB_TVOUT_gx1 "../tv/cdatafile/c.large_gessm.autotvout_gx1.dat"
#define AUTOTB_TVIN_gx2 "../tv/cdatafile/c.large_gessm.autotvin_gx2.dat"
#define AUTOTB_TVOUT_gx2 "../tv/cdatafile/c.large_gessm.autotvout_gx2.dat"
#define AUTOTB_TVIN_gx3 "../tv/cdatafile/c.large_gessm.autotvin_gx3.dat"
#define AUTOTB_TVOUT_gx3 "../tv/cdatafile/c.large_gessm.autotvout_gx3.dat"
#define AUTOTB_TVIN_gx4 "../tv/cdatafile/c.large_gessm.autotvin_gx4.dat"
#define AUTOTB_TVOUT_gx4 "../tv/cdatafile/c.large_gessm.autotvout_gx4.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_status "../tv/rtldatafile/rtl.large_gessm.autotvout_status.dat"
#define AUTOTB_TVOUT_PC_muladds "../tv/rtldatafile/rtl.large_gessm.autotvout_muladds.dat"
#define AUTOTB_TVOUT_PC_ga0 "../tv/rtldatafile/rtl.large_gessm.autotvout_ga0.dat"
#define AUTOTB_TVOUT_PC_gb0 "../tv/rtldatafile/rtl.large_gessm.autotvout_gb0.dat"
#define AUTOTB_TVOUT_PC_gb1 "../tv/rtldatafile/rtl.large_gessm.autotvout_gb1.dat"
#define AUTOTB_TVOUT_PC_gb2 "../tv/rtldatafile/rtl.large_gessm.autotvout_gb2.dat"
#define AUTOTB_TVOUT_PC_gl0 "../tv/rtldatafile/rtl.large_gessm.autotvout_gl0.dat"
#define AUTOTB_TVOUT_PC_gl1 "../tv/rtldatafile/rtl.large_gessm.autotvout_gl1.dat"
#define AUTOTB_TVOUT_PC_gl2 "../tv/rtldatafile/rtl.large_gessm.autotvout_gl2.dat"
#define AUTOTB_TVOUT_PC_gw0 "../tv/rtldatafile/rtl.large_gessm.autotvout_gw0.dat"
#define AUTOTB_TVOUT_PC_gx0 "../tv/rtldatafile/rtl.large_gessm.autotvout_gx0.dat"
#define AUTOTB_TVOUT_PC_gx1 "../tv/rtldatafile/rtl.large_gessm.autotvout_gx1.dat"
#define AUTOTB_TVOUT_PC_gx2 "../tv/rtldatafile/rtl.large_gessm.autotvout_gx2.dat"
#define AUTOTB_TVOUT_PC_gx3 "../tv/rtldatafile/rtl.large_gessm.autotvout_gx3.dat"
#define AUTOTB_TVOUT_PC_gx4 "../tv/rtldatafile/rtl.large_gessm.autotvout_gx4.dat"


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
void large_gessm_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<4>, void*, hls::sim::Byte<4>, void*, void*);

extern "C"
void apatb_large_gessm_hw(void* __xlx_apatb_param_l_ptr, void* __xlx_apatb_param_l_idx, void* __xlx_apatb_param_l_val, void* __xlx_apatb_param_b_ptr, void* __xlx_apatb_param_b_idx, void* __xlx_apatb_param_b_val, void* __xlx_apatb_param_x_ptr, void* __xlx_apatb_param_x_idx, void* __xlx_apatb_param_x_val_csc, void* __xlx_apatb_param_x_csc_to_csr, void* __xlx_apatb_param_x_val_csr, void* __xlx_apatb_param_active_cols, hls::sim::Byte<4> __xlx_apatb_param_active_count, void* __xlx_apatb_param_work, hls::sim::Byte<4> __xlx_apatb_param_n, void* __xlx_apatb_param_status, void* __xlx_apatb_param_muladds)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_l_ptr;
  static hls::sim::Register port0 {
    .name = "l_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_ptr),
#endif
  };
  port0.param = &__xlx_offset_byte_param_l_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_l_idx;
  static hls::sim::Register port1 {
    .name = "l_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_idx),
#endif
  };
  port1.param = &__xlx_offset_byte_param_l_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_l_val;
  static hls::sim::Register port2 {
    .name = "l_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_val),
#endif
  };
  port2.param = &__xlx_offset_byte_param_l_val;

  hls::sim::Byte<4> __xlx_offset_byte_param_b_ptr;
  static hls::sim::Register port3 {
    .name = "b_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_ptr),
#endif
  };
  port3.param = &__xlx_offset_byte_param_b_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_b_idx;
  static hls::sim::Register port4 {
    .name = "b_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_idx),
#endif
  };
  port4.param = &__xlx_offset_byte_param_b_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_b_val;
  static hls::sim::Register port5 {
    .name = "b_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_val),
#endif
  };
  port5.param = &__xlx_offset_byte_param_b_val;

  hls::sim::Byte<4> __xlx_offset_byte_param_x_ptr;
  static hls::sim::Register port6 {
    .name = "x_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_ptr),
#endif
  };
  port6.param = &__xlx_offset_byte_param_x_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_x_idx;
  static hls::sim::Register port7 {
    .name = "x_idx",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_idx),
#endif
  };
  port7.param = &__xlx_offset_byte_param_x_idx;

  hls::sim::Byte<4> __xlx_offset_byte_param_x_val_csc;
  static hls::sim::Register port8 {
    .name = "x_val_csc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_val_csc),
#endif
  };
  port8.param = &__xlx_offset_byte_param_x_val_csc;

  hls::sim::Byte<4> __xlx_offset_byte_param_x_csc_to_csr;
  static hls::sim::Register port9 {
    .name = "x_csc_to_csr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_csc_to_csr),
#endif
  };
  port9.param = &__xlx_offset_byte_param_x_csc_to_csr;

  hls::sim::Byte<4> __xlx_offset_byte_param_x_val_csr;
  static hls::sim::Register port10 {
    .name = "x_val_csr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_val_csr),
#endif
  };
  port10.param = &__xlx_offset_byte_param_x_val_csr;

  hls::sim::Byte<4> __xlx_offset_byte_param_active_cols;
  static hls::sim::Register port11 {
    .name = "active_cols",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_active_cols),
#endif
  };
  port11.param = &__xlx_offset_byte_param_active_cols;

  static hls::sim::Register port12 {
    .name = "active_count",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_active_count),
#endif
  };
  port12.param = &__xlx_apatb_param_active_count;

  hls::sim::Byte<4> __xlx_offset_byte_param_work;
  static hls::sim::Register port13 {
    .name = "work",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_work),
#endif
  };
  port13.param = &__xlx_offset_byte_param_work;

  static hls::sim::Register port14 {
    .name = "n",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_n),
#endif
  };
  port14.param = &__xlx_apatb_param_n;

  static hls::sim::Register port15 {
    .name = "status",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_status),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_status),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_status),
#endif
  };
  port15.param = __xlx_apatb_param_status;

  static hls::sim::Register port16 {
    .name = "muladds",
    .width = 64,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_muladds),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_muladds),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_muladds),
#endif
  };
  port16.param = __xlx_apatb_param_muladds;

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "ga0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ga0),
#endif
  };
  port17.param = { __xlx_apatb_param_active_cols };
  port17.depth = { 1 };
  port17.offset = {  };
  port17.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gb0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gb0),
#endif
  };
  port18.param = { __xlx_apatb_param_b_ptr };
  port18.depth = { 1 };
  port18.offset = {  };
  port18.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gb1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gb1),
#endif
  };
  port19.param = { __xlx_apatb_param_b_idx };
  port19.depth = { 1 };
  port19.offset = {  };
  port19.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gb2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gb2),
#endif
  };
  port20.param = { __xlx_apatb_param_b_val };
  port20.depth = { 1 };
  port20.offset = {  };
  port20.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gl0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gl0),
#endif
  };
  port21.param = { __xlx_apatb_param_l_ptr };
  port21.depth = { 1 };
  port21.offset = {  };
  port21.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gl1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gl1),
#endif
  };
  port22.param = { __xlx_apatb_param_l_idx };
  port22.depth = { 1 };
  port22.offset = {  };
  port22.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gl2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gl2),
#endif
  };
  port23.param = { __xlx_apatb_param_l_val };
  port23.depth = { 1 };
  port23.offset = {  };
  port23.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gw0" },
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gw0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gw0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gw0),
#endif
  };
  port24.param = { __xlx_apatb_param_work };
  port24.depth = { 1 };
  port24.offset = {  };
  port24.hasWrite = { true };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gx0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gx0),
#endif
  };
  port25.param = { __xlx_apatb_param_x_ptr };
  port25.depth = { 1 };
  port25.offset = {  };
  port25.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port26 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gx1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gx1),
#endif
  };
  port26.param = { __xlx_apatb_param_x_idx };
  port26.depth = { 1 };
  port26.offset = {  };
  port26.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port27 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gx2" },
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gx2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gx2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gx2),
#endif
  };
  port27.param = { __xlx_apatb_param_x_val_csc };
  port27.depth = { 1 };
  port27.offset = {  };
  port27.hasWrite = { true };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port28 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gx3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gx3),
#endif
  };
  port28.param = { __xlx_apatb_param_x_csc_to_csr };
  port28.depth = { 1 };
  port28.offset = {  };
  port28.hasWrite = { false };

  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gx4" },
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gx4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gx4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gx4),
#endif
  };
  port29.param = { __xlx_apatb_param_x_val_csr };
  port29.depth = { 1 };
  port29.offset = {  };
  port29.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port15);
    check(port16);
    check(port24);
    check(port27);
    check(port29);
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
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
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
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    CodeState = CALL_C_DUT;
    large_gessm_hw_stub_wrapper(__xlx_apatb_param_l_ptr, __xlx_apatb_param_l_idx, __xlx_apatb_param_l_val, __xlx_apatb_param_b_ptr, __xlx_apatb_param_b_idx, __xlx_apatb_param_b_val, __xlx_apatb_param_x_ptr, __xlx_apatb_param_x_idx, __xlx_apatb_param_x_val_csc, __xlx_apatb_param_x_csc_to_csr, __xlx_apatb_param_x_val_csr, __xlx_apatb_param_active_cols, __xlx_apatb_param_active_count, __xlx_apatb_param_work, __xlx_apatb_param_n, __xlx_apatb_param_status, __xlx_apatb_param_muladds);
    CodeState = DUMP_OUTPUTS;
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port16, port16.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port29, port29.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}