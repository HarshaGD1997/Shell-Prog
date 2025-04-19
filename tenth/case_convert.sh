#!/bin/bash

echo "Enter a string"
read string

new_string=$(echo "$string" | tr '[:lower:][:upper:]' '[:upper:][:lower:]')

echo "$new_string"
