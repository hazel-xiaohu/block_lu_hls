#!/usr/bin/env python3
"""Convert a Matrix Market matrix plus CPU symbolic preparation to BLU JSON.

The existing experiments/processed_circuit_1_large_hls_v1/prepare.py performs
natural-order CPU preparation and writes CSR/CSC binary sections. This script
turns those sections into the fixed task table consumed by pack_blu.py.
"""
from __future__ import annotations
import argparse, json, struct, subprocess, sys
from pathlib import Path
import numpy as np

HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]  # .../block_lu_hls/zu15eg_vivado_v1/vitis/tools -> block_lu_hls
PREP=ROOT/'experiments/processed_circuit_1_large_hls_v1/prepare.py'

def u32(path): return np.fromfile(path,dtype='<u4')
def f32(path): return np.fromfile(path,dtype='<f4')
def save_u32(path,a): np.asarray(a,dtype='<u4').tofile(path)
def save_f32(path,a): np.asarray(a,dtype='<f4').tofile(path)
def fp(out,name,suffix): return out/f'{name}_{suffix}.bin'

def sparse_map(csr_ptr,csr_idx,csc_ptr,csc_idx):
    """Map each CSC entry to its position in the CSR value array."""
    pos={}
    for r in range(len(csr_ptr)-1):
        for k in range(int(csr_ptr[r]),int(csr_ptr[r+1])):
            pos[(r,int(csr_idx[k]))]=k
    ans=[]
    for c in range(len(csc_ptr)-1):
        for k in range(int(csc_ptr[c]),int(csc_ptr[c+1])):
            key=(int(csc_idx[k]),c)
            if key not in pos: raise ValueError(f'CSC entry {key} missing from CSR')
            ans.append(pos[key])
    return np.asarray(ans,dtype=np.uint32)

def diag_pos(out,name):
    p=u32(fp(out,name,'ptr')); idx=u32(fp(out,name,'idx')); d=[]
    for r in range(len(p)-1):
        hit=0xffffffff
        for k in range(int(p[r]),int(p[r+1])):
            if int(idx[k])==r: hit=k; break
        if hit==0xffffffff: raise ValueError(f'{name}: missing diagonal at row {r}')
        d.append(hit)
    q=out/f'{name}_diag_pos.u32'; save_u32(q,d); return q

def zeros(out,name,count,dtype):
    q=out/name
    if dtype=='f32': save_f32(q,np.zeros(count,dtype=np.float32))
    else: save_u32(q,np.zeros(count,dtype=np.uint32))
    return q

def ref(out,name,typ):
    return {'path':str(fp(out,name,'ptr' if typ=='ptr' else 'idx' if typ=='idx' else 'val')),
            'dtype':'u32' if typ in ('ptr','idx') else 'f32'}

def arr(out,name,suffix,dtype):
    return {'path':str(fp(out,name,suffix)),'dtype':dtype}

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('matrix',type=Path,nargs='?',help='input Matrix Market file')
    ap.add_argument('--prepared-dir',type=Path,help='reuse an existing prepare.py output directory')
    ap.add_argument('--out-dir',type=Path,required=True)
    ap.add_argument('--no-pack',action='store_true',help='write JSON only, do not invoke pack_blu.py')
    ns=ap.parse_args()
    if ns.prepared_dir is None and ns.matrix is None: ap.error('provide MATRIX.mtx or --prepared-dir')
    out=ns.out_dir.resolve(); out.mkdir(parents=True,exist_ok=True)
    if ns.prepared_dir is None:
        if not PREP.exists(): raise SystemExit(f'prepare.py not found: {PREP}')
        cmd=[sys.executable,str(PREP),str(ns.matrix.resolve()),'--out',str(out)]
        subprocess.run(cmd,check=True)
    else:
        # Keep generated helper files beside the input prepared arrays.
        src=ns.prepared_dir.resolve()
        for f in src.glob('*'):
            if f.is_file() and f.name!='manifest.json':
                target=out/f.name
                if target.resolve()!=f.resolve(): target.write_bytes(f.read_bytes())
        (out/'manifest.json').write_bytes((src/'manifest.json').read_bytes())
    meta=json.loads((out/'manifest.json').read_text())
    n=int(meta['n']); n1=int(meta['split'][0]); n2=int(meta['split'][1])

    # Derived arrays not emitted by prepare.py but required by the IP interfaces.
    d11=diag_pos(out,'U11'); d22=diag_pos(out,'U22')
    dwhole=None
    # CSC-to-CSR maps for GESSM and TSTRF.
    m_u12=sparse_map(u32(fp(out,'U12_csr','ptr')),u32(fp(out,'U12_csr','idx')),
                     u32(fp(out,'U12','ptr')),u32(fp(out,'U12','idx')))
    m_u11=sparse_map(u32(fp(out,'U11','ptr')),u32(fp(out,'U11','idx')),
                     u32(fp(out,'U11_csc','ptr')),u32(fp(out,'U11_csc','idx')))
    map12=out/'U12_csc_to_csr.u32'; save_u32(map12,m_u12)
    map11=out/'U11_csc_to_csr.u32'; save_u32(map11,m_u11)
    active_cols=out/'active_cols.u32'; save_u32(active_cols,np.flatnonzero(np.diff(u32(fp(out,'A12','ptr')))>0))
    active_rows=out/'active_rows.u32'; save_u32(active_rows,np.flatnonzero(np.diff(u32(fp(out,'A21','ptr')))>0))
    w1=zeros(out,'gessm_work.f32',n1,'f32'); w2=zeros(out,'tstrf_work.f32',n1,'f32')
    w3=zeros(out,'ssssm_work.f32',n2,'f32'); mark=zeros(out,'ssssm_mark.u32',n2,'u32')

    def csr(name): return {'ptr':arr(out,name,'ptr','u32'),'idx':arr(out,name,'idx','u32'),'val':arr(out,name,'val','f32')}
    def csc(name): return csr(name)
    def task(kind,n,arrays,active=0,eps=1e-30):
        return {'kind':kind,'n':int(n),'active_count':int(active),'pivot_eps':float(eps),'arrays':arrays}

    A11=csr('A11'); L11=csr('L11'); U11=csr('U11')
    A12=csc('A12'); U12=csc('U12'); U12csr=csr('U12_csr')
    A21=csr('A21'); L21=csr('L21'); A22=csr('A22'); Schur=csr('Schur')
    L22=csr('L22'); U22=csr('U22')
    tasks=[]
    tasks.append(task('GETRF',n1,{
      'a_ptr':A11['ptr'],'a_idx':A11['idx'],'a_val':A11['val'],
      'l_ptr':L11['ptr'],'l_idx':L11['idx'],'l_val':L11['val'],
      'u_ptr':U11['ptr'],'u_idx':U11['idx'],'u_val':U11['val'],
      'u_diag_pos':{'path':str(d11),'dtype':'u32'}}))
    tasks.append(task('GESSM',n1,{
      'l_ptr':L11['ptr'],'l_idx':L11['idx'],'l_val':L11['val'],
      'b_ptr':A12['ptr'],'b_idx':A12['idx'],'b_val':A12['val'],
      'x_ptr':U12['ptr'],'x_idx':U12['idx'],'x_val_csc':U12['val'],
      'x_csc_to_csr':{'path':str(map12),'dtype':'u32'},
      'x_val_csr':U12csr['val'],'active_cols':{'path':str(active_cols),'dtype':'u32'},
      'work':{'path':str(w1),'dtype':'f32'}},active=int(len(u32(active_cols)))))
    tasks.append(task('TSTRF',n1,{
      'u_col_ptr':{'path':str(fp(out,'U11_csc','ptr')),'dtype':'u32'},
      'u_row_idx':{'path':str(fp(out,'U11_csc','idx')),'dtype':'u32'},
      'u_csr_val':U11['val'],'u_csc_to_csr':{'path':str(map11),'dtype':'u32'},
      'u_diag_pos':{'path':str(d11),'dtype':'u32'},
      'b_ptr':A21['ptr'],'b_idx':A21['idx'],'b_val':A21['val'],
      'x_ptr':L21['ptr'],'x_idx':L21['idx'],'x_val':L21['val'],
      'active_rows':{'path':str(active_rows),'dtype':'u32'},'work':{'path':str(w2),'dtype':'f32'}},active=int(len(u32(active_rows)))))
    tasks.append(task('SSSSM',n2,{
      'a_ptr':A22['ptr'],'a_idx':A22['idx'],'a_val':A22['val'],
      'l_ptr':L21['ptr'],'l_idx':L21['idx'],'l_val':L21['val'],
      'u_ptr':U12csr['ptr'],'u_idx':U12csr['idx'],'u_val':U12csr['val'],
      's_ptr':Schur['ptr'],'s_idx':Schur['idx'],'s_val':Schur['val'],
      'work':{'path':str(w3),'dtype':'f32'},'mark':{'path':str(mark),'dtype':'u32'}}))
    tasks.append(task('GETRF',n2,{
      'a_ptr':Schur['ptr'],'a_idx':Schur['idx'],'a_val':Schur['val'],
      'l_ptr':L22['ptr'],'l_idx':L22['idx'],'l_val':L22['val'],
      'u_ptr':U22['ptr'],'u_idx':U22['idx'],'u_val':U22['val'],
      'u_diag_pos':{'path':str(d22),'dtype':'u32'}}))
    case={'matrix':str(ns.matrix.resolve()) if ns.matrix else meta.get('matrix'),
          'prepared_dir':str(out),'n':n,'split':[n1,n2],
          'tasks':tasks,'source_manifest':str(out/'manifest.json')}
    j=out/'case.json'; j.write_text(json.dumps(case,indent=2)+'\n')
    print(f'wrote {j} with {len(tasks)} tasks')
    if not ns.no_pack:
        packer=HERE/'pack_blu.py'; subprocess.run([sys.executable,str(packer),str(j),'-o',str(out/'lu_case.blu')],check=True)

if __name__=='__main__': main()
