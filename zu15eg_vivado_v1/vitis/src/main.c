#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "ff.h"
#include "stdlib.h"
#include "string.h"
#include "stdint.h"
#include "stddef.h"
#include "sleep.h"
#include "blu_format.h"

/* Current HWH bases. Generated xparameters.h macros override these fallbacks. */
#ifndef XPAR_GETRF_0_S_AXI_CONTROL_BASEADDR
#define XPAR_GETRF_0_S_AXI_CONTROL_BASEADDR 0xA0000000U
#endif
#ifndef XPAR_GESSM_0_S_AXI_CONTROL_BASEADDR
#define XPAR_GESSM_0_S_AXI_CONTROL_BASEADDR 0xA0001000U
#endif
#ifndef XPAR_TSTRF_0_S_AXI_CONTROL_BASEADDR
#define XPAR_TSTRF_0_S_AXI_CONTROL_BASEADDR 0xA0002000U
#endif
#ifndef XPAR_SSSSM_0_S_AXI_CONTROL_BASEADDR
#define XPAR_SSSSM_0_S_AXI_CONTROL_BASEADDR 0xA0003000U
#endif

/* These four names are generated after rerunning 02_create_bd.tcl. */
#ifndef XPAR_GESSM_CFG_BASEADDR
#define XPAR_GESSM_CFG_BASEADDR 0xA0010000U
#endif
#ifndef XPAR_TSTRF_CFG_BASEADDR
#define XPAR_TSTRF_CFG_BASEADDR 0xA0011000U
#endif
#ifndef XPAR_TSTRF_EPS_BASEADDR
#define XPAR_TSTRF_EPS_BASEADDR 0xA0012000U
#endif
#ifndef XPAR_SSSSM_CFG_BASEADDR
#define XPAR_SSSSM_CFG_BASEADDR 0xA0013000U
#endif

#define AP_CTRL 0x00U
#define AP_START 0x01U
#define AP_DONE 0x02U
#define GPIO_DATA1 0x00U
#define GPIO_TRI1  0x04U
#define GPIO_DATA2 0x08U
#define GPIO_TRI2  0x0cU
#define SD_CHUNK (64U*1024U)
#define TASK_TIMEOUT_LOOPS 200000000U

/* HLS AXI-Lite pointer/scalar offsets, taken from generated *_control_s_axi.v. */
static const uintptr_t gr_ptr[][2] = {
 {0x10,0x14},{0x1c,0x20},{0x28,0x2c},{0x34,0x38},{0x40,0x44},
 {0x4c,0x50},{0x58,0x5c},{0x64,0x68},{0x70,0x74},{0x7c,0x80}};
static const uintptr_t ge_ptr[][2] = {
 {0x10,0x14},{0x1c,0x20},{0x28,0x2c},{0x34,0x38},{0x40,0x44},
 {0x4c,0x50},{0x58,0x5c},{0x64,0x68},{0x70,0x74},{0x7c,0x80},
 {0x88,0x8c},{0x94,0x98},{0xa0,0xa4}};
static const uintptr_t tr_ptr[][2] = {
 {0x10,0x14},{0x1c,0x20},{0x28,0x2c},{0x34,0x38},{0x40,0x44},
 {0x4c,0x50},{0x58,0x5c},{0x64,0x68},{0x70,0x74},{0x7c,0x80},
 {0x88,0x8c},{0x94,0x98},{0xa0,0xa4}};
static const uintptr_t ss_ptr[][2] = {
 {0x10,0x14},{0x1c,0x20},{0x28,0x2c},{0x34,0x38},{0x40,0x44},
 {0x4c,0x50},{0x58,0x5c},{0x64,0x68},{0x70,0x74},{0x7c,0x80},
 {0x88,0x8c},{0x94,0x98},{0xa0,0xa4},{0xac,0xb0}};

static uint32_t f32_bits(float x) { uint32_t u; memcpy(&u,&x,sizeof u); return u; }
static void mmio64(uintptr_t base, uintptr_t lo_off, uintptr_t hi_off, const void *p) {
    uintptr_t a=(uintptr_t)p;
    Xil_Out32(base+lo_off,(uint32_t)a);
    Xil_Out32(base+hi_off,(uint32_t)(a>>32));
}
static const void *argp(const uint8_t *blob, const blu_task_t *t, unsigned s) {
    if (s>=BLU_MAX_ARGS || t->arg_bytes[s]==0) return NULL;
    return (const void *)(blob + t->arg_offset[s]);
}
static void *argw(uint8_t *blob, const blu_task_t *t, unsigned s) {
    return (void *)argp(blob,t,s);
}
static void gpio_prepare(uintptr_t base, int dual) {
    Xil_Out32(base+GPIO_TRI1,0); if (dual) Xil_Out32(base+GPIO_TRI2,0);
}
static void gpio_write1(uintptr_t base, uint32_t v) { Xil_Out32(base+GPIO_DATA1,v); }
static void gpio_write2(uintptr_t base, uint32_t v) { Xil_Out32(base+GPIO_DATA2,v); }

static int wait_done(uintptr_t base, unsigned task_id) {
    unsigned loops=0;
    while ((Xil_In32(base+AP_CTRL)&AP_DONE)==0U) {
        if (++loops==TASK_TIMEOUT_LOOPS) {
            xil_printf("TIMEOUT task=%u base=%08lx ctrl=%08lx\r\n",task_id,
                       (unsigned long)base,(unsigned long)Xil_In32(base+AP_CTRL));
            return -1;
        }
    }
    return 0;
}
static void start_kernel(uintptr_t base) { Xil_Out32(base+AP_CTRL,AP_START); }

static int run_getrf(uint8_t *blob, const blu_task_t *t, unsigned id) {
    uintptr_t b=XPAR_GETRF_0_S_AXI_CONTROL_BASEADDR;
    for (unsigned i=0;i<10;i++) mmio64(b,gr_ptr[i][0],gr_ptr[i][1],argp(blob,t,i));
    Xil_Out32(b+0x88,t->n); Xil_Out32(b+0x90,t->pivot_eps_bits);
    start_kernel(b); return wait_done(b,id);
}
static int run_gessm(uint8_t *blob, const blu_task_t *t, unsigned id) {
    uintptr_t b=XPAR_GESSM_0_S_AXI_CONTROL_BASEADDR;
    gpio_write1(XPAR_GESSM_CFG_BASEADDR,t->active_count);
    gpio_write2(XPAR_GESSM_CFG_BASEADDR,t->n);
    for (unsigned i=0;i<13;i++) mmio64(b,ge_ptr[i][0],ge_ptr[i][1],argp(blob,t,i));
    start_kernel(b); return wait_done(b,id);
}
static int run_tstrf(uint8_t *blob, const blu_task_t *t, unsigned id) {
    uintptr_t b=XPAR_TSTRF_0_S_AXI_CONTROL_BASEADDR;
    gpio_write1(XPAR_TSTRF_CFG_BASEADDR,t->active_count);
    gpio_write2(XPAR_TSTRF_CFG_BASEADDR,t->n);
    gpio_write1(XPAR_TSTRF_EPS_BASEADDR,t->pivot_eps_bits);
    for (unsigned i=0;i<13;i++) mmio64(b,tr_ptr[i][0],tr_ptr[i][1],argp(blob,t,i));
    start_kernel(b); return wait_done(b,id);
}
static int run_ssssm(uint8_t *blob, const blu_task_t *t, unsigned id) {
    uintptr_t b=XPAR_SSSSM_0_S_AXI_CONTROL_BASEADDR;
    gpio_write1(XPAR_SSSSM_CFG_BASEADDR,t->n);
    for (unsigned i=0;i<14;i++) mmio64(b,ss_ptr[i][0],ss_ptr[i][1],argp(blob,t,i));
    start_kernel(b); return wait_done(b,id);
}

static int run_task(uint8_t *blob, const blu_task_t *t, unsigned id) {
    switch(t->kind) {
      case BLU_GETRF: return run_getrf(blob,t,id);
      case BLU_GESSM: return run_gessm(blob,t,id);
      case BLU_TSTRF: return run_tstrf(blob,t,id);
      case BLU_SSSSM: return run_ssssm(blob,t,id);
      default: xil_printf("bad task kind=%u\r\n",t->kind); return -2;
    }
}

int main(void) {
    FATFS fs; FIL fp; FILINFO fi; FRESULT fr; UINT got;
    uint8_t *blob=NULL; uint8_t *raw_alloc=NULL; uint32_t bytes=0; uint32_t off=0;
    xil_printf("Block-LU SD runner start\r\n");
    gpio_prepare(XPAR_GESSM_CFG_BASEADDR,1); gpio_prepare(XPAR_TSTRF_CFG_BASEADDR,1);
    gpio_prepare(XPAR_TSTRF_EPS_BASEADDR,0); gpio_prepare(XPAR_SSSSM_CFG_BASEADDR,0);
    fr=f_mount(&fs,"0:",1); if(fr!=FR_OK){xil_printf("SD mount failed=%d\r\n",fr);return 1;}
    fr=f_stat("0:/lu_case.blu",&fi); if(fr!=FR_OK){xil_printf("lu_case.blu missing=%d\r\n",fr);return 1;}
    bytes=(uint32_t)fi.fsize;
    raw_alloc=(uint8_t*)malloc((size_t)bytes + BLU_ALIGN - 1U);
    if(!raw_alloc){xil_printf("DDR allocation failed bytes=%u\r\n",bytes);return 1;}
    blob=(uint8_t*)(((uintptr_t)raw_alloc + (BLU_ALIGN-1U)) & ~(uintptr_t)(BLU_ALIGN-1U));
    fr=f_open(&fp,"0:/lu_case.blu",FA_READ); if(fr!=FR_OK){xil_printf("open failed=%d\r\n",fr);return 1;}
    while(off<bytes){ UINT want=(bytes-off>SD_CHUNK)?SD_CHUNK:(UINT)(bytes-off); fr=f_read(&fp,blob+off,want,&got); if(fr!=FR_OK||got!=want){xil_printf("read failed off=%u fr=%d got=%u\r\n",off,fr,got);f_close(&fp);return 1;} off+=got; }
    f_close(&fp);
    Xil_DCacheFlushRange((UINTPTR)blob,bytes);
    const blu_header_t *h=(const blu_header_t*)blob;
    if(memcmp(h->magic,BLU_MAGIC,7)!=0 || h->version!=BLU_VERSION || h->total_bytes>bytes || h->task_table_offset + h->task_count*sizeof(blu_task_t)>bytes){xil_printf("bad BLU header\r\n");return 1;}
    xil_printf("SD mounted bytes=%u n=%u tasks=%u\r\n",bytes,h->matrix_n,h->task_count);
    blu_task_t *tasks=(blu_task_t*)(blob+h->task_table_offset);
    for(uint32_t i=0;i<h->task_count;i++){
        if(tasks[i].kind>BLU_SSSSM || tasks[i].arg_count>BLU_MAX_ARGS || tasks[i].n==0){
            xil_printf("bad task record=%u\r\n",i); return 1;
        }
        for(unsigned s=0;s<BLU_MAX_ARGS;s++){
            uint64_t end=(uint64_t)tasks[i].arg_offset[s]+tasks[i].arg_bytes[s];
            if(tasks[i].arg_bytes[s] && (tasks[i].arg_offset[s]<h->data_offset || end>h->total_bytes)){
                xil_printf("bad task section=%u slot=%u\r\n",i,s); return 1;
            }
        }
        xil_printf("task %u kind=%u n=%u active=%u\r\n",i,tasks[i].kind,tasks[i].n,tasks[i].active_count);
        if(run_task(blob,&tasks[i],i)!=0){xil_printf("task %u failed\r\n",i);return 2;}
        Xil_DCacheInvalidateRange((UINTPTR)blob,bytes);
        xil_printf("task %u done\r\n",i);
        Xil_DCacheFlushRange((UINTPTR)blob,bytes);
    }
    xil_printf("BLU_DONE\r\n"); free(raw_alloc); f_mount(NULL,"0:",0); return 0;
}
