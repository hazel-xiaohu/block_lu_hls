#include "large_sparse_lu.h"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>
using U=lslu_id_t; using F=lslu_val_t;

template<class T> std::vector<T> load(const std::string& p){
  std::ifstream f(p,std::ios::binary|std::ios::ate); if(!f) throw std::runtime_error(p);
  auto n=f.tellg(); f.seekg(0); std::vector<T> v((size_t)n/sizeof(T));
  f.read(reinterpret_cast<char*>(v.data()),n); return v;
}
struct S { std::vector<U> p,i; std::vector<F> v; };
S sp(const std::string&r,const std::string&n){return {load<U>(r+n+"_ptr.bin"),load<U>(r+n+"_idx.bin"),load<F>(r+n+"_val.bin")};}
std::vector<U> diag(const S&s){std::vector<U>d(s.p.size()-1);for(U r=0;r<d.size();++r){d[r]=UINT32_MAX;for(U p=s.p[r];p<s.p[r+1];++p)if(s.i[p]==r)d[r]=p;if(d[r]==UINT32_MAX)throw std::runtime_error("diag");}return d;}
std::vector<U> active(const S&s){std::vector<U>a;for(U x=0;x+1<s.p.size();++x)if(s.p[x]!=s.p[x+1])a.push_back(x);return a;}
std::vector<U> csc2csr(const S&c,const S&r){std::unordered_map<uint64_t,U> m;m.reserve(r.i.size()*2);for(U i=0;i+1<r.p.size();++i)for(U p=r.p[i];p<r.p[i+1];++p)m[(uint64_t(i)<<32)|r.i[p]]=p;std::vector<U> z(c.i.size());for(U j=0;j+1<c.p.size();++j)for(U p=c.p[j];p<c.p[j+1];++p)z[p]=m.at((uint64_t(c.i[p])<<32)|j);return z;}
void err(const char*n,const std::vector<F>&x,const std::vector<F>&r){double se=0,sr=0,mx=0;size_t bad=0;for(size_t i=0;i<x.size();++i){double d=double(x[i])-r[i];se+=d*d;sr+=double(r[i])*r[i];mx=std::max(mx,std::abs(d)/(std::abs(double(r[i]))+1e-20));if(!std::isfinite(x[i]))++bad;}std::cout<<n<<" rel_l2="<<sqrt(se/sr)<<" max_rel="<<mx<<" nonfinite="<<bad<<"\n";}
template<class C> double timed(C c){auto a=std::chrono::steady_clock::now();c();return std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-a).count();}
int main(int ac,char**av){
 const std::string r=ac>1?av[1]:"prepared/"; const U n=2624,n1=1312; U st; uint64_t ma,dv; std::vector<F>w(n);std::vector<U>mk(n);
 auto A=sp(r,"whole_A"),L=sp(r,"whole_L"),Uu=sp(r,"whole_U");auto Ud=diag(Uu);std::vector<F>lv(L.v.size()),uv(Uu.v.size());
 double tw=timed([&]{large_getrf(A.p.data(),A.i.data(),A.v.data(),L.p.data(),L.i.data(),lv.data(),Uu.p.data(),Uu.i.data(),uv.data(),Ud.data(),w.data(),mk.data(),n,1e-30f,&st,&ma,&dv);});
 std::cout<<"whole status="<<st<<" ms="<<tw<<" muladds="<<ma<<" divs="<<dv<<"\n";err("whole_L",lv,L.v);err("whole_U",uv,Uu.v);
 auto A11=sp(r,"A11"),L11=sp(r,"L11"),U11=sp(r,"U11"),U11c=sp(r,"U11_csc");auto d11=diag(U11),dc11=diag(U11c),map11=csc2csr(U11c,U11);std::vector<F>l11(L11.v.size()),u11(U11.v.size());
 double t1=timed([&]{large_getrf(A11.p.data(),A11.i.data(),A11.v.data(),L11.p.data(),L11.i.data(),l11.data(),U11.p.data(),U11.i.data(),u11.data(),d11.data(),w.data(),mk.data(),n1,1e-30f,&st,&ma,&dv);});std::cout<<"getrf1 status="<<st<<" ms="<<t1<<" muladds="<<ma<<" divs="<<dv<<"\n";err("L11",l11,L11.v);err("U11",u11,U11.v);
 auto A12=sp(r,"A12"),U12=sp(r,"U12"),U12r=sp(r,"U12_csr");auto actc=active(A12),map12=csc2csr(U12,U12r);std::vector<F>u12c(U12.v.size()),u12r(U12r.v.size());
 double tg=timed([&]{large_gessm(L11.p.data(),L11.i.data(),l11.data(),A12.p.data(),A12.i.data(),A12.v.data(),U12.p.data(),U12.i.data(),u12c.data(),map12.data(),u12r.data(),actc.data(),actc.size(),w.data(),n1,&st,&ma);});std::cout<<"gessm status="<<st<<" ms="<<tg<<" active="<<actc.size()<<" muladds="<<ma<<"\n";err("U12",u12c,U12.v);
 auto A21=sp(r,"A21"),L21=sp(r,"L21");auto actr=active(A21);std::vector<F>l21(L21.v.size());
 double tt=timed([&]{large_tstrf(U11c.p.data(),U11c.i.data(),u11.data(),map11.data(),dc11.data(),A21.p.data(),A21.i.data(),A21.v.data(),L21.p.data(),L21.i.data(),l21.data(),actr.data(),actr.size(),w.data(),n1,1e-30f,&st,&ma,&dv);});std::cout<<"tstrf status="<<st<<" ms="<<tt<<" active="<<actr.size()<<" muladds="<<ma<<" divs="<<dv<<"\n";err("L21",l21,L21.v);
 auto A22=sp(r,"A22"),Sch=sp(r,"Schur");std::vector<F>sch(Sch.v.size());
 double ts=timed([&]{large_ssssm(A22.p.data(),A22.i.data(),A22.v.data(),L21.p.data(),L21.i.data(),l21.data(),U12r.p.data(),U12r.i.data(),u12r.data(),Sch.p.data(),Sch.i.data(),sch.data(),w.data(),mk.data(),n1,&st,&ma);});std::cout<<"ssssm status="<<st<<" ms="<<ts<<" muladds="<<ma<<"\n";err("Schur",sch,Sch.v);
 auto L22=sp(r,"L22"),U22=sp(r,"U22");auto d22=diag(U22);std::vector<F>l22(L22.v.size()),u22(U22.v.size());
 double t2=timed([&]{large_getrf(Sch.p.data(),Sch.i.data(),sch.data(),L22.p.data(),L22.i.data(),l22.data(),U22.p.data(),U22.i.data(),u22.data(),d22.data(),w.data(),mk.data(),n1,1e-30f,&st,&ma,&dv);});std::cout<<"getrf2 status="<<st<<" ms="<<t2<<" muladds="<<ma<<" divs="<<dv<<"\n";err("L22",l22,L22.v);err("U22",u22,U22.v);
 std::cout<<"SUMMARY whole_ms="<<tw<<" blocked_ms="<<(t1+tg+tt+ts+t2)<<" ratio_blocked_over_whole="<<(t1+tg+tt+ts+t2)/tw<<"\n";return st?2:0;
}
