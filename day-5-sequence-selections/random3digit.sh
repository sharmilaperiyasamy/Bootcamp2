#!/bin/bash -x

a=$((RANDOM%900 + 100))
b=$((RANDOM%900 + 100))
c=$((RANDOM%900 + 100))
d=$((RANDOM%900 + 100))
e=$((RANDOM%900 + 100))
echo "5 Random 3 digit numbers are : $a, $b, $c, $d, $e"
echo "  "

maximum=$a
minimum=$a

if [ $b -gt $maximum ]
then
    maximum=$b
fi

if [ $b -lt  $minimum ]
then
    minimum=$b
fi

if [  $c -gt $maximum ]
then
  maximum=$c
fi

if [ $c -lt  $minimum ]
then
    minimum=$c
fi
if [  $d -gt $maximum ]
then
  maximum=$d
fi

if [ $d -lt  $minimum ]
then
    minimum=$d
fi

if [  $e -gt $maximum ]
then
  maximum=$e
fi

if [ $e -lt  $minimum ]
then
    minimum=$e
fi

echo "Maximum:"$maximum
echo  "Minimum:"$minimum
