#!/bin/bash

chmod +x ./array.sh
count=$1

read -ra array <<< "$(echo {a..z})"

for ((l=0;l<=count-1;l++))

do

mkdir ./folder_"${array[$l]}"

done
