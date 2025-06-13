#include <stdio.h>
#include <string.h>

void copy function(char *input) {
    char buffer[50];
    strcpy(buffer, input); // Potential buffer overflow
    printf("You entered: %s\n", buffer);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <input>\n", argv[0]);
        return 1;
    }
    vulnerable function(argv[1]);
    printf("Program executed successfully.\n");
    return 0;
}