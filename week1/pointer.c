#include <stdio.h>



int main(void) {
    int number = 36;
    int *pointer = &number;
    printf("value of pointer: %d\n", pointer);
    printf("value of *pointer: %d\n", *pointer);

}


void test_function(int *pointer) {
    printf("function value of pointer: %d\n", pointer);
    printf("function value of *pointer: %d\n", *pointer);
}


