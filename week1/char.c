#include <stdio.h>

int sum(int n);

int main(int argc, char *argv[]) {
        int n;
        printf("Enter a number: ");
        scanf("%d", &n);

        int result = sum(n);
        printf("Sum of all numbers up to %d = %d\n", n, result);

        return 0;
}

int sum(int n) {

    int result = 0;
    for (int i = n; i > 0; i--) {
        result += i;
    }
    return result;


    if (n == 0) return 0;
    return n + sum(n-1);
}