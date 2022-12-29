#!/bin/bash

x=$1
y=1

for i in {a..z}; do
  if [[ $y -le $x ]]
  then
    mkdir ./folder_$i
    ((y++))
 fi
done

if [[ $x -gt 1 ]]
then
  echo "$x folders created: $(ls -d folder_* | grep -v / | xargs echo | sed 's/ /, /g')";
else
  echo "$x folder created: $(ls -d folder_* | grep -v / | xargs echo | sed 's/ /, /g')"
fi
