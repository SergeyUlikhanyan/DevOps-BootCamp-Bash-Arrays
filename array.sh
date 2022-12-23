#!/bin/bash

arg=$1
declare -a arr
declare -a res
count=0

for i in {a..z}; do
        arr+=($i)
done

for (( i=0; i < $arg; i++ )); do

        if [ $i -eq 26 ]; then
                break
        fi

        if [ -d folder_${arr[$i]} ]; then
                res+=(folder_${arr[$i]})
                continue
        fi

        mkdir  folder_${arr[$i]}
        res+=(folder_${arr[$i]})

        count=$((count+1))

done

result="${res[*]}"
if [ $count -le 1 ]; then
        echo "$count folder created: ${result//${IFS:0:1}/, }"
else
        echo "$count folders created: ${result//${IFS:0:1}/, }"

fi
