#include <iostream>

float linear_regression(float x);

int main()
{
    float result = linear_regression(10.0);

    std::cout << "Result = "
              << result
              << std::endl;

    return 0;
}
