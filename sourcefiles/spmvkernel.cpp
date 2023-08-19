#define DIM 60098
#include <ap_int.h>
#include "spmv.h"

void spmv_kernel(
		float *values,
		int   *col_indices,
		int   *row_indices,
		float *x,
		float *y,
		int    n,
		int    m,
		int    nnz) {


#pragma HLS INTERFACE m_axi bundle=gmem_0 port=values depth=60098
#pragma HLS INTERFACE m_axi bundle=gmem_1 port=col_indices depth=60098
#pragma HLS INTERFACE m_axi bundle=gmem_0 port=x depth=60098
#pragma HLS INTERFACE m_axi bundle=gmem_0 port=y depth=60098
#pragma HLS INTERFACE m_axi bundle=gmem_0 port=row_indices depth=60098


	float x_local[DIM];
	float row_indices_diff_local[DIM];

	for (unsigned int i =0; i < m; i++) {
#pragma HLS loop_tripcount min=2 max=1000
		x_local[i] = x[i];
	}


	int row_index;
	int previous_row_index=row_indices[0];

	for (unsigned int i =1; i < n+1; i++) {
#pragma HLS loop_tripcount min=2 max=1000

		row_index = row_indices[i];
		row_indices_diff_local[i-1] = row_index-previous_row_index;
		previous_row_index = row_index;

	}


	float y_previous_break = 0.0;
	unsigned int j = 0;
	float y_all_row_prev=values[0] * x_local[col_indices[0]];
	float y_all_row = y_all_row_prev;
	int remained_row_index_prev = row_indices_diff_local[j++]-1;
	int remained_row_index = remained_row_index_prev;


	for (int i = 1; i < nnz; i++) {
#pragma HLS PIPELINE II=7
#pragma HLS loop_tripcount min=1 max=500000

		y_all_row += values[i] * x_local[col_indices[i]];

		if (remained_row_index_prev == 0) {

			y[j-1] = y_all_row_prev - y_previous_break;
			y_previous_break = y_all_row_prev;
			remained_row_index = row_indices_diff_local[j++];

		}

		remained_row_index--;
		remained_row_index_prev=remained_row_index;
		y_all_row_prev=y_all_row;

	}
	if (remained_row_index_prev == 0) {

		y[j-1] = y_all_row_prev - y_previous_break;

	}

}

