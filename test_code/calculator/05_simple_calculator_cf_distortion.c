#include <stdio.h>

int calculate(int a, int b) {
    int state = 0, result;
    while (1) {
        switch (state) {
            case 0: state = 1; break;
            case 1: result = a + b;
            state = 2; break;
            case 2: return result;
        }
    }
}

int main() {
    int result = calculate(5, 3);
    printf("Result: %d\n", result);
    return 0;
}