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
