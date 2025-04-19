#!/bin/bash

sum_of_digits(){
	local n=$1
	if (( n == 0 )); then
		echo 0
	else
		local digit=$(( n % 10))
		local rest=$(( n/10 ))
		local rec_sum=$(sum_of_digits $rest)
		echo $(( digit + rec_sum ))
	fi
}

echo "Enter number"
read num

echo "sum of digits without loop is "
sum_of_digits "$num"


copy_val=num
sum=0

while ((copy_val > 0)); do
	mod_val=$((copy_val % 10))
	sum=$((sum + mod_val))
	copy_val=$((copy_val / 10))
done

echo "sum of the digits is $sum"
