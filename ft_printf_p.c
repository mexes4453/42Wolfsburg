/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_p.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cudoh <cudoh@student.42wolfsburg.de>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/29 09:10:40 by cudoh             #+#    #+#             */
/*   Updated: 2022/05/29 09:10:40 by cudoh            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printf_p(void *p)
{
	int						len;
	unsigned long long int	ptr;

	len = 0;
	ptr = (unsigned long long int)p;
	len += write(1, "0x", 2);
	len += ft_printf_nbr_base(ptr, 16, 0);
	return (len);
}
