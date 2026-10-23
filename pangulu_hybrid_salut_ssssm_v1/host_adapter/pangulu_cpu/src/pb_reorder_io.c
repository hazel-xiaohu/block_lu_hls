#include "pb_reorder.h"

#ifndef PB_NO_STDIO
#include <stdio.h>
#include <stdlib.h>

int pb_reorder_read_text(pb_arena_t *arena, const char *path,
                         pb_u32 n, pb_reorder_t *order)
{
    FILE *stream;
    pb_u32 *values;
    pb_u32 i;
    if (arena == NULL || path == NULL || order == NULL || n == 0U) {
        return -1;
    }
    stream = fopen(path, "r");
    if (stream == NULL) {
        return -1;
    }
    values = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (values == NULL) {
        fclose(stream);
        return -1;
    }
    for (i = 0U; i < n; ++i) {
        unsigned long value;
        if (fscanf(stream, "%lu", &value) != 1 || value > UINT32_MAX) {
            fclose(stream);
            return -1;
        }
        values[i] = (pb_u32)value;
    }
    {
        unsigned long extra;
        if (fscanf(stream, "%lu", &extra) == 1) {
            fclose(stream);
            return -1;
        }
    }
    fclose(stream);
    return pb_reorder_from_old_to_new(arena, n, values, order);
}
#endif
