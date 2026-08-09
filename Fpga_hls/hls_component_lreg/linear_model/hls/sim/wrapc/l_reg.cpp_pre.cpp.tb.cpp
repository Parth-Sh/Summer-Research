// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "D:/ELEC_522/FpgaEx/Fpga_hls/l_reg.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/ELEC_522/FpgaEx/Fpga_hls/l_reg.cpp" 2
# 1 "D:/ELEC_522/FpgaEx/Fpga_hls/l_reg.h" 1



void linear_model(
    int x,
    int m,
    int c,
    int *y,
    short *done
);
# 2 "D:/ELEC_522/FpgaEx/Fpga_hls/l_reg.cpp" 2

void linear_model(
    int x,
    int m,
    int c,
    int *y,
    short *done
)
{
#pragma HLS INTERFACE s_axilite port=return bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=x bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=m bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=c bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=y bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=done bundle=HLS_LINEAR_PERIPH_BUS

    *y = (m * x) + c;
    *done = 1;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_linear_model_ir(int, int, int, int *, short *);
#ifdef __cplusplus
extern "C"
#endif
void linear_model_hw_stub(int x, int m, int c, int *y, short *done){
linear_model(x, m, c, y, done);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_linear_model_sw(int x, int m, int c, int *y, short *done){
refine_signal_handler();
apatb_linear_model_ir(x, m, c, y, done);
return ;
}
#endif
# 20 "D:/ELEC_522/FpgaEx/Fpga_hls/l_reg.cpp"

