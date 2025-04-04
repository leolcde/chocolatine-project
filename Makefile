##
## EPITECH PROJECT, 2024
## mkfile
## File description:
## mkfile
##

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Iinclude -g

SRC		=	src/my_revstr.c
OBJ		=	$(SRC:.c=.o)
NAME	=	revstr

TEST_SRC = tests/test_my_revstr.c
TEST_NAME = unit_tests
LDFLAGS = -lcriterion

all: $(NAME)

$(NAME): $(OBJ) main.o
	$(CC) $(OBJ) main.o -o $(NAME)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o

tests_run: $(SRC) $(TEST_SRC)
	$(CC) $(SRC) $(TEST_SRC) -o $(TEST_NAME) $(CFLAGS) $(LDFLAGS)
	./$(TEST_NAME)

clean:
	rm -f $(OBJ) main.o

fclean: clean
	rm -f $(NAME) $(TEST_NAME)

re: fclean all
