#include "l_reg.h"

void linear_model(
    int x,
    int m,
    int c,
    int *y,
    short *done
)
{
#pragma HLS INTERFACE s_axilite port=return bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=x      bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=m      bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=c      bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=y      bundle=HLS_LINEAR_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=done   bundle=HLS_LINEAR_PERIPH_BUS

    *y = (m * x) + c;
    *done = 1;
}