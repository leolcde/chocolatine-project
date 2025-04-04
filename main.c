/*
** EPITECH PROJECT, 2024
** Chocolatine
** File description:
** git action test
*/

#include <stdio.h>

int my_strlen(char const *str)
{
    int i = 0;

    while (str[i] != '\0')
        i++;
    return i;
}

void my_swap_char(char *a, char *b)
{
    char temp;

    temp = *a;
    *a = *b;
    *b = temp;
}

char *my_revstr(char *str)
{
    int len = my_strlen(str);
    int i = 0;
    int j = len - 1;

    while (i < j) {
        my_swap_char(&str[i], &str[j]);
        i++;
        j--;
    }
    return str;
}

int main(void)
{
    char str[] = "prout";
    char *result = my_revstr(str);
    printf("%s\n", result);
}
