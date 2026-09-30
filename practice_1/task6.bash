#!/bin/bash

dir="${1:-.}"

for file in "$dir"/*.c "$dir"/*.js "$dir"/*.py; do
    if [ ! -f "$file" ]; then
        continue
    fi

    line=$(head -n1 "$file")

    if [[ "$file" == *.py && "$line" == "#"* ]]; then
        echo "$file: has comment"
    elif [[ "$file" != *.py && ( "$line" == "//"* || "$line" == "/*"* ) ]]; then
        echo "$file: has comment"
    else
        echo "$file: no comment"
    fi
done
