# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    exec.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/26 19:00:16 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/26 19:48:43 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "\033[1;34mIf you want to check BUFFER 300 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=300 main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 9999 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=9999 main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 450000 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=450000 main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 10000000 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=10000000 main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 0 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=0 main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 1 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=1 main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 2 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=2 main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 20 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=20 main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 37 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=37 main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[33mEnd of Tests\033[m"