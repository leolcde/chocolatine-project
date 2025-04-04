/*
** EPITECH PROJECT, 2024
** rev
** File description:
** rev
*/

#include <criterion/criterion.h>

Test(my_revstr, reverse_string)
{
    char dest[6] = "jesepa";
    my_revstr(dest);
    cr_assert_str_eq(dest, "apesej");
}
