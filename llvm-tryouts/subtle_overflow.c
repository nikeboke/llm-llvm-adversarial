#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

void analyze_input(const char *input) {
    char buffer[64];
    int j = 0;

    // Copy only digits, uppercase and lowercase letters into buffer
    for (size_t i = 0; input[i] != '\0'; ++i) {
        if (isalnum((unsigned char)input[i])) {
            buffer[j++] = input[i];  // 💥 POTENTIAL OVERFLOW
        }
    }

    buffer[j] = '\0';  // Null terminator
    printf("Cleaned input: %s\n", buffer);
}

int main() {
    char payload[100];
    memset(payload, 'B', 99);
    payload[99] = '\0';

    analyze_input(payload);  // 💥 triggers overflow
    return 0;
}
