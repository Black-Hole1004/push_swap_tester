#!/bin/bash

# # $1 = how many arguments you want

generate_random_numbers() {
	random_numbers=()
	number_of_numbers=$1
	while [ ${#random_numbers[@]} -lt $number_of_numbers ]
	do
		random_number=$RANDOM

		if ! [[ " ${random_numbers[@]} " =~ " ${random_number} " ]]; then
			random_numbers+=($random_number)
		fi
	done
	echo "${random_numbers[@]}"
}

number_of_numbers=$2
if [ -z "$number_of_numbers" ]; then
	echo "Error: Number of numbers not specified."
	exit ;
fi
if ! [[ "$number_of_numbers" =~ ^[0-9]+$ ]]; then
	echo "Error: Invalid number of numbers."
	exit ;
fi
random_numbers=($(generate_random_numbers $number_of_numbers))

#=====================================================================================
number_of_moves=$(./push_swap ${random_numbers[@]} | wc -l)

color='\033[92m'
if [[ $number_of_numbers -eq 0 && $number_of_moves -le 0 ]]; then
    color='\033[92m'
elif [[ $number_of_numbers -eq 0 && $number_of_moves -ge 1 ]]; then
    color='\033[91m'
elif [[ $number_of_numbers -eq 50 && $number_of_moves -le 250 ]]; then
    color='\033[92m'
elif [[ $number_of_numbers -eq 50 && $number_of_moves -ge 251 ]]; then
    color='\033[91m'
elif [[ $number_of_numbers -eq 5 && $number_of_moves -le 12 ]]; then
    color='\033[92m'
elif [[ $number_of_numbers -eq 5 && $number_of_moves -ge 13 ]]; then
    color='\033[91m'
elif [[ $number_of_numbers -eq 100 && $number_of_moves -le 700 ]]; then
    color='\033[92m'
elif [[ $number_of_numbers -eq 100 && $number_of_moves -ge 701 ]] ; then
    color='\033[91m'
elif [[ $number_of_numbers -eq 500 && $number_of_moves -le 5500 ]]; then
    color='\033[92m'
elif [[ $number_of_numbers -eq 500 && $number_of_moves -ge 5501 ]]; then
    color='\033[91m'
fi
end_color='\033[0m'
echo  -e "$color Number of moves => : {$number_of_moves}$end_color"
#=====================================================================================

os=$(uname)
if [ "$os" == "Darwin" ]; then
result_Mac=$(./push_swap ${random_numbers[@]} | ./checker_Mac ${random_numbers[@]})
elif [ "$os" == "Linux" ]; then
result_linux=$(./push_swap ${random_numbers[@]} | ./checker_linux ${random_numbers[@]})
else
  exit;
fi

if [ $1 == '-b' ]; then
echo "your checker result:"
./push_swap ${random_numbers[@]} | ./checker ${random_numbers[@]}
echo "42 checker result : "
if [ "$os" == "Darwin" ]; then
	echo "$result_Mac"
else
	echo "$result_linux"
fi
fi
sleep 0.8;
#=====================================================================================