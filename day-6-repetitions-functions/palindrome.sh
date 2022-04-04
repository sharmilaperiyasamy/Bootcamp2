#!/bin/bash -x

echo "Enter a first number:"
read a

echo "Enter a second number:"
read b

sum=0
remainder=0

function palindrome()
{
while [ $a -gt 0 ]
do
    remainder=$(($a%10))
    sum=$((($sum * 10) + $remainder))
    a=$(($a/10))
done
   if [ $b -eq $sum ]
   then
     echo "Palindrome"
   else
    echo "Not a palindrome"
   fi
}
palindrome
