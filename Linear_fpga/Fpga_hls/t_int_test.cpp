//*****************************************************************************
//*****************************************************************************
//Device: All
//Design Name: t_int
//Purpose:
//    This is the C++ test bench for the of a treeadd example with integer data
//Reference:
//Revision History: Sept. 26, 2022
//*****************************************************************************
#include <cmath>
#include <iostream>
#include "t_int.h"

using namespace std;

int main()
{
	int a_in = 1;
	int b_in = 2;
	int c_in = 3;
	int d_in = -4;
	int e_in = 5;
	int f_in = 6;
	int g_in = 7;
	int h_in = 8;
	
	int r_sw, r_hw;
	short done_out = 0;
    int err_cnt = 0;

   // Generate the expected result
   // Add the elements into the result r_sw
	r_sw = a_in + b_in + c_in + d_in + e_in + f_in + g_in + h_in;

#ifdef HW_COSIM
   // Run the Vivado HLS block and pass pointer to r_hw to allow writing of variable
   t_int (a_in, b_in, c_in, d_in, e_in, f_in, g_in, h_in, &r_hw, &done_out);
#endif

   // Print result r_sw and r_hw
   
#ifdef HW_COSIM
         cout << "software = " << r_sw << endl;
		 cout << "hardware = " << r_hw << endl;
		 cout << "done = " << done_out << endl;
         // Check HW result against SW
         if (r_hw != r_sw) {
            err_cnt++;
            cout << "*" << endl;
         }
#else
         cout << "software = " << r_sw << endl;
#endif
         

#ifdef HW_COSIM
   if (err_cnt)
      cout << "ERROR: " << err_cnt << " mismatches detected!" << endl;
   else
      cout << "Test passed." << endl;
#endif
   return err_cnt;
}

