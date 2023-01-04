# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: blackhole <blackhole@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/19 13:36:46 by ahmaymou          #+#    #+#              #
#    Updated: 2023/01/04 12:53:53 by blackhole        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

tester=my_tester.sh


test :
	cd .. && make && cp push_swap my_tester
	cd .. && make fclean
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
	cd .. && make bonus && cp push_swap my_tester && cp checker my_tester
	cd .. && make fclean
#======================= running checker ===================#
	@echo "number of args     : [0]"
	@bash $(tester) -b 0
	@echo "number of args     : [5]"
	@bash $(tester) -b 5
	@echo "number of args     : [50]"
	@bash $(tester) -b 50
	@echo "number of args     : [100]"
	@bash $(tester) -b 100
	@echo "number of args     : [500]"
	@bash $(tester) -b 500