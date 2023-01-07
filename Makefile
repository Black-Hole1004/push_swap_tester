# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: blackhole <blackhole@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/19 13:36:46 by ahmaymou          #+#    #+#              #
#    Updated: 2023/01/07 14:48:50 by ahmaymou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

tester=my_tester.sh


test :

#======================= running my tester with various tests ===================#
	@echo "number of args     : [0]"
	@bash $(tester) -m 0
	@echo "number of args     : [5]"
	@bash $(tester) -m 5
	@echo "number of args     : [50]"
	@bash $(tester) -m 50
	@echo "number of args     : [100]"
	@bash $(tester) -m 100
	@echo "number of args     : [500]"
	@bash $(tester) -m 500
test_bonus :
#======================= running checker ===================#
	@echo "=========================================="
	@echo "number of args     : [0]"
	@bash $(tester) -b 0
	@echo "=========================================="
	@echo "number of args     : [5]"
	@bash $(tester) -b 5
	@echo "=========================================="
	@echo "number of args     : [50]"
	@bash $(tester) -b 50
	@echo "=========================================="
	@echo "number of args     : [100]"
	@bash $(tester) -b 100
	@echo "=========================================="
	@echo "number of args     : [500]"
	@bash $(tester) -b 500
	@echo "Testing to pb more than num of args ..."
	@bash $(tester) pb
