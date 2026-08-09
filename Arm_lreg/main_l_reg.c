#include <stdio.h>
#include "xparameters.h"
#include "xlinear_model.h"
#include "xstatus.h"
#include "xiltimer.h"

#define CPU_FREQ_HZ 100000000.0

typedef struct
{
    int prediction;
    int software_prediction;
    int done;

    double average_latency;
    double minimum_latency;
    double maximum_latency;
    double total_latency;

} BenchmarkResult;

BenchmarkResult runLinearBenchmark(
        XLinear_model *linear_ip,
        int x,
        int m,
        int c,
        int iterations)
{
    BenchmarkResult result;

    int y_hw = 0;
    int y_sw = (m * x) + c;
    int done_hw = 0;

    XTime tStart, tEnd;
    u64 cycles;

    double time_us;
    double total_time = 0.0;

    double min_time = 9999999.0;
    double max_time = 0.0;

    // Set accelerator inputs
    XLinear_model_Set_x(linear_ip, (u32)x);
    XLinear_model_Set_m(linear_ip, (u32)m);
    XLinear_model_Set_c(linear_ip, (u32)c);

    for (int i = 0; i < iterations; i++)
    {
        XTime_GetTime(&tStart);

        XLinear_model_Start(linear_ip);

        while (!XLinear_model_IsDone(linear_ip));

        XTime_GetTime(&tEnd);

        y_hw = (int)XLinear_model_Get_y(linear_ip);
        done_hw = (int)XLinear_model_Get_done(linear_ip);

        cycles = 2 * (tEnd - tStart);

        time_us = ((double)cycles / CPU_FREQ_HZ) * 1e6;

        total_time += time_us;

        if (time_us < min_time)
            min_time = time_us;

        if (time_us > max_time)
            max_time = time_us;
    }

    result.prediction = y_hw;
    result.software_prediction = y_sw;
    result.done = done_hw;

    result.total_latency = total_time;
    result.average_latency = total_time / iterations;
    result.minimum_latency = min_time;
    result.maximum_latency = max_time;

    return result;
}

int main()
{
    XLinear_model linear_ip;
    int status;

    printf("---------------------------------\n");
    printf(" ZEDBOARD AI BENCHMARK\n");
    printf("---------------------------------\n");

#ifndef SDT
    status = XLinear_model_Initialize(&linear_ip, XPAR_XLINEAR_MODEL_0_DEVICE_ID);
#else
    status = XLinear_model_Initialize(&linear_ip, XPAR_XLINEAR_MODEL_0_BASEADDR);
#endif

    if (status != XST_SUCCESS)
    {
        printf("ERROR: Failed to initialize Linear IP\n");
        return XST_FAILURE;
    }

    printf("IP initialized successfully.\n\n");

    // Benchmark parameters
    int x = 5;
    int m = 3;
    int c = 2;
    int iterations = 100;

    BenchmarkResult result = runLinearBenchmark(
        &linear_ip,
        x,
        m,
        c,
        iterations);

    printf("========== Benchmark Results ==========\n\n");

    printf("Model                : Linear Regression\n");
    printf("Iterations           : %d\n\n", iterations);

    printf("Software Prediction  : %d\n",result.software_prediction);

    printf("Hardware Prediction  : %d\n",result.prediction);

    printf("Done Signal          : %d\n\n",result.done);

    printf("Performance Metrics\n");
    printf("-------------------\n");

    printf("Average Latency : %.6f us\n",result.average_latency);

    printf("Minimum Latency : %.6f us\n",result.minimum_latency);

    printf("Maximum Latency : %.6f us\n",result.maximum_latency);

    printf("Total Latency   : %.6f us\n",result.total_latency);

    if (result.prediction == result.software_prediction)
    {
        printf("\nStatus : PASSED\n");
    }
    else
    {
        printf("\nStatus : FAILED\n");
    }

    return 0;
}