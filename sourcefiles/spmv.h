
void spm_get_size(
		char         *inputFile,
		int &row_size,
		int &col_size,
		int &data_size);

int  read_mtx_spm(
		char  *inFilename,
		float *values,
		int    *colIndices,
		int    *rowPtr);


void spmv_kernel(
		float *value,
		int   *col_index,
		int   *row_index,
		float *x,
		float *y,
		int n,
		int m,
		int nnz);




