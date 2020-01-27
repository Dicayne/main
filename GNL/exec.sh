# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    exec.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/26 19:00:16 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/27 08:18:50 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "\033[1;34mIf you want to check BUFFER 300 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=300 mains/main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 9999 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=9999 mains/main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 450000 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=450000 mains/main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 10000000 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=10000000 mains/main.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 0 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=0 mains/main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 1 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=1 mains/main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 2 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=2 mains/main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 20 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=20 mains/main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check BUFFER 37 press enter, else ctr + c to quit\033[m" && read 
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=37 mains/main_bls.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read && echo "\033[1;34mIf you want to check stdin press enter, else ctr + c to quit\033[m" && read 
echo "\033[4;32mWrite something and press enter. If you want to stop the process ctr + d\033[m"
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=42 mains/main_stdin.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[32mOk?" && read

echo "\033[35mBonus? :)" && read
echo "\033[1;34mIf you want to check how many Static Variable is used press enter, else ctr + c to quit\033[m" && read
cat *.c | grep static
cat *.h | grep static
echo "\033[1;34mIf you want to check several fd GNL press enter, else ctr + c to quit\033[m" && read
gcc -Wall -Werror -Wextra -D BUFFER_SIZE=42 mains/main_mfd.c get_next_line.c get_next_line_utils.c && ./a.out

echo "\033[33mEnd of Tests\033[m"
echo "\033[1;34mmade by vmoreau\033[m"