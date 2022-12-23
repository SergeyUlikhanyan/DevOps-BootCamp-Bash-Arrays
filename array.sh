#!/bin/bash

x=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
y="$1 folders created:"

for ((i=0; i<$1; i++)); do
        mkdir $PWD/folder_${x[i]}
        y="$y folder_${x[i]},"
done

if [[ $1 -eq 1 ]]; then
        y=${y/folders/folder}

        echo "${y/%,/}"
else
        echo "${y/%,/}"

fi
