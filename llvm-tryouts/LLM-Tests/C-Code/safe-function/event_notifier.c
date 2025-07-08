#include <stdio.h>

// Define the EventNotifier struct
typedef struct {
    int fd;
} EventNotifier;

// Function to get the file descriptor
int event_notifier_get_fd(EventNotifier *e)
{
    return e->fd;
}

// Example usage
int main(void)
{
    EventNotifier notifier;
    notifier.fd = 42;

    int fd = event_notifier_get_fd(&notifier);
    printf("EventNotifier fd: %d\n", fd);

    return 0;
}
