#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
#include <iostream>
#include <map>
#include <set>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_directio.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_operation "../tv/cdatafile/c.sparse_lu_shared.autotvin_operation.dat"
#define AUTOTB_TVOUT_operation "../tv/cdatafile/c.sparse_lu_shared.autotvout_operation.dat"
#define AUTOTB_TVIN_A_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_rcsr.dat"
#define AUTOTB_TVOUT_A_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvout_A_rcsr.dat"
#define AUTOTB_TVIN_A_cid "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_cid.dat"
#define AUTOTB_TVOUT_A_cid "../tv/cdatafile/c.sparse_lu_shared.autotvout_A_cid.dat"
#define AUTOTB_TVIN_A_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_val_r.dat"
#define AUTOTB_TVOUT_A_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvout_A_val_r.dat"
#define AUTOTB_TVIN_L_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_rcsr.dat"
#define AUTOTB_TVOUT_L_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvout_L_rcsr.dat"
#define AUTOTB_TVIN_L_cid "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_cid.dat"
#define AUTOTB_TVOUT_L_cid "../tv/cdatafile/c.sparse_lu_shared.autotvout_L_cid.dat"
#define AUTOTB_TVIN_L_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_val_r.dat"
#define AUTOTB_TVOUT_L_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvout_L_val_r.dat"
#define AUTOTB_TVIN_U_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_rcsr.dat"
#define AUTOTB_TVOUT_U_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvout_U_rcsr.dat"
#define AUTOTB_TVIN_U_cid "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_cid.dat"
#define AUTOTB_TVOUT_U_cid "../tv/cdatafile/c.sparse_lu_shared.autotvout_U_cid.dat"
#define AUTOTB_TVIN_U_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_val_r.dat"
#define AUTOTB_TVOUT_U_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvout_U_val_r.dat"
#define AUTOTB_TVIN_X_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_rcsr.dat"
#define AUTOTB_TVOUT_X_rcsr "../tv/cdatafile/c.sparse_lu_shared.autotvout_X_rcsr.dat"
#define AUTOTB_TVIN_X_cid "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_cid.dat"
#define AUTOTB_TVOUT_X_cid "../tv/cdatafile/c.sparse_lu_shared.autotvout_X_cid.dat"
#define AUTOTB_TVIN_X_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_val_r.dat"
#define AUTOTB_TVOUT_X_val_r "../tv/cdatafile/c.sparse_lu_shared.autotvout_X_val_r.dat"
#define AUTOTB_TVIN_n "../tv/cdatafile/c.sparse_lu_shared.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.sparse_lu_shared.autotvout_n.dat"
#define AUTOTB_TVIN_a_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_nnz.dat"
#define AUTOTB_TVOUT_a_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvout_a_nnz.dat"
#define AUTOTB_TVIN_l_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_nnz.dat"
#define AUTOTB_TVOUT_l_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvout_l_nnz.dat"
#define AUTOTB_TVIN_u_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_nnz.dat"
#define AUTOTB_TVOUT_u_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvout_u_nnz.dat"
#define AUTOTB_TVIN_x_rows "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_rows.dat"
#define AUTOTB_TVOUT_x_rows "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_rows.dat"
#define AUTOTB_TVIN_x_cols "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_cols.dat"
#define AUTOTB_TVOUT_x_cols "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_cols.dat"
#define AUTOTB_TVIN_x_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_nnz.dat"
#define AUTOTB_TVOUT_x_nnz "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_nnz.dat"
#define AUTOTB_TVIN_pivot_eps "../tv/cdatafile/c.sparse_lu_shared.autotvin_pivot_eps.dat"
#define AUTOTB_TVOUT_pivot_eps "../tv/cdatafile/c.sparse_lu_shared.autotvout_pivot_eps.dat"
#define AUTOTB_TVIN_status "../tv/cdatafile/c.sparse_lu_shared.autotvin_status.dat"
#define AUTOTB_TVOUT_status "../tv/cdatafile/c.sparse_lu_shared.autotvout_status.dat"
#define AUTOTB_TVIN_failed_row "../tv/cdatafile/c.sparse_lu_shared.autotvin_failed_row.dat"
#define AUTOTB_TVOUT_failed_row "../tv/cdatafile/c.sparse_lu_shared.autotvout_failed_row.dat"
#define AUTOTB_TVIN_a_col "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_col.dat"
#define AUTOTB_TVOUT_a_col "../tv/cdatafile/c.sparse_lu_shared.autotvout_a_col.dat"
#define AUTOTB_TVIN_a_row "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_row.dat"
#define AUTOTB_TVOUT_a_row "../tv/cdatafile/c.sparse_lu_shared.autotvout_a_row.dat"
#define AUTOTB_TVIN_a_val "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_val.dat"
#define AUTOTB_TVOUT_a_val "../tv/cdatafile/c.sparse_lu_shared.autotvout_a_val.dat"
#define AUTOTB_TVIN_l_col "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_col.dat"
#define AUTOTB_TVOUT_l_col "../tv/cdatafile/c.sparse_lu_shared.autotvout_l_col.dat"
#define AUTOTB_TVIN_l_row "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_row.dat"
#define AUTOTB_TVOUT_l_row "../tv/cdatafile/c.sparse_lu_shared.autotvout_l_row.dat"
#define AUTOTB_TVIN_l_val "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_val.dat"
#define AUTOTB_TVOUT_l_val "../tv/cdatafile/c.sparse_lu_shared.autotvout_l_val.dat"
#define AUTOTB_TVIN_u_col "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_col.dat"
#define AUTOTB_TVOUT_u_col "../tv/cdatafile/c.sparse_lu_shared.autotvout_u_col.dat"
#define AUTOTB_TVIN_u_row "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_row.dat"
#define AUTOTB_TVOUT_u_row "../tv/cdatafile/c.sparse_lu_shared.autotvout_u_row.dat"
#define AUTOTB_TVIN_u_val "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_val.dat"
#define AUTOTB_TVOUT_u_val "../tv/cdatafile/c.sparse_lu_shared.autotvout_u_val.dat"
#define AUTOTB_TVIN_x_col "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_col.dat"
#define AUTOTB_TVOUT_x_col "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_col.dat"
#define AUTOTB_TVIN_x_row "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_row.dat"
#define AUTOTB_TVOUT_x_row "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_row.dat"
#define AUTOTB_TVIN_x_val "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_val.dat"
#define AUTOTB_TVOUT_x_val "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_val.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_status "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_status.dat"
#define AUTOTB_TVOUT_PC_failed_row "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_failed_row.dat"
#define AUTOTB_TVOUT_PC_a_col "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_a_col.dat"
#define AUTOTB_TVOUT_PC_a_row "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_a_row.dat"
#define AUTOTB_TVOUT_PC_a_val "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_a_val.dat"
#define AUTOTB_TVOUT_PC_l_col "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_l_col.dat"
#define AUTOTB_TVOUT_PC_l_row "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_l_row.dat"
#define AUTOTB_TVOUT_PC_l_val "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_l_val.dat"
#define AUTOTB_TVOUT_PC_u_col "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_u_col.dat"
#define AUTOTB_TVOUT_PC_u_row "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_u_row.dat"
#define AUTOTB_TVOUT_PC_u_val "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_u_val.dat"
#define AUTOTB_TVOUT_PC_x_col "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_x_col.dat"
#define AUTOTB_TVOUT_PC_x_row "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_x_row.dat"
#define AUTOTB_TVOUT_PC_x_val "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_x_val.dat"


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


static std::vector<unsigned> autorestart_seq;
extern "C" {
  void __hls_sim_static_autorestart_seq_push(int value);
}

void __hls_sim_static_autorestart_seq_push(int value) {
  autorestart_seq.push_back(value);
}
namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

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

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
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

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      long curPos = ftell(fp);
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      // curPos == 0 -> the file is only opened but not read
      if (curPos != 0 && std::memcmp(buf, bmark, 8) != 0) {
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

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
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

    void fmt(std::vector<size_t> &vec)
    {
      ss << "{";
      for (auto &x : vec) {
        ss << " " << x;
      }
      ss << " }";
    }

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

    void formatTransDepth()
    {
      ss << "set trans_depth {\n";
      for (auto &p : transDepth) {
        ss << "  {" << p.first << " ";
        fmt(p.second);
        ss << " " << bundleNameFor[p.first] << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatContainsVLA()
    {
      ss << "set containsVLA " << containsVLA << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }
    
    void formatAutorestartSeq()
    {
      if (!autorestart_seq.empty()) {
        ss << "set Autorestart_seq {\n";
        for (const auto &val : autorestart_seq) {
          ss << "  " << val << "\n";
        }
        ss << "}\n";
      }
    }

    void close()
    {
      formatDepth();
      formatTransDepth();
      formatContainsVLA();
      formatTransNum();
      formatAutorestartSeq();
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
    typedef const std::string PortName;
    typedef const char *BundleName;
    std::map<PortName, std::vector<size_t>> transDepth;
    std::map<PortName, BundleName> bundleNameFor;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    bool containsVLA;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    void append(const char* portName, size_t dep, const char* bundleName)
    {
      std::lock_guard<std::mutex> guard(mut);
      transDepth[portName].push_back(dep);
      bundleNameFor[portName] = bundleName;
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
    std::vector<std::function<void()>> delayed;

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
      for (auto &f : delayed) {
        f();
      }
      delayed.clear();
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct DirectIO {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::directio<E>* param;
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
      while (param->valid()) {
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

    ~DirectIO()
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
    std::vector<const char*> mname;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;
    std::vector<size_t> nbytes;
    std::vector<size_t> max_nbytes;

    size_t depth()
    {
      if (hbm) {
        return divide_ceil(nbytes[0], asize);
      }
      else {
        size_t depth = 0;
        for (size_t n : nbytes) {
          depth += divide_ceil(n, asize);
        }
        return depth;
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.clear();
        tcl.portHBM.clear();
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        size_t depthHBM = divide_ceil(nbytes[0], asize);
        tcl.append(tcl.nameHBM.c_str(), depthHBM, tcl.nameHBM.c_str());
        if (depthHBM > tcl.depthHBM) {
          tcl.depthHBM = depthHBM;
        }
      } else {
        tcl.set(name[0], depth());
        for (size_t i = 0; i < mname.size(); ++i) {
          tcl.append(mname[i], divide_ceil(nbytes[i], asize), name[0]);
        }
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

  struct A2Stream {
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
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
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

  template<typename E>
  void check(DirectIO<E> &port)
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

  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
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
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }

  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
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
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
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

  void delay_dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    port.delayed.push_back(std::bind(dump, std::ref(port), writer, AESL_transaction));
  }

  template<typename E>
  void dump(DirectIO<E> &port, size_t AESL_transaction)
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

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }

    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    if (port.hbm) {
      writer->from((unsigned char*)port.param[0], wbytes, port.asize,
                   port.nbytes[0], 0);
    }
    else {
      for (size_t i = 0; i < port.param.size(); ++i) {
        writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                     port.nbytes[i], 0);
      }
    }
  }

  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    if (port.nbytes == 0) {
      error_on_depth_unspecified(port.name);
    }
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
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
void sparse_lu_shared_hw_stub_wrapper(hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, float, void*, void*);

extern "C"
void apatb_sparse_lu_shared_hw(hls::sim::Byte<4> __xlx_apatb_param_operation, void* __xlx_apatb_param_A_rcsr, void* __xlx_apatb_param_A_cid, void* __xlx_apatb_param_A_val_r, void* __xlx_apatb_param_L_rcsr, void* __xlx_apatb_param_L_cid, void* __xlx_apatb_param_L_val_r, void* __xlx_apatb_param_U_rcsr, void* __xlx_apatb_param_U_cid, void* __xlx_apatb_param_U_val_r, void* __xlx_apatb_param_X_rcsr, void* __xlx_apatb_param_X_cid, void* __xlx_apatb_param_X_val_r, hls::sim::Byte<4> __xlx_apatb_param_n, hls::sim::Byte<4> __xlx_apatb_param_a_nnz, hls::sim::Byte<4> __xlx_apatb_param_l_nnz, hls::sim::Byte<4> __xlx_apatb_param_u_nnz, hls::sim::Byte<4> __xlx_apatb_param_x_rows, hls::sim::Byte<4> __xlx_apatb_param_x_cols, hls::sim::Byte<4> __xlx_apatb_param_x_nnz, float __xlx_apatb_param_pivot_eps, void* __xlx_apatb_param_status, void* __xlx_apatb_param_failed_row)
{
  static hls::sim::Register port0 {
    .name = "operation",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_operation),
#endif
  };
  port0.param = &__xlx_apatb_param_operation;

  static hls::sim::Byte<4> __xlx_offset_byte_param_A_rcsr;
  static hls::sim::Register port1 {
    .name = "A_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_rcsr),
#endif
  };
  port1.param = &__xlx_offset_byte_param_A_rcsr;

  static hls::sim::Byte<4> __xlx_offset_byte_param_A_cid;
  static hls::sim::Register port2 {
    .name = "A_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_cid),
#endif
  };
  port2.param = &__xlx_offset_byte_param_A_cid;

  static hls::sim::Byte<4> __xlx_offset_byte_param_A_val_r;
  static hls::sim::Register port3 {
    .name = "A_val_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_val_r),
#endif
  };
  port3.param = &__xlx_offset_byte_param_A_val_r;

  static hls::sim::Byte<4> __xlx_offset_byte_param_L_rcsr;
  static hls::sim::Register port4 {
    .name = "L_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_L_rcsr),
#endif
  };
  port4.param = &__xlx_offset_byte_param_L_rcsr;

  static hls::sim::Byte<4> __xlx_offset_byte_param_L_cid;
  static hls::sim::Register port5 {
    .name = "L_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_L_cid),
#endif
  };
  port5.param = &__xlx_offset_byte_param_L_cid;

  static hls::sim::Byte<4> __xlx_offset_byte_param_L_val_r;
  static hls::sim::Register port6 {
    .name = "L_val_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_L_val_r),
#endif
  };
  port6.param = &__xlx_offset_byte_param_L_val_r;

  static hls::sim::Byte<4> __xlx_offset_byte_param_U_rcsr;
  static hls::sim::Register port7 {
    .name = "U_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_U_rcsr),
#endif
  };
  port7.param = &__xlx_offset_byte_param_U_rcsr;

  static hls::sim::Byte<4> __xlx_offset_byte_param_U_cid;
  static hls::sim::Register port8 {
    .name = "U_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_U_cid),
#endif
  };
  port8.param = &__xlx_offset_byte_param_U_cid;

  static hls::sim::Byte<4> __xlx_offset_byte_param_U_val_r;
  static hls::sim::Register port9 {
    .name = "U_val_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_U_val_r),
#endif
  };
  port9.param = &__xlx_offset_byte_param_U_val_r;

  static hls::sim::Byte<4> __xlx_offset_byte_param_X_rcsr;
  static hls::sim::Register port10 {
    .name = "X_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_X_rcsr),
#endif
  };
  port10.param = &__xlx_offset_byte_param_X_rcsr;

  static hls::sim::Byte<4> __xlx_offset_byte_param_X_cid;
  static hls::sim::Register port11 {
    .name = "X_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_X_cid),
#endif
  };
  port11.param = &__xlx_offset_byte_param_X_cid;

  static hls::sim::Byte<4> __xlx_offset_byte_param_X_val_r;
  static hls::sim::Register port12 {
    .name = "X_val_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_X_val_r),
#endif
  };
  port12.param = &__xlx_offset_byte_param_X_val_r;

  static hls::sim::Register port13 {
    .name = "n",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_n),
#endif
  };
  port13.param = &__xlx_apatb_param_n;

  static hls::sim::Register port14 {
    .name = "a_nnz",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_nnz),
#endif
  };
  port14.param = &__xlx_apatb_param_a_nnz;

  static hls::sim::Register port15 {
    .name = "l_nnz",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_nnz),
#endif
  };
  port15.param = &__xlx_apatb_param_l_nnz;

  static hls::sim::Register port16 {
    .name = "u_nnz",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_nnz),
#endif
  };
  port16.param = &__xlx_apatb_param_u_nnz;

  static hls::sim::Register port17 {
    .name = "x_rows",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_rows),
#endif
  };
  port17.param = &__xlx_apatb_param_x_rows;

  static hls::sim::Register port18 {
    .name = "x_cols",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_cols),
#endif
  };
  port18.param = &__xlx_apatb_param_x_cols;

  static hls::sim::Register port19 {
    .name = "x_nnz",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_nnz),
#endif
  };
  port19.param = &__xlx_apatb_param_x_nnz;

  static hls::sim::Register port20 {
    .name = "pivot_eps",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_pivot_eps),
#endif
  };
  port20.param = &__xlx_apatb_param_pivot_eps;

  static hls::sim::Register port21 {
    .name = "status",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_status),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_status),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_status),
#endif
  };
  port21.param = __xlx_apatb_param_status;

  static hls::sim::Register port22 {
    .name = "failed_row",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_failed_row),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_failed_row),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_failed_row),
#endif
  };
  port22.param = __xlx_apatb_param_failed_row;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "a_col" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_a_col),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_col),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port23.param = { __xlx_apatb_param_A_cid };
  port23.mname = { "A_cid" };
  port23.nbytes = { 4096 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "a_row" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_a_row),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_row),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port24.param = { __xlx_apatb_param_A_rcsr };
  port24.mname = { "A_rcsr" };
  port24.nbytes = { 260 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port25 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "a_val" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_a_val),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_val),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port25.param = { __xlx_apatb_param_A_val_r };
  port25.mname = { "A_val_r" };
  port25.nbytes = { 4096 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port26 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port26 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "l_col" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_l_col),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_col),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port26.param = { __xlx_apatb_param_L_cid };
  port26.mname = { "L_cid" };
  port26.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port27 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port27 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "l_row" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_l_row),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_row),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port27.param = { __xlx_apatb_param_L_rcsr };
  port27.mname = { "L_rcsr" };
  port27.nbytes = { 260 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port28 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port28 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "l_val" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_l_val),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_l_val),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_l_val),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_l_val),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_l_val),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_l_val),
#endif
#endif
    .hasWrite = { true },
    .max_nbytes = { 0 },
  };
  port28.param = { __xlx_apatb_param_L_val_r };
  port28.mname = { "L_val_r" };
  port28.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port29 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "u_col" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_u_col),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_col),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port29.param = { __xlx_apatb_param_U_cid };
  port29.mname = { "U_cid" };
  port29.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port30 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port30 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "u_row" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_u_row),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_row),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port30.param = { __xlx_apatb_param_U_rcsr };
  port30.mname = { "U_rcsr" };
  port30.nbytes = { 260 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port31 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port31 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "u_val" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_u_val),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_u_val),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_u_val),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_u_val),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_u_val),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_u_val),
#endif
#endif
    .hasWrite = { true },
    .max_nbytes = { 0 },
  };
  port31.param = { __xlx_apatb_param_U_val_r };
  port31.mname = { "U_val_r" };
  port31.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port32 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port32 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "x_col" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_x_col),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_col),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port32.param = { __xlx_apatb_param_X_cid };
  port32.mname = { "X_cid" };
  port32.nbytes = { 16384 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port33 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port33 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "x_row" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_x_row),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_row),
#endif
#endif
    .hasWrite = { false },
    .max_nbytes = { 0 },
  };
  port33.param = { __xlx_apatb_param_X_rcsr };
  port33.mname = { "X_rcsr" };
  port33.nbytes = { 260 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port34 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port34 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "x_val" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_x_val),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_x_val),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_x_val),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_x_val),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_x_val),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x_val),
#endif
#endif
    .hasWrite = { true },
    .max_nbytes = { 0 },
  };
  port34.param = { __xlx_apatb_param_X_val_r };
  port34.mname = { "X_val_r" };
  port34.nbytes = { 16384 };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port21);
    check(port22);
    check(port28);
    check(port31);
    check(port34);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    tcl.containsVLA = 0;
    CodeState = DUMP_INPUTS;
    delay_dump(port1, port1.iwriter, tcl.AESL_transaction);
    delay_dump(port2, port2.iwriter, tcl.AESL_transaction);
    delay_dump(port3, port3.iwriter, tcl.AESL_transaction);
    delay_dump(port4, port4.iwriter, tcl.AESL_transaction);
    delay_dump(port5, port5.iwriter, tcl.AESL_transaction);
    delay_dump(port6, port6.iwriter, tcl.AESL_transaction);
    delay_dump(port7, port7.iwriter, tcl.AESL_transaction);
    delay_dump(port8, port8.iwriter, tcl.AESL_transaction);
    delay_dump(port9, port9.iwriter, tcl.AESL_transaction);
    delay_dump(port10, port10.iwriter, tcl.AESL_transaction);
    delay_dump(port11, port11.iwriter, tcl.AESL_transaction);
    delay_dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port0, port0.iwriter, tcl.AESL_transaction);
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
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
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
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    CodeState = CALL_C_DUT;
    sparse_lu_shared_hw_stub_wrapper(__xlx_apatb_param_operation, __xlx_apatb_param_A_rcsr, __xlx_apatb_param_A_cid, __xlx_apatb_param_A_val_r, __xlx_apatb_param_L_rcsr, __xlx_apatb_param_L_cid, __xlx_apatb_param_L_val_r, __xlx_apatb_param_U_rcsr, __xlx_apatb_param_U_cid, __xlx_apatb_param_U_val_r, __xlx_apatb_param_X_rcsr, __xlx_apatb_param_X_cid, __xlx_apatb_param_X_val_r, __xlx_apatb_param_n, __xlx_apatb_param_a_nnz, __xlx_apatb_param_l_nnz, __xlx_apatb_param_u_nnz, __xlx_apatb_param_x_rows, __xlx_apatb_param_x_cols, __xlx_apatb_param_x_nnz, __xlx_apatb_param_pivot_eps, __xlx_apatb_param_status, __xlx_apatb_param_failed_row);
    CodeState = DUMP_OUTPUTS;
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port31, port31.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}