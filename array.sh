#!/bin/bash

array=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
output="$1 folders created:"

for ((i=0;i<$1;i++)); do
	mkdir $PWD/folder_${array[i]}
	output="$output folder_${array[i]},"
done
if [[ $1 -eq 1 ]]; then
	output=${output/folders/folder}
	echo "${output/%,/}"
else
	echo "${output/%,/}"
fi
