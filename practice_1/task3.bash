#!/bin/bash

text="$1"
len=${#text}

printf "+"

for ((i = 0; i < len + 2; i++)); do
    printf "-"
done

printf '+\n'

printf '| %s |\n'  "$text"

printf '+'
for ((i = 0; i < len + 2; i++)); do
    printf '-'
done
printf '+\n'
