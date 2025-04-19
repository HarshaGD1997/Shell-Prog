#!/bin/bash

echo "Enter the number "
read num

copy_val=$num
rev_val=0

while((copy_val>0)); do
	#echo "$copy_val"
	mod_val=$((copy_val%10))
	rev_val=$((rev_val*10 + mod_val));
	copy_val=$((copy_val/10))
done

#echo "rev val is : $rev_val"
if ((rev_val == num)); then
	echo "$num is palindrome"
else
	echo "$num is not palindrome"
fi



