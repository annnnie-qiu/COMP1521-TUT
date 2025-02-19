#include <stdio.h>

int main(void) {

    int ch;
    int count = 0;
    while ((ch = getchar()) != EOF) {
        count++;
    }

    printf("number: %d\n", count);

}
