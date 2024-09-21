#! usr/bin/bash

echo "Enter number of terms :"
read number

first=0
second=1

for ((i=1 ; i<=$number ; i++));
do
    echo -n " "$first
    fn=$(($first + $second))
    first=$second
    second=$fn
done
