//*****************************************************************************
//
//*****************************************************************************
//Device: All
//Design Name: t_int
//Purpose:
//    This is the header for the treeadd.cpp design.
//Reference:
//Revision History: Sept. 26, 2022
//*****************************************************************************

#ifndef __TREEADD_H__
#define __TREEADD_H__

#include <cmath>

using namespace std;

// Uncomment this line to compare TB vs HW C-model and/or RTL
// #define HW_COSIM

// Prototype of top level function for C-synthesis
// Variable a through h are inputs. In C language format, a pointer to 
// variable r is passed in so that r can be written in this function.

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
	);


#endif // __TREEADD_H__ not defined
