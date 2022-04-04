#!/bin/bash -x

echo "program that computes a factorial of a number taken as input.5"
echo "Factorial – 5! = 1 * 2 * 3 * 4 * 5"
echo " "

echo "Enter a number:"
read a
output=1

for (( i=1; i<=$a; i++ ))
do

    output=$(($output*$i))
done

echo " factorial of a number is: $output"
