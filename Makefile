
SRC	=	srcs/main.c

CC	=	gcc

NAME	=	teceract

CFLAGS	=	-I./includes/

LDFLAGS	=	-L /usr/lib/ -lmlx -lm -lX11 -lXext

#CFLAGS	+=	-Wall -Werror -Wextra

OBJ	=	$(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	$(CC) -o $(NAME) $(OBJ) -L /usr/lib/ -lmlx -lm -lX11 -lXext

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
