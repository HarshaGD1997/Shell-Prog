#!/bin/bash

echo "Enter the number :"; read num

copy_val=num
sum=0

while ((copy_val > 0)); do
	mod_val=$((copy_val % 10))
	sum=$((sum + mod_val))
	copy_val=$((copy_val / 10))
done

echo "sum of the digits is $sum"
