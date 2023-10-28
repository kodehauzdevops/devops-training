#!/bin/bash

read -p "What is the directory pathname: " directory_name
# echo "$directory_name"
# check if the directory name exists
if [ ! -d "$directory_name" ]; then
    echo "$directory_name: this directory pathname does not exist"
    exit 1
fi

# List all the files in it if it exist
ls $directory_name
filenames=$(ls "$directory_name")

for filename in $filenames; do
    if [ -f "$directory_name/$filename" ]; then
        first_letter=$(head -n 1 "$directory_name/$filename")
        echo "File name $filename first letter is $first_letter"
    fi
done