#!/bin/bash

echo "Enter a word to search"
read word

echo "Enter filename"
read file_name

if [[ ! -f "$file_name" ]]; then
	echo "no such file"
	exit 1
fi

grep --color=always -n "$word" "$file_name"
