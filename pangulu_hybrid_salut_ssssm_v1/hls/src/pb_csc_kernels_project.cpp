#include "pb_csc_kernels.h"

#include <math.h>
#include <hls_stream.h>

/* Small wrappers keep the target4 ABI readable while still creating an
 * explicit AXI bank for every target/array.  The two-level stringization is
 * required so the port and bundle tokens are expanded before _Pragma sees
 * them. */
#define PB_T4_STR_I(x) #x
#define PB_T4_STR(x) PB_T4_STR_I(x)
#define PB_T4_M_AXI(P,B,D) _Pragma(PB_T4_STR(HLS INTERFACE m_axi port=P offset=slave bundle=B depth=D))
#define PB_T4_S_AXI(P) _Pragma(PB_T4_STR(HLS INTERFACE s_axilite port=P bundle=control))

#ifndef PB_HLS_MAX_N
#define PB_HLS_MAX_N 4096U
#endif

/* Explicit two-lane implementation.  The canonical source remains scalar.
 * The two lanes compute their products concurrently.  Updates are written to
 * separate parity banks when possible; same-bank pairs are committed in a
 * deterministic serial fallback so sparse index collisions remain correct. */
#define PB_FACTOR2_LANES 2
#define PB_FACTOR2_BANK_N ((PB_HLS_MAX_N + PB_FACTOR2_LANES - 1U) / PB_FACTOR2_LANES)
/* The CPU symbolic phase dispatches only canonical, fully-symbolized block
 * tasks.  In the fast HLS path the hot update loops can therefore rely on
 * their row indices and fill entries being valid; retain the guarded code
 * below by changing this switch during debug. */
#define PB_FACTOR2_TRUSTED_SYMBOLIC 1

/* Factor-4 shadow configuration.  Only GESSM is widened in this first
 * experiment; the remaining tops are kept as the verified factor-2 control. */
#define PB_FACTOR4_LANES 4
#define PB_FACTOR4_PANEL_N 256
#define PB_FACTOR4_PACK_N ((PB_HLS_MAX_N + PB_FACTOR4_LANES - 1U) / PB_FACTOR4_LANES)

static pb_hls_f32 pb_bank_get(const pb_hls_f32 *even,
                              const pb_hls_f32 *odd,
                              pb_hls_u32 row)
{
#pragma HLS INLINE
    return (row & 1U) ? odd[row >> 1U] : even[row >> 1U];
}

static void pb_bank_set(pb_hls_f32 *even, pb_hls_f32 *odd,
                        pb_hls_u32 row, pb_hls_f32 value)
{
#pragma HLS INLINE
    if (row & 1U) odd[row >> 1U] = value;
    else even[row >> 1U] = value;
}

static void pb_bank_add(pb_hls_f32 *even, pb_hls_f32 *odd,
                        pb_hls_u32 row, pb_hls_f32 delta)
{
#pragma HLS INLINE
    if (row & 1U) odd[row >> 1U] += delta;
    else even[row >> 1U] += delta;
}

/* Explicit two-port update.  Keeping the parity cases in one inlined
 * function lets HLS see that the two writes target different memories. */
static void pb_bank_add_pair(pb_hls_f32 *even, pb_hls_f32 *odd,
                             pb_hls_u32 row0, pb_hls_f32 delta0,
                             pb_hls_u32 row1, pb_hls_f32 delta1,
                             int active0, int active1)
{
#pragma HLS INLINE
    if (active0 && active1 && ((row0 & 1U) != (row1 & 1U))) {
        if ((row0 & 1U) == 0U) {
            even[row0 >> 1U] += delta0;
            odd[row1 >> 1U] += delta1;
        } else {
            odd[row0 >> 1U] += delta0;
            even[row1 >> 1U] += delta1;
        }
    } else {
        if (active0) pb_bank_add(even, odd, row0, delta0);
        if (active1) pb_bank_add(even, odd, row1, delta1);
    }
}

/* A lane-private accumulator keeps the two update streams independent.
 * `base` holds the materialized input; each lane owns exactly one delta RAM.
 * Canonical CSC guarantees that a column has no duplicate row index, so within
 * a fixed update column the lane-local RMW operations do not alias. */
static pb_hls_f32 pb_private_get(const pb_hls_f32 *base_even,
                                 const pb_hls_f32 *base_odd,
                                 const pb_hls_f32 *delta0,
                                 const pb_hls_f32 *delta1,
                                 pb_hls_u32 row)
{
#pragma HLS INLINE
    return pb_bank_get(base_even, base_odd, row) + delta0[row] + delta1[row];
}

static void pb_private_set_base(pb_hls_f32 *base_even,
                                pb_hls_f32 *base_odd,
                                pb_hls_f32 *delta0,
                                pb_hls_f32 *delta1,
                                pb_hls_u32 row, pb_hls_f32 value)
{
#pragma HLS INLINE
    pb_bank_set(base_even, base_odd, row, value);
    delta0[row] = 0.0f;
    delta1[row] = 0.0f;
}

static pb_hls_f32 pb_private_get4(const pb_hls_f32 *base_even,
                                  const pb_hls_f32 *base_odd,
                                  const pb_hls_f32 *delta0,
                                  const pb_hls_f32 *delta1,
                                  const pb_hls_f32 *delta2,
                                  const pb_hls_f32 *delta3,
                                  pb_hls_u32 row)
{
#pragma HLS INLINE
    return pb_bank_get(base_even, base_odd, row) +
           (delta0[row] + delta1[row]) + (delta2[row] + delta3[row]);
}

static void pb_private_set_base4(pb_hls_f32 *base_even,
                                 pb_hls_f32 *base_odd,
                                 pb_hls_f32 *delta0,
                                 pb_hls_f32 *delta1,
                                 pb_hls_f32 *delta2,
                                 pb_hls_f32 *delta3,
                                 pb_hls_u32 row, pb_hls_f32 value)
{
#pragma HLS INLINE
    pb_bank_set(base_even, base_odd, row, value);
    delta0[row] = 0.0f; delta1[row] = 0.0f;
    delta2[row] = 0.0f; delta3[row] = 0.0f;
}

static pb_hls_u32 pb_mark_get(const pb_hls_u32 *even,
                              const pb_hls_u32 *odd,
                              pb_hls_u32 row)
{
#pragma HLS INLINE
    return (row & 1U) ? odd[row >> 1U] : even[row >> 1U];
}

static void pb_mark_set(pb_hls_u32 *even, pb_hls_u32 *odd,
                        pb_hls_u32 row, pb_hls_u32 value)
{
#pragma HLS INLINE
    if (row & 1U) odd[row >> 1U] = value;
    else even[row >> 1U] = value;
}

/* Keep the two arithmetic paths as distinct HLS operations.  INLINE off is
 * intentional: otherwise the binder may merge both lanes into one multiplier. */
static pb_hls_f32 pb_lane0_mul(pb_hls_f32 a, pb_hls_f32 b)
{
#pragma HLS INLINE off
    pb_hls_f32 result;
#pragma HLS BIND_OP variable=result op=mul impl=dsp
    result = a * b;
    return result;
}

static pb_hls_f32 pb_lane1_mul(pb_hls_f32 a, pb_hls_f32 b)
{
#pragma HLS INLINE off
    pb_hls_f32 result;
#pragma HLS BIND_OP variable=result op=mul impl=dsp
    result = a * b;
    return result;
}

static pb_hls_f32 pb_lane2_mul(pb_hls_f32 a, pb_hls_f32 b)
{
#pragma HLS INLINE off
    pb_hls_f32 result;
#pragma HLS BIND_OP variable=result op=mul impl=dsp
    result = a * b;
    return result;
}

static pb_hls_f32 pb_lane3_mul(pb_hls_f32 a, pb_hls_f32 b)
{
#pragma HLS INLINE off
    pb_hls_f32 result;
#pragma HLS BIND_OP variable=result op=mul impl=dsp
    result = a * b;
    return result;
}

static int pb_hls_small(pb_hls_f32 value)
{
#pragma HLS INLINE
    return fabsf(value) < 1.0e-30f;
}

typedef struct {
    pb_hls_u32 row;
    pb_hls_f32 value;
} pb_hls_lpair;

static pb_hls_u32 pb_lword_row(pb_hls_lword word)
{
#pragma HLS INLINE
    return (pb_hls_u32)(word & 0xffffffffULL);
}

static pb_hls_f32 pb_lword_value(pb_hls_lword word)
{
#pragma HLS INLINE
    union { pb_hls_u32 u; pb_hls_f32 f; } bits;
    bits.u = (pb_hls_u32)(word >> 32);
    return bits.f;
}

static pb_hls_lword pb_lword_with_value(pb_hls_lword word, pb_hls_f32 value)
{
#pragma HLS INLINE
    union { pb_hls_u32 u; pb_hls_f32 f; } bits;
    bits.f = value;
    return ((pb_hls_lword)bits.u << 32) | (word & 0xffffffffULL);
}

/* CSC4 access helpers.  The global canonical position p is converted to a
 * {word,lane} using ptr[col] and pack_ptr[col].  Thus no consumer needs a
 * second scalar index/value representation. */
static pb_hls_lword pb_csc4_read_word(
    const pb_hls_u32 *ptr, const pb_hls_u32 *pack_ptr,
    const pb_hls_lword *lane0, const pb_hls_lword *lane1,
    const pb_hls_lword *lane2, const pb_hls_lword *lane3,
    pb_hls_u32 col, pb_hls_u32 p)
{
#pragma HLS INLINE
    const pb_hls_u32 local = p - ptr[col];
    const pb_hls_u32 word = pack_ptr[col] + (local >> 2U);
    switch (local & 3U) {
    case 0U: return lane0[word];
    case 1U: return lane1[word];
    case 2U: return lane2[word];
    default: return lane3[word];
    }
}

static void pb_csc4_write_value(
    const pb_hls_u32 *ptr, const pb_hls_u32 *pack_ptr,
    pb_hls_lword *lane0, pb_hls_lword *lane1,
    pb_hls_lword *lane2, pb_hls_lword *lane3,
    pb_hls_u32 col, pb_hls_u32 p, pb_hls_f32 value)
{
#pragma HLS INLINE
    const pb_hls_u32 local = p - ptr[col];
    const pb_hls_u32 word = pack_ptr[col] + (local >> 2U);
    switch (local & 3U) {
    case 0U: lane0[word] = pb_lword_with_value(lane0[word], value); break;
    case 1U: lane1[word] = pb_lword_with_value(lane1[word], value); break;
    case 2U: lane2[word] = pb_lword_with_value(lane2[word], value); break;
    default: lane3[word] = pb_lword_with_value(lane3[word], value); break;
    }
}

/* One FIFO item represents four entries of a CSC source column.  The CPU
 * packer pads a final partial word with zeros; valid_nnz controls its use. */
typedef struct {
    pb_hls_lpair lane0;
    pb_hls_lpair lane1;
    pb_hls_lpair lane2;
    pb_hls_lpair lane3;
} pb_hls_lpack4;

static void pb_gessm4_prefetch_packed(
    const pb_hls_lword *lane0, const pb_hls_lword *lane1,
    const pb_hls_lword *lane2, const pb_hls_lword *lane3,
    pb_hls_u32 word_begin, pb_hls_u32 word_count,
    hls::stream<pb_hls_lpack4> &out)
{
#pragma HLS INLINE off
    for (pb_hls_u32 w = 0U; w < word_count; ++w) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w0 = lane0[word_begin + w];
        const pb_hls_lword w1 = lane1[word_begin + w];
        const pb_hls_lword w2 = lane2[word_begin + w];
        const pb_hls_lword w3 = lane3[word_begin + w];
        pb_hls_lpack4 item;
        item.lane0.row = pb_lword_row(w0); item.lane0.value = pb_lword_value(w0);
        item.lane1.row = pb_lword_row(w1); item.lane1.value = pb_lword_value(w1);
        item.lane2.row = pb_lword_row(w2); item.lane2.value = pb_lword_value(w2);
        item.lane3.row = pb_lword_row(w3); item.lane3.value = pb_lword_value(w3);
        out.write(item);
    }
}

static void pb_gessm4_apply_packed(
    hls::stream<pb_hls_lpack4> &in, pb_hls_u32 word_count,
    pb_hls_u32 valid_nnz, pb_hls_f32 x,
    pb_hls_f32 *delta0, pb_hls_f32 *delta1,
    pb_hls_f32 *delta2, pb_hls_f32 *delta3);

/* The rolling worker is itself a DATAFLOW process.  Keep a declaration of
 * the non-nested equivalent before the wrapper below; Vitis HLS parses this
 * translation unit as C++ and does not permit an implicit declaration. */
static void pb_gessm4_apply_packed_direct(
    const pb_hls_lword *lane0, const pb_hls_lword *lane1,
    const pb_hls_lword *lane2, const pb_hls_lword *lane3,
    pb_hls_u32 word_begin, pb_hls_u32 word_count,
    pb_hls_u32 valid_nnz, pb_hls_f32 x,
    pb_hls_f32 *delta0, pb_hls_f32 *delta1,
    pb_hls_f32 *delta2, pb_hls_f32 *delta3);

/* A canonical local dataflow region.  The FIFO is the ping-pong boundary:
 * while the consumer computes one four-entry word, the producer issues the
 * next four independent AXI-bank reads. */
static void pb_gessm4_prefetch_compute_packed(
    const pb_hls_lword *lane0, const pb_hls_lword *lane1,
    const pb_hls_lword *lane2, const pb_hls_lword *lane3,
    pb_hls_u32 word_begin, pb_hls_u32 word_count, pb_hls_u32 valid_nnz,
    pb_hls_f32 x, pb_hls_f32 *delta0, pb_hls_f32 *delta1,
    pb_hls_f32 *delta2, pb_hls_f32 *delta3)
{
#pragma HLS INLINE off
#if defined(PB_ROLL_FLAT_KERNEL_DATAFLOW)
    pb_gessm4_apply_packed_direct(lane0, lane1, lane2, lane3,
                                  word_begin, word_count, valid_nnz, x,
                                  delta0, delta1, delta2, delta3);
#else
    hls::stream<pb_hls_lpack4> fifo("l_panel_pingpong");
#pragma HLS STREAM variable=fifo depth=64
#pragma HLS DATAFLOW
    pb_gessm4_prefetch_packed(lane0, lane1, lane2, lane3,
                              word_begin, word_count, fifo);
    pb_gessm4_apply_packed(fifo, word_count, valid_nnz, x,
                           delta0, delta1, delta2, delta3);
#endif
}

static void pb_gessm4_apply_packed(
    hls::stream<pb_hls_lpack4> &in, pb_hls_u32 word_count,
    pb_hls_u32 valid_nnz, pb_hls_f32 x,
    pb_hls_f32 *delta0, pb_hls_f32 *delta1,
    pb_hls_f32 *delta2, pb_hls_f32 *delta3)
{
#pragma HLS INLINE off
    for (pb_hls_u32 w = 0U; w < word_count; ++w) {
#pragma HLS PIPELINE II=1
        const pb_hls_lpack4 item = in.read();
        const pb_hls_u32 base = w * PB_FACTOR4_LANES;
        /* Entry zero is the unit/diagonal L(k,k) used to form x.  As in the
         * scalar GESSM, only the strict subdiagonal entries update the RHS. */
        const int active0 = (base + 0U) > 0U && (base + 0U) < valid_nnz;
        const int active1 = (base + 1U) > 0U && (base + 1U) < valid_nnz;
        const int active2 = (base + 2U) > 0U && (base + 2U) < valid_nnz;
        const int active3 = (base + 3U) > 0U && (base + 3U) < valid_nnz;
        const pb_hls_f32 d0 = active0 ? pb_lane0_mul(item.lane0.value, x) : 0.0f;
        const pb_hls_f32 d1 = active1 ? pb_lane1_mul(item.lane1.value, x) : 0.0f;
        const pb_hls_f32 d2 = active2 ? pb_lane2_mul(item.lane2.value, x) : 0.0f;
        const pb_hls_f32 d3 = active3 ? pb_lane3_mul(item.lane3.value, x) : 0.0f;
        /* The CPU packer preserves canonical CSC order: entries within one
         * word have distinct rows, and every lane owns a separate delta RAM. */
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
        if (active0) delta0[item.lane0.row] -= d0;
        if (active1) delta1[item.lane1.row] -= d1;
        if (active2) delta2[item.lane2.row] -= d2;
        if (active3) delta3[item.lane3.row] -= d3;
    }
}

/* A rolling worker is already a DATAFLOW process.  Nested ping-pong
 * DATAFLOW is not safe in Vitis HLS 2022.2 when driven from the shared pool,
 * so the rolling hierarchy can use this bounded direct equivalent. */
static void pb_gessm4_apply_packed_direct(
    const pb_hls_lword *lane0, const pb_hls_lword *lane1,
    const pb_hls_lword *lane2, const pb_hls_lword *lane3,
    pb_hls_u32 word_begin, pb_hls_u32 word_count,
    pb_hls_u32 valid_nnz, pb_hls_f32 x,
    pb_hls_f32 *delta0, pb_hls_f32 *delta1,
    pb_hls_f32 *delta2, pb_hls_f32 *delta3)
{
#pragma HLS INLINE off
    for (pb_hls_u32 w = 0U; w < word_count; ++w) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w0 = lane0[word_begin + w];
        const pb_hls_lword w1 = lane1[word_begin + w];
        const pb_hls_lword w2 = lane2[word_begin + w];
        const pb_hls_lword w3 = lane3[word_begin + w];
        const pb_hls_u32 base = w * PB_FACTOR4_LANES;
        const int active0 = (base + 0U) > 0U && (base + 0U) < valid_nnz;
        const int active1 = (base + 1U) > 0U && (base + 1U) < valid_nnz;
        const int active2 = (base + 2U) > 0U && (base + 2U) < valid_nnz;
        const int active3 = (base + 3U) > 0U && (base + 3U) < valid_nnz;
        if (active0) delta0[pb_lword_row(w0)] -= pb_lane0_mul(pb_lword_value(w0), x);
        if (active1) delta1[pb_lword_row(w1)] -= pb_lane1_mul(pb_lword_value(w1), x);
        if (active2) delta2[pb_lword_row(w2)] -= pb_lane2_mul(pb_lword_value(w2), x);
        if (active3) delta3[pb_lword_row(w3)] -= pb_lane3_mul(pb_lword_value(w3), x);
    }
}

extern "C" void pb_getrf_csc(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    const pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, pb_hls_f32 *l_val,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_idx,
    pb_hls_f32 *u_val, pb_hls_u32 n, pb_hls_f32 pivot_eps,
    pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=getrf_a depth=4097
#pragma HLS INTERFACE m_axi port=a_idx offset=slave bundle=getrf_a depth=65536
#pragma HLS INTERFACE m_axi port=a_val offset=slave bundle=getrf_a depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=getrf_l depth=4097
#pragma HLS INTERFACE m_axi port=l_idx offset=slave bundle=getrf_l depth=65536
#pragma HLS INTERFACE m_axi port=l_val offset=slave bundle=getrf_l depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=getrf_u depth=4097
#pragma HLS INTERFACE m_axi port=u_idx offset=slave bundle=getrf_u depth=65536
#pragma HLS INTERFACE m_axi port=u_val offset=slave bundle=getrf_u depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_idx bundle=control
#pragma HLS INTERFACE s_axilite port=a_val bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_idx bundle=control
#pragma HLS INTERFACE s_axilite port=l_val bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_idx bundle=control
#pragma HLS INTERFACE s_axilite port=u_val bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N];
    pb_hls_f32 work_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 lane0_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane1_delta[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane1_delta type=ram_2p impl=bram

    status = PB_HLS_OK;
    if (n == 0U || n > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }

    for (pb_hls_u32 col = 0U; col < n; ++col) {
        /* PanguLU pads the final block to NB x NB.  Columns outside the
         * matrix order have an empty canonical-CSC slice and no L/U diagonal. */
        if (a_ptr[col] == a_ptr[col + 1U]) {
            continue;
        }
        for (pb_hls_u32 row = 0U; row < n; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = a_idx[p];
            if (row >= n) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                row, a_val[p]);
        }

        for (pb_hls_u32 k = 0U; k < col; ++k) {
            const pb_hls_f32 ukj = pb_private_get(work_even, work_odd,
                                                   lane0_delta, lane1_delta, k);
            if (pb_hls_small(ukj)) {
                continue;
            }
            const pb_hls_u32 begin = l_ptr[k];
            const pb_hls_u32 end = l_ptr[k + 1U];
            for (pb_hls_u32 p = begin; p < end; p += PB_FACTOR2_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row0 = l_idx[p];
                const pb_hls_u32 row1 = (p + 1U < end) ? l_idx[p + 1U] : 0U;
                const int active0 = row0 > k;
                const int active1 = (p + 1U < end) && row1 > k;
                pb_hls_f32 delta[PB_FACTOR2_LANES];
#pragma HLS ARRAY_PARTITION variable=delta complete
                for (int lane = 0; lane < PB_FACTOR2_LANES; ++lane) {
#pragma HLS UNROLL
                    const int active = (lane == 0) ? active0 : active1;
                    const pb_hls_u32 q = p + (pb_hls_u32)lane;
                    delta[lane] = active ? ((lane == 0) ? pb_lane0_mul(l_val[q], ukj)
                                                        : pb_lane1_mul(l_val[q], ukj))
                                         : 0.0f;
                }
                /* l_idx[] is unique in a canonical CSC column.  Each lane
                 * owns its delta RAM, so these RMWs are independent. */
#pragma HLS DEPENDENCE variable=lane0_delta inter false
#pragma HLS DEPENDENCE variable=lane1_delta inter false
                if (active0) lane0_delta[row0] -= delta[0];
                if (active1) lane1_delta[row1] -= delta[1];
            }
        }

        pb_hls_f32 pivot = pb_private_get(work_even, work_odd,
                                           lane0_delta, lane1_delta, col);
        if (pivot <= pivot_eps && pivot >= -pivot_eps) {
            pivot = pivot_eps;
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                col, pivot);
        }
        if (l_ptr[col] == l_ptr[col + 1U] ||
            l_idx[l_ptr[col]] != col ||
            u_ptr[col] == u_ptr[col + 1U] ||
            u_idx[u_ptr[col + 1U] - 1U] != col) {
            status = PB_HLS_BAD_PATTERN;
            return;
        }

        for (pb_hls_u32 p = u_ptr[col]; p < u_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = u_idx[p];
            if (row > col) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            u_val[p] = pb_private_get(work_even, work_odd,
                                      lane0_delta, lane1_delta, row);
        }
        for (pb_hls_u32 p = l_ptr[col]; p < l_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = l_idx[p];
            if (row < col) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            l_val[p] = (row == col) ? 1.0f :
                pb_private_get(work_even, work_odd, lane0_delta, lane1_delta, row) / pivot;
        }
    }
}

extern "C" void pb_gessm_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, const pb_hls_f32 *l_val,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=gessm_a depth=4097
#pragma HLS INTERFACE m_axi port=a_idx offset=slave bundle=gessm_a depth=65536
#pragma HLS INTERFACE m_axi port=a_val offset=slave bundle=gessm_a depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=gessm_l depth=4097
#pragma HLS INTERFACE m_axi port=l_idx offset=slave bundle=gessm_l depth=65536
#pragma HLS INTERFACE m_axi port=l_val offset=slave bundle=gessm_l depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_idx bundle=control
#pragma HLS INTERFACE s_axilite port=a_val bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_idx bundle=control
#pragma HLS INTERFACE s_axilite port=l_val bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N];
    pb_hls_f32 work_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 lane0_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane1_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane2_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane3_delta[PB_HLS_MAX_N];
    pb_hls_u32 panel_idx[PB_FACTOR4_PANEL_N];
    pb_hls_f32 panel_val[PB_FACTOR4_PANEL_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane1_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane2_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane3_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=panel_idx type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=panel_val type=ram_2p impl=bram
#pragma HLS ARRAY_PARTITION variable=panel_idx cyclic factor=PB_FACTOR4_LANES dim=1
#pragma HLS ARRAY_PARTITION variable=panel_val cyclic factor=PB_FACTOR4_LANES dim=1

    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(work_even, work_odd, lane0_delta, lane1_delta,
                                 lane2_delta, lane3_delta, row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = a_idx[p];
            if (row >= a_rows) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            pb_private_set_base4(work_even, work_odd, lane0_delta, lane1_delta,
                                 lane2_delta, lane3_delta, row, a_val[p]);
        }
        for (pb_hls_u32 k = 0U; k < a_rows; ++k) {
            const pb_hls_f32 rhs = pb_private_get4(work_even, work_odd,
                                                    lane0_delta, lane1_delta,
                                                    lane2_delta, lane3_delta, k);
            /* Match the sparse CPU kernel: an absent/zero RHS entry does not
             * require a diagonal lookup.  This also skips padded tail rows. */
            if (pb_hls_small(rhs)) {
                continue;
            }
            if (l_ptr[k] == l_ptr[k + 1U] || l_idx[l_ptr[k]] != k) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            const pb_hls_f32 diag = l_val[l_ptr[k]];
            if (pb_hls_small(diag)) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            const pb_hls_f32 x = rhs / diag;
            pb_private_set_base4(work_even, work_odd, lane0_delta, lane1_delta,
                                 lane2_delta, lane3_delta, k, x);
            if (pb_hls_small(x)) {
                continue;
            }
            const pb_hls_u32 begin = l_ptr[k] + 1U;
            const pb_hls_u32 end = l_ptr[k + 1U];
            /* Stage the canonical CSC source column in bounded panels.  The
             * panel arrays are cyclically banked four ways, so the compute
             * loop below reads one {row,value} pair per lane without touching
             * the m_axi gessm_l bundle. */
            for (pb_hls_u32 panel_begin = begin; panel_begin < end;
                 panel_begin += PB_FACTOR4_PANEL_N) {
                const pb_hls_u32 remaining = end - panel_begin;
                const pb_hls_u32 panel_count =
                    (remaining < PB_FACTOR4_PANEL_N) ? remaining : PB_FACTOR4_PANEL_N;
                for (pb_hls_u32 q = 0U; q < panel_count; ++q) {
#pragma HLS PIPELINE II=1
                    panel_idx[q] = l_idx[panel_begin + q];
                    panel_val[q] = l_val[panel_begin + q];
                }
                for (pb_hls_u32 q = 0U; q < panel_count; q += PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
                    const int active0 = q < panel_count;
                    const int active1 = q + 1U < panel_count;
                    const int active2 = q + 2U < panel_count;
                    const int active3 = q + 3U < panel_count;
                    const pb_hls_u32 row0 = active0 ? panel_idx[q] : 0U;
                    const pb_hls_u32 row1 = active1 ? panel_idx[q + 1U] : 0U;
                    const pb_hls_u32 row2 = active2 ? panel_idx[q + 2U] : 0U;
                    const pb_hls_u32 row3 = active3 ? panel_idx[q + 3U] : 0U;
                    const pb_hls_f32 d0 = active0 ? pb_lane0_mul(panel_val[q], x) : 0.0f;
                    const pb_hls_f32 d1 = active1 ? pb_lane1_mul(panel_val[q + 1U], x) : 0.0f;
                    const pb_hls_f32 d2 = active2 ? pb_lane2_mul(panel_val[q + 2U], x) : 0.0f;
                    const pb_hls_f32 d3 = active3 ? pb_lane3_mul(panel_val[q + 3U], x) : 0.0f;
                    /* A canonical CSC column has no duplicate row index;
                     * hence no two lanes update the same output row. */
#pragma HLS DEPENDENCE variable=lane0_delta inter false
#pragma HLS DEPENDENCE variable=lane1_delta inter false
 #pragma HLS DEPENDENCE variable=lane2_delta inter false
 #pragma HLS DEPENDENCE variable=lane3_delta inter false
                    if (active0) lane0_delta[row0] -= d0;
                    if (active1) lane1_delta[row1] -= d1;
                    if (active2) lane2_delta[row2] -= d2;
                    if (active3) lane3_delta[row3] -= d3;
                }
            }
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            a_val[p] = pb_private_get4(work_even, work_odd,
                                       lane0_delta, lane1_delta,
                                       lane2_delta, lane3_delta, a_idx[p]);
        }
    }
}

extern "C" void pb_tstrf_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *u_ptr,
    const pb_hls_u32 *u_idx, const pb_hls_f32 *u_val,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=tstrf_a depth=4097
#pragma HLS INTERFACE m_axi port=a_idx offset=slave bundle=tstrf_a depth=65536
#pragma HLS INTERFACE m_axi port=a_val offset=slave bundle=tstrf_a depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=tstrf_u depth=4097
#pragma HLS INTERFACE m_axi port=u_idx offset=slave bundle=tstrf_u depth=65536
#pragma HLS INTERFACE m_axi port=u_val offset=slave bundle=tstrf_u depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_idx bundle=control
#pragma HLS INTERFACE s_axilite port=a_val bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_idx bundle=control
#pragma HLS INTERFACE s_axilite port=u_val bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N];
    pb_hls_f32 work_odd[PB_FACTOR2_BANK_N];
    /* The two update lanes never share an accumulator RAM.  A column-local
     * value is base[row] + lane0_delta[row] + lane1_delta[row]. */
    pb_hls_f32 lane0_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane1_delta[PB_HLS_MAX_N];
    pb_hls_u32 mark_even[PB_FACTOR2_BANK_N];
    pb_hls_u32 mark_odd[PB_FACTOR2_BANK_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane1_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=mark_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=mark_odd type=ram_2p impl=bram

    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
        pb_mark_set(mark_even, mark_odd, row, 0U);
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        /* Empty padded columns are outside the true tail-block width. */
        if (a_ptr[col] == a_ptr[col + 1U]) {
            continue;
        }
        const pb_hls_u32 tag = col + 1U;
        for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = a_idx[p];
            if (row >= a_rows) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                row, a_val[p]);
            pb_mark_set(mark_even, mark_odd, row, tag);
        }
        if (u_ptr[col] == u_ptr[col + 1U] ||
            u_idx[u_ptr[col + 1U] - 1U] != col) {
            status = PB_HLS_BAD_PATTERN;
            return;
        }
        for (pb_hls_u32 up = u_ptr[col]; up + 1U < u_ptr[col + 1U]; ++up) {
            const pb_hls_u32 previous_col = u_idx[up];
            if (previous_col >= a_cols) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            const pb_hls_f32 factor = u_val[up];
            const pb_hls_u32 begin = a_ptr[previous_col];
            const pb_hls_u32 end = a_ptr[previous_col + 1U];
            for (pb_hls_u32 xp = begin; xp < end; xp += PB_FACTOR2_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row0 = a_idx[xp];
                const pb_hls_f32 product0 = pb_lane0_mul(a_val[xp], factor);
                const int active1 = xp + 1U < end;
                const pb_hls_u32 row1 = active1 ? a_idx[xp + 1U] : 0U;
                const pb_hls_f32 product1 = active1 ? pb_lane1_mul(a_val[xp + 1U], factor) : 0.0f;
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row0 >= a_rows ||
                    pb_mark_get(mark_even, mark_odd, row0) != tag ||
                    (active1 && (row1 >= a_rows ||
                     pb_mark_get(mark_even, mark_odd, row1) != tag))) {
                    status = PB_HLS_BAD_PATTERN;
                    return;
                }
#endif
                /* Each CSC column has unique row indices.  The lanes retain
                 * independent partial sums; pb_private_get() performs the
                 * deterministic reduction at materialisation. */
#pragma HLS DEPENDENCE variable=lane0_delta inter false
#pragma HLS DEPENDENCE variable=lane1_delta inter false
                lane0_delta[row0] -= product0;
                if (active1) lane1_delta[row1] -= product1;
            }
        }
        pb_hls_f32 diag = u_val[u_ptr[col + 1U] - 1U];
        if (diag <= pivot_eps && diag >= -pivot_eps) {
            diag = pivot_eps;
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            a_val[p] = pb_private_get(work_even, work_odd,
                                      lane0_delta, lane1_delta, a_idx[p]) / diag;
        }
    }
}

extern "C" void pb_ssssm_csc_tv(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_idx, const pb_hls_f32 *l_val,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_idx,
    const pb_hls_f32 *u_val, pb_hls_u32 a_rows,
    pb_hls_u32 a_cols, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=ssssm_a depth=4097
#pragma HLS INTERFACE m_axi port=a_idx offset=slave bundle=ssssm_a depth=65536
#pragma HLS INTERFACE m_axi port=a_val offset=slave bundle=ssssm_a depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=ssssm_l depth=4097
#pragma HLS INTERFACE m_axi port=l_idx offset=slave bundle=ssssm_l depth=65536
#pragma HLS INTERFACE m_axi port=l_val offset=slave bundle=ssssm_l depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=ssssm_u depth=4097
#pragma HLS INTERFACE m_axi port=u_idx offset=slave bundle=ssssm_u depth=65536
#pragma HLS INTERFACE m_axi port=u_val offset=slave bundle=ssssm_u depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_idx bundle=control
#pragma HLS INTERFACE s_axilite port=a_val bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_idx bundle=control
#pragma HLS INTERFACE s_axilite port=l_val bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_idx bundle=control
#pragma HLS INTERFACE s_axilite port=u_val bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=shared_dim bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N];
    pb_hls_f32 work_odd[PB_FACTOR2_BANK_N];
    /* Lane-private partial sums remove the two-lane read-modify-write
     * conflict on a sparse output row. */
    pb_hls_f32 lane0_delta[PB_HLS_MAX_N];
    pb_hls_f32 lane1_delta[PB_HLS_MAX_N];
    pb_hls_u32 mark_even[PB_FACTOR2_BANK_N];
    pb_hls_u32 mark_odd[PB_FACTOR2_BANK_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane0_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=lane1_delta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=mark_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=mark_odd type=ram_2p impl=bram

    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U || shared_dim == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N ||
        shared_dim > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
        pb_mark_set(mark_even, mark_odd, row, 0U);
    }

    /* CSC(A) is CSR(A^T). This computes
     * A^T <- A^T - U^T L^T without materializing any transpose. */
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        const pb_hls_u32 tag = col + 1U;
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = a_idx[p];
            if (row >= a_rows) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            pb_private_set_base(work_even, work_odd, lane0_delta, lane1_delta,
                                row, a_val[p]);
            pb_mark_set(mark_even, mark_odd, row, tag);
        }
        for (pb_hls_u32 up = u_ptr[col]; up < u_ptr[col + 1U]; ++up) {
            const pb_hls_u32 k = u_idx[up];
            if (k >= shared_dim) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            const pb_hls_f32 uv = u_val[up];
            const pb_hls_u32 begin = l_ptr[k];
            const pb_hls_u32 end = l_ptr[k + 1U];
            for (pb_hls_u32 lp = begin; lp < end; lp += PB_FACTOR2_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row0 = l_idx[lp];
                const pb_hls_f32 contribution0 = pb_lane0_mul(l_val[lp], uv);
                const int active1 = lp + 1U < end;
                const pb_hls_u32 row1 = active1 ? l_idx[lp + 1U] : 0U;
                const pb_hls_f32 contribution1 = active1 ? pb_lane1_mul(l_val[lp + 1U], uv) : 0.0f;
                const int active0_mark = pb_mark_get(mark_even, mark_odd, row0) == tag;
                const int active1_mark = active1 &&
                    pb_mark_get(mark_even, mark_odd, row1) == tag;
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row0 >= a_rows || (active1 && row1 >= a_rows) ||
                    (!active0_mark && !pb_hls_small(contribution0)) ||
                    (active1 && !active1_mark && !pb_hls_small(contribution1))) {
                    status = PB_HLS_BAD_PATTERN;
                    return;
                }
#endif
                /* l_idx[] is canonical within this CSC column.  Store the
                 * two contributions separately and merge only when A is
                 * materialised below. */
#pragma HLS DEPENDENCE variable=lane0_delta inter false
#pragma HLS DEPENDENCE variable=lane1_delta inter false
                if (active0_mark) lane0_delta[row0] -= contribution0;
                if (active1_mark) lane1_delta[row1] -= contribution1;
            }
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            a_val[p] = pb_private_get(work_even, work_odd,
                                      lane0_delta, lane1_delta, a_idx[p]);
        }
    }
}

extern "C" void pb_gessm_csc_tv_factor4_packed(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_idx,
    pb_hls_f32 *a_val, const pb_hls_u32 *l_ptr,
    const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=gessm4_a depth=4097
#pragma HLS INTERFACE m_axi port=a_idx offset=slave bundle=gessm4_a depth=65536
#pragma HLS INTERFACE m_axi port=a_val offset=slave bundle=gessm4_a depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=gessm4_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=gessm4_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=gessm4_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=gessm4_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=gessm4_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=gessm4_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_idx bundle=control
#pragma HLS INTERFACE s_axilite port=a_val bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N];
    pb_hls_f32 work_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 delta0[PB_HLS_MAX_N];
    pb_hls_f32 delta1[PB_HLS_MAX_N];
    pb_hls_f32 delta2[PB_HLS_MAX_N];
    pb_hls_f32 delta3[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta3 type=ram_2p impl=bram

    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(work_even, work_odd, delta0, delta1,
                                 delta2, delta3, row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = a_idx[p];
            if (row >= a_rows) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            pb_private_set_base4(work_even, work_odd, delta0, delta1,
                                 delta2, delta3, row, a_val[p]);
        }
        for (pb_hls_u32 k = 0U; k < a_rows; ++k) {
            const pb_hls_f32 rhs = pb_private_get4(work_even, work_odd,
                                                    delta0, delta1, delta2, delta3, k);
            if (pb_hls_small(rhs)) continue;
            const pb_hls_u32 nnz = l_ptr[k + 1U] - l_ptr[k];
            const pb_hls_u32 word_begin = l_pack_ptr[k];
            const pb_hls_u32 word_count = l_pack_ptr[k + 1U] - word_begin;
            if (nnz == 0U || word_count == 0U ||
                pb_lword_row(l_lane0[word_begin]) != k ||
                pb_hls_small(pb_lword_value(l_lane0[word_begin]))) {
                status = PB_HLS_BAD_PATTERN;
                return;
            }
            const pb_hls_f32 x = rhs / pb_lword_value(l_lane0[word_begin]);
            pb_private_set_base4(work_even, work_odd, delta0, delta1,
                                 delta2, delta3, k, x);
            if (pb_hls_small(x) || nnz == 1U) continue;

            pb_gessm4_prefetch_compute_packed(l_lane0, l_lane1, l_lane2, l_lane3,
                                               word_begin, word_count, nnz, x,
                                               delta0, delta1, delta2, delta3);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            a_val[p] = pb_private_get4(work_even, work_odd,
                                       delta0, delta1, delta2, delta3, a_idx[p]);
        }
    }
}

extern "C" void pb_gessm_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=gessm4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=gessm4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=gessm4a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=gessm4a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=gessm4a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=gessm4a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=gessm4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=gessm4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=gessm4l_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=gessm4l_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=gessm4l_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=gessm4l_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 work_even[PB_FACTOR2_BANK_N], work_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 delta0[PB_HLS_MAX_N], delta1[PB_HLS_MAX_N];
    pb_hls_f32 delta2[PB_HLS_MAX_N], delta3[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=work_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=work_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta3 type=ram_2p impl=bram
    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U || a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE; return;
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(work_even, work_odd, delta0, delta1, delta2, delta3, row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item = pb_csc4_read_word(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, p);
            const pb_hls_u32 row = pb_lword_row(item);
            if (row >= a_rows) { status = PB_HLS_BAD_PATTERN; return; }
            pb_private_set_base4(work_even, work_odd, delta0, delta1, delta2, delta3, row, pb_lword_value(item));
        }
        for (pb_hls_u32 k = 0U; k < a_rows; ++k) {
            const pb_hls_f32 rhs = pb_private_get4(work_even, work_odd, delta0, delta1, delta2, delta3, k);
            if (pb_hls_small(rhs)) continue;
            const pb_hls_u32 nnz = l_ptr[k + 1U] - l_ptr[k];
            const pb_hls_u32 wb = l_pack_ptr[k];
            const pb_hls_u32 wc = l_pack_ptr[k + 1U] - wb;
            if (nnz == 0U || wc == 0U || pb_lword_row(l_lane0[wb]) != k || pb_hls_small(pb_lword_value(l_lane0[wb]))) {
                status = PB_HLS_BAD_PATTERN; return;
            }
            const pb_hls_f32 x = rhs / pb_lword_value(l_lane0[wb]);
            pb_private_set_base4(work_even, work_odd, delta0, delta1, delta2, delta3, k, x);
            if (!pb_hls_small(x) && nnz > 1U)
                pb_gessm4_prefetch_compute_packed(l_lane0, l_lane1, l_lane2, l_lane3, wb, wc, nnz, x, delta0, delta1, delta2, delta3);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = pb_lword_row(pb_csc4_read_word(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, p));
            pb_csc4_write_value(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, p,
                                pb_private_get4(work_even, work_odd, delta0, delta1, delta2, delta3, row));
        }
    }
}

extern "C" void pb_getrf_csc_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1, pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1, pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=getrf4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=getrf4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=getrf4a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=getrf4a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=getrf4a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=getrf4a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=getrf4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=getrf4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=getrf4l_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=getrf4l_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=getrf4l_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=getrf4l_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=getrf4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=getrf4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=getrf4u_l0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=getrf4u_l1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=getrf4u_l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=getrf4u_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 d0[PB_HLS_MAX_N], d1[PB_HLS_MAX_N], d2[PB_HLS_MAX_N], d3[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d3 type=ram_2p impl=bram
    status = PB_HLS_OK;
    if (n == 0U || n > PB_HLS_MAX_N) { status = PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 col = 0U; col < n; ++col) {
        if (a_ptr[col] == a_ptr[col + 1U]) continue;
        for (pb_hls_u32 row = 0U; row < n; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(base_even, base_odd, d0, d1, d2, d3, row, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item = pb_csc4_read_word(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, p);
            const pb_hls_u32 row = pb_lword_row(item);
            if (row >= n) { status = PB_HLS_BAD_PATTERN; return; }
            pb_private_set_base4(base_even, base_odd, d0, d1, d2, d3, row, pb_lword_value(item));
        }
        for (pb_hls_u32 k = 0U; k < col; ++k) {
            const pb_hls_f32 ukj = pb_private_get4(base_even, base_odd, d0, d1, d2, d3, k);
            if (pb_hls_small(ukj)) continue;
            for (pb_hls_u32 p = l_ptr[k]; p < l_ptr[k + 1U]; p += PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 end = l_ptr[k + 1U];
                const int active0 = p < end;
                const int active1 = p + 1U < end;
                const int active2 = p + 2U < end;
                const int active3 = p + 3U < end;
                const pb_hls_u32 word = l_pack_ptr[k] + ((p - l_ptr[k]) >> 2U);
                const pb_hls_lword w0 = active0 ? l_lane0[word] : 0ULL;
                const pb_hls_lword w1 = active1 ? l_lane1[word] : 0ULL;
                const pb_hls_lword w2 = active2 ? l_lane2[word] : 0ULL;
                const pb_hls_lword w3 = active3 ? l_lane3[word] : 0ULL;
                const pb_hls_u32 r0 = active0 ? pb_lword_row(w0) : 0U;
                const pb_hls_u32 r1 = active1 ? pb_lword_row(w1) : 0U;
                const pb_hls_u32 r2 = active2 ? pb_lword_row(w2) : 0U;
                const pb_hls_u32 r3 = active3 ? pb_lword_row(w3) : 0U;
                if (active0 && r0 > k) d0[r0] -= pb_lane0_mul(pb_lword_value(w0), ukj);
                if (active1 && r1 > k) d1[r1] -= pb_lane1_mul(pb_lword_value(w1), ukj);
                if (active2 && r2 > k) d2[r2] -= pb_lane2_mul(pb_lword_value(w2), ukj);
                if (active3 && r3 > k) d3[r3] -= pb_lane3_mul(pb_lword_value(w3), ukj);
            }
        }
        pb_hls_f32 pivot = pb_private_get4(base_even, base_odd, d0, d1, d2, d3, col);
        if (pivot <= pivot_eps && pivot >= -pivot_eps) pivot = pivot_eps;
        /* One reciprocal per pivot keeps the L write-back loop on the short
         * multiply path.  The previous per-entry divide was the remaining
         * 11.95 ns critical operation in the 4+4 rolling hierarchy. */
        const pb_hls_f32 inv_pivot = 1.0f / pivot;
        if (l_ptr[col] == l_ptr[col + 1U] || u_ptr[col] == u_ptr[col + 1U]) { status = PB_HLS_BAD_PATTERN; return; }
        for (pb_hls_u32 p = u_ptr[col]; p < u_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = pb_lword_row(pb_csc4_read_word(u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3, col, p));
            if (row > col) { status = PB_HLS_BAD_PATTERN; return; }
            pb_csc4_write_value(u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3, col, p,
                                pb_private_get4(base_even, base_odd, d0, d1, d2, d3, row));
        }
        for (pb_hls_u32 p = l_ptr[col]; p < l_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = pb_lword_row(pb_csc4_read_word(l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3, col, p));
            if (row < col) { status = PB_HLS_BAD_PATTERN; return; }
            const pb_hls_f32 out = (row == col) ? 1.0f : pb_private_get4(base_even, base_odd, d0, d1, d2, d3, row) * inv_pivot;
            pb_csc4_write_value(l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3, col, p, out);
        }
    }
}

extern "C" void pb_getrf_csc_packed_scalar_protocol(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 delta[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta type=ram_2p impl=bram
    status=PB_HLS_OK;
    if (n==0U || n>PB_HLS_MAX_N) { status=PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 col=0U; col<n; ++col) {
        if (a_ptr[col]==a_ptr[col+1U]) continue;
        for (pb_hls_u32 row=0U; row<n; ++row) {
#pragma HLS PIPELINE II=1
            pb_bank_set(base_even,base_odd,row,0.0f); delta[row]=0.0f;
        }
        for (pb_hls_u32 p=a_ptr[col]; p<a_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item=pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p);
            const pb_hls_u32 row=pb_lword_row(item);
            if (row>=n) { status=PB_HLS_BAD_PATTERN; return; }
            pb_bank_set(base_even,base_odd,row,pb_lword_value(item));
        }
        for (pb_hls_u32 k=0U;k<col;++k) {
            const pb_hls_f32 ukj=pb_bank_get(base_even,base_odd,k)+delta[k];
            if (pb_hls_small(ukj)) continue;
            for (pb_hls_u32 p=l_ptr[k];p<l_ptr[k+1U];++p) {
#pragma HLS PIPELINE II=1
                const pb_hls_lword item=pb_csc4_read_word(l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,k,p);
                const pb_hls_u32 row=pb_lword_row(item);
                if (row>k) delta[row]-=pb_lword_value(item)*ukj;
            }
        }
        const pb_hls_f32 pivot0=pb_bank_get(base_even,base_odd,col)+delta[col];
        pb_hls_f32 pivot=pivot0;
        if (pivot<=pivot_eps && pivot>=-pivot_eps) pivot=pivot_eps;
        if (l_ptr[col]==l_ptr[col+1U] || u_ptr[col]==u_ptr[col+1U]) { status=PB_HLS_BAD_PATTERN; return; }
        for (pb_hls_u32 p=u_ptr[col];p<u_ptr[col+1U];++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item=pb_csc4_read_word(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,p);
            const pb_hls_u32 row=pb_lword_row(item);
            if (row>col) { status=PB_HLS_BAD_PATTERN; return; }
            pb_csc4_write_value(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,p,
                pb_bank_get(base_even,base_odd,row)+delta[row]);
        }
        for (pb_hls_u32 p=l_ptr[col];p<l_ptr[col+1U];++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item=pb_csc4_read_word(l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,col,p);
            const pb_hls_u32 row=pb_lword_row(item);
            if (row<col) { status=PB_HLS_BAD_PATTERN; return; }
            const pb_hls_f32 out=(row==col)?1.0f:(pb_bank_get(base_even,base_odd,row)+delta[row])/pivot;
            pb_csc4_write_value(l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,col,p,out);
        }
    }
}

/* GETRF optimization shadow.
 *
 * The outer column loop is intentionally sequential: column j consumes L
 * values produced by earlier columns, which is a true LU dependence.  Every
 * streamable loop inside one column is instead organized for II=1:
 *
 *   DDR CSC4 read -> on-chip packed buffer -> scalar scatter/gather
 *                 -> four-lane update -> write-only CSC4 burst.
 *
 * Staging the row metadata also avoids pb_csc4_write_value(), whose hidden
 * AXI read-modify-write forced II=23/31 in the control implementation. */
extern "C" void pb_getrf_csc_factor4_ii1_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1, pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1, pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 n, pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=getrfii1a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=getrfii1a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=getrfii1a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=getrfii1a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=getrfii1a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=getrfii1a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=getrfii1l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=getrfii1l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=getrfii1l_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=getrfii1l_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=getrfii1l_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=getrfii1l_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=getrfii1u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=getrfii1u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=getrfii1u_l0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=getrfii1u_l1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=getrfii1u_l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=getrfii1u_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 d0[PB_HLS_MAX_N], d1[PB_HLS_MAX_N];
    pb_hls_f32 d2[PB_HLS_MAX_N], d3[PB_HLS_MAX_N];
    pb_hls_lword packed0[PB_FACTOR4_PACK_N], packed1[PB_FACTOR4_PACK_N];
    pb_hls_lword packed2[PB_FACTOR4_PACK_N], packed3[PB_FACTOR4_PACK_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d3 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=packed0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=packed1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=packed2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=packed3 type=ram_2p impl=bram

    status = PB_HLS_OK;
    if (n == 0U || n > PB_HLS_MAX_N) { status = PB_HLS_BAD_SIZE; return; }

GETRF_II1_COLUMN:
    for (pb_hls_u32 col = 0U; col < n; ++col) {
        if (a_ptr[col] == a_ptr[col + 1U]) continue;

GETRF_II1_CLEAR:
        for (pb_hls_u32 row = 0U; row < n; ++row) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(base_even, base_odd, d0, d1, d2, d3, row, 0.0f);
        }

        const pb_hls_u32 a_nnz = a_ptr[col + 1U] - a_ptr[col];
        const pb_hls_u32 a_wb = a_pack_ptr[col];
        const pb_hls_u32 a_wc = a_pack_ptr[col + 1U] - a_wb;
GETRF_II1_A_READ:
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            packed0[w] = a_lane0[a_wb + w];
            packed1[w] = a_lane1[a_wb + w];
            packed2[w] = a_lane2[a_wb + w];
            packed3[w] = a_lane3[a_wb + w];
        }

        /* Four scalar scatter passes preserve the control implementation's
         * base-plus-four-deltas summation order while requiring at most one
         * write to either base bank in any cycle. */
GETRF_II1_A_SCATTER0:
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            if ((w << 2U) < a_nnz) {
                const pb_hls_u32 row = pb_lword_row(packed0[w]);
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row >= n) { status = PB_HLS_BAD_PATTERN; return; }
#endif
                pb_bank_set(base_even, base_odd, row, pb_lword_value(packed0[w]));
            }
        }
GETRF_II1_A_SCATTER1:
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            if ((w << 2U) + 1U < a_nnz) {
                const pb_hls_u32 row = pb_lword_row(packed1[w]);
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row >= n) { status = PB_HLS_BAD_PATTERN; return; }
#endif
                pb_bank_set(base_even, base_odd, row, pb_lword_value(packed1[w]));
            }
        }
GETRF_II1_A_SCATTER2:
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            if ((w << 2U) + 2U < a_nnz) {
                const pb_hls_u32 row = pb_lword_row(packed2[w]);
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row >= n) { status = PB_HLS_BAD_PATTERN; return; }
#endif
                pb_bank_set(base_even, base_odd, row, pb_lword_value(packed2[w]));
            }
        }
GETRF_II1_A_SCATTER3:
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            if ((w << 2U) + 3U < a_nnz) {
                const pb_hls_u32 row = pb_lword_row(packed3[w]);
#if !PB_FACTOR2_TRUSTED_SYMBOLIC
                if (row >= n) { status = PB_HLS_BAD_PATTERN; return; }
#endif
                pb_bank_set(base_even, base_odd, row, pb_lword_value(packed3[w]));
            }
        }

GETRF_II1_PREVIOUS_COLUMNS:
        for (pb_hls_u32 k = 0U; k < col; ++k) {
            const pb_hls_f32 ukj = pb_private_get4(base_even, base_odd, d0, d1, d2, d3, k);
            if (pb_hls_small(ukj)) continue;
            const pb_hls_u32 l_nnz = l_ptr[k + 1U] - l_ptr[k];
            const pb_hls_u32 l_wb = l_pack_ptr[k];
            const pb_hls_u32 l_wc = l_pack_ptr[k + 1U] - l_wb;
            if (l_nnz == 0U || l_wc == 0U ||
                pb_lword_row(l_lane0[l_wb]) != k ||
                pb_hls_small(pb_lword_value(l_lane0[l_wb]))) {
                status = PB_HLS_BAD_PATTERN; return;
            }
            if (l_nnz > 1U)
                pb_gessm4_prefetch_compute_packed(
                    l_lane0, l_lane1, l_lane2, l_lane3,
                    l_wb, l_wc, l_nnz, ukj, d0, d1, d2, d3);
        }

        pb_hls_f32 pivot = pb_private_get4(base_even, base_odd, d0, d1, d2, d3, col);
        if (pivot <= pivot_eps && pivot >= -pivot_eps) pivot = pivot_eps;
        if (l_ptr[col] == l_ptr[col + 1U] || u_ptr[col] == u_ptr[col + 1U]) {
            status = PB_HLS_BAD_PATTERN; return;
        }

        /* Stage and rewrite U.  No output loop reads U through AXI after the
         * first packed burst, so the final loop is write-only. */
        const pb_hls_u32 u_nnz = u_ptr[col + 1U] - u_ptr[col];
        const pb_hls_u32 u_wb = u_pack_ptr[col];
        const pb_hls_u32 u_wc = u_pack_ptr[col + 1U] - u_wb;
GETRF_II1_U_READ:
        for (pb_hls_u32 w = 0U; w < u_wc; ++w) {
#pragma HLS PIPELINE II=1
            packed0[w] = u_lane0[u_wb + w];
            packed1[w] = u_lane1[u_wb + w];
            packed2[w] = u_lane2[u_wb + w];
            packed3[w] = u_lane3[u_wb + w];
        }
#define PB_GETRF_II1_U_COMPUTE(LANE, PACKED)                                      \
GETRF_II1_U_COMPUTE##LANE:                                                        \
        for (pb_hls_u32 w = 0U; w < u_wc; ++w) {                                  \
            _Pragma("HLS PIPELINE II=1")                                          \
            _Pragma(PB_T4_STR(HLS DEPENDENCE variable=PACKED inter false))         \
            if ((w << 2U) + LANE < u_nnz) {                                       \
                const pb_hls_u32 row = pb_lword_row(PACKED[w]);                    \
                /* Runtime inputs come from the canonical CPU symbolic packer. */  \
                /* Keep expensive bounds checks in the debug configuration. */     \
                PB_GETRF_II1_U_VALIDATE(row, col)                                  \
                const pb_hls_f32 value = pb_private_get4(                          \
                    base_even, base_odd, d0, d1, d2, d3, row);                     \
                PACKED[w] = pb_lword_with_value(PACKED[w], value);                 \
            }                                                                       \
        }
#if PB_FACTOR2_TRUSTED_SYMBOLIC
#define PB_GETRF_II1_U_VALIDATE(ROW, COL)
#else
#define PB_GETRF_II1_U_VALIDATE(ROW, COL)                                           \
                if ((ROW) > (COL)) { status = PB_HLS_BAD_PATTERN; return; }
#endif
        PB_GETRF_II1_U_COMPUTE(0U, packed0)
        PB_GETRF_II1_U_COMPUTE(1U, packed1)
        PB_GETRF_II1_U_COMPUTE(2U, packed2)
        PB_GETRF_II1_U_COMPUTE(3U, packed3)
#undef PB_GETRF_II1_U_COMPUTE
#undef PB_GETRF_II1_U_VALIDATE
GETRF_II1_U_WRITE:
        for (pb_hls_u32 w = 0U; w < u_wc; ++w) {
#pragma HLS PIPELINE II=1
            u_lane0[u_wb + w] = packed0[w];
            u_lane1[u_wb + w] = packed1[w];
            u_lane2[u_wb + w] = packed2[w];
            u_lane3[u_wb + w] = packed3[w];
        }

        /* One divider per pivot; all L entries use pipelined multiplies. */
        const pb_hls_f32 inv_pivot = 1.0f / pivot;
        const pb_hls_u32 l_nnz = l_ptr[col + 1U] - l_ptr[col];
        const pb_hls_u32 l_wb = l_pack_ptr[col];
        const pb_hls_u32 l_wc = l_pack_ptr[col + 1U] - l_wb;
GETRF_II1_L_READ:
        for (pb_hls_u32 w = 0U; w < l_wc; ++w) {
#pragma HLS PIPELINE II=1
            packed0[w] = l_lane0[l_wb + w];
            packed1[w] = l_lane1[l_wb + w];
            packed2[w] = l_lane2[l_wb + w];
            packed3[w] = l_lane3[l_wb + w];
        }
#define PB_GETRF_II1_L_COMPUTE(LANE, PACKED)                                      \
GETRF_II1_L_COMPUTE##LANE:                                                        \
        for (pb_hls_u32 w = 0U; w < l_wc; ++w) {                                  \
            _Pragma("HLS PIPELINE II=1")                                          \
            _Pragma(PB_T4_STR(HLS DEPENDENCE variable=PACKED inter false))         \
            if ((w << 2U) + LANE < l_nnz) {                                       \
                const pb_hls_u32 row = pb_lword_row(PACKED[w]);                    \
                PB_GETRF_II1_L_VALIDATE(row, col)                                  \
                const pb_hls_f32 value = (row == col) ? 1.0f :                     \
                    pb_private_get4(base_even, base_odd, d0, d1, d2, d3, row) *    \
                    inv_pivot;                                                     \
                PACKED[w] = pb_lword_with_value(PACKED[w], value);                 \
            }                                                                       \
        }
#if PB_FACTOR2_TRUSTED_SYMBOLIC
#define PB_GETRF_II1_L_VALIDATE(ROW, COL)
#else
#define PB_GETRF_II1_L_VALIDATE(ROW, COL)                                           \
                if ((ROW) < (COL)) { status = PB_HLS_BAD_PATTERN; return; }
#endif
        PB_GETRF_II1_L_COMPUTE(0U, packed0)
        PB_GETRF_II1_L_COMPUTE(1U, packed1)
        PB_GETRF_II1_L_COMPUTE(2U, packed2)
        PB_GETRF_II1_L_COMPUTE(3U, packed3)
#undef PB_GETRF_II1_L_COMPUTE
#undef PB_GETRF_II1_L_VALIDATE
GETRF_II1_L_WRITE:
        for (pb_hls_u32 w = 0U; w < l_wc; ++w) {
#pragma HLS PIPELINE II=1
            l_lane0[l_wb + w] = packed0[w];
            l_lane1[l_wb + w] = packed1[w];
            l_lane2[l_wb + w] = packed2[w];
            l_lane3[l_wb + w] = packed3[w];
        }
    }
}

extern "C" void pb_tstrf_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1, pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1, const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=tstrf4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=tstrf4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=tstrf4a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=tstrf4a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=tstrf4a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=tstrf4a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=tstrf4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=tstrf4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=tstrf4u_l0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=tstrf4u_l1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=tstrf4u_l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=tstrf4u_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 d0[PB_HLS_MAX_N], d1[PB_HLS_MAX_N], d2[PB_HLS_MAX_N], d3[PB_HLS_MAX_N];
    pb_hls_u32 mark_even[PB_FACTOR2_BANK_N], mark_odd[PB_FACTOR2_BANK_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d3 type=ram_2p impl=bram
    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U || a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) { status = PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 r = 0U; r < a_rows; ++r) { pb_mark_set(mark_even, mark_odd, r, 0U); }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        if (a_ptr[col] == a_ptr[col + 1U]) continue;
        const pb_hls_u32 tag = col + 1U;
        for (pb_hls_u32 r = 0U; r < a_rows; ++r) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(base_even, base_odd, d0, d1, d2, d3, r, 0.0f);
        }
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col + 1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item = pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p);
            const pb_hls_u32 r = pb_lword_row(item);
            if (r >= a_rows) { status = PB_HLS_BAD_PATTERN; return; }
            pb_private_set_base4(base_even,base_odd,d0,d1,d2,d3,r,pb_lword_value(item));
            pb_mark_set(mark_even,mark_odd,r,tag);
        }
        if (u_ptr[col] == u_ptr[col+1U]) { status = PB_HLS_BAD_PATTERN; return; }
        for (pb_hls_u32 up = u_ptr[col]; up + 1U < u_ptr[col+1U]; ++up) {
            const pb_hls_lword uit = pb_csc4_read_word(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,up);
            const pb_hls_u32 prev = pb_lword_row(uit);
            const pb_hls_f32 factor = pb_lword_value(uit);
            if (prev >= a_cols) { status = PB_HLS_BAD_PATTERN; return; }
            for (pb_hls_u32 xp = a_ptr[prev]; xp < a_ptr[prev+1U]; xp += PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 end = a_ptr[prev + 1U];
                const int active0 = xp < end;
                const int active1 = xp + 1U < end;
                const int active2 = xp + 2U < end;
                const int active3 = xp + 3U < end;
                const pb_hls_u32 word = a_pack_ptr[prev] + ((xp - a_ptr[prev]) >> 2U);
                const pb_hls_lword w0 = active0 ? a_lane0[word] : 0ULL;
                const pb_hls_lword w1 = active1 ? a_lane1[word] : 0ULL;
                const pb_hls_lword w2 = active2 ? a_lane2[word] : 0ULL;
                const pb_hls_lword w3 = active3 ? a_lane3[word] : 0ULL;
                const pb_hls_u32 r0 = active0 ? pb_lword_row(w0) : 0U;
                const pb_hls_u32 r1 = active1 ? pb_lword_row(w1) : 0U;
                const pb_hls_u32 r2 = active2 ? pb_lword_row(w2) : 0U;
                const pb_hls_u32 r3 = active3 ? pb_lword_row(w3) : 0U;
                if (active0 && pb_mark_get(mark_even,mark_odd,r0) == tag) d0[r0] -= pb_lane0_mul(pb_lword_value(w0),factor);
                if (active1 && pb_mark_get(mark_even,mark_odd,r1) == tag) d1[r1] -= pb_lane1_mul(pb_lword_value(w1),factor);
                if (active2 && pb_mark_get(mark_even,mark_odd,r2) == tag) d2[r2] -= pb_lane2_mul(pb_lword_value(w2),factor);
                if (active3 && pb_mark_get(mark_even,mark_odd,r3) == tag) d3[r3] -= pb_lane3_mul(pb_lword_value(w3),factor);
            }
        }
        pb_hls_lword diagw = pb_csc4_read_word(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,u_ptr[col+1U]-1U);
        pb_hls_f32 diag = pb_lword_value(diagw);
        if (diag <= pivot_eps && diag >= -pivot_eps) diag = pivot_eps;
        /* Keep the reciprocal outside the write-back loop.  The previous
         * implementation put a scalar divide on the critical write-back
         * path for every A entry.  This is mathematically the same
         * TSTRF operation, but exposes one divider per pivot followed by a
         * short multiply pipeline, matching the GETRF implementation. */
        const pb_hls_f32 inv_diag = 1.0f / diag;
        for (pb_hls_u32 p = a_ptr[col]; p < a_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 r = pb_lword_row(pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p));
            pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p,
                pb_private_get4(base_even,base_odd,d0,d1,d2,d3,r) * inv_diag);
        }
    }
}

extern "C" void pb_ssssm_csc_tv_factor4_packed_all(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1, pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1, const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1, const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=ssssm4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=ssssm4a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=ssssm4a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=ssssm4a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=ssssm4a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=ssssm4a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=ssssm4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=ssssm4l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=ssssm4l_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=ssssm4l_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=ssssm4l_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=ssssm4l_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=ssssm4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=ssssm4u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=ssssm4u_l0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=ssssm4u_l1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=ssssm4u_l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=ssssm4u_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=shared_dim bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 d0[PB_HLS_MAX_N], d1[PB_HLS_MAX_N], d2[PB_HLS_MAX_N], d3[PB_HLS_MAX_N];
    pb_hls_u32 mark_even[PB_FACTOR2_BANK_N], mark_odd[PB_FACTOR2_BANK_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d3 type=ram_2p impl=bram
    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U || shared_dim == 0U || a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N || shared_dim > PB_HLS_MAX_N) { status = PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 r=0U; r<a_rows; ++r) pb_mark_set(mark_even,mark_odd,r,0U);
    for (pb_hls_u32 col=0U; col<a_cols; ++col) {
        const pb_hls_u32 tag=col+1U;
#ifndef PB_SSSSM_PACKED_LAZY_RESET
        for (pb_hls_u32 r=0U; r<a_rows; ++r) {
#pragma HLS PIPELINE II=1
            pb_private_set_base4(base_even,base_odd,d0,d1,d2,d3,r,0.0f);
        }
#endif
        /* Every row that can be read or updated below belongs to the fixed
         * symbolic A pattern and is initialized here.  set_base4 resets the
         * base value and all four delta banks, so clearing all a_rows above
         * is unnecessary when PB_SSSSM_PACKED_LAZY_RESET is enabled. */
        for (pb_hls_u32 p=a_ptr[col]; p<a_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword item=pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p);
            const pb_hls_u32 r=pb_lword_row(item);
            if (r>=a_rows) { status=PB_HLS_BAD_PATTERN; return; }
            pb_private_set_base4(base_even,base_odd,d0,d1,d2,d3,r,pb_lword_value(item));
            pb_mark_set(mark_even,mark_odd,r,tag);
        }
        for (pb_hls_u32 up=u_ptr[col]; up<u_ptr[col+1U]; ++up) {
            const pb_hls_lword uit=pb_csc4_read_word(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,up);
            const pb_hls_u32 k=pb_lword_row(uit);
            const pb_hls_f32 uv=pb_lword_value(uit);
            if (k>=shared_dim) { status=PB_HLS_BAD_PATTERN; return; }
            for (pb_hls_u32 lp=l_ptr[k]; lp<l_ptr[k+1U]; lp += PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 end = l_ptr[k + 1U];
                const int active0 = lp < end;
                const int active1 = lp + 1U < end;
                const int active2 = lp + 2U < end;
                const int active3 = lp + 3U < end;
                const pb_hls_u32 word = l_pack_ptr[k] + ((lp - l_ptr[k]) >> 2U);
                const pb_hls_lword w0 = active0 ? l_lane0[word] : 0ULL;
                const pb_hls_lword w1 = active1 ? l_lane1[word] : 0ULL;
                const pb_hls_lword w2 = active2 ? l_lane2[word] : 0ULL;
                const pb_hls_lword w3 = active3 ? l_lane3[word] : 0ULL;
                const pb_hls_u32 r0 = active0 ? pb_lword_row(w0) : 0U;
                const pb_hls_u32 r1 = active1 ? pb_lword_row(w1) : 0U;
                const pb_hls_u32 r2 = active2 ? pb_lword_row(w2) : 0U;
                const pb_hls_u32 r3 = active3 ? pb_lword_row(w3) : 0U;
                if (active0 && pb_mark_get(mark_even,mark_odd,r0)==tag) d0[r0] -= pb_lane0_mul(pb_lword_value(w0),uv);
                if (active1 && pb_mark_get(mark_even,mark_odd,r1)==tag) d1[r1] -= pb_lane1_mul(pb_lword_value(w1),uv);
                if (active2 && pb_mark_get(mark_even,mark_odd,r2)==tag) d2[r2] -= pb_lane2_mul(pb_lword_value(w2),uv);
                if (active3 && pb_mark_get(mark_even,mark_odd,r3)==tag) d3[r3] -= pb_lane3_mul(pb_lword_value(w3),uv);
            }
        }
        for (pb_hls_u32 p=a_ptr[col]; p<a_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 r=pb_lword_row(pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p));
            pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p,
                pb_private_get4(base_even,base_odd,d0,d1,d2,d3,r));
        }
    }
}

/* -------------------------------------------------------------------------
 * SSSSM stream/merge shadow
 * -------------------------------------------------------------------------
 * This path follows the useful part of /output/ssssm's architecture without
 * changing the deployed ABI: a packed L column is treated as a sorted partial
 * stream, four products are formed per packed word, and a sorted merge applies
 * those partials to the symbolic A column.  The merge is deliberately local
 * (one target column at a time), so the only external A write is the final
 * packed writeback.  It is a shadow top and is not used by the existing
 * runtime/backend.
 */
static void pb_ssssm_streammerge_one_lcol4(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 col, pb_hls_u32 source_col, pb_hls_f32 factor,
    pb_hls_u32 a_rows, pb_hls_f32 *acc)
{
    pb_hls_u32 partial_row[PB_HLS_MAX_N];
    pb_hls_f32 partial_val[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=partial_row type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=partial_val type=ram_2p impl=bram

    const pb_hls_u32 begin = l_ptr[source_col];
    const pb_hls_u32 end = l_ptr[source_col + 1U];
    const pb_hls_u32 count = end - begin;
    if (count == 0U) return;

    /* Four independent products are kept explicit.  The records are written
     * in row order, which is the sorted stream contract consumed below. */
    for (pb_hls_u32 q = 0U; q < count; q += PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p = begin + q;
        const pb_hls_u32 word = l_pack_ptr[source_col] + (q >> 2U);
        const int v0 = p < end;
        const int v1 = (p + 1U) < end;
        const int v2 = (p + 2U) < end;
        const int v3 = (p + 3U) < end;
        const pb_hls_lword w0 = v0 ? l_lane0[word] : 0ULL;
        const pb_hls_lword w1 = v1 ? l_lane1[word] : 0ULL;
        const pb_hls_lword w2 = v2 ? l_lane2[word] : 0ULL;
        const pb_hls_lword w3 = v3 ? l_lane3[word] : 0ULL;
        const pb_hls_f32 x0 = v0 ? pb_lane0_mul(pb_lword_value(w0), factor) : 0.0f;
        const pb_hls_f32 x1 = v1 ? pb_lane1_mul(pb_lword_value(w1), factor) : 0.0f;
        const pb_hls_f32 x2 = v2 ? pb_lane2_mul(pb_lword_value(w2), factor) : 0.0f;
        const pb_hls_f32 x3 = v3 ? pb_lane3_mul(pb_lword_value(w3), factor) : 0.0f;
        if (v0) { partial_row[q] = pb_lword_row(w0); partial_val[q] = x0; }
        if (v1) { partial_row[q + 1U] = pb_lword_row(w1); partial_val[q + 1U] = x1; }
        if (v2) { partial_row[q + 2U] = pb_lword_row(w2); partial_val[q + 2U] = x2; }
        if (v3) { partial_row[q + 3U] = pb_lword_row(w3); partial_val[q + 3U] = x3; }
    }

    /* Sorted merge: skip partial rows outside the fixed symbolic A pattern;
     * equal row IDs are accumulated exactly once. */
    pb_hls_u32 li = 0U;
    for (pb_hls_u32 ap = a_ptr[col]; ap < a_ptr[col + 1U]; ++ap) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 ar = pb_lword_row(pb_csc4_read_word(
            a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, ap));
        while (li < count && partial_row[li] < ar) ++li;
        if (li < count && partial_row[li] == ar) {
            acc[ap - a_ptr[col]] -= partial_val[li];
            ++li;
        }
        if (ar >= a_rows) break;
    }
}

extern "C" void pb_ssssm_csc_tv_factor4_streammerge_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1, pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1, const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1, const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=smsha_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=smsha_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=smsha_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=smsha_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=smsha_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=smsha_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=smsha_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=smsha_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=smsha_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=smsha_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=smsha_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=smsha_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=smsha_umeta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=smsha_umeta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=smsha_u0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=smsha_u1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=smsha_u2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=smsha_u3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=shared_dim bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 acc[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=bram
    status = PB_HLS_OK;
    if (a_rows == 0U || a_cols == 0U || shared_dim == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N || shared_dim > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE; return;
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        const pb_hls_u32 acount = a_ptr[col + 1U] - a_ptr[col];
        for (pb_hls_u32 q = 0U; q < acount; ++q) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 ap = a_ptr[col] + q;
            const pb_hls_lword aw = pb_csc4_read_word(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3, col, ap);
            acc[q] = pb_lword_value(aw);
        }
        for (pb_hls_u32 up = u_ptr[col]; up < u_ptr[col + 1U]; ++up) {
            const pb_hls_lword uw = pb_csc4_read_word(u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3, col, up);
            const pb_hls_u32 k = pb_lword_row(uw);
            if (k >= shared_dim || k >= a_cols) { status = PB_HLS_BAD_PATTERN; return; }
            pb_ssssm_streammerge_one_lcol4(
                a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
                l_ptr, l_pack_ptr, l_lane0, l_lane1, l_lane2, l_lane3,
                col, k, pb_lword_value(uw), a_rows, acc);
        }
        for (pb_hls_u32 q = 0U; q < acount; ++q) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 ap = a_ptr[col] + q;
            pb_csc4_write_value(a_ptr, a_pack_ptr, a_lane0, a_lane1, a_lane2, a_lane3,
                                col, ap, acc[q]);
        }
    }
}

/* -------------------------------------------------------------------------
 * True hls::stream + DATAFLOW + four-way merge-tree SSSSM shadow
 * ------------------------------------------------------------------------- */
typedef struct {
    pb_hls_u32 row;
    pb_hls_f32 value;
    bool end;
} pb_ssssm_stream_item;
typedef hls::stream<pb_ssssm_stream_item> pb_ssssm_pair_stream;

static pb_ssssm_stream_item pb_ssssm_end_item()
{
#pragma HLS INLINE
    pb_ssssm_stream_item x;
    x.row = 0U; x.value = 0.0f; x.end = true;
    return x;
}

static void pb_ssssm_emit_lane0(
    const pb_hls_lword *lane, pb_hls_u32 pack_base,
    pb_hls_u32 begin, pb_hls_u32 end, pb_hls_f32 factor,
    pb_ssssm_pair_stream *out)
{
    for (pb_hls_u32 q = 0U; q < end - begin; q += 4U) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p = begin + q;
        if (p < end) {
            const pb_hls_lword w = lane[pack_base + (q >> 2U)];
            pb_ssssm_stream_item x;
            x.row = pb_lword_row(w); x.value = pb_lane0_mul(pb_lword_value(w), factor); x.end = false;
            out->write(x);
        }
    }
    out->write(pb_ssssm_end_item());
}

static void pb_ssssm_emit_lane1(
    const pb_hls_lword *lane, pb_hls_u32 pack_base,
    pb_hls_u32 begin, pb_hls_u32 end, pb_hls_f32 factor,
    pb_ssssm_pair_stream *out)
{
    for (pb_hls_u32 q = 1U; q < end - begin; q += 4U) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w = lane[pack_base + (q >> 2U)];
        pb_ssssm_stream_item x;
        x.row = pb_lword_row(w); x.value = pb_lane1_mul(pb_lword_value(w), factor); x.end = false;
        out->write(x);
    }
    out->write(pb_ssssm_end_item());
}

static void pb_ssssm_emit_lane2(
    const pb_hls_lword *lane, pb_hls_u32 pack_base,
    pb_hls_u32 begin, pb_hls_u32 end, pb_hls_f32 factor,
    pb_ssssm_pair_stream *out)
{
    for (pb_hls_u32 q = 2U; q < end - begin; q += 4U) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w = lane[pack_base + (q >> 2U)];
        pb_ssssm_stream_item x;
        x.row = pb_lword_row(w); x.value = pb_lane2_mul(pb_lword_value(w), factor); x.end = false;
        out->write(x);
    }
    out->write(pb_ssssm_end_item());
}

static void pb_ssssm_emit_lane3(
    const pb_hls_lword *lane, pb_hls_u32 pack_base,
    pb_hls_u32 begin, pb_hls_u32 end, pb_hls_f32 factor,
    pb_ssssm_pair_stream *out)
{
    for (pb_hls_u32 q = 3U; q < end - begin; q += 4U) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w = lane[pack_base + (q >> 2U)];
        pb_ssssm_stream_item x;
        x.row = pb_lword_row(w); x.value = pb_lane3_mul(pb_lword_value(w), factor); x.end = false;
        out->write(x);
    }
    out->write(pb_ssssm_end_item());
}

/*
 * Two-input merge primitive.  Each input is row-sorted and terminated by an
 * end item.  Keeping this as a small primitive allows the four-way merge to
 * be scheduled as a balanced tree instead of one long four-way compare/read
 * loop.
 */
static void pb_ssssm_merge2(
    pb_ssssm_pair_stream *in0, pb_ssssm_pair_stream *in1,
    pb_ssssm_pair_stream *out)
{
    pb_ssssm_stream_item x0=in0->read(), x1=in1->read();
    bool v0=!x0.end, v1=!x1.end;
    while (v0 || v1) {
#pragma HLS PIPELINE II=1
        pb_hls_u32 row = 0xffffffffU;
        if (v0 && x0.row < row) row=x0.row;
        if (v1 && x1.row < row) row=x1.row;
        pb_hls_f32 sum=0.0f;
        if (v0 && x0.row==row) { sum += x0.value; x0=in0->read(); v0=!x0.end; }
        if (v1 && x1.row==row) { sum += x1.value; x1=in1->read(); v1=!x1.end; }
        pb_ssssm_stream_item y; y.row=row; y.value=sum; y.end=false; out->write(y);
    }
    out->write(pb_ssssm_end_item());
}

static void pb_ssssm_apply_stream(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    pb_hls_u32 col, pb_hls_u32 a_rows, pb_hls_f32 *acc,
    pb_ssssm_pair_stream *in)
{
    const pb_hls_u32 acount=a_ptr[col+1U]-a_ptr[col];
    pb_hls_u32 ai=0U;
    pb_ssssm_stream_item x=in->read();
    while (!x.end) {
#pragma HLS PIPELINE II=1
        while (ai<acount) {
            const pb_hls_u32 ap=a_ptr[col]+ai;
            const pb_hls_u32 ar=pb_lword_row(pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,ap));
            if (ar>=x.row) break;
            ++ai;
        }
        if (ai<acount) {
            const pb_hls_u32 ap=a_ptr[col]+ai;
            const pb_hls_u32 ar=pb_lword_row(pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,ap));
            if (ar==x.row) { acc[ai] -= x.value; ++ai; }
        }
        x=in->read();
    }
    if (a_rows==0U) return;
}

static void pb_ssssm_streammerge4_one(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_hls_u32 col, pb_hls_u32 source_col, pb_hls_f32 factor,
    pb_hls_u32 a_rows, pb_hls_f32 *acc)
{
    const pb_hls_u32 l_begin = l_ptr[source_col];
    const pb_hls_u32 l_end = l_ptr[source_col + 1U];
    const pb_hls_u32 l_pack_base = l_pack_ptr[source_col];
    pb_ssssm_pair_stream s0,s1,s2,s3,merged;
    pb_ssssm_pair_stream s01,s23;
#pragma HLS STREAM variable=s0 depth=64
#pragma HLS STREAM variable=s1 depth=64
#pragma HLS STREAM variable=s2 depth=64
#pragma HLS STREAM variable=s3 depth=64
#pragma HLS STREAM variable=s01 depth=64
#pragma HLS STREAM variable=s23 depth=64
#pragma HLS STREAM variable=merged depth=64
#pragma HLS DATAFLOW
    pb_ssssm_emit_lane0(l_lane0,l_pack_base,l_begin,l_end,factor,&s0);
    pb_ssssm_emit_lane1(l_lane1,l_pack_base,l_begin,l_end,factor,&s1);
    pb_ssssm_emit_lane2(l_lane2,l_pack_base,l_begin,l_end,factor,&s2);
    pb_ssssm_emit_lane3(l_lane3,l_pack_base,l_begin,l_end,factor,&s3);
    pb_ssssm_merge2(&s0,&s1,&s01);
    pb_ssssm_merge2(&s2,&s3,&s23);
    pb_ssssm_merge2(&s01,&s23,&merged);
    pb_ssssm_apply_stream(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,a_rows,acc,&merged);
}

extern "C" void pb_ssssm_csc_tv_factor4_streammerge4_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1, pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1, const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1, const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=sm4_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=sm4_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=sm4_a0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=sm4_a1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=sm4_a2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=sm4_a3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=sm4_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=sm4_lmeta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=sm4_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=sm4_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=sm4_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=sm4_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=sm4_umeta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=sm4_umeta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=sm4_u0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=sm4_u1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=sm4_u2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=sm4_u3 depth=65536
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=shared_dim bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 acc[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=acc type=ram_2p impl=bram
    status=PB_HLS_OK;
    if (a_rows==0U || a_cols==0U || shared_dim==0U || a_rows>PB_HLS_MAX_N || a_cols>PB_HLS_MAX_N || shared_dim>PB_HLS_MAX_N) { status=PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 col=0U; col<a_cols; ++col) {
        const pb_hls_u32 acount=a_ptr[col+1U]-a_ptr[col];
        for (pb_hls_u32 q=0U; q<acount; ++q) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 ap=a_ptr[col]+q;
            acc[q]=pb_lword_value(pb_csc4_read_word(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,ap));
        }
        for (pb_hls_u32 up=u_ptr[col]; up<u_ptr[col+1U]; ++up) {
            const pb_hls_lword uw=pb_csc4_read_word(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,up);
            const pb_hls_u32 k=pb_lword_row(uw);
            if (k>=shared_dim || k>=a_cols || l_ptr[k+1U]-l_ptr[k]>PB_HLS_MAX_N) { status=PB_HLS_BAD_PATTERN; return; }
            pb_ssssm_streammerge4_one(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
                l_ptr,l_pack_ptr,l_lane0,l_lane1,l_lane2,l_lane3,col,k,pb_lword_value(uw),a_rows,acc);
        }
        for (pb_hls_u32 q=0U; q<acount; ++q) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 ap=a_ptr[col]+q;
            pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,ap,acc[q]);
        }
    }
}

/* -------------------------------------------------------------------------
 * Four-target x four-lane SSSSM shadow.
 *
 * Each target PE consumes one (single-column) U view and owns a separate A
 * view and four packed L lanes.  The helper deliberately remains out of line
 * so DATAFLOW creates four PE instances rather than sharing one datapath.
 * ------------------------------------------------------------------------- */
static void pb_ssssm_target4_pe(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 a_col, pb_hls_u32 u_col,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INLINE off
    /*
     * This PE is deliberately a single external-memory process.  The
     * previous version called the stream/dataflow implementation here; that
     * made one PE's A/L/U pointers be read by several dataflow processes and
     * Vivado HLS quite correctly rejected a single bundled AXI interface.
     * The four packed lanes are still explicit below (four independent
     * products), while the four PEs are independent processes, each mapped to
     * one AXI bundle (pe0..pe3).
     */
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 d0[PB_HLS_MAX_N], d1[PB_HLS_MAX_N], d2[PB_HLS_MAX_N], d3[PB_HLS_MAX_N];
    pb_hls_u32 mark_even[PB_FACTOR2_BANK_N], mark_odd[PB_FACTOR2_BANK_N];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=d3 type=ram_2p impl=bram
    status=PB_HLS_OK;
    if (a_rows==0U || a_rows>PB_HLS_MAX_N ||
        shared_dim==0U || shared_dim>PB_HLS_MAX_N ||
        a_ptr[a_col+1U] < a_ptr[a_col] || u_ptr[u_col+1U] < u_ptr[u_col]) {
        status=PB_HLS_BAD_SIZE; return;
    }
    const pb_hls_u32 acount=a_ptr[a_col+1U]-a_ptr[a_col];
    if (acount>PB_HLS_MAX_N) { status=PB_HLS_BAD_SIZE; return; }

    for (pb_hls_u32 r=0U; r<a_rows; ++r) {
#pragma HLS PIPELINE II=1
        pb_mark_set(mark_even,mark_odd,r,0U);
        pb_private_set_base4(base_even,base_odd,d0,d1,d2,d3,r,0.0f);
    }
    for (pb_hls_u32 q=0U; q<acount; ++q) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 ap=a_ptr[a_col]+q;
        const pb_hls_lword aw=pb_csc4_read_word(
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col,ap);
        const pb_hls_u32 row=pb_lword_row(aw);
        if (row>=a_rows) { status=PB_HLS_BAD_PATTERN; return; }
        pb_private_set_base4(base_even,base_odd,d0,d1,d2,d3,row,pb_lword_value(aw));
        pb_mark_set(mark_even,mark_odd,row,1U);
    }
    for (pb_hls_u32 up=u_ptr[u_col]; up<u_ptr[u_col+1U]; ++up) {
        const pb_hls_lword uw=pb_csc4_read_word(
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,u_col,up);
        const pb_hls_u32 k=pb_lword_row(uw);
        if (k>=shared_dim || l_ptr[k+1U]<l_ptr[k] ||
            l_ptr[k+1U]-l_ptr[k]>PB_HLS_MAX_N) {
            status=PB_HLS_BAD_PATTERN; return;
        }
        const pb_hls_u32 begin=l_ptr[k];
        const pb_hls_u32 end=l_ptr[k+1U];
        const pb_hls_u32 pack_base=l_pack_ptr[k];
        const pb_hls_f32 factor=pb_lword_value(uw);
        for (pb_hls_u32 q=0U; q<end-begin; q+=PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 word=pack_base+(q>>2U);
            const bool active0=(begin+q)<end;
            const bool active1=(begin+q+1U)<end;
            const bool active2=(begin+q+2U)<end;
            const bool active3=(begin+q+3U)<end;
            const pb_hls_lword w0=active0?l_lane0[word]:0ULL;
            const pb_hls_lword w1=active1?l_lane1[word]:0ULL;
            const pb_hls_lword w2=active2?l_lane2[word]:0ULL;
            const pb_hls_lword w3=active3?l_lane3[word]:0ULL;
            const pb_hls_u32 r0=active0?pb_lword_row(w0):0U;
            const pb_hls_u32 r1=active1?pb_lword_row(w1):0U;
            const pb_hls_u32 r2=active2?pb_lword_row(w2):0U;
            const pb_hls_u32 r3=active3?pb_lword_row(w3):0U;
            if ((active0&&r0>=a_rows)||(active1&&r1>=a_rows)||
                (active2&&r2>=a_rows)||(active3&&r3>=a_rows)) {
                status=PB_HLS_BAD_PATTERN; return;
            }
            if (active0 && pb_mark_get(mark_even,mark_odd,r0)==1U)
                d0[r0]-=pb_lane0_mul(pb_lword_value(w0),factor);
            if (active1 && pb_mark_get(mark_even,mark_odd,r1)==1U)
                d1[r1]-=pb_lane1_mul(pb_lword_value(w1),factor);
            if (active2 && pb_mark_get(mark_even,mark_odd,r2)==1U)
                d2[r2]-=pb_lane2_mul(pb_lword_value(w2),factor);
            if (active3 && pb_mark_get(mark_even,mark_odd,r3)==1U)
                d3[r3]-=pb_lane3_mul(pb_lword_value(w3),factor);
        }
    }
    for (pb_hls_u32 q=0U; q<acount; ++q) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 ap=a_ptr[a_col]+q;
        const pb_hls_u32 row=pb_lword_row(pb_csc4_read_word(
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col,ap));
        pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
                            a_col,ap,pb_private_get4(base_even,base_odd,d0,d1,d2,d3,row));
    }
}

extern "C" void pb_ssssm_csc_tv_factor4_streammerge4_target4_shadow(
    const pb_hls_u32 *a0_ptr, const pb_hls_u32 *a0_pack_ptr,
    pb_hls_lword *a0_lane0, pb_hls_lword *a0_lane1,
    pb_hls_lword *a0_lane2, pb_hls_lword *a0_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *u0_ptr, const pb_hls_u32 *u0_pack_ptr,
    const pb_hls_lword *u0_lane0, const pb_hls_lword *u0_lane1,
    const pb_hls_lword *u0_lane2, const pb_hls_lword *u0_lane3,
    const pb_hls_u32 *a1_ptr, const pb_hls_u32 *a1_pack_ptr,
    pb_hls_lword *a1_lane0, pb_hls_lword *a1_lane1,
    pb_hls_lword *a1_lane2, pb_hls_lword *a1_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *u1_ptr, const pb_hls_u32 *u1_pack_ptr,
    const pb_hls_lword *u1_lane0, const pb_hls_lword *u1_lane1,
    const pb_hls_lword *u1_lane2, const pb_hls_lword *u1_lane3,
    const pb_hls_u32 *a2_ptr, const pb_hls_u32 *a2_pack_ptr,
    pb_hls_lword *a2_lane0, pb_hls_lword *a2_lane1,
    pb_hls_lword *a2_lane2, pb_hls_lword *a2_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *u2_ptr, const pb_hls_u32 *u2_pack_ptr,
    const pb_hls_lword *u2_lane0, const pb_hls_lword *u2_lane1,
    const pb_hls_lword *u2_lane2, const pb_hls_lword *u2_lane3,
    const pb_hls_u32 *a3_ptr, const pb_hls_u32 *a3_pack_ptr,
    pb_hls_lword *a3_lane0, pb_hls_lword *a3_lane1,
    pb_hls_lword *a3_lane2, pb_hls_lword *a3_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    const pb_hls_u32 *u3_ptr, const pb_hls_u32 *u3_pack_ptr,
    const pb_hls_lword *u3_lane0, const pb_hls_lword *u3_lane1,
    const pb_hls_lword *u3_lane2, const pb_hls_lword *u3_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim,
    pb_hls_u32 &status0, pb_hls_u32 &status1,
    pb_hls_u32 &status2, pb_hls_u32 &status3)
{
#define PB_T4_BANKS(T) \
    /* One AXI master interface per PE.  All A/L/U metadata and four \
       packed lanes belonging to this PE share that PE's address space. */ \
    PB_T4_M_AXI(a##T##_ptr,pe##T,4097) \
    PB_T4_M_AXI(a##T##_pack_ptr,pe##T,4097) \
    PB_T4_M_AXI(a##T##_lane0,pe##T,65536) \
    PB_T4_M_AXI(a##T##_lane1,pe##T,65536) \
    PB_T4_M_AXI(a##T##_lane2,pe##T,65536) \
    PB_T4_M_AXI(a##T##_lane3,pe##T,65536) \
    PB_T4_M_AXI(l##T##_ptr,pe##T,4097) \
    PB_T4_M_AXI(l##T##_pack_ptr,pe##T,4097) \
    PB_T4_M_AXI(l##T##_lane0,pe##T,65536) \
    PB_T4_M_AXI(l##T##_lane1,pe##T,65536) \
    PB_T4_M_AXI(l##T##_lane2,pe##T,65536) \
    PB_T4_M_AXI(l##T##_lane3,pe##T,65536) \
    PB_T4_M_AXI(u##T##_ptr,pe##T,4097) \
    PB_T4_M_AXI(u##T##_pack_ptr,pe##T,4097) \
    PB_T4_M_AXI(u##T##_lane0,pe##T,65536) \
    PB_T4_M_AXI(u##T##_lane1,pe##T,65536) \
    PB_T4_M_AXI(u##T##_lane2,pe##T,65536) \
    PB_T4_M_AXI(u##T##_lane3,pe##T,65536) \
    PB_T4_S_AXI(a##T##_ptr) PB_T4_S_AXI(a##T##_pack_ptr) \
    PB_T4_S_AXI(a##T##_lane0) PB_T4_S_AXI(a##T##_lane1) \
    PB_T4_S_AXI(a##T##_lane2) PB_T4_S_AXI(a##T##_lane3) \
    PB_T4_S_AXI(l##T##_ptr) PB_T4_S_AXI(l##T##_pack_ptr) \
    PB_T4_S_AXI(l##T##_lane0) PB_T4_S_AXI(l##T##_lane1) \
    PB_T4_S_AXI(l##T##_lane2) PB_T4_S_AXI(l##T##_lane3) \
    PB_T4_S_AXI(u##T##_ptr) PB_T4_S_AXI(u##T##_pack_ptr) \
    PB_T4_S_AXI(u##T##_lane0) PB_T4_S_AXI(u##T##_lane1) \
    PB_T4_S_AXI(u##T##_lane2) PB_T4_S_AXI(u##T##_lane3)
    PB_T4_BANKS(0)
    PB_T4_BANKS(1)
    PB_T4_BANKS(2)
    PB_T4_BANKS(3)
    PB_T4_S_AXI(a_rows)
    PB_T4_S_AXI(shared_dim)
    PB_T4_S_AXI(status0)
    PB_T4_S_AXI(status1)
    PB_T4_S_AXI(status2)
    PB_T4_S_AXI(status3)
    PB_T4_S_AXI(return)
#pragma HLS DATAFLOW
    pb_ssssm_target4_pe(a0_ptr,a0_pack_ptr,a0_lane0,a0_lane1,a0_lane2,a0_lane3,
        l0_ptr,l0_pack_ptr,l0_lane0,l0_lane1,l0_lane2,l0_lane3,
        u0_ptr,u0_pack_ptr,u0_lane0,u0_lane1,u0_lane2,u0_lane3,
        0U,0U,a_rows,shared_dim,status0);
    pb_ssssm_target4_pe(a1_ptr,a1_pack_ptr,a1_lane0,a1_lane1,a1_lane2,a1_lane3,
        l1_ptr,l1_pack_ptr,l1_lane0,l1_lane1,l1_lane2,l1_lane3,
        u1_ptr,u1_pack_ptr,u1_lane0,u1_lane1,u1_lane2,u1_lane3,
        0U,0U,a_rows,shared_dim,status1);
    pb_ssssm_target4_pe(a2_ptr,a2_pack_ptr,a2_lane0,a2_lane1,a2_lane2,a2_lane3,
        l2_ptr,l2_pack_ptr,l2_lane0,l2_lane1,l2_lane2,l2_lane3,
        u2_ptr,u2_pack_ptr,u2_lane0,u2_lane1,u2_lane2,u2_lane3,
        0U,0U,a_rows,shared_dim,status2);
    pb_ssssm_target4_pe(a3_ptr,a3_pack_ptr,a3_lane0,a3_lane1,a3_lane2,a3_lane3,
        l3_ptr,l3_pack_ptr,l3_lane0,l3_lane1,l3_lane2,l3_lane3,
        u3_ptr,u3_pack_ptr,u3_lane0,u3_lane1,u3_lane2,u3_lane3,
        0U,0U,a_rows,shared_dim,status3);
}

/* U is read once by a shared reader and then routed to four PE-local streams.
 * This follows the /output/ssssm organization: read the sparse input first,
 * distribute elements, and let each PE consume its own L (= B analogue).
 * A is prefetched into four private dense work views before DATAFLOW and is
 * written back by one shared-A process after the four PE updates complete. */
typedef struct {
    pb_hls_u32 row;
    pb_hls_f32 value;
    bool end;
} pb_ssssm_u_item;
typedef hls::stream<pb_ssssm_u_item> pb_ssssm_u_stream;

static pb_hls_u32 pb_ssssm_prefetch_a_view(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    const pb_hls_lword *a_lane0, const pb_hls_lword *a_lane1,
    const pb_hls_lword *a_lane2, const pb_hls_lword *a_lane3,
    pb_hls_u32 col, pb_hls_u32 a_rows,
    pb_hls_f32 *a_dense, pb_hls_u32 *a_mark)
{
#pragma HLS INLINE off
    for (pb_hls_u32 r=0U; r<a_rows; ++r) {
#pragma HLS PIPELINE II=1
        a_dense[r]=0.0f;
        a_mark[r]=0U;
    }
    if (a_ptr[col+1U] < a_ptr[col]) return PB_HLS_BAD_SIZE;
    const pb_hls_u32 begin=a_ptr[col], end=a_ptr[col+1U];
    if (end-begin > PB_HLS_MAX_N) return PB_HLS_BAD_SIZE;
    for (pb_hls_u32 q=0U; q<end-begin; ++q) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p=begin+q;
        const pb_hls_lword w=pb_csc4_read_word(
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p);
        const pb_hls_u32 row=pb_lword_row(w);
        if (row>=a_rows) return PB_HLS_BAD_PATTERN;
        a_dense[row]=pb_lword_value(w);
        a_mark[row]=1U;
    }
    return PB_HLS_OK;
}

static void pb_ssssm_read_u_one(
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 col, pb_ssssm_u_stream *out)
{
#pragma HLS INLINE off
    for (pb_hls_u32 p=u_ptr[col]; p<u_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w=pb_csc4_read_word(
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,p);
        pb_ssssm_u_item item;
        item.row=pb_lword_row(w);
        item.value=pb_lword_value(w);
        item.end=false;
        out->write(item);
    }
    pb_ssssm_u_item end_item;
    end_item.row=0U; end_item.value=0.0f; end_item.end=true;
    out->write(end_item);
}

static void pb_ssssm_read_u_distribute(
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 u_col0, pb_hls_u32 u_col1,
    pb_hls_u32 u_col2, pb_hls_u32 u_col3,
    pb_ssssm_u_stream *out0, pb_ssssm_u_stream *out1,
    pb_ssssm_u_stream *out2, pb_ssssm_u_stream *out3)
{
#pragma HLS INLINE off
    pb_ssssm_read_u_one(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,u_col0,out0);
    pb_ssssm_read_u_one(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,u_col1,out1);
    pb_ssssm_read_u_one(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,u_col2,out2);
    pb_ssssm_read_u_one(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,u_col3,out3);
}

static void pb_ssssm_u_pe(
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_ssssm_u_stream *in, pb_hls_f32 *a_dense,
    const pb_hls_u32 *a_mark, pb_hls_u32 a_rows,
    pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INLINE off
    const pb_hls_u32 incoming_status=status;
    status=incoming_status;
    pb_ssssm_u_item item=in->read();
    while (!item.end) {
        const pb_hls_u32 k=item.row;
        if (status!=PB_HLS_OK) {
            /* Keep draining the distributed U stream so the shared reader
             * cannot block when another PE reports a bad pattern. */
        } else if (k>=shared_dim || l_ptr[k+1U]<l_ptr[k] ||
            l_ptr[k+1U]-l_ptr[k]>PB_HLS_MAX_N) {
            status=PB_HLS_BAD_PATTERN;
        } else {
            const pb_hls_u32 begin=l_ptr[k], end=l_ptr[k+1U];
            const pb_hls_u32 pack_base=l_pack_ptr[k];
            for (pb_hls_u32 q=0U; q<end-begin; q+=PB_FACTOR4_LANES) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 word=pack_base+(q>>2U);
                const bool active0=(begin+q)<end;
                const bool active1=(begin+q+1U)<end;
                const bool active2=(begin+q+2U)<end;
                const bool active3=(begin+q+3U)<end;
                const pb_hls_lword w0=active0?l_lane0[word]:0ULL;
                const pb_hls_lword w1=active1?l_lane1[word]:0ULL;
                const pb_hls_lword w2=active2?l_lane2[word]:0ULL;
                const pb_hls_lword w3=active3?l_lane3[word]:0ULL;
                const pb_hls_u32 r0=active0?pb_lword_row(w0):0U;
                const pb_hls_u32 r1=active1?pb_lword_row(w1):0U;
                const pb_hls_u32 r2=active2?pb_lword_row(w2):0U;
                const pb_hls_u32 r3=active3?pb_lword_row(w3):0U;
                if ((active0&&r0>=a_rows)||(active1&&r1>=a_rows)||
                    (active2&&r2>=a_rows)||(active3&&r3>=a_rows)) {
                    status=PB_HLS_BAD_PATTERN;
                } else {
                    if (active0 && a_mark[r0]) a_dense[r0]-=pb_lane0_mul(pb_lword_value(w0),item.value);
                    if (active1 && a_mark[r1]) a_dense[r1]-=pb_lane1_mul(pb_lword_value(w1),item.value);
                    if (active2 && a_mark[r2]) a_dense[r2]-=pb_lane2_mul(pb_lword_value(w2),item.value);
                    if (active3 && a_mark[r3]) a_dense[r3]-=pb_lane3_mul(pb_lword_value(w3),item.value);
                }
            }
        }
        item=in->read();
    }
}

static void pb_ssssm_write_a_view(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    pb_hls_u32 col, pb_hls_u32 a_rows,
    const pb_hls_f32 *a_dense, const pb_hls_u32 *a_mark,
    pb_hls_u32 &status)
{
#pragma HLS INLINE off
    const pb_hls_u32 begin=a_ptr[col], end=a_ptr[col+1U];
    if (end<begin || end-begin>PB_HLS_MAX_N) { status=PB_HLS_BAD_SIZE; return; }
    for (pb_hls_u32 q=0U; q<end-begin; ++q) {
#pragma HLS PIPELINE II=1
        const pb_hls_u32 p=begin+q;
        const pb_hls_u32 row=pb_lword_row(pb_csc4_read_word(
            a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p));
        if (row>=a_rows || !a_mark[row]) { status=PB_HLS_BAD_PATTERN; continue; }
        pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
                            col,p,a_dense[row]);
    }
}

/* -------------------------------------------------------------------------
 * Shared-A/U plus four independent L interfaces.  U is read first by one
 * AXI process and distributed to four PE streams; each PE reads only its own
 * L interface.  A is prefetched before DATAFLOW and written back afterwards,
 * so it remains one shared AXI interface without violating HLS bundle rules.
 * ------------------------------------------------------------------------- */
extern "C" void pb_ssssm_csc_tv_factor4_target4_shared_au_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    pb_hls_u32 a_col0, pb_hls_u32 a_col1,
    pb_hls_u32 a_col2, pb_hls_u32 a_col3,
    pb_hls_u32 u_col0, pb_hls_u32 u_col1,
    pb_hls_u32 u_col2, pb_hls_u32 u_col3,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim,
    pb_hls_u32 &status0, pb_hls_u32 &status1,
    pb_hls_u32 &status2, pb_hls_u32 &status3)
{
#define PB_SHARED_M(P,B,D) PB_T4_M_AXI(P,B,D)
#define PB_SHARED_S(P) PB_T4_S_AXI(P)
#define PB_SHARED_L(T) \
    PB_SHARED_M(l##T##_ptr,lpe##T,4097) \
    PB_SHARED_M(l##T##_pack_ptr,lpe##T,4097) \
    PB_SHARED_M(l##T##_lane0,lpe##T,65536) \
    PB_SHARED_M(l##T##_lane1,lpe##T,65536) \
    PB_SHARED_M(l##T##_lane2,lpe##T,65536) \
    PB_SHARED_M(l##T##_lane3,lpe##T,65536) \
    PB_SHARED_S(l##T##_ptr) PB_SHARED_S(l##T##_pack_ptr) \
    PB_SHARED_S(l##T##_lane0) PB_SHARED_S(l##T##_lane1) \
    PB_SHARED_S(l##T##_lane2) PB_SHARED_S(l##T##_lane3)

    PB_SHARED_M(a_ptr,acommon,4097)
    PB_SHARED_M(a_pack_ptr,acommon,4097)
    PB_SHARED_M(a_lane0,acommon,65536)
    PB_SHARED_M(a_lane1,acommon,65536)
    PB_SHARED_M(a_lane2,acommon,65536)
    PB_SHARED_M(a_lane3,acommon,65536)
    PB_SHARED_M(u_ptr,ucommon,4097)
    PB_SHARED_M(u_pack_ptr,ucommon,4097)
    PB_SHARED_M(u_lane0,ucommon,65536)
    PB_SHARED_M(u_lane1,ucommon,65536)
    PB_SHARED_M(u_lane2,ucommon,65536)
    PB_SHARED_M(u_lane3,ucommon,65536)
    PB_SHARED_S(a_ptr) PB_SHARED_S(a_pack_ptr)
    PB_SHARED_S(a_lane0) PB_SHARED_S(a_lane1)
    PB_SHARED_S(a_lane2) PB_SHARED_S(a_lane3)
    PB_SHARED_S(u_ptr) PB_SHARED_S(u_pack_ptr)
    PB_SHARED_S(u_lane0) PB_SHARED_S(u_lane1)
    PB_SHARED_S(u_lane2) PB_SHARED_S(u_lane3)
    PB_SHARED_L(0)
    PB_SHARED_L(1)
    PB_SHARED_L(2)
    PB_SHARED_L(3)
    PB_SHARED_S(a_col0) PB_SHARED_S(a_col1)
    PB_SHARED_S(a_col2) PB_SHARED_S(a_col3)
    PB_SHARED_S(u_col0) PB_SHARED_S(u_col1)
    PB_SHARED_S(u_col2) PB_SHARED_S(u_col3)
    PB_SHARED_S(a_rows) PB_SHARED_S(shared_dim)
    PB_SHARED_S(status0) PB_SHARED_S(status1)
    PB_SHARED_S(status2) PB_SHARED_S(status3)
    PB_SHARED_S(return)

    status0=PB_HLS_OK; status1=PB_HLS_OK;
    status2=PB_HLS_OK; status3=PB_HLS_OK;
    if (a_rows==0U || a_rows>PB_HLS_MAX_N ||
        shared_dim==0U || shared_dim>PB_HLS_MAX_N ||
        a_col0>=PB_HLS_MAX_N || a_col1>=PB_HLS_MAX_N ||
        a_col2>=PB_HLS_MAX_N || a_col3>=PB_HLS_MAX_N ||
        u_col0>=PB_HLS_MAX_N || u_col1>=PB_HLS_MAX_N ||
        u_col2>=PB_HLS_MAX_N || u_col3>=PB_HLS_MAX_N) {
        status0=PB_HLS_BAD_SIZE; status1=PB_HLS_BAD_SIZE;
        status2=PB_HLS_BAD_SIZE; status3=PB_HLS_BAD_SIZE;
        return;
    }
    pb_hls_f32 a0[PB_HLS_MAX_N], a1[PB_HLS_MAX_N], a2[PB_HLS_MAX_N], a3[PB_HLS_MAX_N];
    pb_hls_u32 m0[PB_HLS_MAX_N], m1[PB_HLS_MAX_N], m2[PB_HLS_MAX_N], m3[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=a0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=a1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=a2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=a3 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=m0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=m1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=m2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=m3 type=ram_2p impl=bram
    status0=pb_ssssm_prefetch_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col0,a_rows,a0,m0);
    status1=pb_ssssm_prefetch_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col1,a_rows,a1,m1);
    status2=pb_ssssm_prefetch_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col2,a_rows,a2,m2);
    status3=pb_ssssm_prefetch_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,a_col3,a_rows,a3,m3);

    pb_ssssm_u_stream us0,us1,us2,us3;
#pragma HLS STREAM variable=us0 depth=64
#pragma HLS STREAM variable=us1 depth=64
#pragma HLS STREAM variable=us2 depth=64
#pragma HLS STREAM variable=us3 depth=64
#pragma HLS DATAFLOW
    pb_ssssm_read_u_distribute(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
        u_col0,u_col1,u_col2,u_col3,&us0,&us1,&us2,&us3);
    pb_ssssm_u_pe(l0_ptr,l0_pack_ptr,l0_lane0,l0_lane1,l0_lane2,l0_lane3,
        &us0,a0,m0,a_rows,shared_dim,status0);
    pb_ssssm_u_pe(l1_ptr,l1_pack_ptr,l1_lane0,l1_lane1,l1_lane2,l1_lane3,
        &us1,a1,m1,a_rows,shared_dim,status1);
    pb_ssssm_u_pe(l2_ptr,l2_pack_ptr,l2_lane0,l2_lane1,l2_lane2,l2_lane3,
        &us2,a2,m2,a_rows,shared_dim,status2);
    pb_ssssm_u_pe(l3_ptr,l3_pack_ptr,l3_lane0,l3_lane1,l3_lane2,l3_lane3,
        &us3,a3,m3,a_rows,shared_dim,status3);

    pb_ssssm_write_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
        a_col0,a_rows,a0,m0,status0);
    pb_ssssm_write_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
        a_col1,a_rows,a1,m1,status1);
    pb_ssssm_write_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
        a_col2,a_rows,a2,m2,status2);
    pb_ssssm_write_a_view(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,
        a_col3,a_rows,a3,m3,status3);
#undef PB_SHARED_L
#undef PB_SHARED_S
#undef PB_SHARED_M
}

/* -------------------------------------------------------------------------
 * /output/ssssm-style four-PE dispatcher.
 *
 * Under the transpose-view identity
 *
 *     A <- A - L U    <=>    A^T <- A^T - U^T L^T,
 *
 * U plays the role of the reference design's sparse A stream, while L plays
 * the role of B.  Every U(k,j) is therefore a job {factor=U(k,j), B-row=k}
 * for output column j.  The dispatcher assigns jobs to available workers;
 * worker p obtains L(:,k) from lpe<p>, performs four packed products per
 * iteration, and accumulates a private partial result.  The final collector
 * reduces all worker/lane partials and subtracts them from A(:,j).
 * ------------------------------------------------------------------------- */
typedef struct {
    pb_hls_u32 k;
    pb_hls_f32 factor;
    bool end;
} pb_ssssm_dispatch_job;
typedef hls::stream<pb_ssssm_dispatch_job> pb_ssssm_dispatch_stream;
typedef hls::stream<bool> pb_ssssm_idle_stream;

static void pb_ssssm_dispatch_read_u_col(
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    pb_hls_u32 col, pb_ssssm_dispatch_stream *out)
{
#pragma HLS INLINE off
    for (pb_hls_u32 p=u_ptr[col]; p<u_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
        const pb_hls_lword w=pb_csc4_read_word(
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,p);
        pb_ssssm_dispatch_job job;
        job.k=pb_lword_row(w);
        job.factor=pb_lword_value(w);
        job.end=false;
        out->write(job);
    }
    pb_ssssm_dispatch_job last;
    last.k=0U; last.factor=0.0f; last.end=true;
    out->write(last);
}

static void pb_ssssm_dispatch_jobs(
    pb_ssssm_dispatch_stream *in,
    pb_ssssm_idle_stream *idle0, pb_ssssm_idle_stream *idle1,
    pb_ssssm_idle_stream *idle2, pb_ssssm_idle_stream *idle3,
    pb_ssssm_dispatch_stream *job0, pb_ssssm_dispatch_stream *job1,
    pb_ssssm_dispatch_stream *job2, pb_ssssm_dispatch_stream *job3)
{
#pragma HLS INLINE off
#ifndef __SYNTHESIS__
    /* C simulation executes DATAFLOW calls sequentially.  Use the same task
     * mapping invariant without the feedback cycle; RTL uses the idle-aware
     * branch below and is checked by co-simulation. */
    pb_hls_u32 next=0U;
    while (true) {
        const pb_ssssm_dispatch_job x=in->read();
        if (x.end) break;
        if (next==0U) job0->write(x);
        else if (next==1U) job1->write(x);
        else if (next==2U) job2->write(x);
        else job3->write(x);
        next=(next+1U)&3U;
    }
#else
    bool free0=false,free1=false,free2=false,free3=false;
    bool input_done=false;
    while (!input_done) {
#pragma HLS PIPELINE II=1
        if (!idle0->empty()) { idle0->read(); free0=true; }
        if (!idle1->empty()) { idle1->read(); free1=true; }
        if (!idle2->empty()) { idle2->read(); free2=true; }
        if (!idle3->empty()) { idle3->read(); free3=true; }
        if ((free0||free1||free2||free3) && !in->empty()) {
            const pb_ssssm_dispatch_job x=in->read();
            if (x.end) {
                input_done=true;
            } else if (free0) {
                job0->write(x); free0=false;
            } else if (free1) {
                job1->write(x); free1=false;
            } else if (free2) {
                job2->write(x); free2=false;
            } else {
                job3->write(x); free3=false;
            }
        }
    }
    while (!(free0&&free1&&free2&&free3)) {
#pragma HLS PIPELINE II=1
        if (!idle0->empty()) { idle0->read(); free0=true; }
        if (!idle1->empty()) { idle1->read(); free1=true; }
        if (!idle2->empty()) { idle2->read(); free2=true; }
        if (!idle3->empty()) { idle3->read(); free3=true; }
    }
#endif
    pb_ssssm_dispatch_job last;
    last.k=0U; last.factor=0.0f; last.end=true;
    job0->write(last); job1->write(last);
    job2->write(last); job3->write(last);
}

static void pb_ssssm_dispatch_pe(
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    const pb_hls_lword *l_lane0, const pb_hls_lword *l_lane1,
    const pb_hls_lword *l_lane2, const pb_hls_lword *l_lane3,
    pb_ssssm_dispatch_stream *jobs, pb_ssssm_idle_stream *idle,
    pb_hls_f32 *acc0, pb_hls_f32 *acc1,
    pb_hls_f32 *acc2, pb_hls_f32 *acc3,
    pb_hls_u32 a_rows, pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#pragma HLS INLINE off
    status=PB_HLS_OK;
    for (pb_hls_u32 r=0U; r<a_rows; ++r) {
#pragma HLS PIPELINE II=1
        acc0[r]=0.0f; acc1[r]=0.0f; acc2[r]=0.0f; acc3[r]=0.0f;
    }
    idle->write(false);
    while (true) {
        const pb_ssssm_dispatch_job job=jobs->read();
        if (job.end) break;
        const pb_hls_u32 k=job.k;
        if (k>=shared_dim || l_ptr[k+1U]<l_ptr[k] ||
            l_ptr[k+1U]-l_ptr[k]>PB_HLS_MAX_N) {
            status=PB_HLS_BAD_PATTERN;
            idle->write(false);
            continue;
        }
        const pb_hls_u32 begin=l_ptr[k], end=l_ptr[k+1U];
        const pb_hls_u32 pack_base=l_pack_ptr[k];
        for (pb_hls_u32 q=0U; q<end-begin; q+=4U) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 word=pack_base+(q>>2U);
            const bool v0=(begin+q)<end;
            const bool v1=(begin+q+1U)<end;
            const bool v2=(begin+q+2U)<end;
            const bool v3=(begin+q+3U)<end;
            const pb_hls_lword w0=v0?l_lane0[word]:0ULL;
            const pb_hls_lword w1=v1?l_lane1[word]:0ULL;
            const pb_hls_lword w2=v2?l_lane2[word]:0ULL;
            const pb_hls_lword w3=v3?l_lane3[word]:0ULL;
            const pb_hls_u32 r0=v0?pb_lword_row(w0):0U;
            const pb_hls_u32 r1=v1?pb_lword_row(w1):0U;
            const pb_hls_u32 r2=v2?pb_lword_row(w2):0U;
            const pb_hls_u32 r3=v3?pb_lword_row(w3):0U;
            if ((v0&&r0>=a_rows)||(v1&&r1>=a_rows)||
                (v2&&r2>=a_rows)||(v3&&r3>=a_rows)) {
                status=PB_HLS_BAD_PATTERN;
                continue;
            }
            pb_hls_f32 p0=0.0f,p1=0.0f,p2=0.0f,p3=0.0f;
#pragma HLS BIND_OP variable=p0 op=mul impl=dsp
#pragma HLS BIND_OP variable=p1 op=mul impl=dsp
#pragma HLS BIND_OP variable=p2 op=mul impl=dsp
#pragma HLS BIND_OP variable=p3 op=mul impl=dsp
            if (v0) p0=pb_lword_value(w0)*job.factor;
            if (v1) p1=pb_lword_value(w1)*job.factor;
            if (v2) p2=pb_lword_value(w2)*job.factor;
            if (v3) p3=pb_lword_value(w3)*job.factor;
            if (v0) acc0[r0]+=p0;
            if (v1) acc1[r1]+=p1;
            if (v2) acc2[r2]+=p2;
            if (v3) acc3[r3]+=p3;
        }
        idle->write(false);
    }
}

static void pb_ssssm_dispatch_process_col(
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    pb_hls_u32 col, pb_hls_u32 a_rows, pb_hls_u32 shared_dim,
    pb_hls_f32 *p00,pb_hls_f32 *p01,pb_hls_f32 *p02,pb_hls_f32 *p03,
    pb_hls_f32 *p10,pb_hls_f32 *p11,pb_hls_f32 *p12,pb_hls_f32 *p13,
    pb_hls_f32 *p20,pb_hls_f32 *p21,pb_hls_f32 *p22,pb_hls_f32 *p23,
    pb_hls_f32 *p30,pb_hls_f32 *p31,pb_hls_f32 *p32,pb_hls_f32 *p33,
    pb_hls_u32 &s0,pb_hls_u32 &s1,pb_hls_u32 &s2,pb_hls_u32 &s3)
{
#pragma HLS INLINE off
    pb_ssssm_dispatch_stream source,j0,j1,j2,j3;
    pb_ssssm_idle_stream i0,i1,i2,i3;
#pragma HLS STREAM variable=source depth=64
#pragma HLS STREAM variable=j0 depth=8
#pragma HLS STREAM variable=j1 depth=8
#pragma HLS STREAM variable=j2 depth=8
#pragma HLS STREAM variable=j3 depth=8
#pragma HLS STREAM variable=i0 depth=2
#pragma HLS STREAM variable=i1 depth=2
#pragma HLS STREAM variable=i2 depth=2
#pragma HLS STREAM variable=i3 depth=2
#pragma HLS DATAFLOW disable_start_propagation
    pb_ssssm_dispatch_read_u_col(u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,col,&source);
    pb_ssssm_dispatch_jobs(&source,&i0,&i1,&i2,&i3,&j0,&j1,&j2,&j3);
    pb_ssssm_dispatch_pe(l0_ptr,l0_pack_ptr,l0_lane0,l0_lane1,l0_lane2,l0_lane3,
        &j0,&i0,p00,p01,p02,p03,a_rows,shared_dim,s0);
    pb_ssssm_dispatch_pe(l1_ptr,l1_pack_ptr,l1_lane0,l1_lane1,l1_lane2,l1_lane3,
        &j1,&i1,p10,p11,p12,p13,a_rows,shared_dim,s1);
    pb_ssssm_dispatch_pe(l2_ptr,l2_pack_ptr,l2_lane0,l2_lane1,l2_lane2,l2_lane3,
        &j2,&i2,p20,p21,p22,p23,a_rows,shared_dim,s2);
    pb_ssssm_dispatch_pe(l3_ptr,l3_pack_ptr,l3_lane0,l3_lane1,l3_lane2,l3_lane3,
        &j3,&i3,p30,p31,p32,p33,a_rows,shared_dim,s3);
#ifndef __SYNTHESIS__
    while (!i0.empty()) i0.read();
    while (!i1.empty()) i1.read();
    while (!i2.empty()) i2.read();
    while (!i3.empty()) i3.read();
#endif
}

extern "C" void pb_ssssm_csc_tv_factor4_dispatch4_shadow(
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    const pb_hls_lword *u_lane0, const pb_hls_lword *u_lane1,
    const pb_hls_lword *u_lane2, const pb_hls_lword *u_lane3,
    const pb_hls_u32 *l0_ptr, const pb_hls_u32 *l0_pack_ptr,
    const pb_hls_lword *l0_lane0, const pb_hls_lword *l0_lane1,
    const pb_hls_lword *l0_lane2, const pb_hls_lword *l0_lane3,
    const pb_hls_u32 *l1_ptr, const pb_hls_u32 *l1_pack_ptr,
    const pb_hls_lword *l1_lane0, const pb_hls_lword *l1_lane1,
    const pb_hls_lword *l1_lane2, const pb_hls_lword *l1_lane3,
    const pb_hls_u32 *l2_ptr, const pb_hls_u32 *l2_pack_ptr,
    const pb_hls_lword *l2_lane0, const pb_hls_lword *l2_lane1,
    const pb_hls_lword *l2_lane2, const pb_hls_lword *l2_lane3,
    const pb_hls_u32 *l3_ptr, const pb_hls_u32 *l3_pack_ptr,
    const pb_hls_lword *l3_lane0, const pb_hls_lword *l3_lane1,
    const pb_hls_lword *l3_lane2, const pb_hls_lword *l3_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols,
    pb_hls_u32 shared_dim, pb_hls_u32 &status)
{
#define PB_DISP_M(P,B,D) PB_T4_M_AXI(P,B,D)
#define PB_DISP_S(P) PB_T4_S_AXI(P)
#define PB_DISP_L(T) \
    PB_DISP_M(l##T##_ptr,lpe##T,4097) \
    PB_DISP_M(l##T##_pack_ptr,lpe##T,4097) \
    PB_DISP_M(l##T##_lane0,lpe##T,65536) \
    PB_DISP_M(l##T##_lane1,lpe##T,65536) \
    PB_DISP_M(l##T##_lane2,lpe##T,65536) \
    PB_DISP_M(l##T##_lane3,lpe##T,65536) \
    PB_DISP_S(l##T##_ptr) PB_DISP_S(l##T##_pack_ptr) \
    PB_DISP_S(l##T##_lane0) PB_DISP_S(l##T##_lane1) \
    PB_DISP_S(l##T##_lane2) PB_DISP_S(l##T##_lane3)
    PB_DISP_M(a_ptr,acommon,4097)
    PB_DISP_M(a_pack_ptr,acommon,4097)
    PB_DISP_M(a_lane0,acommon,65536)
    PB_DISP_M(a_lane1,acommon,65536)
    PB_DISP_M(a_lane2,acommon,65536)
    PB_DISP_M(a_lane3,acommon,65536)
    PB_DISP_M(u_ptr,ucommon,4097)
    PB_DISP_M(u_pack_ptr,ucommon,4097)
    PB_DISP_M(u_lane0,ucommon,65536)
    PB_DISP_M(u_lane1,ucommon,65536)
    PB_DISP_M(u_lane2,ucommon,65536)
    PB_DISP_M(u_lane3,ucommon,65536)
    PB_DISP_L(0) PB_DISP_L(1) PB_DISP_L(2) PB_DISP_L(3)
    PB_DISP_S(a_ptr) PB_DISP_S(a_pack_ptr)
    PB_DISP_S(a_lane0) PB_DISP_S(a_lane1) PB_DISP_S(a_lane2) PB_DISP_S(a_lane3)
    PB_DISP_S(u_ptr) PB_DISP_S(u_pack_ptr)
    PB_DISP_S(u_lane0) PB_DISP_S(u_lane1) PB_DISP_S(u_lane2) PB_DISP_S(u_lane3)
    PB_DISP_S(a_rows) PB_DISP_S(a_cols) PB_DISP_S(shared_dim)
    PB_DISP_S(status) PB_DISP_S(return)

    pb_hls_f32 p00[PB_HLS_MAX_N],p01[PB_HLS_MAX_N],p02[PB_HLS_MAX_N],p03[PB_HLS_MAX_N];
    pb_hls_f32 p10[PB_HLS_MAX_N],p11[PB_HLS_MAX_N],p12[PB_HLS_MAX_N],p13[PB_HLS_MAX_N];
    pb_hls_f32 p20[PB_HLS_MAX_N],p21[PB_HLS_MAX_N],p22[PB_HLS_MAX_N],p23[PB_HLS_MAX_N];
    pb_hls_f32 p30[PB_HLS_MAX_N],p31[PB_HLS_MAX_N],p32[PB_HLS_MAX_N],p33[PB_HLS_MAX_N];
#pragma HLS BIND_STORAGE variable=p00 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p01 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p02 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p03 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p10 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p11 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p12 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p13 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p20 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p21 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p22 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p23 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p30 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p31 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p32 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=p33 type=ram_2p impl=bram
    status=PB_HLS_OK;
    if (a_rows==0U || a_cols==0U || shared_dim==0U ||
        a_rows>PB_HLS_MAX_N || a_cols>PB_HLS_MAX_N || shared_dim>PB_HLS_MAX_N) {
        status=PB_HLS_BAD_SIZE;
        return;
    }
    for (pb_hls_u32 col=0U; col<a_cols; ++col) {
        if (a_ptr[col+1U]<a_ptr[col] || u_ptr[col+1U]<u_ptr[col]) {
            status=PB_HLS_BAD_PATTERN;
            return;
        }
        pb_hls_u32 s0=PB_HLS_OK,s1=PB_HLS_OK,s2=PB_HLS_OK,s3=PB_HLS_OK;
        pb_ssssm_dispatch_process_col(
            u_ptr,u_pack_ptr,u_lane0,u_lane1,u_lane2,u_lane3,
            l0_ptr,l0_pack_ptr,l0_lane0,l0_lane1,l0_lane2,l0_lane3,
            l1_ptr,l1_pack_ptr,l1_lane0,l1_lane1,l1_lane2,l1_lane3,
            l2_ptr,l2_pack_ptr,l2_lane0,l2_lane1,l2_lane2,l2_lane3,
            l3_ptr,l3_pack_ptr,l3_lane0,l3_lane1,l3_lane2,l3_lane3,
            col,a_rows,shared_dim,
            p00,p01,p02,p03,p10,p11,p12,p13,
            p20,p21,p22,p23,p30,p31,p32,p33,s0,s1,s2,s3);
        if (s0!=PB_HLS_OK || s1!=PB_HLS_OK || s2!=PB_HLS_OK || s3!=PB_HLS_OK) {
            status=PB_HLS_BAD_PATTERN;
            return;
        }
        for (pb_hls_u32 p=a_ptr[col]; p<a_ptr[col+1U]; ++p) {
#pragma HLS PIPELINE II=1
            const pb_hls_lword aw=pb_csc4_read_word(
                a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p);
            const pb_hls_u32 r=pb_lword_row(aw);
            if (r>=a_rows) { status=PB_HLS_BAD_PATTERN; return; }
            const pb_hls_f32 sum0=(p00[r]+p01[r])+(p02[r]+p03[r]);
            const pb_hls_f32 sum1=(p10[r]+p11[r])+(p12[r]+p13[r]);
            const pb_hls_f32 sum2=(p20[r]+p21[r])+(p22[r]+p23[r]);
            const pb_hls_f32 sum3=(p30[r]+p31[r])+(p32[r]+p33[r]);
            const pb_hls_f32 updated=pb_lword_value(aw)-((sum0+sum1)+(sum2+sum3));
            pb_csc4_write_value(a_ptr,a_pack_ptr,a_lane0,a_lane1,a_lane2,a_lane3,col,p,updated);
        }
    }
#undef PB_DISP_L
#undef PB_DISP_S
#undef PB_DISP_M
}

/* Phase-2 unified GETRF/GESSM/TSTRF datapath.  This is deliberately written
 * as one top rather than as a dispatcher around the three existing tops:
 * the four arithmetic lanes and the base/delta workspace are consequently
 * allocated once.  mode is a run-time control-state selector; only one of
 * the three state machines is active for a transaction.
 *
 * The arithmetic order follows the verified factor4 tops.  This keeps the
 * C model bitwise-close enough for the existing residual checks while making
 * the resource-sharing boundary explicit for HLS. */
extern "C" void pb_lu_factor4_shared_engine_v2(
    pb_hls_u32 mode,
    const pb_hls_u32 *a_ptr, const pb_hls_u32 *a_pack_ptr,
    pb_hls_lword *a_lane0, pb_hls_lword *a_lane1,
    pb_hls_lword *a_lane2, pb_hls_lword *a_lane3,
    const pb_hls_u32 *l_ptr, const pb_hls_u32 *l_pack_ptr,
    pb_hls_lword *l_lane0, pb_hls_lword *l_lane1,
    pb_hls_lword *l_lane2, pb_hls_lword *l_lane3,
    const pb_hls_u32 *u_ptr, const pb_hls_u32 *u_pack_ptr,
    pb_hls_lword *u_lane0, pb_hls_lword *u_lane1,
    pb_hls_lword *u_lane2, pb_hls_lword *u_lane3,
    pb_hls_u32 a_rows, pb_hls_u32 a_cols, pb_hls_u32 shared_dim,
    pb_hls_f32 pivot_eps, pb_hls_u32 &status)
{
#pragma HLS INTERFACE m_axi port=a_ptr offset=slave bundle=shared_a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_pack_ptr offset=slave bundle=shared_a_meta depth=4097
#pragma HLS INTERFACE m_axi port=a_lane0 offset=slave bundle=shared_a_l0 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane1 offset=slave bundle=shared_a_l1 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane2 offset=slave bundle=shared_a_l2 depth=65536
#pragma HLS INTERFACE m_axi port=a_lane3 offset=slave bundle=shared_a_l3 depth=65536
#pragma HLS INTERFACE m_axi port=l_ptr offset=slave bundle=shared_l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_pack_ptr offset=slave bundle=shared_l_meta depth=4097
#pragma HLS INTERFACE m_axi port=l_lane0 offset=slave bundle=shared_l_l0 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane1 offset=slave bundle=shared_l_l1 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane2 offset=slave bundle=shared_l_l2 depth=65536
#pragma HLS INTERFACE m_axi port=l_lane3 offset=slave bundle=shared_l_l3 depth=65536
#pragma HLS INTERFACE m_axi port=u_ptr offset=slave bundle=shared_u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_pack_ptr offset=slave bundle=shared_u_meta depth=4097
#pragma HLS INTERFACE m_axi port=u_lane0 offset=slave bundle=shared_u_l0 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane1 offset=slave bundle=shared_u_l1 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane2 offset=slave bundle=shared_u_l2 depth=65536
#pragma HLS INTERFACE m_axi port=u_lane3 offset=slave bundle=shared_u_l3 depth=65536
#pragma HLS INTERFACE s_axilite port=mode bundle=control
#pragma HLS INTERFACE s_axilite port=a_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=a_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=l_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=l_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=u_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_pack_ptr bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane0 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane1 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane2 bundle=control
#pragma HLS INTERFACE s_axilite port=u_lane3 bundle=control
#pragma HLS INTERFACE s_axilite port=a_rows bundle=control
#pragma HLS INTERFACE s_axilite port=a_cols bundle=control
#pragma HLS INTERFACE s_axilite port=shared_dim bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
    pb_hls_f32 base_even[PB_FACTOR2_BANK_N], base_odd[PB_FACTOR2_BANK_N];
    pb_hls_f32 delta0[PB_HLS_MAX_N], delta1[PB_HLS_MAX_N];
    pb_hls_f32 delta2[PB_HLS_MAX_N], delta3[PB_HLS_MAX_N];
    /* TSTRF membership tags are replicated per arithmetic lane.  Tags need
     * only represent col+1 (<=4096), so 16 bits are sufficient.  Replication
     * gives each packed update lane an independent BRAM read port and removes
     * the mark_even/mark_odd contention that forced the update loop to II=2. */
    uint16_t tmark0[PB_HLS_MAX_N], tmark1[PB_HLS_MAX_N];
    uint16_t tmark2[PB_HLS_MAX_N], tmark3[PB_HLS_MAX_N];
    /* Cache only the immutable row metadata.  A packed writeback word is held
     * in four scalar registers, so the previous four full 64-bit staging
     * memories are no longer required. */
    pb_hls_u32 row_meta[PB_HLS_MAX_N];
    pb_hls_u32 l_row_meta[PB_HLS_MAX_N];
    /* GETRF revisits only L metadata through the sparse predecessor list.
     * Cache those two vectors; A/U metadata is consumed once in monotonically
     * increasing column order and does not justify four additional BRAMs. */
    pb_hls_u32 l_ptr_local[PB_HLS_MAX_N + 1U];
    pb_hls_u32 l_pack_ptr_local[PB_HLS_MAX_N + 1U];
    /* TSTRF revisits A(:,prev) for every off-diagonal entry of U(:,col).
     * Keep its immutable CSC/CSC4 column metadata on chip so the sparse
     * update loop does not repeatedly issue small AXI reads. */
    pb_hls_u32 a_ptr_local[PB_HLS_MAX_N + 1U];
    pb_hls_u32 a_pack_ptr_local[PB_HLS_MAX_N + 1U];
#pragma HLS BIND_STORAGE variable=base_even type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=base_odd type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=delta3 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=tmark0 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=tmark1 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=tmark2 type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=tmark3 type=ram_2p impl=bram
#pragma HLS ARRAY_PARTITION variable=row_meta cyclic factor=4 dim=1
#pragma HLS BIND_STORAGE variable=row_meta type=ram_2p impl=bram
#pragma HLS ARRAY_PARTITION variable=l_row_meta cyclic factor=4 dim=1
#pragma HLS BIND_STORAGE variable=l_row_meta type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=l_ptr_local type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=l_pack_ptr_local type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=a_ptr_local type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=a_pack_ptr_local type=ram_2p impl=bram

    status = PB_HLS_OK;
#ifdef PB_SHARED_DISABLE_TSTRF
    const int valid_mode = mode == PB_LU_SHARED_GETRF ||
                           mode == PB_LU_SHARED_GESSM;
#else
    const int valid_mode = mode == PB_LU_SHARED_GETRF ||
                           mode == PB_LU_SHARED_GESSM ||
                           mode == PB_LU_SHARED_TSTRF;
#endif
    if (!valid_mode || a_rows == 0U || a_cols == 0U ||
        a_rows > PB_HLS_MAX_N || a_cols > PB_HLS_MAX_N) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    if (mode == PB_LU_SHARED_GETRF &&
        (a_rows != a_cols || shared_dim != a_rows)) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    if (mode == PB_LU_SHARED_GESSM && shared_dim != a_rows) {
        status = PB_HLS_BAD_SIZE;
        return;
    }
    if (mode == PB_LU_SHARED_TSTRF && shared_dim != a_cols) {
        status = PB_HLS_BAD_SIZE;
        return;
    }

    /* READ_INIT -> UPDATE4 -> SOLVE -> DIVIDE -> WRITEBACK for GETRF. */
    if (mode == PB_LU_SHARED_GETRF) {
        /* The predecessor traversal below reuses L metadata many times.  A/U
         * metadata remains on AXI because it is read only once per column. */
        for (pb_hls_u32 i = 0U; i <= a_cols; ++i) {
#pragma HLS PIPELINE II=1
            l_ptr_local[i] = l_ptr[i];
        }
        for (pb_hls_u32 i = 0U; i <= a_cols; ++i) {
#pragma HLS PIPELINE II=1
            l_pack_ptr_local[i] = l_pack_ptr[i];
        }
        for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
            const pb_hls_u32 a_begin = a_ptr[col];
            const pb_hls_u32 a_end = a_ptr[col + 1U];
            const pb_hls_u32 a_wb = a_pack_ptr[col];
            const pb_hls_u32 a_wend = a_pack_ptr[col + 1U];
            const pb_hls_u32 a_wc = a_wend - a_wb;
            const pb_hls_u32 a_nnz = a_end - a_begin;
            const pb_hls_u32 u_begin = u_ptr[col];
            const pb_hls_u32 u_end = u_ptr[col + 1U];
            const pb_hls_u32 u_wb = u_pack_ptr[col];
            const pb_hls_u32 u_wc = u_pack_ptr[col + 1U] - u_wb;
            const pb_hls_u32 u_nnz = u_end - u_begin;
            const pb_hls_u32 l_begin = l_ptr_local[col];
            const pb_hls_u32 l_end = l_ptr_local[col + 1U];
            const pb_hls_u32 l_wb = l_pack_ptr_local[col];
            const pb_hls_u32 l_wc = l_pack_ptr_local[col + 1U] - l_wb;
            const pb_hls_u32 l_nnz = l_end - l_begin;
            if (a_end < a_begin || u_end < u_begin || l_end < l_begin ||
                a_nnz > a_rows || u_nnz == 0U || u_nnz > a_rows ||
                l_nnz == 0U || l_nnz > a_rows) {
                status = PB_HLS_BAD_PATTERN; return;
            }

            /* U(:,col) and L(:,col) are the exact symbolic output envelope of
             * this factor column.  Clear only their union, while staging the
             * row metadata that is later reused for predecessor traversal and
             * writeback.  The diagonal overlap is harmlessly reset twice. */
            /* Keep the four-bank AXI read independent from the accumulator
             * reset.  Packing four pb_private_set_base4() calls into this loop
             * created a long compare/address/write path and reduced Fmax. */
            for (pb_hls_u32 w = 0U; w < u_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_lword r0 = u_lane0[u_wb + w];
                const pb_hls_lword r1 = u_lane1[u_wb + w];
                const pb_hls_lword r2 = u_lane2[u_wb + w];
                const pb_hls_lword r3 = u_lane3[u_wb + w];
                if (base < u_nnz) row_meta[base] = pb_lword_row(r0);
                if (base + 1U < u_nnz) row_meta[base + 1U] = pb_lword_row(r1);
                if (base + 2U < u_nnz) row_meta[base + 2U] = pb_lword_row(r2);
                if (base + 3U < u_nnz) row_meta[base + 3U] = pb_lword_row(r3);
            }
#if PB_FACTOR2_TRUSTED_SYMBOLIC
            /* Canonical symbolic output has already established bounds,
             * ordering and uniqueness.  Removing the loop-carried previous-
             * row check lets envelope initialization run at II=1. */
            for (pb_hls_u32 active = 0U; active < u_nnz; ++active) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row = row_meta[active];
                pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                     delta2, delta3, row, 0.0f);
            }
#else
            pb_hls_u32 u_previous = 0U;
            for (pb_hls_u32 active = 0U; active < u_nnz; ++active) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row = row_meta[active];
                if (row >= a_rows || row > col ||
                    (active != 0U && row <= u_previous)) {
                    status = PB_HLS_BAD_PATTERN; return;
                }
                u_previous = row;
                pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                     delta2, delta3, row, 0.0f);
            }
#endif
            for (pb_hls_u32 w = 0U; w < l_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_lword r0 = l_lane0[l_wb + w];
                const pb_hls_lword r1 = l_lane1[l_wb + w];
                const pb_hls_lword r2 = l_lane2[l_wb + w];
                const pb_hls_lword r3 = l_lane3[l_wb + w];
                if (base < l_nnz) l_row_meta[base] = pb_lword_row(r0);
                if (base + 1U < l_nnz) l_row_meta[base + 1U] = pb_lword_row(r1);
                if (base + 2U < l_nnz) l_row_meta[base + 2U] = pb_lword_row(r2);
                if (base + 3U < l_nnz) l_row_meta[base + 3U] = pb_lword_row(r3);
            }
#if PB_FACTOR2_TRUSTED_SYMBOLIC
            for (pb_hls_u32 active = 0U; active < l_nnz; ++active) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row = l_row_meta[active];
                pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                     delta2, delta3, row, 0.0f);
            }
#else
            pb_hls_u32 l_previous = 0U;
            for (pb_hls_u32 active = 0U; active < l_nnz; ++active) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 row = l_row_meta[active];
                if (row >= a_rows || row < col ||
                    (active != 0U && row <= l_previous)) {
                    status = PB_HLS_BAD_PATTERN; return;
                }
                l_previous = row;
                pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                     delta2, delta3, row, 0.0f);
            }
#endif
            if (row_meta[u_nnz - 1U] != col || l_row_meta[0] != col) {
                status = PB_HLS_BAD_PATTERN; return;
            }

            /* Scatter the numerical input after the structural envelope has
             * been zeroed.  Put each packed lane into its lane-private delta
             * RAM rather than issuing four arbitrary writes to the two-bank
             * base store.  Since canonical CSC has at most one entry per row
             * in a column, these writes cannot alias.  The materialized value
             * remains exactly base + delta0 + delta1 + delta2 + delta3, while
             * the four independent RAMs allow one packed word per cycle. */
            for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_lword s0 = a_lane0[a_wb + w];
                const pb_hls_lword s1 = a_lane1[a_wb + w];
                const pb_hls_lword s2 = a_lane2[a_wb + w];
                const pb_hls_lword s3 = a_lane3[a_wb + w];
                const pb_hls_u32 base = w * 4U;
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
                if (base < a_nnz)
                    delta0[pb_lword_row(s0)] = pb_lword_value(s0);
                if (base + 1U < a_nnz)
                    delta1[pb_lword_row(s1)] = pb_lword_value(s1);
                if (base + 2U < a_nnz)
                    delta2[pb_lword_row(s2)] = pb_lword_value(s2);
                if (base + 3U < a_nnz)
                    delta3[pb_lword_row(s3)] = pb_lword_value(s3);
            }
            /* U row indices are sorted and end in the diagonal.  Visiting the
             * preceding structural entries preserves the old increasing-k
             * arithmetic order while removing all structurally-zero probes. */
            for (pb_hls_u32 active = 0U; active + 1U < u_nnz; ++active) {
                const pb_hls_u32 k = row_meta[active];
                const pb_hls_f32 ukj = pb_private_get4(
                    base_even, base_odd, delta0, delta1, delta2, delta3, k);
                if (pb_hls_small(ukj)) continue;
                const pb_hls_u32 predecessor_l_begin = l_ptr_local[k];
                const pb_hls_u32 predecessor_l_end = l_ptr_local[k + 1U];
                const pb_hls_u32 l_wb0 = l_pack_ptr_local[k];
                if (predecessor_l_end <= predecessor_l_begin) {
                    status = PB_HLS_BAD_PATTERN; return;
                }
                for (pb_hls_u32 p = predecessor_l_begin;
                     p < predecessor_l_end; p += 4U) {
#pragma HLS PIPELINE II=1
                    const pb_hls_u32 end = predecessor_l_end;
                    const int a0 = p < end, a1 = p + 1U < end;
                    const int a2 = p + 2U < end, a3 = p + 3U < end;
                    const pb_hls_u32 word =
                        l_wb0 + ((p - predecessor_l_begin) >> 2U);
                    const pb_hls_lword w0 = a0 ? l_lane0[word] : 0ULL;
                    const pb_hls_lword w1 = a1 ? l_lane1[word] : 0ULL;
                    const pb_hls_lword w2 = a2 ? l_lane2[word] : 0ULL;
                    const pb_hls_lword w3 = a3 ? l_lane3[word] : 0ULL;
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
                    if (a0 && pb_lword_row(w0) > k)
                        delta0[pb_lword_row(w0)] -= pb_lane0_mul(pb_lword_value(w0), ukj);
                    if (a1 && pb_lword_row(w1) > k)
                        delta1[pb_lword_row(w1)] -= pb_lane1_mul(pb_lword_value(w1), ukj);
                    if (a2 && pb_lword_row(w2) > k)
                        delta2[pb_lword_row(w2)] -= pb_lane2_mul(pb_lword_value(w2), ukj);
                    if (a3 && pb_lword_row(w3) > k)
                        delta3[pb_lword_row(w3)] -= pb_lane3_mul(pb_lword_value(w3), ukj);
                }
            }
            pb_hls_f32 pivot = pb_private_get4(base_even, base_odd, delta0,
                                               delta1, delta2, delta3, col);
            if (pivot <= pivot_eps && pivot >= -pivot_eps) pivot = pivot_eps;
            /* The row metadata was staged while initializing the sparse
             * envelope, so U writeback no longer needs a separate AXI read. */
            for (pb_hls_u32 w = 0U; w < u_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_u32 row0 = row_meta[base];
                const pb_hls_u32 row1 = row_meta[base + 1U];
                const pb_hls_u32 row2 = row_meta[base + 2U];
                const pb_hls_u32 row3 = row_meta[base + 3U];
                if (base < u_nnz && row0 > col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 1U < u_nnz && row1 > col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 2U < u_nnz && row2 > col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 3U < u_nnz && row3 > col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base < u_nnz)
                    u_lane0[u_wb + w] = pb_lword_with_value((pb_hls_lword)row0,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row0));
                if (base + 1U < u_nnz)
                    u_lane1[u_wb + w] = pb_lword_with_value((pb_hls_lword)row1,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row1));
                if (base + 2U < u_nnz)
                    u_lane2[u_wb + w] = pb_lword_with_value((pb_hls_lword)row2,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row2));
                if (base + 3U < u_nnz)
                    u_lane3[u_wb + w] = pb_lword_with_value((pb_hls_lword)row3,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row3));
            }
            const pb_hls_f32 inv_pivot = 1.0f / pivot;
            for (pb_hls_u32 w = 0U; w < l_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_u32 row0 = l_row_meta[base];
                const pb_hls_u32 row1 = l_row_meta[base + 1U];
                const pb_hls_u32 row2 = l_row_meta[base + 2U];
                const pb_hls_u32 row3 = l_row_meta[base + 3U];
                if (base < l_nnz && row0 < col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 1U < l_nnz && row1 < col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 2U < l_nnz && row2 < col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base + 3U < l_nnz && row3 < col) { status = PB_HLS_BAD_PATTERN; return; }
                if (base < l_nnz)
                    l_lane0[l_wb + w] = pb_lword_with_value((pb_hls_lword)row0,
                        row0 == col ? 1.0f : pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row0) * inv_pivot);
                if (base + 1U < l_nnz)
                    l_lane1[l_wb + w] = pb_lword_with_value((pb_hls_lword)row1,
                        row1 == col ? 1.0f : pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row1) * inv_pivot);
                if (base + 2U < l_nnz)
                    l_lane2[l_wb + w] = pb_lword_with_value((pb_hls_lword)row2,
                        row2 == col ? 1.0f : pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row2) * inv_pivot);
                if (base + 3U < l_nnz)
                    l_lane3[l_wb + w] = pb_lword_with_value((pb_hls_lword)row3,
                        row3 == col ? 1.0f : pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row3) * inv_pivot);
            }
        }
        return;
    }

    /* GESSM: READ_INIT -> UPDATE4/SOLVE -> WRITEBACK.  It uses the same
     * workspace and lane multipliers; L is read-only and A is updated. */
    if (mode == PB_LU_SHARED_GESSM) {
        for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
            const pb_hls_u32 a_begin = a_ptr[col];
            const pb_hls_u32 a_end = a_ptr[col + 1U];
            const pb_hls_u32 a_wb = a_pack_ptr[col];
            const pb_hls_u32 a_wc = a_pack_ptr[col + 1U] - a_wb;
            const pb_hls_u32 a_nnz = a_end - a_begin;
            if (a_nnz > a_rows) {
                status = PB_HLS_BAD_PATTERN; return;
            }
            /* The symbolic phase has already materialized the structural
             * pattern of X=L^{-1}A in this CSC column.  Loading those entries
             * resets every accumulator that can be observed or written by
             * this task, so clearing all a_rows locations is unnecessary. */
            for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_lword r0 = a_lane0[a_wb + w];
                const pb_hls_lword r1 = a_lane1[a_wb + w];
                const pb_hls_lword r2 = a_lane2[a_wb + w];
                const pb_hls_lword r3 = a_lane3[a_wb + w];
#define PB_SHARED_INIT_A(RECORD, OFFSET) do {                                     \
                if (base + OFFSET < a_nnz) {                                     \
                    const pb_hls_u32 row = pb_lword_row(RECORD);                  \
                    if (row >= a_rows) { status = PB_HLS_BAD_PATTERN; return; }    \
                    row_meta[base + OFFSET] = row;                                \
                    pb_private_set_base4(base_even, base_odd, delta0, delta1,     \
                                         delta2, delta3, row,                    \
                                         pb_lword_value(RECORD));                \
                }                                                                 \
            } while (0)
                PB_SHARED_INIT_A(r0, 0U);
                PB_SHARED_INIT_A(r1, 1U);
                PB_SHARED_INIT_A(r2, 2U);
                PB_SHARED_INIT_A(r3, 3U);
#undef PB_SHARED_INIT_A
            }
            /* CSC row indices are strictly increasing.  They therefore are
             * also the exact forward-substitution order.  Iterate only the
             * symbolic output rows instead of scanning k=0..a_rows-1. */
            pb_hls_u32 previous_k = 0U;
            for (pb_hls_u32 active = 0U; active < a_nnz; ++active) {
                const pb_hls_u32 k = row_meta[active];
                if (k >= a_rows || (active != 0U && k <= previous_k)) {
                    status = PB_HLS_BAD_PATTERN; return;
                }
                previous_k = k;
                const pb_hls_f32 rhs = pb_private_get4(
                    base_even, base_odd, delta0, delta1, delta2, delta3, k);
                if (pb_hls_small(rhs)) continue;
                /* Snapshot predecessor metadata once.  This is particularly
                 * important for GESSM because the solve loop visits every
                 * shared-dimension column and otherwise issues repeated
                 * AXI reads for the same ptr/pack_ptr entries. */
                const pb_hls_u32 l_begin = l_ptr[k];
                const pb_hls_u32 l_end = l_ptr[k + 1U];
                const pb_hls_u32 nnz = l_end - l_begin;
                const pb_hls_u32 wb = l_pack_ptr[k];
                const pb_hls_u32 wc = l_pack_ptr[k + 1U] - wb;
                if (nnz == 0U || wc == 0U ||
                    pb_lword_row(l_lane0[wb]) != k ||
                    pb_hls_small(pb_lword_value(l_lane0[wb]))) {
                    status = PB_HLS_BAD_PATTERN; return;
                }
                /* GETRF stores an explicit unit diagonal in L.  Hence the
                 * GESSM solve has x=rhs and must not consume the shared
                 * divider once per active row. */
                const pb_hls_f32 x = rhs;
                pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                     delta2, delta3, k, x);
                if (pb_hls_small(x) || nnz <= 1U) continue;
                /* Keep the update loop local to the shared engine.  The
                 * accumulator memories are intentionally lane-private, so
                 * HLS can issue the four independent updates without adding
                 * a large DATAFLOW/FIFO hierarchy to every GESSM task. */
                for (pb_hls_u32 w = 0U; w < wc; ++w) {
#pragma HLS PIPELINE II=1
                    const pb_hls_u32 base = w * 4U;
                    const int a0 = base < nnz && base > 0U;
                    const int a1 = base + 1U < nnz;
                    const int a2 = base + 2U < nnz;
                    const int a3 = base + 3U < nnz;
                    const pb_hls_lword w0 = l_lane0[wb + w];
                    const pb_hls_lword w1 = l_lane1[wb + w];
                    const pb_hls_lword w2 = l_lane2[wb + w];
                    const pb_hls_lword w3 = l_lane3[wb + w];
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
                    if (a0) delta0[pb_lword_row(w0)] -= pb_lane0_mul(pb_lword_value(w0), x);
                    if (a1) delta1[pb_lword_row(w1)] -= pb_lane1_mul(pb_lword_value(w1), x);
                    if (a2) delta2[pb_lword_row(w2)] -= pb_lane2_mul(pb_lword_value(w2), x);
                    if (a3) delta3[pb_lword_row(w3)] -= pb_lane3_mul(pb_lword_value(w3), x);
                }
            }
            for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
                const pb_hls_u32 base = w * 4U;
                const pb_hls_u32 row0 = row_meta[base];
                const pb_hls_u32 row1 = row_meta[base + 1U];
                const pb_hls_u32 row2 = row_meta[base + 2U];
                const pb_hls_u32 row3 = row_meta[base + 3U];
                if (base < a_nnz)
                    a_lane0[a_wb + w] = pb_lword_with_value((pb_hls_lword)row0,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row0));
                if (base + 1U < a_nnz)
                    a_lane1[a_wb + w] = pb_lword_with_value((pb_hls_lword)row1,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row1));
                if (base + 2U < a_nnz)
                    a_lane2[a_wb + w] = pb_lword_with_value((pb_hls_lword)row2,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row2));
                if (base + 3U < a_nnz)
                    a_lane3[a_wb + w] = pb_lword_with_value((pb_hls_lword)row3,
                        pb_private_get4(base_even, base_odd, delta0, delta1, delta2, delta3, row3));
            }
        }
        return;
    }

#ifndef PB_SHARED_DISABLE_TSTRF
    /* TSTRF: READ_INIT -> UPDATE4 -> SOLVE/DIVIDE -> WRITEBACK.  Cache the
     * repeatedly reused A metadata once per task. */
    for (pb_hls_u32 i = 0U; i <= a_cols; ++i) {
#pragma HLS PIPELINE II=1
        a_ptr_local[i] = a_ptr[i];
    }
    for (pb_hls_u32 i = 0U; i <= a_cols; ++i) {
#pragma HLS PIPELINE II=1
        a_pack_ptr_local[i] = a_pack_ptr[i];
    }

    /* A tag makes workspace membership column-local.  Therefore stale values
     * outside the current symbolic A(:,col) envelope are never observed and
     * no dense per-column workspace clear is required. */
    for (pb_hls_u32 row = 0U; row < a_rows; ++row) {
#pragma HLS PIPELINE II=1
        tmark0[row] = 0U;
        tmark1[row] = 0U;
        tmark2[row] = 0U;
        tmark3[row] = 0U;
    }
    for (pb_hls_u32 col = 0U; col < a_cols; ++col) {
        const pb_hls_u32 tag = col + 1U;
        const pb_hls_u32 a_begin = a_ptr_local[col];
        const pb_hls_u32 a_end = a_ptr_local[col + 1U];
        const pb_hls_u32 a_wb = a_pack_ptr_local[col];
        const pb_hls_u32 a_wc = a_pack_ptr_local[col + 1U] - a_wb;
        const pb_hls_u32 a_nnz = a_end - a_begin;
        if (a_end < a_begin || a_nnz > a_rows) {
            status = PB_HLS_BAD_PATTERN; return;
        }

        /* Stage the current sparse envelope.  This loop performs only the
         * four independent AXI reads and four row-metadata writes. */
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 base = w * 4U;
            const pb_hls_lword r0 = a_lane0[a_wb + w];
            const pb_hls_lword r1 = a_lane1[a_wb + w];
            const pb_hls_lword r2 = a_lane2[a_wb + w];
            const pb_hls_lword r3 = a_lane3[a_wb + w];
#define PB_SHARED_STAGE_T(RECORD, OFFSET) do {                                    \
            if (base + OFFSET < a_nnz) {                                         \
                const pb_hls_u32 row = pb_lword_row(RECORD);                      \
                if (row >= a_rows) { status = PB_HLS_BAD_PATTERN; return; }       \
                row_meta[base + OFFSET] = row;                                   \
            }                                                                    \
        } while (0)
            PB_SHARED_STAGE_T(r0, 0U);
            PB_SHARED_STAGE_T(r1, 1U);
            PB_SHARED_STAGE_T(r2, 2U);
            PB_SHARED_STAGE_T(r3, 3U);
#undef PB_SHARED_STAGE_T
        }

        /* Reset only rows belonging to A(:,col).  One arbitrary-row update
         * per iteration avoids the eight-cycle packed multi-write schedule
         * and makes the reset cost proportional to column NNZ, not a_rows. */
        for (pb_hls_u32 active = 0U; active < a_nnz; ++active) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 row = row_meta[active];
            pb_private_set_base4(base_even, base_odd, delta0, delta1,
                                 delta2, delta3, row, 0.0f);
            const uint16_t compact_tag = (uint16_t)tag;
            tmark0[row] = compact_tag;
            tmark1[row] = compact_tag;
            tmark2[row] = compact_tag;
            tmark3[row] = compact_tag;
        }

        /* Scatter the four packed input values into independent delta banks.
         * With a zero base this materializes exactly the original A value,
         * while retaining one packed word per cycle. */
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 base = w * 4U;
            const pb_hls_lword r0 = a_lane0[a_wb + w];
            const pb_hls_lword r1 = a_lane1[a_wb + w];
            const pb_hls_lword r2 = a_lane2[a_wb + w];
            const pb_hls_lword r3 = a_lane3[a_wb + w];
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
            if (base < a_nnz)
                delta0[pb_lword_row(r0)] = pb_lword_value(r0);
            if (base + 1U < a_nnz)
                delta1[pb_lword_row(r1)] = pb_lword_value(r1);
            if (base + 2U < a_nnz)
                delta2[pb_lword_row(r2)] = pb_lword_value(r2);
            if (base + 3U < a_nnz)
                delta3[pb_lword_row(r3)] = pb_lword_value(r3);
        }
        if (u_ptr[col] == u_ptr[col + 1U]) {
            status = PB_HLS_BAD_PATTERN; return;
        }
        for (pb_hls_u32 up = u_ptr[col]; up + 1U < u_ptr[col + 1U]; ++up) {
            const pb_hls_lword uit = pb_csc4_read_word(
                u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3,
                col, up);
            const pb_hls_u32 prev = pb_lword_row(uit);
            const pb_hls_f32 factor = pb_lword_value(uit);
            if (prev >= a_cols) { status = PB_HLS_BAD_PATTERN; return; }
            const pb_hls_u32 x_begin = a_ptr_local[prev];
            const pb_hls_u32 x_end = a_ptr_local[prev + 1U];
            const pb_hls_u32 x_wb = a_pack_ptr_local[prev];
            for (pb_hls_u32 xp = x_begin; xp < x_end; xp += 4U) {
#pragma HLS PIPELINE II=1
                const int a0 = xp < x_end, a1 = xp + 1U < x_end;
                const int a2 = xp + 2U < x_end, a3 = xp + 3U < x_end;
                const pb_hls_u32 word = x_wb + ((xp - x_begin) >> 2U);
                const pb_hls_lword w0 = a0 ? a_lane0[word] : 0ULL;
                const pb_hls_lword w1 = a1 ? a_lane1[word] : 0ULL;
                const pb_hls_lword w2 = a2 ? a_lane2[word] : 0ULL;
                const pb_hls_lword w3 = a3 ? a_lane3[word] : 0ULL;
#pragma HLS DEPENDENCE variable=delta0 inter false
#pragma HLS DEPENDENCE variable=delta1 inter false
#pragma HLS DEPENDENCE variable=delta2 inter false
#pragma HLS DEPENDENCE variable=delta3 inter false
                if (a0 && tmark0[pb_lword_row(w0)] == (uint16_t)tag)
                    delta0[pb_lword_row(w0)] -= pb_lane0_mul(pb_lword_value(w0), factor);
                if (a1 && tmark1[pb_lword_row(w1)] == (uint16_t)tag)
                    delta1[pb_lword_row(w1)] -= pb_lane1_mul(pb_lword_value(w1), factor);
                if (a2 && tmark2[pb_lword_row(w2)] == (uint16_t)tag)
                    delta2[pb_lword_row(w2)] -= pb_lane2_mul(pb_lword_value(w2), factor);
                if (a3 && tmark3[pb_lword_row(w3)] == (uint16_t)tag)
                    delta3[pb_lword_row(w3)] -= pb_lane3_mul(pb_lword_value(w3), factor);
            }
        }
        const pb_hls_lword diagw = pb_csc4_read_word(
            u_ptr, u_pack_ptr, u_lane0, u_lane1, u_lane2, u_lane3,
            col, u_ptr[col + 1U] - 1U);
        const pb_hls_f32 diag = pb_lword_value(diagw);
        const pb_hls_f32 safe_diag = (diag <= pivot_eps && diag >= -pivot_eps) ?
                                     pivot_eps : diag;
        const pb_hls_f32 inv_diag = 1.0f / safe_diag;
        for (pb_hls_u32 w = 0U; w < a_wc; ++w) {
#pragma HLS PIPELINE II=1
            const pb_hls_u32 base = w * 4U;
#define PB_SHARED_WRITE_T(LANE, OFFSET) do {                                      \
            if (base + OFFSET < a_nnz) {                                         \
                const pb_hls_u32 row = row_meta[base + OFFSET];                   \
                const pb_hls_f32 value = pb_private_get4(                         \
                    base_even, base_odd, delta0, delta1, delta2, delta3, row) *   \
                    inv_diag;                                                     \
                LANE[a_wb + w] =                                                 \
                    pb_lword_with_value((pb_hls_lword)row, value);                \
            }                                                                     \
        } while (0)
            PB_SHARED_WRITE_T(a_lane0, 0U);
            PB_SHARED_WRITE_T(a_lane1, 1U);
            PB_SHARED_WRITE_T(a_lane2, 2U);
            PB_SHARED_WRITE_T(a_lane3, 3U);
#undef PB_SHARED_WRITE_T
        }
    }
#else
    /* TSTRF is routed through the independently verified factor-4 top in
     * hybrid_worker_pool.cpp.  Do not synthesize the experimental shared
     * state machine into this RTL, because its dormant branch creates large
     * DSP48 simulation warnings and was the source of the first BAD_PATTERN. */
    status = PB_HLS_BAD_SIZE;
#endif
}
