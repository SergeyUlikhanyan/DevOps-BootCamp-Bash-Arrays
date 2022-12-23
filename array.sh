#!/bin/bash
count=1
for i in {a..z}; do
    [[ $count -gt $1 ]] && break
    mkdir folder_$i
    ((count++))
done
echo "$1" folder created: && ls | grep folder
