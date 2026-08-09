#include <stdio.h>
#include "xparameters.h"
#include "xlinear_model.h"
#include "xstatus.h"

int main()
{
    XLinear_model linear_ip;
    int status;

    int x = 5;
    int m = 3;
    int c = 2;

    int y_hw;
    int y_sw;
    int done_hw;

    printf("--- Linear Model HLS Test ---\n");

#ifndef SDT
    status = XLinear_model_Initialize(&linear_ip, XPAR_XLINEAR_MODEL_0_DEVICE_ID);
#else
    status = XLinear_model_Initialize(&linear_ip, XPAR_XLINEAR_MODEL_0_BASEADDR);
#endif

    if (status != XST_SUCCESS) {
        printf("ERROR: Failed to initialize linear_model IP\n");
        return XST_FAILURE;
    }

    printf("IP initialized successfully\n");

    XLinear_model_Set_x(&linear_ip, (u32)x);
    XLinear_model_Set_m(&linear_ip, (u32)m);
    XLinear_model_Set_c(&linear_ip, (u32)c);

    XLinear_model_Start(&linear_ip);

    while (!XLinear_model_IsDone(&linear_ip));

    y_hw = (int)XLinear_model_Get_y(&linear_ip);
    done_hw = (int)XLinear_model_Get_done(&linear_ip);

    y_sw = (m * x) + c;

    printf("x        = %d\n", x);
    printf("m        = %d\n", m);
    printf("c        = %d\n", c);
    printf("software = %d\n", y_sw);
    printf("hardware = %d\n", y_hw);
    printf("done     = %d\n", done_hw);

    if (y_hw == y_sw && done_hw == 1) {
        printf("Test passed.\n");
    } else {
        printf("ERROR: Test failed.\n");
    }

    printf("--- End Program ---\n");

    return 0;
}
