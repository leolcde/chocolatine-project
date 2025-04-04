##
## EPITECH PROJECT, 2024
## mkfile
## File description:
## mkfile
##

CC		=	gcc

SRC		=	main.c

OBJ		=	$(SRC:.c=.o)

NAME	=	bin

CFLAGS	+= -g

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME) -g

clean:
	rm -rf $(OBJ)

fclean : clean
	rm -f $(NAME)

re: fclean all
