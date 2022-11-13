#include <stdio.h>

void printAns(int arr1[], int arr2[], int size) {
    for (int i = 0; i < size; i++) {
        if (arr1[i] && arr2[i]) {
            printf("%c", (char)i);
        }
    }
}

int main()
{
    char s1[1000000];
    char s2[1000000];
    int used1[128] = {0};
    int used2[128] = {0};
    int i = 0;
    int curr;
    printf("Enter string 1:\n");
    do {
        curr = fgetc(stdin);
        if (curr >= 0) {
            used1[curr] = 1;
        }
        s1[i] = curr;
        i++;
    } while (curr != '\n');
    s1[i - 1] = '\0';
    i = 0;
    printf("Enter string 2:\n");
    do {
        curr = fgetc(stdin);
        if (curr >= 0) {
            used2[curr] = 1;
        }
        s2[i] = curr;
        i++;
    } while (curr != '\n');
    s2[i - 1] = '\0';
    i = 0;
    printf("String 1:\n");
    while (s1[i] != '\0') {
        printf("%c", (char)s1[i]);
        i++;
    }
    printf("\n");
    printf("String 2:\n");
    i = 0;
    while (s2[i] != '\0') {
        printf("%c", (char)s2[i]);
        i++;
    }
    printf("\nString intersection:");
    printAns(used1, used2, 128);
    return 0;
}