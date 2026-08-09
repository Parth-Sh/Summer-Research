//*****************************************************************************
//
//*****************************************************************************
//Design Name: t_int
//Purpose:
//    This is a C++ version of the treeadd Sysgen example with integer data
//    For integration with HLS export as IP Block for Vivado
//Reference:
//Revision History: Sept. 26, 2022
//*****************************************************************************

#include <cmath>
#include "t_int.h"


void t_int (
	int a, 
	int b, 
	int c, 
	int d, 
	int e, 
	int f, 
	int g, 
	int h, 
	int *r,
	short *done
	)

{
#pragma HLS INTERFACE s_axilite port=return bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=a bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=b bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=c bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=d bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=e bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=f bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=g bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=h bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=r bundle=HLS_TREEADD_PERIPH_BUS
#pragma HLS INTERFACE s_axilite port=done bundle=HLS_TREEADD_PERIPH_BUS

  // Add the elements into the result r with writing value to pointer of r passed in
  *r = a + b + c + d + e + f + g + h;
  *done = 1;
  
}


