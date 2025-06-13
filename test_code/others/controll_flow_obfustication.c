#include <stdio.h>
#include <string.h>

void f1(char *x) {
    char a[50];
    int s = 0;
    int flag = 1;
    while (flag) {
        switch (s) {
            case 0:
            strcpy(a, x); // obfuscated
            s = 1; break;
            case 1:
            printf("Input: %s\n", a);
            flag = 0; break;
        }
    }
}
int m(int c, char *v[]) {
    int t = 0;
    if (c != 2) {
        printf("Usage: %s <arg>\n", v[0]);
        return 1;
    }
    printf("Executing...\n");
    f1(v[1]);
    printf("Finished Execution.\n");
    return 0;
}