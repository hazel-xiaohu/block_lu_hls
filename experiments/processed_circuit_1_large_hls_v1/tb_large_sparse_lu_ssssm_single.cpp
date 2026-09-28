#include "large_sparse_lu.h"
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
using U=lslu_id_t; using F=lslu_val_t;
template<class T>std::vector<T>load(const std::string&p){std::ifstream f(p,std::ios::binary|std::ios::ate);if(!f)throw std::runtime_error(p);auto n=f.tellg();f.seekg(0);std::vector<T>v((size_t)n/sizeof(T));f.read((char*)v.data(),n);return v;}
struct S{std::vector<U>p,i;std::vector<F>v;};S sp(const std::string&r,const std::string&n){return{load<U>(r+n+"_ptr.bin"),load<U>(r+n+"_idx.bin"),load<F>(r+n+"_val.bin")};}
int main(int ac,char**av){const std::string r=ac>1?av[1]:"prepared/";auto A=sp(r,"A22"),L=sp(r,"L21"),Uu=sp(r,"U12_csr"),Sx=sp(r,"Schur");std::vector<F>sv(Sx.v.size()),w(A.p.size()-1);std::vector<U>m(A.p.size()-1);U st=99;uint64_t ma=0;large_ssssm(A.p.data(),A.i.data(),A.v.data(),L.p.data(),L.i.data(),L.v.data(),Uu.p.data(),Uu.i.data(),Uu.v.data(),Sx.p.data(),Sx.i.data(),sv.data(),w.data(),m.data(),A.p.size()-1,&st,&ma);std::cout<<"ssssm status="<<st<<" n="<<A.p.size()-1<<" muladds="<<ma<<"\n";return st?2:0;}
