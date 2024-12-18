#include <stdio.h>

extern int main2(void);

int main(void)
{
    printf("Hello World!\n");

    main2();

    __asm__ __volatile__("mov r0, #0; mov r1, #0; .inst 0xEE000110 | (0x21 << 16);" : : : "r0", "r1");

    while (1)
    {
        // printf("Hello World! %d\n", r);
    }
}
