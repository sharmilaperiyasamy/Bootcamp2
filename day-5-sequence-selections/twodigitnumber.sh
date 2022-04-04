#!/bin/bash -x

a=$((RANDOM%90 + 10))
b=$((RANDOM%90 + 10))
c=$((RANDOM%90 + 10))
d=$((RANDOM%90 + 10))
e=$((RANDOM%90 + 10))

echo "Random Numbers are: "
echo $a, $b, $c, $d, $e

echo " "
sum=$(($a+$b+$c+$d+$e))
echo "The sum of 5 Random 2 digit numbers is "$sum

echo " "

avg=`echo $sum | awk '{print $sum/5}'`
echo "The Average of 5 Random 2 digit numbers is "$avg
