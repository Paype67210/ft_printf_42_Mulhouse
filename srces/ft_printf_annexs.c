/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_annexs.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pdeson <pdeson@student.42mulhouse.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/12 17:23:33 by pdeson            #+#    #+#             */
/*   Updated: 2023/12/13 10:19:02 by pdeson           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	ft_cptchar(long nb)
{
	int	result;

	result = 1;
	if (nb < 0)
	{
		result = 2;
		nb = -nb;
	}
	while (nb >= 10)
	{
		nb = nb / 10;
		result = result +1;
	}
	return (result);
}

char	*ft_itoa(long n)
{
	char	*str;
	size_t	len;
	size_t	i;

	len = ft_cptchar(n);
	str = malloc(((len + 1)) * sizeof(char));
	if (!str)
		return (NULL);
	i = 0;
	if (n < 0)
	{
		str[i++] = '-';
		n = -n;
	}
	if (n == 0)
		str[0] = '0';
	str[len] = '\0';
	while (n > 0 && len > 0)
	{
		str[--len] = '0' + (n % 10);
		n = (n / 10);
	}
	return (str);
}

void	ft_putchar_fd(char c, int fd)
{
	write(fd, &c, 1);
}

int	ft_strlen(const char *str)
{
	int	i;

	i = 0;
	while (str[i] != '\0')
		i++;
	return (i);
}
