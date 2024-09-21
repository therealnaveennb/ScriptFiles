#! usr/bin/bash

echo "Enter the Number 1:"
read number1

echo "/nEnter the Number 2:"
read number2

echo "/nEnter the operation (+,-,*,/,%)"
read operator

if [ "$operator" == "+" ]; then
    sum=$(($number1 + $number2))
    echo $sum
elif [ "$operator" == "-" ]; then
    sub=$(($number1 - $number2))
    echo $sub
elif [ "$operator" == "*" ]; then
    prod=$(($number1 * $number2))
    echo $prod
elif [ "$operator" == "/" ]; then
    div=$(($number1 / $number2))
    echo $div
elif [ "$operator" == "%" ]; then
    mod=$(($number1 % $number2))
    echo $mod
else 
    echo "Invalid Operations"
fi