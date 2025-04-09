#!/bin/bash 
# Iterate through all the fields in the current directory

for file in ../*
do

    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    else
        echo "$file is something else"
    fi
done