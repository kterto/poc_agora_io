#!/bin/bash

while IFS= read -r line
    do
        if [[ $line == *"$2"* ]]; then
            printf "$3\n" >> "$1.tmp"
        else 
            printf "$line\n" >> "$1.tmp" 
        fi
done < $1
mv "$1.tmp" "$1"
