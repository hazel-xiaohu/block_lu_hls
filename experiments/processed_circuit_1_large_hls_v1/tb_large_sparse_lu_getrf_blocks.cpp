#include "large_sparse_lu.h"
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using U=lslu_id_t; using F=lslu_val_t;
template<class T> std::vector<T> load(const std::string&p){std::ifstream f(p,std::ios::binary|std::ios::ate);if(!f)throw std::runtime_error(p);auto n=f.tellg();f.seekg(0);std::vector<T>v((size_t)n/sizeof(T));f.read((char*)v.data(),n);return v;}
struct S{std::vector<U>p,i;std::vector<F>v;}; S sp(const std::string&r,const std::string&n){return{load<U>(r+n+"_ptr.bin"),load<U>(r+n+"_idx.bin"),load<F>(r+n+"_val.bin")};}
std::vector<U>diag(const S&s){std::vector<U>d(s.p.size()-1);for(U r=0;r<d.size();++r){d[r]=UINT32_MAX;for(U p=s.p[r];p<s.p[r+1];++p)if(s.i[p]==r)d[r]=p;if(d[r]==UINT32_MAX)throw std::runtime_error("diag");}return d;}
int main(int ac,char**av){const std::string r=ac>1?av[1]:"prepared/";U st;uint64_t ma,dv;
 auto A=sp(r,"A11"),L=sp(r,"L11"),Uu=sp(r,"U11");auto d=diag(Uu);std::vector<F>lv(L.v.size()),uv(Uu.v.size()),w(A.p.size()-1);std::vector<U>m(A.p.size()-1);
 large_getrf(A.p.data(),A.i.data(),A.v.data(),L.p.data(),L.i.data(),lv.data(),Uu.p.data(),Uu.i.data(),uv.data(),d.data(),w.data(),m.data(),A.p.size()-1,1e-30f,&st,&ma,&dv);std::cout<<"getrf_A11 status="<<st<<" n="<<A.p.size()-1<<" muladds="<<ma<<" divs="<<dv<<"\n";
 auto Sx=sp(r,"Schur"),L2=sp(r,"L22"),U2=sp(r,"U22");auto d2=diag(U2);std::vector<F>l2(L2.v.size()),u2(U2.v.size()),w2(Sx.p.size()-1);std::vector<U>m2(Sx.p.size()-1);
 large_getrf(Sx.p.data(),Sx.i.data(),Sx.v.data(),L2.p.data(),L2.i.data(),l2.data(),U2.p.data(),U2.i.data(),u2.data(),d2.data(),w2.data(),m2.data(),Sx.p.size()-1,1e-30f,&st,&ma,&dv);std::cout<<"getrf_Schur status="<<st<<" n="<<Sx.p.size()-1<<" muladds="<<ma<<" divs="<<dv<<"\n";return st?2:0;}
