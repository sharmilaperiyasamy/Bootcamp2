#!/bin/bash -x

function my_func()
{
    value=$(($1*$2))
    echo $value
}

echo "Enter 2 numbers number1 and number 2: "
read number1
read number2

my_func $number1 $number2
mul=$value

echo "Multiplied output: $mul"
