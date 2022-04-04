#!/bin/bash -x

echo "program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value"
echo " "

read -p "Enter the First number:"  a
maximum=$a
minimum=$a

echo " "
read -p "Enter the Second number:"  b
if [ $b -gt $maximum ]
then
    maximum=$b
else
    maximum=$maximum
fi

if [ $b -lt  $minimum ]
then
    minimum=$b
else
    minimum=$minimum
fi

echo " "
read -p "Enter the third number:" c

if [  $c -gt $maximum ]
then
  maximum=$c
else
  maximum=$maximum
fi

if [ $c -lt  $minimum ]
then
    minimum=$c
else
    minimum=$minimum
fi

echo " "
read -p "Enter the Fourth number:" d
if [  $d -gt $maximum ]
then
  maximum=$d
else
  maximum=$maximum
fi

if [ $d -lt  $minimum ]
then
    minimum=$d
else
    minimum=$minimum
fi

echo " "
read -p "Enter the fifth number:"  e
if [  $e -gt $maximum ]
then
  maximum=$e
else
  maximum=$maximum
fi

if [ $e -lt  $minimum ]
then
    minimum=$e
else
    minimum=$minimum
fi

echo " "
echo "Maximum:"$maximum
echo  "Minimum:"$minimum
