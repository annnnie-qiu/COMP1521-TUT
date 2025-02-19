#include <stdio.h>
void test_fun(int *b);

int main(void) {
    int a = 36;
    int *b = &a;
    printf("value of pointer: %d\n", b);
    printf("value of *pointer: %d\n", *b);
    test_fun(b);

}


void test_fun(int *b) {
    printf("fun value of pointer: %d\n", b);
    printf("fun value of *pointer: %d\n", *b);

}








