#!/usr/bin/env python3
"""Run the actual HLS stages concurrently with bounded host FIFOs.

Requires g++ and Vitis arbitrary-precision headers. This checks C++ functionality
and stream backpressure, not HLS synthesis, timing, or RTL co-simulation.
Only STREAM capacities are instrumented
in temporary copies; arithmetic, cache and scheduling code is left intact.
"""
import os, re, subprocess, tempfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
root=Path(__file__).resolve().parents[1]
inc=Path(os.environ.get('HLS_INCLUDE','/home/huz/software/2025.2/Vitis/include'))
assert (inc/'ap_int.h').is_file(), 'Set HLS_INCLUDE to the Vitis include directory'
with tempfile.TemporaryDirectory(prefix='spmm-empty-test-') as td:
 out=Path(td)
 (out/'empty_rows.cpp').write_text((root/'tests/empty_rows.cpp').read_text())
 for f in (root/'HLS').iterdir():
  if f.suffix not in ('.h','.cpp'): continue
  s=f.read_text()
  if f.suffix=='.cpp':
   s=re.sub(r'//[^\n]*','',s)
   s=re.sub(r'^#pragma HLS [Ss][Tt][Rr][Ee][Aa][Mm] variable=(\w+) depth=(\d+)',lambda m:f'{m[1]}.set_capacity({m[2]}, "{f.name}:{m[1]}");',s,flags=re.M)
   s='#include <thread>\n#include <vector>\n'+s
  (out/f.name).write_text(s)
 flags=['g++','-std=c++14','-O1','-g','-pthread','-Wno-attributes','-Wno-unknown-pragmas', '-I'+str(root/'tests'),'-I'+str(out),'-I'+str(inc)]
 if os.environ.get('SANITIZE'): flags+=['-fsanitize=address,undefined','-fno-omit-frame-pointer']
 print('Compiling HLS dataflow regression...', flush=True)
 sources=['core.cpp','pe.cpp','util.cpp','rcache.cpp','vccache.cpp','row_wise.cpp','empty_rows.cpp']
 def compile_source(name):
  result=subprocess.run(flags+['-c',str(out/name),'-o',str(out/(name+'.o'))],capture_output=True,text=True)
  if result.returncode:
   print(result.stdout,result.stderr)
   result.check_returncode()
 with ThreadPoolExecutor(max_workers=3) as pool:
  list(pool.map(compile_source,sources))
 subprocess.run(flags+[str(out/(name+'.o')) for name in sources]+['-lgmp','-o',str(out/'test')],check=True)
 run_env=os.environ.copy()
 if os.environ.get('SANITIZE'):
  # LSan's process inspection is unavailable in ptrace-based sandboxes.
  # Callers can override this on machines that support leak checking.
  run_env.setdefault('ASAN_OPTIONS','detect_leaks=0')
  run_env.setdefault('UBSAN_OPTIONS','halt_on_error=1')
 print('Running bounded FIFO regression...', flush=True)
 subprocess.run([str(out/'test')],check=True,timeout=480,env=run_env)
