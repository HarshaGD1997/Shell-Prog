#!/bin/bash

echo "Enter the directory name"
read dir_name

mkdir "$dir_name"

echo "Enter the source file name"
read src

echo "Enter content to enter into the file"
read content

echo "Enter the destination file name"
read des

echo "$content" > "$src"

cp "$src" ./"$dir_name/$des"


