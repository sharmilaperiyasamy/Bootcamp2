#!/bin/bash -x

echo "program that takes a year as input and outputs the Year is a Leap Year or not  a Leap Year."
echo "A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400."
echo " "

read -p "Enter the year:"  year

if [ `expr $year % 100` -eq 0 -a `expr $year % 400` -eq 0 ]
then
   echo "$year is a leap year "
elif [ `expr $year % 100` -ne 0 -a `expr $year % 4` -eq 0 ]
then
  echo "$year is a leap year"
else
   echo "its not a leap year"
fi
