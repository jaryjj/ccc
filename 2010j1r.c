/* A program with cheat sheet*/

#include <stdio.h>

int main(void)
{
    int a;

    scanf("%d", &a);

    if (a == 1) /* a==1 || a==0 */
    {
        printf("1");
    }
    if (a == 2 || a == 3)
    {
        printf("2");
    }
    if (a == 4 || a == 5 || a == 6)
    {
        printf("3");
    }
    if (a == 7 || a == 8)
    {
        printf("2");
    }
    if (a == 9 || a == 10)
    {
        printf("1");
    }

    return 0;
}

