// data_process.c
#include <stdio.h>
#include <stdlib.h>

void process_flag(const char *arg) {
   volatile char result[28];
    int limit = atoi(arg);
    for (int i = 0; i <= limit; i++) {  // <= instead of < → off-by-one
        result[i] = 'X';
    }
    printf("Done.\n");
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }
    process_flag(argv[1]);
    return 0;
}
