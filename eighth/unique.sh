#!/bin/bash

echo "Enter first file name"
read file_first

echo "Enter second file name"
read file_second

echo "Enter the content for 1st file"
cat > "$file_first"

echo "Enter the content for 2nd file"
cat > "$file_second"

echo -e "\n\n\n"

sort "$file_first" > sorted_first
sort "$file_second" > sorted_second

echo -e "common entries : \n $(comm -12 sorted_first sorted_second)"

echo -e "unique entry in $file_first: \n $(comm -23 sorted_first sorted_second)"

echo -e "unique entry in $file_second:\n $(comm -13 sorted_first sorted_second)"


rm "$file_first" "$file_second" sorted_first sorted_second
