/*
** EPITECH PROJECT, 2024
** Unit Test for my_revstr
** File description:
** Tests my_revstr with Criterion
*/

#include <criterion/criterion.h>

char *my_revstr(char *str);

Test(my_revstr, reverse_simple_string)
{
    char str[7] = "abcdef";
    my_revstr(str);
    cr_assert_str_eq(str, "fedcba");
}

