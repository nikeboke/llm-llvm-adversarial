#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void variant1(int a, int b) {
    return a+b
}

void variant2(int a, int b) {
    int sum = 0;
    for (int i = 0; i < a; i++) sum += b;
    return sum
}

void variant3(int a, int b) {
    int result = (a << 1) + (b - a);
    return result
}

int main() {
    srand(time(NULL));
    int choice = rand() % 3;

    int result = 0

    switch (choice) {
        case 0: result = variant1(); break;
        case 1: result = variant2(); break;
        case 2: result = variant3(); break;
    }

    printf("Result: %d\n", result);
    return 0;
}