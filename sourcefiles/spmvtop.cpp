
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include "spmv.h"
#include <math.h>
#include <string.h>
#define DIM 60098


int main(int argc, char* argv[]) {


	char inFilename[10000];
	int  n=0;
	int  m=0;
	int  nnz=0;

    if(argc != 2) {
		std::cout << "Usage: " << argv[0] <<" <sparse matrix name>" << std::endl;
		return EXIT_FAILURE;
	}


	strcpy(inFilename, argv[1]);
	spm_get_size(inFilename, n, m, nnz);


    float ptr_values[DIM];
    int ptr_col_indices[DIM];
    int ptr_row_indices[DIM];
    float ptr_x[DIM];
    float ptr_y[DIM];


    //setting input data
    read_mtx_spm( inFilename, ptr_values, ptr_col_indices, ptr_row_indices);
    for (int i = 0; i < m; i++) {
    	ptr_x[i]=1;
    }


    for(int i=0;i<2;i++){
    	spmv_kernel( ptr_values, ptr_col_indices, ptr_row_indices, ptr_x, ptr_y, n, m, nnz);
    }


    //GOLDEN model
    float *y_sw = (float *)malloc(n*sizeof(float));
    float y0=0.0;
    for (int i = 0; i < n; ++i) {
    	y0 = 0.0;
        for (int j=ptr_row_indices[i]; j<ptr_row_indices[i+1]; j++) {
        	y0 += ptr_values[j] * ptr_x[ptr_col_indices[j]];
        }
        y_sw[i] = y0;
     }


    //Verify the result
    int match = 0;
    for (int i = 0; i < n; i++) {
		float diff = fabs(y_sw[i]-ptr_y[i]);
		if(diff > 0.01 ){
			std::cout << "error occurs at " << i
					  << " with value y_hw = " << ptr_y[i]
					  << ", should be y_sw = " << y_sw[i]
  					  << std::endl;
            match = 1;
            break;
        }
    }


    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    return (match ? EXIT_FAILURE :  EXIT_SUCCESS);

}

