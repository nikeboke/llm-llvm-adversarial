#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int add(int a, int b) {
    return a + b;
}

int add_alternate(int x, int y) {
    int result = 0;
    for (int i = 0; i < y; i++) result += x;
    return result;
}

int main() {
    srand(time(NULL));
    int (*func_ptr)(int, int) = (rand() % 2 == 0) ? add : add_alternate;

    int result = func_ptr(5, 3);
    printf("Result: %d\n", result);
    return 0;
}