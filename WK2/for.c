// Prints a right - angled triangle of asterisks, 10 rows high.

#include <stdio.h>

int main(void) {

    int i = 1;
    while (i <= 10) {
        int j = 0;
        while (j <= 10) {
            printf("*");
            j = j + 1;
        }
        printf("\n");
        i = i + 1:
    }
    return 0;
}