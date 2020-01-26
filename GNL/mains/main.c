/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/19 17:00:43 by vmoreau           #+#    #+#             */
/*   Updated: 2020/01/26 20:22:29 by vmoreau          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line.h"

int		main(void)
{
	int		fd;
	char	*str;
	int		ret;
/*
** test.txt
*/
	printf("*******test.txt*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/text.txt", O_RDONLY);
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
/*
** Empty_file
*/
	printf("\n\n*******Empty_file*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/Empty_file", O_RDONLY);
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
/*
** 2_newlines
*/
	printf("\n\n*******2_newlines*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/2_newlines", O_RDONLY);
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
/*
** many_newlines
*/
	printf("\n\n*******many_newlines*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/many_newlines", O_RDONLY);
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
/*
** Big_line
*/
	printf("\n\n*******Big_line*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/Big_line", O_RDONLY);
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
/*
** 2_big_line
*/
	printf("\n\n*******2_big_line*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/2_big_line", O_RDONLY);
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
/*
** Wrong fd
*/
	printf("\n\n*******Wrong FD*******\n");
	str = NULL;
	ret = 1;
	fd = 4242;
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
/*
** NULL pointer
*/
	printf("\n\n*******NULL pointer*******\n");
	str = NULL;
	ret = 1;
	fd = open("Files/text.txt", O_RDONLY);
	while (ret > 0)
	{
		ret = get_next_line(fd, NULL);
		printf ("|%d| ", ret);
		if (ret != -1)
		{
			printf("%s\n", str);
			free(str);
		}
	}
/*
** Leaks Tester
*/
	printf("\n\n*******Leaks Tester*******\n");
	system("leaks a.out");
	return (0);
}
