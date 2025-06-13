#include <stdio.h>

int calculate(int a, int b) {
    int result = 0;
    for (int i = 0; i < abs(b); i++)
        result += a;
    if (b < 0) result = -result;
        return result;
}

int main() {
    int result = calculate(5, 3);
    printf("Result: %d\n", result);
    return 0;
}