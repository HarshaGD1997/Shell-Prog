#!/bin/bash

factorial(){
	if [[ $1 -le 1 ]]; then
		echo 1
	else
		local prev=$(factorial $(( $1 - 1 )))
		echo $(( $1 * prev ))
	fi

}

echo "Enter a non negative number: "
read num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "invalid output"
	exit 1
fi

result=$(factorial $num)

echo "factorial of $num is : $result"
