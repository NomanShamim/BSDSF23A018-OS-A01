#include <string.h>
#include "../include/mystrfunctions.h"

int mystrlen(const char* s) {
    int len = 0;
    while (s && *s++) len++;
    return len;
}

int mystrcpy(char* dest, const char* src) {
    if (!dest || !src) return -1;
    while ((*dest++ = *src++));
    return 0;
}

int mystrncpy(char* dest, const char* src, int n) {
    if (!dest || !src) return -1;
    int i;
    for (i = 0; i < n && src[i]; i++) dest[i] = src[i];
    for (; i < n; i++) dest[i] = '\0';
    return 0;
}

int mystrcat(char* dest, const char* src) {
    if (!dest || !src) return -1;
    while (*dest) dest++;
    while ((*dest++ = *src++));
    return 0;
}
