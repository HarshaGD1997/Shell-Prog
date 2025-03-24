#!bin/bash

echo "Enter a number : "
read num

rev = $(echo "$num" | rev)

if [[ "$num" == "$rev" ]]; then
	echo "palindrome"
else
	echo "not palindrome"
fi

