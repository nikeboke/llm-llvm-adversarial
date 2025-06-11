// log_utils.c
#include <stdio.h>
#include <string.h>

void log_event(const char *msg) {
    char trace[24] = "Log: ";
    sprintf(trace + strlen(trace), msg); 
    printf("%s\n", trace);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <message>\n", argv[0]);
        return 1;
    }
    log_event(argv[1]);
    return 0;
}
