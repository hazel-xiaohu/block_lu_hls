#ifndef TASKS
#define TASKS

#include "core.h"

void A_row_reader(id_t* A_rcsr, id_t rnum, rinfo_stream* A_rlenstream){

	// read A_csr pointer array, read r[i] and r[i+1], totally rnum+1 elements
	// rinfo: rid, rlen, totally rnum rows
	id_t previous_idx = 0;
	rinfo temp_rinfo;

	for (id_t i=0; i<rnum+1; i++) {
#pragma HLS PIPELINE II=1
		id_t current_idx = A_rcsr[i];
		if (i >= 1) {
			temp_rinfo.rid = i - 1;
			temp_rinfo.rlen = current_idx - previous_idx;
			A_rlenstream->write(temp_rinfo);
		}
		previous_idx = current_idx;
	}

	// Explicit terminator: zero length is a valid matrix row.
	temp_rinfo.rid = TERMINATE;
	temp_rinfo.rlen = 0;
	A_rlenstream->write(temp_rinfo);
}

void A_element_reader(val_t* A_val, id_t* A_cid, rinfo_stream* A_rlenstream, id_t tnum, avc_stream* Avcstream){
    id_t index = 0;
    for (;;) {
        rinfo row = A_rlenstream->read();
        if (row.rid == TERMINATE) break;
        for (id_t j=0; j<row.rlen; ++j) {
#pragma HLS PIPELINE II=1
            Avc item = {};
            item.rid = row.rid;
            item.val = A_val[index];
            item.cid = A_cid[index++];
            Avcstream->write(item);
        }
        // Every row, including an empty row, closes on all four PEs.
        Avc boundary = {};
        boundary.rid = row.rid;
        boundary.row_end = true;
        Avcstream->write(boundary);
    }
    Avc stop = {};
    stop.end = true;
    Avcstream->write(stop);
}

// Discard A entries whose referenced B row is empty, while preserving every
// original row boundary so empty and fully-filtered rows still reach all PEs.
void A_element_filter(val_t* A_val, id_t* A_cid, rinfo_stream* A_rlenstream,
		id_t brnum, b_keep_mask_stream* keep_col_stream, avc_stream* Avcstream){
	const b_keep_mask_t keep_col = keep_col_stream->read();

    id_t index = 0;
    for (;;) {
        rinfo row = A_rlenstream->read();
        if (row.rid == TERMINATE) break;
        for (id_t j = 0; j < row.rlen; ++j) {
#pragma HLS PIPELINE II=1
            Avc item = {};
            item.rid = row.rid;
            item.cid = A_cid[index];
            item.val = A_val[index];
            ++index;
            if (item.cid < brnum && item.cid < SPMM_INPUT_DEPTH && keep_col[item.cid])
                Avcstream->write(item);
        }
        Avc boundary = {};
        boundary.rid = row.rid;
        boundary.row_end = true;
        Avcstream->write(boundary);
    }
    Avc stop = {};
    stop.end = true;
    Avcstream->write(stop);
}

void A_element_distributor(avc_stream* Avcstream, id_t tnum,
		bool_stream* pe1_idle, bool_stream* pe2_idle, bool_stream* pe3_idle, bool_stream* pe4_idle,
		bool_stream* rm1_idle, bool_stream* rm2_idle, bool_stream* rm3_idle, bool_stream* rm4_idle,
		pe_stream* pe1_job, pe_stream* pe2_job, pe_stream* pe3_job, pe_stream* pe4_job,
		rcache_stream* cache_stream1, rcache_stream* cache_stream2, rcache_stream* cache_stream3, rcache_stream* cache_stream4){

	pe_job temp_pe = {};
	rcache_request temp_rcache_request = {};

	// if there is an available PE and task, assign the task
	// totally tnum tasks
	Avc temp_avc = Avcstream->read();
	for (; !temp_avc.end; ) {
#pragma HLS PIPELINE II=1
        if (temp_avc.row_end) {
            pe_job boundary = {};
            boundary.rid = temp_avc.rid;
            boundary.partial_end = true;
            pe1_job->write(boundary);
            pe2_job->write(boundary);
            pe3_job->write(boundary);
            pe4_job->write(boundary);
            temp_avc = Avcstream->read();
        } else if ((!pe1_idle->empty() && !rm1_idle->empty()) || (!pe2_idle->empty() && !rm2_idle->empty()) ||
				(!pe3_idle->empty() && !rm3_idle->empty()) || (!pe4_idle->empty() && !rm4_idle->empty())) {


			// from distributor --> pe: value , rid
			temp_pe.rid = temp_avc.rid;
			temp_pe.val = temp_avc.val;
			temp_pe.end = false;
			temp_pe.partial_end = false;

			temp_rcache_request.Acid = temp_avc.cid;
			temp_rcache_request.end = false;
			temp_rcache_request.type = CACHE_READ;
			temp_rcache_request.Acid1 = 0;
			temp_rcache_request.data = 0;

			if (!pe1_idle->empty() && !rm1_idle->empty()) {
				pe1_idle->read();
				rm1_idle->read();
				pe1_job->write(temp_pe);

				temp_rcache_request.dest = 1;
				cache_stream1->write(temp_rcache_request);
			} else if (!pe2_idle->empty() && !rm2_idle->empty()) {
				pe2_idle->read();
				rm2_idle->read();
				pe2_job->write(temp_pe);

				temp_rcache_request.dest = 2;
				cache_stream2->write(temp_rcache_request);
			} else if (!pe3_idle->empty() && !rm3_idle->empty()) {
				pe3_idle->read();
				rm3_idle->read();
				pe3_job->write(temp_pe);

				temp_rcache_request.dest = 3;
				cache_stream3->write(temp_rcache_request);
			} else if (!pe4_idle->empty() && !rm4_idle->empty()) {
				pe4_idle->read();
				rm4_idle->read();
				pe4_job->write(temp_pe);

				temp_rcache_request.dest = 4;
				cache_stream4->write(temp_rcache_request);
			}
			temp_avc = Avcstream->read();
		}

	}

	temp_pe.end = true;
	pe1_job->write(temp_pe);
	pe2_job->write(temp_pe);
	pe3_job->write(temp_pe);
	pe4_job->write(temp_pe);

	temp_rcache_request.end = true;
	cache_stream1->write(temp_rcache_request);
	cache_stream2->write(temp_rcache_request);
	cache_stream3->write(temp_rcache_request);
	cache_stream4->write(temp_rcache_request);

    // Return startup/final credits to an empty state for the next invocation.
    pe1_idle->read(); pe2_idle->read(); pe3_idle->read(); pe4_idle->read();
    rm1_idle->read(); rm2_idle->read(); rm3_idle->read(); rm4_idle->read();
}

#endif
