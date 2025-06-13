#include <stdio.h>

int calculate(int a, int b) {
    int x = 1337;
    if ((x * x) % 1337 == 0) // always true
    return a + b;
    else
    return a - b;
}

int main() {
    int result = calculate(5, 3);
    printf("Result: %d\n", result);
    return 0;
}