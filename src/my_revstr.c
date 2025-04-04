/*
** EPITECH PROJECT, 2025
** chocolatine-project
** File description:
** my_revstr
*/

#include "../my.h"

int my_strlen(char const *str)
{
    int i = 0;

    while (str[i] != '\0')
        i++;
    return i;
}

void my_swap_char(char *a, char *b)
{
    char temp = *a;

    *a = *b;
    *b = temp;
}

char *my_revstr(char *str)
{
    int len = my_strlen(str);

    for (int i = 0; i < len / 2; i++)
        my_swap_char(&str[i], &str[len - i - 1]);
    return str;
}
