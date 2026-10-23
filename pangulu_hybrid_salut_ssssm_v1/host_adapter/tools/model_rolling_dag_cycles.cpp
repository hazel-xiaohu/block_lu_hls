#include "pb_mtx_flat_adapter.hpp"

#include <algorithm>
#include <array>
#include <cinttypes>
#include <cstdio>
#include <cstdlib>
#include <queue>
#include <string>
#include <vector>

namespace {

struct event_t {
    std::uint64_t finish;
    std::uint32_t task;
    std::uint32_t pe;
};

struct later_finish {
    bool operator()(const event_t &a, const event_t &b) const {
        if (a.finish != b.finish) return a.finish > b.finish;
        return a.pe > b.pe;
    }
};

static bool writes(std::uint32_t kind, std::uint32_t role) {
    return kind == PB_LU_SHARED_GETRF ? role != 0U : role == 0U;
}

static std::uint32_t matrix_id(const pb_mtx_flat_task_record &t,
                               std::uint32_t role) {
    return role == 0U ? t.a_matrix : (role == 1U ? t.l_matrix : t.u_matrix);
}

static bool conflict(const pb_mtx_flat_task_record &a,
                     const pb_mtx_flat_task_record &b) {
    for (std::uint32_t ar = 0; ar < 3; ++ar)
        for (std::uint32_t br = 0; br < 3; ++br)
            if (matrix_id(a, ar) == matrix_id(b, br) &&
                (writes(a.kind, ar) || writes(b.kind, br)))
                return true;
    return false;
}

static std::uint64_t duration(const pb_mtx_flat_task_record &t,
                              const std::array<std::uint64_t, 4> &cycles) {
    return t.kind < cycles.size() ? cycles[t.kind] : 0U;
}

struct result_t {
    std::uint64_t makespan = 0;
    std::uint64_t busy_lu = 0;
    std::uint64_t busy_ss = 0;
    std::uint32_t completed = 0;
    std::uint32_t max_inflight = 0;
    std::uint32_t max_lu = 0;
    std::uint32_t max_ss = 0;
};

static result_t rolling(const pb_mtx_flat_image &image,
                        const std::array<std::uint64_t, 4> &cycles) {
    const std::uint32_t n = image.task_count;
    std::vector<std::uint32_t> rem(n), state(n, 0U), pe_task(8U, ~0U);
    for (std::uint32_t t = 0; t < n; ++t) {
        rem[t] = image.tasks[t].dependency_count;
        state[t] = rem[t] == 0U ? 1U : 0U;
    }
    std::priority_queue<event_t, std::vector<event_t>, later_finish> events;
    result_t r;
    std::uint64_t now = 0U;
    while (r.completed < n) {
        bool issued_any;
        do {
            issued_any = false;
            for (std::uint32_t pe = 0; pe < 8; ++pe) {
                if (pe_task[pe] != ~0U) continue;
                std::uint32_t chosen = ~0U;
                for (std::uint32_t t = 0; t < n && chosen == ~0U; ++t) {
                    if (state[t] != 1U) continue;
                    const bool ss = image.tasks[t].kind == PB_LU_SHARED_SSSSM;
                    if ((pe < 4U && ss) || (pe >= 4U && !ss)) continue;
                    bool hazard = false;
                    for (std::uint32_t p = 0; p < 8; ++p)
                        if (pe_task[p] != ~0U &&
                            conflict(image.tasks[t], image.tasks[pe_task[p]]))
                            hazard = true;
                    if (!hazard) chosen = t;
                }
                if (chosen == ~0U) continue;
                const std::uint64_t dt = duration(image.tasks[chosen], cycles);
                if (dt == 0U) continue;
                state[chosen] = 2U;
                pe_task[pe] = chosen;
                events.push({now + dt, chosen, pe});
                if (pe < 4U) r.busy_lu += dt; else r.busy_ss += dt;
                issued_any = true;
            }
        } while (issued_any);

        std::uint32_t lu = 0U, ss = 0U;
        for (std::uint32_t pe = 0; pe < 8; ++pe)
            if (pe_task[pe] != ~0U) (pe < 4U ? lu : ss)++;
        r.max_lu = std::max(r.max_lu, lu);
        r.max_ss = std::max(r.max_ss, ss);
        r.max_inflight = std::max(r.max_inflight, lu + ss);
        if (events.empty()) break;

        now = events.top().finish;
        std::vector<event_t> finished;
        while (!events.empty() && events.top().finish == now) {
            finished.push_back(events.top());
            events.pop();
        }
        for (const event_t &e : finished) {
            pe_task[e.pe] = ~0U;
            state[e.task] = 3U;
            ++r.completed;
            for (std::uint32_t at = image.successor_ptr[e.task];
                 at < image.successor_ptr[e.task + 1U]; ++at) {
                const std::uint32_t s = image.successor_idx[at];
                if (s >= n || rem[s] == 0U) continue;
                if (--rem[s] == 0U) state[s] = 1U;
            }
        }
    }
    r.makespan = now;
    return r;
}

/* Level-synchronous reference matching the old wave-wide barrier: every
 * task in level d waits until all tasks in level d-1 have completed. */
static std::uint64_t barrier(const pb_mtx_flat_image &image,
                             const std::array<std::uint64_t, 4> &cycles,
                             std::uint32_t &levels,
                             std::uint32_t &max_width) {
    const std::uint32_t n = image.task_count;
    std::vector<std::uint32_t> level(n, 0U);
    for (std::uint32_t t = 0; t < n; ++t)
        for (std::uint32_t at = image.successor_ptr[t];
             at < image.successor_ptr[t + 1U]; ++at) {
            const std::uint32_t s = image.successor_idx[at];
            if (s < n) level[s] = std::max(level[s], level[t] + 1U);
        }
    levels = n ? *std::max_element(level.begin(), level.end()) + 1U : 0U;
    max_width = 0U;
    std::uint64_t total = 0U;
    for (std::uint32_t d = 0; d < levels; ++d) {
        std::vector<std::uint64_t> lu, ss;
        for (std::uint32_t t = 0; t < n; ++t) if (level[t] == d) {
            (image.tasks[t].kind == PB_LU_SHARED_SSSSM ? ss : lu)
                .push_back(duration(image.tasks[t], cycles));
        }
        max_width = std::max<std::uint32_t>(max_width, lu.size() + ss.size());
        std::sort(lu.begin(), lu.end(), std::greater<std::uint64_t>());
        std::sort(ss.begin(), ss.end(), std::greater<std::uint64_t>());
        std::array<std::uint64_t, 4> lu_pe = {}, ss_pe = {};
        for (std::uint64_t c : lu) {
            auto p = std::min_element(lu_pe.begin(), lu_pe.end()); *p += c;
        }
        for (std::uint64_t c : ss) {
            auto p = std::min_element(ss_pe.begin(), ss_pe.end()); *p += c;
        }
        total += std::max(*std::max_element(lu_pe.begin(), lu_pe.end()),
                          *std::max_element(ss_pe.begin(), ss_pe.end()));
    }
    return total;
}

} // namespace

int main(int argc, char **argv) {
    if (argc != 6) {
        std::fprintf(stderr, "usage: %s flat.bin getrf_cycles gessm_cycles tstrf_cycles ssssm_cycles\n", argv[0]);
        return 2;
    }
    pb_mtx_flat_image image;
    std::string error;
    if (pb_mtx_flat_read_binary(argv[1], image, error) != 0) {
        std::fprintf(stderr, "PB_DAG_CYCLE_ERROR %s\n", error.c_str());
        return 3;
    }
    std::array<std::uint64_t, 4> cycles;
    for (int i = 0; i < 4; ++i) cycles[i] = std::strtoull(argv[i + 2], nullptr, 10);
    std::array<std::uint32_t, 4> counts = {};
    std::uint64_t serial = 0U;
    for (const auto &t : image.tasks) {
        if (t.kind < 4U) ++counts[t.kind];
        serial += duration(t, cycles);
    }
    std::uint32_t levels = 0U, max_width = 0U;
    const std::uint64_t wave = barrier(image, cycles, levels, max_width);
    const result_t r = rolling(image, cycles);
    const double lu_util = r.makespan ? double(r.busy_lu) / (4.0 * r.makespan) : 0.0;
    const double ss_util = r.makespan ? double(r.busy_ss) / (4.0 * r.makespan) : 0.0;
    std::printf("PB_DAG_CYCLE_MODEL flat=%s tasks=%u edges=%u counts=%u,%u,%u,%u "
                "cycles=%" PRIu64 ",%" PRIu64 ",%" PRIu64 ",%" PRIu64 " "
                "levels=%u max_level_width=%u serial=%" PRIu64 " barrier=%" PRIu64 " "
                "rolling=%" PRIu64 " completed=%u max_inflight=%u max_lu=%u max_ss=%u "
                "lu_util=%.6f ss_util=%.6f rolling_vs_barrier=%.6f\n",
                argv[1], image.task_count, image.edge_count,
                counts[0], counts[1], counts[2], counts[3],
                cycles[0], cycles[1], cycles[2], cycles[3], levels, max_width,
                serial, wave, r.makespan, r.completed, r.max_inflight, r.max_lu,
                r.max_ss, lu_util, ss_util,
                r.makespan ? double(wave) / double(r.makespan) : 0.0);
    return r.completed == image.task_count ? 0 : 4;
}
