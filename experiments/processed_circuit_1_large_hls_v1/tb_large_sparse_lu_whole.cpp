#include "large_sparse_lu.h"
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using U=lslu_id_t; using F=lslu_val_t;
template<class T> std::vector<T> load(const std::string& p){ std::ifstream f(p,std::ios::binary|std::ios::ate); if(!f) throw std::runtime_error(p); auto n=f.tellg(); f.seekg(0); std::vector<T> v((size_t)n/sizeof(T)); f.read(reinterpret_cast<char*>(v.data()),n); return v; }
struct S { std::vector<U> p,i; std::vector<F> v; };
S sp(const std::string&r,const std::string&n){return {load<U>(r+n+"_ptr.bin"),load<U>(r+n+"_idx.bin"),load<F>(r+n+"_val.bin")};}
std::vector<U> diag(const S&s){std::vector<U>d(s.p.size()-1);for(U r=0;r<d.size();++r){d[r]=UINT32_MAX;for(U p=s.p[r];p<s.p[r+1];++p)if(s.i[p]==r)d[r]=p;if(d[r]==UINT32_MAX)throw std::runtime_error("diag");}return d;}
int main(int ac,char**av){
  const std::string r=ac>1?av[1]:"prepared/"; auto A=sp(r,"whole_A"),L=sp(r,"whole_L"),Uu=sp(r,"whole_U"); auto Ud=diag(Uu);
  std::vector<F> lv(L.v.size()),uv(Uu.v.size()),work(A.p.size()-1); std::vector<U> mark(A.p.size()-1); U st=99; uint64_t ma=0,dv=0;
  large_getrf(A.p.data(),A.i.data(),A.v.data(),L.p.data(),L.i.data(),lv.data(),Uu.p.data(),Uu.i.data(),uv.data(),Ud.data(),work.data(),mark.data(),A.p.size()-1,1e-30f,&st,&ma,&dv);
  std::cout<<"whole_getrf status="<<st<<" n="<<A.p.size()-1<<" nnzA="<<A.i.size()<<" nnzL="<<L.i.size()<<" nnzU="<<Uu.i.size()<<" muladds="<<ma<<" divs="<<dv<<"\n";
  return st?2:0;
}
