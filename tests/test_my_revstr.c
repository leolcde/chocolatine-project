/*
** EPITECH PROJECT, 2025
** chocolatine-project
** File description:
** test_my_revstr
*/

#include <criterion/criterion.h>
#include "../my.h"

Test(my_revstr, reverse_simple_string)
{
    char str[7] = "abcdef";
    my_revstr(str);
    cr_assert_str_eq(str, "fedcba");
}
