#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem_0 "../tv/cdatafile/c.spmv_kernel.autotvin_gmem_0.dat"
#define AUTOTB_TVOUT_gmem_0 "../tv/cdatafile/c.spmv_kernel.autotvout_gmem_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem_1 "../tv/cdatafile/c.spmv_kernel.autotvin_gmem_1.dat"
#define AUTOTB_TVOUT_gmem_1 "../tv/cdatafile/c.spmv_kernel.autotvout_gmem_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_values "../tv/cdatafile/c.spmv_kernel.autotvin_values.dat"
#define AUTOTB_TVOUT_values "../tv/cdatafile/c.spmv_kernel.autotvout_values.dat"
// wrapc file define:
#define AUTOTB_TVIN_col_indices "../tv/cdatafile/c.spmv_kernel.autotvin_col_indices.dat"
#define AUTOTB_TVOUT_col_indices "../tv/cdatafile/c.spmv_kernel.autotvout_col_indices.dat"
// wrapc file define:
#define AUTOTB_TVIN_row_indices "../tv/cdatafile/c.spmv_kernel.autotvin_row_indices.dat"
#define AUTOTB_TVOUT_row_indices "../tv/cdatafile/c.spmv_kernel.autotvout_row_indices.dat"
// wrapc file define:
#define AUTOTB_TVIN_x "../tv/cdatafile/c.spmv_kernel.autotvin_x.dat"
#define AUTOTB_TVOUT_x "../tv/cdatafile/c.spmv_kernel.autotvout_x.dat"
// wrapc file define:
#define AUTOTB_TVIN_y "../tv/cdatafile/c.spmv_kernel.autotvin_y.dat"
#define AUTOTB_TVOUT_y "../tv/cdatafile/c.spmv_kernel.autotvout_y.dat"
// wrapc file define:
#define AUTOTB_TVIN_n "../tv/cdatafile/c.spmv_kernel.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.spmv_kernel.autotvout_n.dat"
// wrapc file define:
#define AUTOTB_TVIN_m "../tv/cdatafile/c.spmv_kernel.autotvin_m.dat"
#define AUTOTB_TVOUT_m "../tv/cdatafile/c.spmv_kernel.autotvout_m.dat"
// wrapc file define:
#define AUTOTB_TVIN_nnz "../tv/cdatafile/c.spmv_kernel.autotvin_nnz.dat"
#define AUTOTB_TVOUT_nnz "../tv/cdatafile/c.spmv_kernel.autotvout_nnz.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem_0 "../tv/rtldatafile/rtl.spmv_kernel.autotvout_gmem_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem_1 "../tv/rtldatafile/rtl.spmv_kernel.autotvout_gmem_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_values "../tv/rtldatafile/rtl.spmv_kernel.autotvout_values.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_col_indices "../tv/rtldatafile/rtl.spmv_kernel.autotvout_col_indices.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_row_indices "../tv/rtldatafile/rtl.spmv_kernel.autotvout_row_indices.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x "../tv/rtldatafile/rtl.spmv_kernel.autotvout_x.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_y "../tv/rtldatafile/rtl.spmv_kernel.autotvout_y.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_n "../tv/rtldatafile/rtl.spmv_kernel.autotvout_n.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m "../tv/rtldatafile/rtl.spmv_kernel.autotvout_m.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_nnz "../tv/rtldatafile/rtl.spmv_kernel.autotvout_nnz.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_0_depth = 0;
  gmem_1_depth = 0;
  values_depth = 0;
  col_indices_depth = 0;
  row_indices_depth = 0;
  x_depth = 0;
  y_depth = 0;
  n_depth = 0;
  m_depth = 0;
  nnz_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem_0 " << gmem_0_depth << "}\n";
  total_list << "{gmem_1 " << gmem_1_depth << "}\n";
  total_list << "{values " << values_depth << "}\n";
  total_list << "{col_indices " << col_indices_depth << "}\n";
  total_list << "{row_indices " << row_indices_depth << "}\n";
  total_list << "{x " << x_depth << "}\n";
  total_list << "{y " << y_depth << "}\n";
  total_list << "{n " << n_depth << "}\n";
  total_list << "{m " << m_depth << "}\n";
  total_list << "{nnz " << nnz_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int gmem_0_depth;
    int gmem_1_depth;
    int values_depth;
    int col_indices_depth;
    int row_indices_depth;
    int x_depth;
    int y_depth;
    int n_depth;
    int m_depth;
    int nnz_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void spmv_kernel_hw_stub(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, int);

extern "C" void apatb_spmv_kernel_hw(volatile void * __xlx_apatb_param_values, volatile void * __xlx_apatb_param_col_indices, volatile void * __xlx_apatb_param_row_indices, volatile void * __xlx_apatb_param_x, volatile void * __xlx_apatb_param_y, int __xlx_apatb_param_n, int __xlx_apatb_param_m, int __xlx_apatb_param_nnz) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > gmem_0_pc_buffer(240392);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 60098; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_values)[j] = gmem_0_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 60098; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_row_indices)[j] = gmem_0_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 60098; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_x)[j] = gmem_0_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 60098; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_y)[j] = gmem_0_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem_0
aesl_fh.touch(AUTOTB_TVIN_gmem_0);
aesl_fh.touch(AUTOTB_TVOUT_gmem_0);
//gmem_1
aesl_fh.touch(AUTOTB_TVIN_gmem_1);
aesl_fh.touch(AUTOTB_TVOUT_gmem_1);
//values
aesl_fh.touch(AUTOTB_TVIN_values);
aesl_fh.touch(AUTOTB_TVOUT_values);
//col_indices
aesl_fh.touch(AUTOTB_TVIN_col_indices);
aesl_fh.touch(AUTOTB_TVOUT_col_indices);
//row_indices
aesl_fh.touch(AUTOTB_TVIN_row_indices);
aesl_fh.touch(AUTOTB_TVOUT_row_indices);
//x
aesl_fh.touch(AUTOTB_TVIN_x);
aesl_fh.touch(AUTOTB_TVOUT_x);
//y
aesl_fh.touch(AUTOTB_TVIN_y);
aesl_fh.touch(AUTOTB_TVOUT_y);
//n
aesl_fh.touch(AUTOTB_TVIN_n);
aesl_fh.touch(AUTOTB_TVOUT_n);
//m
aesl_fh.touch(AUTOTB_TVIN_m);
aesl_fh.touch(AUTOTB_TVOUT_m);
//nnz
aesl_fh.touch(AUTOTB_TVIN_nnz);
aesl_fh.touch(AUTOTB_TVOUT_nnz);
CodeState = DUMP_INPUTS;
// print gmem_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_values) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_values)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_row_indices) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_row_indices)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_x) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_y) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_y)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(240392, &tcl_file.gmem_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem_0, __xlx_sprintf_buffer.data());
}
// print gmem_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem_1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_col_indices) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_col_indices)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(60098, &tcl_file.gmem_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem_1, __xlx_sprintf_buffer.data());
}
// print values Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_values, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_values, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.values_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_values, __xlx_sprintf_buffer.data());
}
// print col_indices Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_col_indices, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_col_indices, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.col_indices_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_col_indices, __xlx_sprintf_buffer.data());
}
// print row_indices Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_row_indices, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_row_indices, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.row_indices_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_row_indices, __xlx_sprintf_buffer.data());
}
// print x Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.x_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data());
}
// print y Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.y_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data());
}
// print n Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_n);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.n_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
}
// print m Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_m, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_m);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_m, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.m_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_m, __xlx_sprintf_buffer.data());
}
// print nnz Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_nnz, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_nnz);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_nnz, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.nnz_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_nnz, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
spmv_kernel_hw_stub(__xlx_apatb_param_values, __xlx_apatb_param_col_indices, __xlx_apatb_param_row_indices, __xlx_apatb_param_x, __xlx_apatb_param_y, __xlx_apatb_param_n, __xlx_apatb_param_m, __xlx_apatb_param_nnz);
CodeState = DUMP_OUTPUTS;
// print gmem_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_values) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_values)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_row_indices) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_row_indices)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_x) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
  if (__xlx_apatb_param_y) {
    for (int j = 0, e = 60098; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_y)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(240392, &tcl_file.gmem_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem_0, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
