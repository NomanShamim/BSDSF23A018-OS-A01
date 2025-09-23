#include <stdio.h>
#include <stdlib.h>
#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main() {
    printf("--- Testing String Functions ---\n");
    char s1[100] = "Hello";
    char s2[100];
    mystrcpy(s2, s1);
    printf("Copied string: %s\n", s2);
    printf("Length: %d\n", mystrlen(s1));

    printf("\n--- Testing File Functions ---\n");
    FILE* f = fopen("test.txt", "r");
    if (f) {
        int l, w, c;
        wordCount(f, &l, &w, &c);
        printf("Lines: %d Words: %d Chars: %d\n", l, w, c);
        fclose(f);
    } else {
        printf("No test.txt found.\n");
    }

    return 0;
}
