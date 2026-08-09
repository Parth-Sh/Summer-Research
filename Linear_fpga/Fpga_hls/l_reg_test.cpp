#include <iostream>
#include "l_reg.h"

using namespace std;

int main()
{
    int x = 5;
    int m = 3;
    int c = 2;

    int y_hw = 0;
    int y_sw = (m * x) + c;
    short done = 0;

    linear_model(x, m, c, &y_hw, &done);

    cout << "software = " << y_sw << endl;
    cout << "hardware = " << y_hw << endl;
    cout << "done     = " << done << endl;

    if (y_hw != y_sw) {
        cout << "ERROR: mismatch detected" << endl;
        return 1;
    }

    cout << "Test passed." << endl;
    return 0;
}

