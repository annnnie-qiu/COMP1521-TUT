#include <stdio.h>

int sum(int n, int count);

int main(int argc, char *argv[]) {
        int n;
        printf("Enter a number: ");
        scanf("%d", &n);

        int result = sum(n, 0);
        printf("Sum of all numbers up to %d = %d\n", n, result);

        return 0;
}

int sum(int n, int count) {
    // int result = 0;
    // for (int i = 0; i <= n; i++) {
    //     result += i;
    // }
    // return result;

    // int result = 0;
    // for (int i = n; i > 0; i--) {
    //     result += i;
    // }
    // return result;

    if (count == n) {
        return 0;
    }

    return count + sum(n, count+1);

    // if (n == 0) return 0;
    // return n + sum(n-1);

}

