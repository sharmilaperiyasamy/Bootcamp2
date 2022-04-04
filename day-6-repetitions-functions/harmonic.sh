#!/bin/bash -x

echo "program that takes a command-line argument n and prints the nth harmonic number."
echo " "

echo "Enter the number: "
read n
result=0
echo 'The Harmonic series is:'
for (( i = 1; i <= n; i++ ))
do
    temp=$( echo "scale=2; 1 / $i " | bc -l )
    result=$( echo "scale=2; $result + $temp" | bc -l)
    echo -n "$result  "
done
echo " "
echo "The $nth harmonic number is $result"
