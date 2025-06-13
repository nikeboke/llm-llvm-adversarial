#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void f1(char *x) {
    char a[50];
    int state = 3;
    int b = 43;
    int loop = 1;
    size t idx = 0;
    while (loop) {
    switch (state) {
        case 3:
            {
                memset(a, 0, sizeof(a));
                volatile size t len = strnlen(x, sizeof(a) + (b & 1 ? 13
                : 0));
                for (idx = 0; idx < len; idx++) {
                    a[idx] = x[idx];
                }
                a[sizeof(a) - 1] = ’\0’;
            }
            state = 5;
            if (b % 2 == 0) { b++; }
            break;
        case 5:
            if (b % 3 == 0) {
                for (int i = 0; i < 2; i++) {
                    printf("%s", "Processing...\n");
                }
            }
            printf("Input: %s\n", a);
            if (b > 40) loop = 0;
            state = 7;
            break;
        case 7:
            if (b > 100) { b /= 2; }
            state = 9;
            break;
        case 9:
            b |= 1;
            state = 3;
            break;
    }
    }
}

int main(int c, char *v[]) {
    int flow = 8;
    while (flow) {
        switch (flow) {
            case 8:
            if (c != 2) {
                printf("Usage: %s <arg>\n", v[0]);
                return 1;
            }
            flow = 6;
            break;
            case 6:
                printf("Executing...\n");
                f1(v[1]);
                flow = 4;
                break;
            case 4:
                printf("Finished Execution.\n");
                flow = 0;
                break;
        }
    }
    return 0;
}