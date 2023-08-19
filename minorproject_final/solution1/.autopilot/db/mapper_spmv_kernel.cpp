#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void spmv_kernel(int*, int*, int, int, int, int, int, int, int, int);
extern "C" void apatb_spmv_kernel_hw(volatile void * __xlx_apatb_param_values, volatile void * __xlx_apatb_param_col_indices, volatile void * __xlx_apatb_param_row_indices, volatile void * __xlx_apatb_param_x, volatile void * __xlx_apatb_param_y, int __xlx_apatb_param_n, int __xlx_apatb_param_m, int __xlx_apatb_param_nnz) {
  // Collect __xlx_values_row_indices_x_y__tmp_vec
  vector<sc_bv<32> >__xlx_values_row_indices_x_y__tmp_vec;
  for (int j = 0, e = 60098; j != e; ++j) {
    __xlx_values_row_indices_x_y__tmp_vec.push_back(((int*)__xlx_apatb_param_values)[j]);
  }
  int __xlx_size_param_values = 60098;
  int __xlx_offset_param_values = 0;
  int __xlx_offset_byte_param_values = 0*4;
  for (int j = 0, e = 60098; j != e; ++j) {
    __xlx_values_row_indices_x_y__tmp_vec.push_back(((int*)__xlx_apatb_param_row_indices)[j]);
  }
  int __xlx_size_param_row_indices = 60098;
  int __xlx_offset_param_row_indices = 60098;
  int __xlx_offset_byte_param_row_indices = 60098*4;
  for (int j = 0, e = 60098; j != e; ++j) {
    __xlx_values_row_indices_x_y__tmp_vec.push_back(((int*)__xlx_apatb_param_x)[j]);
  }
  int __xlx_size_param_x = 60098;
  int __xlx_offset_param_x = 120196;
  int __xlx_offset_byte_param_x = 120196*4;
  for (int j = 0, e = 60098; j != e; ++j) {
    __xlx_values_row_indices_x_y__tmp_vec.push_back(((int*)__xlx_apatb_param_y)[j]);
  }
  int __xlx_size_param_y = 60098;
  int __xlx_offset_param_y = 180294;
  int __xlx_offset_byte_param_y = 180294*4;
  int* __xlx_values_row_indices_x_y__input_buffer= new int[__xlx_values_row_indices_x_y__tmp_vec.size()];
  for (int i = 0; i < __xlx_values_row_indices_x_y__tmp_vec.size(); ++i) {
    __xlx_values_row_indices_x_y__input_buffer[i] = __xlx_values_row_indices_x_y__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_col_indices__tmp_vec
  vector<sc_bv<32> >__xlx_col_indices__tmp_vec;
  for (int j = 0, e = 60098; j != e; ++j) {
    __xlx_col_indices__tmp_vec.push_back(((int*)__xlx_apatb_param_col_indices)[j]);
  }
  int __xlx_size_param_col_indices = 60098;
  int __xlx_offset_param_col_indices = 0;
  int __xlx_offset_byte_param_col_indices = 0*4;
  int* __xlx_col_indices__input_buffer= new int[__xlx_col_indices__tmp_vec.size()];
  for (int i = 0; i < __xlx_col_indices__tmp_vec.size(); ++i) {
    __xlx_col_indices__input_buffer[i] = __xlx_col_indices__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  spmv_kernel(__xlx_values_row_indices_x_y__input_buffer, __xlx_col_indices__input_buffer, __xlx_offset_byte_param_values, __xlx_offset_byte_param_col_indices, __xlx_offset_byte_param_row_indices, __xlx_offset_byte_param_x, __xlx_offset_byte_param_y, __xlx_apatb_param_n, __xlx_apatb_param_m, __xlx_apatb_param_nnz);
// print __xlx_apatb_param_values
  sc_bv<32>*__xlx_values_output_buffer = new sc_bv<32>[__xlx_size_param_values];
  for (int i = 0; i < __xlx_size_param_values; ++i) {
    __xlx_values_output_buffer[i] = __xlx_values_row_indices_x_y__input_buffer[i+__xlx_offset_param_values];
  }
  for (int i = 0; i < __xlx_size_param_values; ++i) {
    ((int*)__xlx_apatb_param_values)[i] = __xlx_values_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_row_indices
  sc_bv<32>*__xlx_row_indices_output_buffer = new sc_bv<32>[__xlx_size_param_row_indices];
  for (int i = 0; i < __xlx_size_param_row_indices; ++i) {
    __xlx_row_indices_output_buffer[i] = __xlx_values_row_indices_x_y__input_buffer[i+__xlx_offset_param_row_indices];
  }
  for (int i = 0; i < __xlx_size_param_row_indices; ++i) {
    ((int*)__xlx_apatb_param_row_indices)[i] = __xlx_row_indices_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_x
  sc_bv<32>*__xlx_x_output_buffer = new sc_bv<32>[__xlx_size_param_x];
  for (int i = 0; i < __xlx_size_param_x; ++i) {
    __xlx_x_output_buffer[i] = __xlx_values_row_indices_x_y__input_buffer[i+__xlx_offset_param_x];
  }
  for (int i = 0; i < __xlx_size_param_x; ++i) {
    ((int*)__xlx_apatb_param_x)[i] = __xlx_x_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_y
  sc_bv<32>*__xlx_y_output_buffer = new sc_bv<32>[__xlx_size_param_y];
  for (int i = 0; i < __xlx_size_param_y; ++i) {
    __xlx_y_output_buffer[i] = __xlx_values_row_indices_x_y__input_buffer[i+__xlx_offset_param_y];
  }
  for (int i = 0; i < __xlx_size_param_y; ++i) {
    ((int*)__xlx_apatb_param_y)[i] = __xlx_y_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_col_indices
  sc_bv<32>*__xlx_col_indices_output_buffer = new sc_bv<32>[__xlx_size_param_col_indices];
  for (int i = 0; i < __xlx_size_param_col_indices; ++i) {
    __xlx_col_indices_output_buffer[i] = __xlx_col_indices__input_buffer[i+__xlx_offset_param_col_indices];
  }
  for (int i = 0; i < __xlx_size_param_col_indices; ++i) {
    ((int*)__xlx_apatb_param_col_indices)[i] = __xlx_col_indices_output_buffer[i].to_uint64();
  }
}
