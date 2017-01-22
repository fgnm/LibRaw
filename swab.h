#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <asm/types.h>
#include <asm/byteorder.h>
#include <linux/swab.h>
void swab(const void *from, void*to, ssize_t n);
