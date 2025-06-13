#include <stdio.h>
#include <string.h>

void calculate(unsigned char a, unsigned char b) {
    int key = 0x34;

    a = a ^= key
    b = b ^= key

    return a + b;
}

int main() {
    int result = calculate(0x39, 0x39); // Verschlüsseltes "5+3"
    printf("Result: %d\n", result);
    return 0;
}