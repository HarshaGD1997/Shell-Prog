#!/bin/bash

echo "list all the files displaying permissions"

echo " "
ls -la | awk '$1 ~ /^-rwx/ {print $9}'

echo " "
find . -maxdepth 1 -type f -executable
