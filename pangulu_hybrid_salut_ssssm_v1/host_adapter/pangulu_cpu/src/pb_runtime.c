#include "pb_runtime.h"

#include <string.h>

static pb_u32 pb_traffic_kind(pb_task_kind_t kind)
{
    return (kind <= PB_TASK_SSSSM_FUSED) ? (pb_u32)kind : PB_TRAFFIC_KERNELS - 1U;
}

static pb_u32 pb_task_physical_kind(pb_task_kind_t kind)
{
    return pb_traffic_kind(kind);
}

/* A fused SSSSM task must hand its fully updated target directly to the
 * consumer emitted by the symbolic scheduler.  The current executor is
 * serial and pb_fpga_submit() is blocking, so the next loop iteration is the
 * hardware trigger point.  Keep this invariant explicit: it prevents a
 * future task-list change from inserting an unrelated operation between the
 * on-chip accumulation/writeback and GETRF/GESSM/TSTRF. */
static int pb_runtime_fused_has_immediate_consumer(const pb_runtime_t *runtime,
                                                   pb_u32 index)
{
    const pb_task_t *fused;
    const pb_task_t *consumer;
    if (runtime == NULL || index + 1U >= runtime->tasks.count) return 0;
    fused = &runtime->tasks.items[index];
    consumer = &runtime->tasks.items[index + 1U];
    if (fused->kind != PB_TASK_SSSSM_FUSED || fused->a != consumer->a) return 0;
    return consumer->kind == PB_TASK_GETRF ||
           consumer->kind == PB_TASK_GESSM ||
           consumer->kind == PB_TASK_TSTRF;
}

/* The first scheduler deliberately uses a conservative per-block access
 * chain.  A task that touches the same block as its predecessor is ordered
 * after that predecessor, including read/read accesses.  This is more
 * restrictive than the final DAG, but it is race-free and lets us validate
 * the PS ready-queue machinery without changing numerical semantics. */
static pb_u32 pb_task_access_count(const pb_runtime_t *runtime,
                                   const pb_task_t *task)
{
    const pb_fused_group_t *group;
    if (runtime == NULL || task == NULL) return 0U;
    if (task->kind != PB_TASK_SSSSM_FUSED) {
        switch (task->kind) {
        case PB_TASK_GETRF: return 3U;
        case PB_TASK_GESSM: return 2U;
        case PB_TASK_TSTRF: return 2U;
        case PB_TASK_SSSSM: return 3U;
        default: return 0U;
        }
    }
    if (runtime->fused_groups == NULL || task->x >= runtime->fused_group_count) return 0U;
    group = &runtime->fused_groups[task->x];
    return 1U + 2U * group->count;
}

static int pb_task_access_at(const pb_runtime_t *runtime,
                             const pb_task_t *task, pb_u32 position,
                             pb_u32 *id)
{
    const pb_fused_group_t *group;
    if (runtime == NULL || task == NULL || id == NULL) return -1;
    switch (task->kind) {
    case PB_TASK_GETRF:
        if (position == 0U) *id = task->a;
        else if (position == 1U) *id = task->l;
        else if (position == 2U) *id = task->u;
        else return -1;
        return 0;
    case PB_TASK_GESSM:
        if (position == 0U) *id = task->a;
        else if (position == 1U) *id = task->l;
        else return -1;
        return 0;
    case PB_TASK_TSTRF:
        if (position == 0U) *id = task->a;
        else if (position == 1U) *id = task->u;
        else return -1;
        return 0;
    case PB_TASK_SSSSM:
        if (position == 0U) *id = task->a;
        else if (position == 1U) *id = task->l;
        else if (position == 2U) *id = task->u;
        else return -1;
        return 0;
    case PB_TASK_SSSSM_FUSED:
        if (runtime->fused_groups == NULL || task->x >= runtime->fused_group_count) return -1;
        group = &runtime->fused_groups[task->x];
        if (position == 0U) *id = group->target_id;
        else if (((position - 1U) & 1U) == 0U) {
            pb_u32 operand = (position - 1U) / 2U;
            if (operand >= group->count) return -1;
            *id = group->l_ids[operand];
        } else {
            pb_u32 operand = (position - 1U) / 2U;
            if (operand >= group->count) return -1;
            *id = group->u_ids[operand];
        }
        return 0;
    default:
        return -1;
    }
}

static int pb_task_access_is_duplicate(const pb_runtime_t *runtime,
                                       const pb_task_t *task, pb_u32 position,
                                       pb_u32 id)
{
    pb_u32 p;
    pb_u32 previous;
    for (p = 0U; p < position; ++p) {
        if (pb_task_access_at(runtime, task, p, &previous) == 0 &&
            previous == id) return 1;
    }
    return 0;
}

int pb_runtime_build_edges_v1(pb_runtime_t *runtime)
{
    pb_arena_t *arena;
    pb_u32 *last_access;
    pb_u32 *outdegree;
    pb_u32 *indegree;
    pb_u32 *cursor;
    pb_u32 n;
    pb_u32 i;
    pb_u32 edge_count = 0U;
    size_t max_edges = 0U;

    if (runtime == NULL || runtime->tasks.items == NULL ||
        runtime->matrices == NULL) return -1;
    n = runtime->tasks.count;
    arena = runtime->graph_arena != NULL ? runtime->graph_arena : runtime->arena;
    if (arena == NULL) return -1;
    runtime->successor_ptr = NULL;
    runtime->successor_ids = NULL;
    runtime->edge_count = 0U;
    if (n == 0U) return 0;

    for (i = 0U; i < n; ++i) {
        max_edges += (size_t)pb_task_access_count(runtime,
                                                  &runtime->tasks.items[i]);
    }
    if (max_edges > (size_t)PB_INVALID_U32) return -2;
    last_access = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)runtime->matrix_count * sizeof(pb_u32), 64U);
    outdegree = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    indegree = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (last_access == NULL || outdegree == NULL || indegree == NULL) return -3;
    for (i = 0U; i < runtime->matrix_count; ++i) last_access[i] = PB_INVALID_U32;
    memset(outdegree, 0, (size_t)n * sizeof(pb_u32));
    memset(indegree, 0, (size_t)n * sizeof(pb_u32));

    /* Count the edges and degrees. */
    for (i = 0U; i < n; ++i) {
        const pb_task_t *task = &runtime->tasks.items[i];
        pb_u32 accesses = pb_task_access_count(runtime, task);
        pb_u32 p;
        for (p = 0U; p < accesses; ++p) {
            pb_u32 id;
            pb_u32 previous;
            if (pb_task_access_at(runtime, task, p, &id) != 0 ||
                id >= runtime->matrix_count) return -4;
            if (pb_task_access_is_duplicate(runtime, task, p, id)) continue;
            previous = last_access[id];
            if (previous != PB_INVALID_U32) {
                if (outdegree[previous] == PB_INVALID_U32 ||
                    indegree[i] == PB_INVALID_U32 ||
                    edge_count == PB_INVALID_U32) return -5;
                ++outdegree[previous];
                ++indegree[i];
                ++edge_count;
            }
            last_access[id] = i;
        }
    }

    runtime->successor_ptr = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)(n + 1U) * sizeof(pb_u32), 64U);
    runtime->successor_ids = edge_count == 0U ? NULL :
        (pb_u32 *)pb_arena_alloc(arena, (size_t)edge_count * sizeof(pb_u32), 64U);
    cursor = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (runtime->successor_ptr == NULL || cursor == NULL ||
        (edge_count != 0U && runtime->successor_ids == NULL)) return -6;
    runtime->successor_ptr[0] = 0U;
    for (i = 0U; i < n; ++i) {
        runtime->successor_ptr[i + 1U] = runtime->successor_ptr[i] + outdegree[i];
        cursor[i] = runtime->successor_ptr[i];
        runtime->tasks.items[i].dependency_count = indegree[i];
    }

    for (i = 0U; i < runtime->matrix_count; ++i) last_access[i] = PB_INVALID_U32;
    for (i = 0U; i < n; ++i) {
        const pb_task_t *task = &runtime->tasks.items[i];
        pb_u32 accesses = pb_task_access_count(runtime, task);
        pb_u32 p;
        for (p = 0U; p < accesses; ++p) {
            pb_u32 id;
            pb_u32 previous;
            if (pb_task_access_at(runtime, task, p, &id) != 0) return -7;
            if (pb_task_access_is_duplicate(runtime, task, p, id)) continue;
            previous = last_access[id];
            if (previous != PB_INVALID_U32) {
                runtime->successor_ids[cursor[previous]++] = i;
            }
            last_access[id] = i;
        }
    }
    runtime->edge_count = edge_count;
    return 0;
}

int pb_runtime_run_ps_v1(pb_runtime_t *runtime, pb_task_submit_fn submit,
                         void *context, pb_ps_scheduler_stats_t *stats)
{
    pb_u32 *remaining;
    pb_u32 *queue;
    pb_u32 n;
    pb_u32 head = 0U;
    pb_u32 tail = 0U;
    pb_u32 completed = 0U;
    pb_u32 i;
    if (stats != NULL) memset(stats, 0, sizeof(*stats));
    if (runtime == NULL || submit == NULL || runtime->tasks.items == NULL ||
        runtime->matrices == NULL || runtime->successor_ptr == NULL) return -1;
    n = runtime->tasks.count;
    if (n == 0U) return 0;
    if (stats != NULL) {
        stats->task_count = n;
        stats->edge_count = runtime->edge_count;
    }
    for (i = 0U; i + 1U < n; ++i) {
        if (runtime->tasks.items[i].kind == PB_TASK_SSSSM_FUSED &&
            !pb_runtime_fused_has_immediate_consumer(runtime, i)) return -4;
    }
    remaining = (pb_u32 *)pb_arena_alloc(
        runtime->arena, (size_t)n * sizeof(pb_u32), 64U);
    queue = (pb_u32 *)pb_arena_alloc(
        runtime->arena, (size_t)n * sizeof(pb_u32), 64U);
    if (remaining == NULL || queue == NULL) return -2;
    for (i = 0U; i < n; ++i) {
        remaining[i] = runtime->tasks.items[i].dependency_count;
        if (remaining[i] == 0U) queue[tail++] = i;
    }
    if (stats != NULL) {
        stats->initial_ready = tail;
        stats->max_ready_depth = tail;
    }
    while (head < tail) {
        pb_u32 index = queue[head++];
        pb_task_t *task = &runtime->tasks.items[index];
        pb_u32 e;
        if (runtime->traffic != NULL) {
            pb_traffic_account_task(runtime->traffic, task, runtime->matrices,
                                    runtime->fused_groups);
        }
        if (submit(task, runtime->matrices, context) != 0) return -3;
        ++completed;
        for (e = runtime->successor_ptr[index];
             e < runtime->successor_ptr[index + 1U]; ++e) {
            pb_u32 successor = runtime->successor_ids[e];
            if (remaining[successor] == 0U) return -5;
            --remaining[successor];
            if (remaining[successor] == 0U) queue[tail++] = successor;
        }
        if (stats != NULL) {
            pb_u32 ready_depth = tail - head;
            if (ready_depth > stats->max_ready_depth) {
                stats->max_ready_depth = ready_depth;
            }
        }
    }
    if (stats != NULL) {
        stats->dispatched = completed;
        stats->completed = completed;
    }
    return completed == n ? 0 : -6;
}

typedef struct {
    pb_runtime_t *runtime;
    pb_u32 *remaining;
    uint8_t *ready;
    pb_u32 completed;
    pb_u32 ready_count;
    int error;
} pb_ps_async_state_t;

static void pb_runtime_async_complete(pb_u32 index, pb_task_t *task, int rc,
                                      pb_u32 status, void *opaque)
{
    pb_ps_async_state_t *state = (pb_ps_async_state_t *)opaque;
    pb_runtime_t *runtime;
    pb_u32 e;
    (void)task;
    (void)status;
    if (state == NULL || state->runtime == NULL || index >=
        state->runtime->tasks.count) {
        if (state != NULL && state->error == 0) state->error = -7;
        return;
    }
    if (rc != 0) {
        if (state->error == 0) state->error = rc;
        return;
    }
    runtime = state->runtime;
    ++state->completed;
    for (e = runtime->successor_ptr[index];
         e < runtime->successor_ptr[index + 1U]; ++e) {
        pb_u32 successor = runtime->successor_ids[e];
        if (successor >= runtime->tasks.count ||
            state->remaining[successor] == 0U) {
            if (state->error == 0) state->error = -8;
            return;
        }
        --state->remaining[successor];
        if (state->remaining[successor] == 0U) {
            if (state->ready[successor] == 0U) {
                state->ready[successor] = 1U;
                ++state->ready_count;
            }
        }
    }
}

int pb_runtime_run_ps_async_v1(pb_runtime_t *runtime,
                               const pb_async_executor_t *executor,
                               pb_ps_scheduler_stats_t *stats)
{
    pb_ps_async_state_t state;
    pb_u32 n;
    pb_u32 i;
    pb_u32 dispatched = 0U;
    if (stats != NULL) memset(stats, 0, sizeof(*stats));
    if (runtime == NULL || executor == NULL || executor->submit == NULL ||
        executor->poll == NULL || executor->active == NULL ||
        runtime->tasks.items == NULL || runtime->matrices == NULL ||
        runtime->successor_ptr == NULL) return -1;
    n = runtime->tasks.count;
    if (n == 0U) return 0;
    if (stats != NULL) {
        stats->task_count = n;
        stats->edge_count = runtime->edge_count;
    }
    for (i = 0U; i + 1U < n; ++i) {
        if (runtime->tasks.items[i].kind == PB_TASK_SSSSM_FUSED &&
            !pb_runtime_fused_has_immediate_consumer(runtime, i)) return -4;
    }
    state.remaining = (pb_u32 *)pb_arena_alloc(
        runtime->arena, (size_t)n * sizeof(pb_u32), 64U);
    state.ready = (uint8_t *)pb_arena_alloc(
        runtime->arena, (size_t)n * sizeof(uint8_t), 64U);
    if (state.remaining == NULL || state.ready == NULL) return -2;
    state.runtime = runtime;
    state.completed = 0U;
    state.ready_count = 0U;
    state.error = 0;
    for (i = 0U; i < n; ++i) {
        state.remaining[i] = runtime->tasks.items[i].dependency_count;
        state.ready[i] = state.remaining[i] == 0U ? 1U : 0U;
        if (state.ready[i] != 0U) ++state.ready_count;
    }
    if (stats != NULL) {
        stats->initial_ready = state.ready_count;
        stats->max_ready_depth = state.ready_count;
    }

    while (state.completed < n && state.error == 0) {
        int submit_progress = 0;
        int poll_rc;
        pb_u32 active;
        /* Scan rather than pop/requeue: a busy physical IP does not grow a
         * software queue and cannot starve another kernel kind. */
        for (i = 0U; i < n; ++i) {
            pb_task_t *task;
            int rc;
            if (state.ready[i] == 0U) continue;
            task = &runtime->tasks.items[i];
            rc = executor->submit(task, i, runtime->matrices,
                                  executor->context);
            if (rc == PB_TASK_ASYNC_BUSY || rc == -4) continue;
            if (rc != 0) {
                state.error = rc;
                break;
            }
            state.ready[i] = 0U;
            if (state.ready_count != 0U) --state.ready_count;
            if (runtime->traffic != NULL) {
                pb_traffic_account_task(runtime->traffic, task,
                                        runtime->matrices,
                                        runtime->fused_groups);
            }
            ++dispatched;
            if (stats != NULL) ++stats->scheduler_submit_attempts;
            submit_progress = 1;
            if (stats != NULL && executor->active(executor->context) >
                stats->max_inflight)
                stats->max_inflight = executor->active(executor->context);
        }
        if (state.error != 0) break;
        active = executor->active(executor->context);
        /* Once all currently available work has been submitted, let the
         * backend sleep until an IP raises its completion IRQ.  poll() is
         * still the sole consumer of HLS ap_done, so callbacks never execute
         * from the interrupt handler. */
        if (active != 0U && executor->wait != NULL) {
            int wait_rc = executor->wait(executor->context);
            if (stats != NULL) ++stats->scheduler_waits;
            if (wait_rc != 0) {
                state.error = wait_rc;
                break;
            }
        }
        poll_rc = executor->poll(executor->context, runtime->matrices,
                                 pb_runtime_async_complete, &state);
        if (stats != NULL) ++stats->scheduler_polls;
        if (poll_rc < 0) {
            state.error = poll_rc;
            break;
        }
        if (stats != NULL && state.ready_count > stats->max_ready_depth)
            stats->max_ready_depth = state.ready_count;
        if (!submit_progress && poll_rc == 0 && active == 0U &&
            state.ready_count == 0U && state.completed < n) {
            state.error = -6; /* no ready task and no active completion */
            break;
        }
    }
    if (stats != NULL) {
        stats->dispatched = dispatched;
        stats->completed = state.completed;
    }
    /* If one IP reports an error while other IPs are still running, drain
     * completion events before returning.  This leaves the hardware in a
     * quiescent state and avoids carrying an active slot into a later run. */
    while (state.error != 0 && executor->active(executor->context) != 0U) {
        int poll_rc = executor->poll(executor->context, runtime->matrices,
                                     pb_runtime_async_complete, &state);
        if (poll_rc < 0) break;
    }
    return state.error != 0 ? state.error :
           (state.completed == n ? 0 : -6);
}

typedef struct {
    pb_runtime_t *runtime;
    pb_u32 *remaining;
    pb_u32 *queue_storage;
    pb_u32 *queue_head[PB_TRAFFIC_KERNELS];
    pb_u32 head[PB_TRAFFIC_KERNELS];
    pb_u32 tail[PB_TRAFFIC_KERNELS];
    pb_u32 ready_count;
    pb_u32 completed;
    int error;
} pb_pl_light_state_t;

static int pb_pl_light_enqueue(pb_pl_light_state_t *state, pb_u32 task_index)
{
    pb_runtime_t *runtime;
    pb_u32 kind;
    pb_u32 n;
    if (state == NULL || state->runtime == NULL ||
        task_index >= state->runtime->tasks.count) return -1;
    runtime = state->runtime;
    kind = pb_task_physical_kind(runtime->tasks.items[task_index].kind);
    if (kind >= PB_TRAFFIC_KERNELS || state->queue_head[kind] == NULL)
        return -2;
    n = runtime->tasks.count;
    if (state->tail[kind] >= n) return -3;
    state->queue_head[kind][state->tail[kind]++] = task_index;
    ++state->ready_count;
    return 0;
}

static void pb_pl_light_complete(pb_u32 index, pb_task_t *task, int rc,
                                 pb_u32 status, void *opaque)
{
    pb_pl_light_state_t *state = (pb_pl_light_state_t *)opaque;
    pb_runtime_t *runtime;
    pb_u32 e;
    (void)task;
    (void)status;
    if (state == NULL || state->runtime == NULL ||
        index >= state->runtime->tasks.count) {
        if (state != NULL && state->error == 0) state->error = -7;
        return;
    }
    if (rc != 0) {
        if (state->error == 0) state->error = rc;
        return;
    }
    runtime = state->runtime;
    ++state->completed;
    for (e = runtime->successor_ptr[index];
         e < runtime->successor_ptr[index + 1U]; ++e) {
        pb_u32 successor = runtime->successor_ids[e];
        if (successor >= runtime->tasks.count ||
            state->remaining[successor] == 0U) {
            if (state->error == 0) state->error = -8;
            return;
        }
        --state->remaining[successor];
        if (state->remaining[successor] == 0U &&
            pb_pl_light_enqueue(state, successor) != 0 &&
            state->error == 0) {
            state->error = -9;
            return;
        }
    }
}

int pb_runtime_run_pl_light_v1(pb_runtime_t *runtime,
                               const pb_async_executor_t *executor,
                               pb_ps_scheduler_stats_t *stats)
{
    pb_pl_light_state_t state;
    pb_u32 n;
    pb_u32 i;
    pb_u32 k;
    pb_u32 dispatched = 0U;
    if (stats != NULL) memset(stats, 0, sizeof(*stats));
    if (runtime == NULL || executor == NULL || executor->submit == NULL ||
        executor->poll == NULL || executor->active == NULL ||
        runtime->tasks.items == NULL || runtime->matrices == NULL ||
        runtime->successor_ptr == NULL) return -1;
    n = runtime->tasks.count;
    if (n == 0U) return 0;
    if (stats != NULL) {
        stats->task_count = n;
        stats->edge_count = runtime->edge_count;
    }
    for (i = 0U; i + 1U < n; ++i) {
        if (runtime->tasks.items[i].kind == PB_TASK_SSSSM_FUSED &&
            !pb_runtime_fused_has_immediate_consumer(runtime, i)) return -4;
    }
    memset(&state, 0, sizeof(state));
    state.remaining = (pb_u32 *)pb_arena_alloc(
        runtime->arena, (size_t)n * sizeof(pb_u32), 64U);
    state.queue_storage = (pb_u32 *)pb_arena_alloc(
        runtime->arena, (size_t)PB_TRAFFIC_KERNELS * (size_t)n *
        sizeof(pb_u32), 64U);
    if (state.remaining == NULL || state.queue_storage == NULL) return -2;
    state.runtime = runtime;
    for (k = 0U; k < PB_TRAFFIC_KERNELS; ++k) {
        state.queue_head[k] = state.queue_storage + (size_t)k * (size_t)n;
        state.head[k] = 0U;
        state.tail[k] = 0U;
    }
    for (i = 0U; i < n; ++i) {
        state.remaining[i] = runtime->tasks.items[i].dependency_count;
        if (state.remaining[i] == 0U &&
            pb_pl_light_enqueue(&state, i) != 0) return -3;
    }
    if (stats != NULL) {
        stats->initial_ready = state.ready_count;
        stats->max_ready_depth = state.ready_count;
    }

    while (state.completed < n && state.error == 0) {
        int submit_progress = 0;
        int poll_rc;
        pb_u32 active_before;
        for (k = 0U; k < PB_TRAFFIC_KERNELS; ++k) {
            while (state.head[k] < state.tail[k]) {
                pb_u32 task_index = state.queue_head[k][state.head[k]];
                pb_task_t *task = &runtime->tasks.items[task_index];
                int rc;
                rc = executor->submit(task, task_index, runtime->matrices,
                                      executor->context);
                if (stats != NULL) ++stats->scheduler_submit_attempts;
                if (rc == PB_TASK_ASYNC_BUSY || rc == -4) break;
                if (rc != 0) {
                    state.error = rc;
                    break;
                }
                ++state.head[k];
                if (state.ready_count != 0U) --state.ready_count;
                if (runtime->traffic != NULL) {
                    pb_traffic_account_task(runtime->traffic, task,
                                            runtime->matrices,
                                            runtime->fused_groups);
                }
                ++dispatched;
                submit_progress = 1;
                if (stats != NULL && executor->active(executor->context) >
                    stats->max_inflight)
                    stats->max_inflight = executor->active(executor->context);
                /* There is one physical IP per kind.  After one accepted task,
                 * the next task of the same kind cannot start until a
                 * completion event frees that slot. */
                break;
            }
            if (state.error != 0) break;
        }
        if (state.error != 0) break;
        active_before = executor->active(executor->context);
        if (active_before != 0U && executor->wait != NULL) {
            int wait_rc = executor->wait(executor->context);
            if (stats != NULL) ++stats->scheduler_waits;
            if (wait_rc != 0) {
                state.error = wait_rc;
                break;
            }
        }
        poll_rc = executor->poll(executor->context, runtime->matrices,
                                 pb_pl_light_complete, &state);
        if (stats != NULL) ++stats->scheduler_polls;
        if (poll_rc < 0) {
            state.error = poll_rc;
            break;
        }
        if (stats != NULL && state.ready_count > stats->max_ready_depth)
            stats->max_ready_depth = state.ready_count;
        if (!submit_progress && poll_rc == 0 && active_before == 0U &&
            state.ready_count == 0U && state.completed < n) {
            state.error = -6;
            break;
        }
    }
    if (stats != NULL) {
        stats->dispatched = dispatched;
        stats->completed = state.completed;
    }
    while (state.error != 0 && executor->active(executor->context) != 0U) {
        int poll_rc = executor->poll(executor->context, runtime->matrices,
                                     pb_pl_light_complete, &state);
        if (stats != NULL) ++stats->scheduler_polls;
        if (poll_rc < 0) break;
    }
    return state.error != 0 ? state.error :
           (state.completed == n ? 0 : -6);
}

static uint64_t pb_matrix_structure_bytes(const pb_matrix_t *m)
{
    if (m == NULL) return 0ULL;
    return ((uint64_t)m->cols + 1ULL) * sizeof(pb_u32) +
           (uint64_t)m->nnz * sizeof(pb_u32);
}

static uint64_t pb_matrix_value_bytes(const pb_matrix_t *m)
{
    return m == NULL ? 0ULL : (uint64_t)m->nnz * sizeof(pb_f32);
}

static void pb_traffic_read_matrix(pb_traffic_t *traffic, pb_u32 k,
                                   const pb_matrix_t *m)
{
    if (traffic == NULL || m == NULL) return;
    traffic->read_bytes[k] += pb_matrix_structure_bytes(m) +
                              pb_matrix_value_bytes(m);
    traffic->read_transactions[k] += (m->cols != 0U || m->nnz != 0U) ? 3ULL : 1ULL;
}

static void pb_traffic_read_structure(pb_traffic_t *traffic, pb_u32 k,
                                      const pb_matrix_t *m)
{
    if (traffic == NULL || m == NULL) return;
    traffic->read_bytes[k] += pb_matrix_structure_bytes(m);
    traffic->read_transactions[k] += 2ULL;
}

static void pb_traffic_write_values(pb_traffic_t *traffic, pb_u32 k,
                                    const pb_matrix_t *m)
{
    if (traffic == NULL || m == NULL) return;
    traffic->write_bytes[k] += pb_matrix_value_bytes(m);
    traffic->write_transactions[k] += (m->nnz != 0U) ? 1ULL : 0ULL;
}

void pb_traffic_reset(pb_traffic_t *traffic)
{
    if (traffic != NULL) memset(traffic, 0, sizeof(*traffic));
}

void pb_traffic_account_task(pb_traffic_t *traffic, const pb_task_t *task,
                             const pb_matrix_t *matrices,
                             const pb_fused_group_t *fused_groups)
{
    pb_u32 k;
    const pb_fused_group_t *group;
    if (traffic == NULL || task == NULL || matrices == NULL) return;
    k = pb_traffic_kind(task->kind);
    traffic->task_count[k]++;
    switch (task->kind) {
    case PB_TASK_GETRF:
        pb_traffic_read_matrix(traffic, k, &matrices[task->a]);
        pb_traffic_read_structure(traffic, k, &matrices[task->l]);
        pb_traffic_read_structure(traffic, k, &matrices[task->u]);
        pb_traffic_write_values(traffic, k, &matrices[task->l]);
        pb_traffic_write_values(traffic, k, &matrices[task->u]);
        break;
    case PB_TASK_GESSM:
        pb_traffic_read_matrix(traffic, k, &matrices[task->a]);
        pb_traffic_read_matrix(traffic, k, &matrices[task->l]);
        pb_traffic_write_values(traffic, k, &matrices[task->a]);
        break;
    case PB_TASK_TSTRF:
        pb_traffic_read_matrix(traffic, k, &matrices[task->a]);
        pb_traffic_read_matrix(traffic, k, &matrices[task->u]);
        pb_traffic_write_values(traffic, k, &matrices[task->a]);
        break;
    case PB_TASK_SSSSM:
        pb_traffic_read_matrix(traffic, k, &matrices[task->a]);
        pb_traffic_read_matrix(traffic, k, &matrices[task->l]);
        pb_traffic_read_matrix(traffic, k, &matrices[task->u]);
        pb_traffic_write_values(traffic, k, &matrices[task->a]);
        break;
    case PB_TASK_SSSSM_FUSED:
        if (fused_groups == NULL) return;
        group = &fused_groups[task->x];
        pb_traffic_read_matrix(traffic, k, &matrices[group->target_id]);
        pb_traffic_write_values(traffic, k, &matrices[group->target_id]);
        for (pb_u32 i = 0U; i < group->count; ++i) {
            pb_traffic_read_matrix(traffic, k, &matrices[group->l_ids[i]]);
            pb_traffic_read_matrix(traffic, k, &matrices[group->u_ids[i]]);
        }
        break;
    default:
        break;
    }
}

int pb_runtime_add_task(pb_task_list_t *list, pb_task_kind_t kind,
                        pb_u32 a, pb_u32 l, pb_u32 u, pb_u32 x,
                        pb_u32 dependency_count)
{
    pb_task_t *task;
    if (list == NULL || list->items == NULL || list->count >= list->capacity) {
        return -1;
    }
    task = &list->items[list->count++];
    task->kind = kind;
    task->a = a;
    task->l = l;
    task->u = u;
    task->x = x;
    task->dependency_count = dependency_count;
    return 0;
}

int pb_runtime_run(pb_runtime_t *runtime, pb_task_submit_fn submit,
                   void *context)
{
    pb_u32 i;
    if (runtime == NULL || submit == NULL || runtime->tasks.items == NULL ||
        runtime->matrices == NULL) {
        return -1;
    }
    /* The symbolic stage must emit a topologically sorted list. */
    for (i = 0U; i < runtime->tasks.count; ++i) {
        pb_task_t *task = &runtime->tasks.items[i];
        if (task->dependency_count != 0U) {
            return -2;
        }
        if (task->kind == PB_TASK_SSSSM_FUSED &&
            !pb_runtime_fused_has_immediate_consumer(runtime, i)) {
            /* No consumer means the fused update could be silently left in
             * DDR without the factor/triangular task that consumes it. */
            return -4;
        }
        if (runtime->traffic != NULL) {
            pb_traffic_account_task(runtime->traffic, task, runtime->matrices,
                                    runtime->fused_groups);
        }
        if (submit(task, runtime->matrices, context) != 0) {
            return -3;
        }
    }
    return 0;
}

int pb_cpu_submit(pb_task_t *task, pb_matrix_t *matrices, void *context)
{
    pb_arena_t *workspace = (pb_arena_t *)context;
    if (task == NULL || matrices == NULL) {
        return -1;
    }
    switch (task->kind) {
    case PB_TASK_GETRF:
        return pb_getrf(&matrices[task->a], &matrices[task->l],
                        &matrices[task->u], workspace);
    case PB_TASK_GESSM:
        return pb_gessm(&matrices[task->a], &matrices[task->l]);
    case PB_TASK_TSTRF:
        return pb_tstrf(&matrices[task->a], &matrices[task->u], workspace);
    case PB_TASK_SSSSM:
        return pb_ssssm(&matrices[task->a], &matrices[task->l],
                        &matrices[task->u]);
    case PB_TASK_SSSSM_FUSED:
        /* The CPU fallback preserves the same arithmetic order as the
         * unfused left-looking stream; the FPGA backend consumes task->x. */
        return -2;
    default:
        return -1;
    }
}
