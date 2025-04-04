##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## Compiles and runs project and unit tests
##

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Iinclude -g

SRC		=	main.c my_revstr.c
OBJ		=	$(SRC:.c=.o)
NAME	=	revstr

TEST_SRC = testss/test_my_revstr.c
TEST_NAME = unit_tests
LDFLAGS = -lcriterion

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

tests_run: $(SRC) $(TEST_SRC)
	$(CC) $(SRC) $(TEST_SRC) -o $(TEST_NAME) $(CFLAGS) $(LDFLAGS)
	@./$(TEST_NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME) $(TEST_NAME)

re: fclean all
