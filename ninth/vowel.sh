#!/bin/bash

echo "Enter the string"
read string
vowel_count=$(echo "$string" | grep -o -i "[aeiou]" | wc -l)

echo "number of vowels in $string is : $vowel_count"
