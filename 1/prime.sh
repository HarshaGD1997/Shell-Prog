#!/bin/bash

echo "Enter M : "
read m
echo "Enter N : "
read n

flag_val=0;

for ((i=m; i<=n; i++)); do
	if((i==1)); then
		echo "1 is not prime nor composite"
		continue			
	fi
	#for((j=2; j<i; j++)); do
	for((j=2; j*j<=i; j++)); do # To reduce the computation we would check till sqrt(j) 
		
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

