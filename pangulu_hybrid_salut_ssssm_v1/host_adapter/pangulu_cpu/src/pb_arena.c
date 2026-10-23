#include "pb_types.h"

#include <limits.h>

static size_t pb_align_up(size_t value, size_t alignment)
{
    size_t mask;
    if (alignment == 0U || (alignment & (alignment - 1U)) != 0U) {
        return SIZE_MAX;
    }
    mask = alignment - 1U;
    if (value > SIZE_MAX - mask) {
        return SIZE_MAX;
    }
    return (value + mask) & ~mask;
}

int pb_arena_init(pb_arena_t *arena, void *memory, size_t bytes)
{
    if (arena == NULL || memory == NULL || bytes == 0U) {
        return -1;
    }
    arena->base = (uint8_t *)memory;
    arena->capacity = bytes;
    arena->used = 0U;
    return 0;
}

void *pb_arena_alloc(pb_arena_t *arena, size_t bytes, size_t alignment)
{
    size_t offset;
    if (arena == NULL || arena->base == NULL || bytes == 0U) {
        return NULL;
    }
    if (alignment == 0U) {
        alignment = sizeof(void *);
    }
    offset = pb_align_up(arena->used, alignment);
    if (offset == SIZE_MAX || offset > arena->capacity ||
        bytes > arena->capacity - offset) {
        return NULL;
    }
    arena->used = offset + bytes;
    return arena->base + offset;
}

size_t pb_arena_remaining(const pb_arena_t *arena)
{
    if (arena == NULL || arena->used > arena->capacity) {
        return 0U;
    }
    return arena->capacity - arena->used;
}
