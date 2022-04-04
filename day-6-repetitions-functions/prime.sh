#!/bin/bash -x

echo "Write a program that takes a input and determines if the number is a prime."
echo " "

echo "Enter a number"
read num
output=1

for ((  counter=2; counter<$num; counter++ ))
do
    if  [  $(($num%$counter))  -eq 0 ]
    then
        output=$(($output+1))
    fi
done

if [  $output -eq 1 ]
then
  echo "its a prime number"
else
  echo "its not a prime number"
fi
