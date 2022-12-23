#!/bin/bash

count=1
max=26

for i in {a..z}; do
        if [ $count -le $1 ] && [ $1 -le $max ]
                then
                mkdir folder_$i
                ((count++))
        fi
done

last=$(($count - 1))

if [[ $count -gt 1 ]]
        then
                echo "$last folders created: $(ls -d folder_* | grep -v / | xargs echo | sed 's/ /, /g')";
        else
                echo "Error"
fi
