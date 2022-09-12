# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cudoh <cudoh@student.42wolfsburg.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/30 15:08:09 by cudoh             #+#    #+#              #
#    Updated: 2022/06/02 16:38:10 by cudoh            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#SRC:= $(shell ls *.c | xargs)
SRC				=	ft_printf.c ft_printf_c.c ft_printf_s.c \
					ft_printf_p.c ft_printf_d.c \
					ft_printf_u.c ft_printf_xx.c \
					ft_printf_num_base.c ft_strlen.c \
					


OBJ				= $(SRC:.c=.o)

CC				= cc
CFLAGS			= -Wall -Wextra -Werror -I./ 

NAME			= libftprintf.a

all:			$(NAME)

$(NAME):		$(OBJ) 
			ar rcs $(NAME) $(OBJ)



# remove all object files
fclean:
	rm -rf $(OBJ)

# remove final target files
clean: fclean
	rm -rf $(NAME)

# recompile everything
re: clean all

.PHONY : all fclean clean re 
