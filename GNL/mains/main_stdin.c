/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_stdin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/27 08:04:43 by vmoreau           #+#    #+#             */
/*   Updated: 2020/01/27 08:10:32 by vmoreau          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line.h"

int		main(void)
{
	int		fd;
	char	*str;
	int		ret;
	
	str = NULL;
	ret = 1;
	fd = 1;
	while (ret > 0)
	{
		ret = get_next_line(fd, &str);
		printf ("|%d|", ret);
		if (ret != -1)
		{
			printf("%s\n", str);
			free(str);
		}
	}
	printf("\n\n*******Leaks Tester*******\n");
	system("leaks a.out");
	return (0);
}
