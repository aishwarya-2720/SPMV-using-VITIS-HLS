// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_spmv_kernel (
volatile void* values,
volatile void* col_indices,
volatile void* row_indices,
volatile void* x,
volatile void* y,
int n,
int m,
int nnz);
