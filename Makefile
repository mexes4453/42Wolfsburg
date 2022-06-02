# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cudoh <cudoh@student.42wolfsburg.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/30 15:08:09 by cudoh             #+#    #+#              #
#    Updated: 2022/06/02 01:41:56 by cudoh            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC:= $(shell ls *.c | xargs)
#SRC				=	ft_printf.c ft_printf_c.c ft_printf_s.c ft_printf_p.c
SRC_BONUS:= $(shell ls *bonus.c | xargs)

OBJ				= $(SRC:.c=.o)
OBJ_BONUS		= $(SRC_BONUS:.c=.o)

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror -I ./ -I ./libft
LIBFLAGS_STATIC = rcs

NAME			= libftprintf.a

all:			$(NAME)

$(NAME):		$(OBJ) 
				ar $(LIBFLAGS_STATIC) $(NAME) $(OBJ)

bonus: $(OBJ_BONUS)
	@echo
	ar $(LIBFLAGS_STATIC) $(NAME) $^                                     # create the library file for linking
	@echo                                                                                           # print new line on screen


# remove all object files
fclean:
	rm -rf $(OBJ)

# remove final target files
clean: fclean
	rm -rf $(NAME)

# recompile everything
re: clean all

.PHONY : bonus all fclean clean re 
