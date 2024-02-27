# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pdeson <pdeson@student.42mulhouse.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/27 14:58:19 by pdeson            #+#    #+#              #
#    Updated: 2024/02/27 15:11:24 by pdeson           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
HEADERS		= ft_printf.h
DIR_OBJS	= .objs/
SRCES_PATH	= srces/
CC			= @gcc -DM
FLAGS		= -Wall -Wextra -Werror
RM			= @rm -rf
AR			= @ar -rcs

# Creation of sources & objects
SRC			=	ft_printf.c ft_printf_utils.c ft_print_ptr.c ft_print_unsigned.c \
				ft_print_hex.c ft_printf_annexs.c

SRCES		= $(addprefix $(SRCES_PATH), $(SRC))

# Generate a list of object files
LIST_OBJS = $(SRC:.c=.o)
OBJS = $(addprefix $(DIR_OBJS), $(LIST_OBJS))

all: $(NAME)

# Use a pattern rule to compile source files to object files
$(DIR_OBJS)%.o: $(SRCES_PATH)%.c
	@echo "Compiling: $< "
	@mkdir -p $(DIR_OBJS)
	$(CC) $(FLAGS) -c $< -o $@ -I .

# Create the library
$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
#	@ranlib $(NAME)
	@echo "Libftprintf compiled!"

clean:
	$(RM) $(DIR_OBJS)
	@echo "libftprintf objects files cleaned!"

fclean:	clean
	$(RM) -f $(NAME)
	@echo "libftprintf executable files cleaned!"

re: fclean all
	@echo "Cleaned and rebuilt everything for libftprintf!"

norm:
	@norminette $(SRCES) $(HEADERS) | grep -v Norme -B1 || true

$(DIR_OBJS):
	@mkdir -p $(DIR_OBJS)

.PHONY : all norm clean fclean re
