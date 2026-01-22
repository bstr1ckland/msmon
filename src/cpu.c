#include <unistd.h>

long total_cores(void)
{
    return sysconf(_SC_NPROCESSORS_ONLN);
}