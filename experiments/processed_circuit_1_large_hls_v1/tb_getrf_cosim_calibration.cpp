#include "large_sparse_lu.h"
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <vector>

int main() {
  unsigned n = 32;
  if (const char *s = std::getenv("LSLU_CAL_N")) n = std::strtoul(s, nullptr, 10);
  if (n == 0 || n > 128) return 10;

  std::vector<lslu_id_t> ap(n + 1), ai;
  std::vector<lslu_val_t> av;
  std::vector<lslu_id_t> lp(n + 1), li;
  std::vector<lslu_val_t> lv;
  std::vector<lslu_id_t> up(n + 1), ui, ud(n);
  std::vector<lslu_val_t> uv;
  ai.reserve(n * n); av.reserve(n * n);
  li.reserve(n * (n + 1) / 2); lv.resize(n * (n + 1) / 2);
  ui.reserve(n * (n + 1) / 2); uv.resize(n * (n + 1) / 2);

  for (unsigned i = 0; i < n; ++i) {
    ap[i] = ai.size();
    for (unsigned j = 0; j < n; ++j) {
      ai.push_back(j);
      av.push_back(i == j ? float(n + 1) : float(int((i + 3 * j) % 7) - 3) * 0.01f);
    }
    lp[i] = li.size();
    for (unsigned j = 0; j <= i; ++j) li.push_back(j);
    up[i] = ui.size(); ud[i] = ui.size();
    for (unsigned j = i; j < n; ++j) ui.push_back(j);
  }
  ap[n] = ai.size(); lp[n] = li.size(); up[n] = ui.size();

  // HLS cosim serializes exactly the depth declared on each m_axi port.
  // Keep the logical n=32 transaction but pad host buffers to those depths.
  ap.resize(10975); ai.resize(428650); av.resize(428650);
  lp.resize(10975); li.resize(1596240); lv.resize(1596240);
  up.resize(10975); ui.resize(1596240); uv.resize(1596240);
  ud.resize(10974);
  std::vector<lslu_val_t> work(10974, 0.0f);
  std::vector<lslu_id_t> mark(10974, 0);
  lslu_id_t status = 99;
  uint64_t muladds = 0, divisions = 0;
  large_getrf(ap.data(), ai.data(), av.data(), lp.data(), li.data(), lv.data(),
              up.data(), ui.data(), uv.data(), ud.data(), work.data(), mark.data(),
              n, 1e-30f, &status, &muladds, &divisions);
  if (status != LSLU_OK) return 20 + status;
  for (float x : lv) if (!std::isfinite(x)) return 30;
  for (float x : uv) if (!std::isfinite(x)) return 31;
  std::cout << "CAL_GETRF n=" << n << " muladds=" << muladds
            << " divisions=" << divisions << " status=" << status << "\n";
  return 0;
}
