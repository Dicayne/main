/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_mfd.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/19 17:00:43 by vmoreau           #+#    #+#             */
/*   Updated: 2020/01/26 20:22:35 by vmoreau          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line.h"

int		main(void)
{
	int		fd1;
	int		fd2;
	int		fd3;
	char	*str;
	int		ret;
	
	str = NULL;
	ret = 1;
	fd1 = open("Files/MFDF/Chien", O_RDONLY);
	fd2 = open("Files/MFDF/Poisson", O_RDONLY);
	fd3 = open("Files/MFDF/Poule", O_RDONLY);
	while (ret > 0)
	{
		printf("CHIEN\n");
		ret = get_next_line(fd1, &str);
		printf ("|%d|", ret);
		if (ret != -1)
		{
			printf("%s\n", str);
			free(str);
		}
		printf("POISSON\n");
		ret = get_next_line(fd2, &str);
		printf ("|%d|", ret);
		if (ret != -1)
		{
			printf("%s\n", str);
			free(str);
		}
		printf("POULE\n");
		ret = get_next_line(fd3, &str);
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
