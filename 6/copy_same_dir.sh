#!/bin/bash

echo "Enter the source file name"
read src

echo "Enter destination file name"
read des

echo "Enter the content to put in the first file"
read content

echo "$content" > "$src"

cp "$src" "$des"
