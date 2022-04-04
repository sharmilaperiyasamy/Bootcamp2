#!/bin/bash -x

echo "Program to read a Number and Display the week day (Sunday, Monday,...)"
echo " "

echo "Enter a number"
read number
if [ $number -eq 1 ]
then
   echo "SUNDAY"

elif [ $number -eq 2 ]
then
   echo "MONDAY"

elif [ $number -eq 3 ]
then
   echo "TUESDAY"

elif [ $number -eq 4 ]
then
   echo "WEDNESDAY"

elif [ $number -eq 5 ]
then
   echo "THURSDAY"

elif [ $number -eq 6 ]
then
   echo "FRIDAY"

elif [ $number -eq 7 ]
then
   echo "SATURDAY"
else
   echo "Enter the number between 1 to 7"
fi
