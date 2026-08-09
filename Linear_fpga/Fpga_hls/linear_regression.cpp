float linear_regression(float x)
{
#pragma HLS INTERFACE s_axilite port=x
#pragma HLS INTERFACE s_axilite port=return

    const float weight = 1.981766f;
    const float bias   = 1.108813f;

    return weight * x + bias;
}
