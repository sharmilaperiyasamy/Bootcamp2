#!/bin/bash -x

echo "Program to read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,..."

echo "Enter a Number:"
read number
if [ $number -eq 1 ]
then
  echo "UNIT"

elif [ $number -eq 10 ]
then
  echo "TEN"

elif [  $number -eq 100 ]
then
  echo "HUNDRED"

elif [ $number -eq 1000 ]
then
  echo "THOUSAND"

else
  echo  "Enter the number such as 1, 10, 100, 1000"
fi
