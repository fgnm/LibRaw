#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <asm/types.h>
#include <asm/byteorder.h>

void swab(const void *from, void*to, ssize_t n)
{
	ssize_t i;

	if (n < 0)
		return;
}
