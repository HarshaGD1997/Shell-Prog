#!/bin/bash

echo "Enter M : "
read m
echo "Enter N : "
read n


for ((i=m; i<=n; i++)); do
	if((i==1)); then
		echo "1 is not prime nor composite"
		i=2;			
	fi
	for((j=2; j<i; j++)); do

		
		if((i%j == 0)); then
			flag_val=1
			break
		else
			flag_val=0
		fi
	done
	if((flag_val == 1)); then
		echo "$i is not prime"
	else
		echo "$i is prime"
	fi

done

