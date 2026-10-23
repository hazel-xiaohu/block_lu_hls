#ifndef PB_TYPES_H
#define PB_TYPES_H

#include <stddef.h>
#include <stdint.h>

/* Bare-metal representation: no MPI, CUDA, malloc, or OpenMP. */
typedef uint32_t pb_u32;
typedef uint64_t pb_u64;
#ifndef PB_VALUE_TYPE
#define PB_VALUE_TYPE float
#endif
typedef PB_VALUE_TYPE pb_f32;

#define PB_INVALID_U32 UINT32_MAX

typedef struct {
    uint8_t *base;
    size_t capacity;
    size_t used;
} pb_arena_t;

typedef enum {
    PB_CSC = 0,
    PB_CSR = 1
} pb_layout_t;

typedef struct {
    pb_u32 rows;
    pb_u32 cols;
    pb_u32 nnz;
    pb_u32 *ptr;       /* cols+1 for CSC, rows+1 for CSR */
    pb_u32 *index;     /* row indices for CSC, column indices for CSR */
    pb_f32 *value;
    pb_layout_t layout;
} pb_matrix_t;

typedef struct {
    pb_matrix_t lower; /* CSC, unit diagonal included */
    pb_matrix_t upper; /* CSC, diagonal included */
    pb_u32 *mark;
    pb_u32 *stack;
    pb_u32 mark_capacity;
    pb_u32 stack_capacity;
} pb_symbolic_t;

typedef enum {
    PB_TASK_GETRF = 0,
    PB_TASK_GESSM = 1,
    PB_TASK_TSTRF = 2,
    PB_TASK_SSSSM = 3,
    /* One target A block, updated by several (L,U) panel products. */
    PB_TASK_SSSSM_FUSED = 4
} pb_task_kind_t;

typedef struct {
    pb_task_kind_t kind;
    pb_u32 a;
    pb_u32 l;
    pb_u32 u;
    pb_u32 x;
    pb_u32 dependency_count;
} pb_task_t;

typedef struct {
    pb_task_t *items;
    pb_u32 count;
    pb_u32 capacity;
} pb_task_list_t;

/* Descriptor for one left-looking fused SSSSM target.  The block matrices
 * remain in canonical Block-CSC; only the list of operand block IDs is new. */
typedef struct {
    pb_u32 count;
    pb_u32 target_id;
    pb_u32 *l_ids;
    pb_u32 *u_ids;
} pb_fused_group_t;

#define PB_TRAFFIC_KERNELS 5U

typedef struct {
    uint64_t read_bytes[PB_TRAFFIC_KERNELS];
    uint64_t write_bytes[PB_TRAFFIC_KERNELS];
    uint64_t read_transactions[PB_TRAFFIC_KERNELS];
    uint64_t write_transactions[PB_TRAFFIC_KERNELS];
    uint64_t task_count[PB_TRAFFIC_KERNELS];
} pb_traffic_t;

int pb_arena_init(pb_arena_t *arena, void *memory, size_t bytes);
void *pb_arena_alloc(pb_arena_t *arena, size_t bytes, size_t alignment);
size_t pb_arena_remaining(const pb_arena_t *arena);

#endif
