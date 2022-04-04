#!/bin/bash -x

echo "program that takes a command-line argument n and prints a"
echo "table of the powers of 2 that are less than or equal to 2^n till 256 is reached.."
echo " "

echo "Enter a Number:"
read number

power=2
output=1
while [  $output -le 256 ]
do
    echo  "power table of the $number is:$output"

    output=$(($output*$power))

done
