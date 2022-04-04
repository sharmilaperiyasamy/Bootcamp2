#!/bin/bash -x

echo "Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum"
echo "1. a + b * c  2. a % b + c  3. c + a / b  4. a * b + c"
echo " "

read -p "Enter the first number:"  a
read -p "Enter the Second number:"  b
read -p "Enter the third number:"  c

output1=$(( $a+$b*$c ))
echo $output1

output2=$(( $a%$b+$c ))
echo $output2

output3=$(( $c+$a/$b ))
echo $output3

output4=$(( $a*$b+$c ))
echo $output4

maximum=$output1

if [ $output2 -gt $maximum ]
then
    maximum=$output2
fi
if [ $output3 -gt $maximum ]
then
    maximum=$output3
fi

if [ $output4  -gt $maximum ]
then
    maximum=$output4
fi

echo  "Maximum output : $maximum"

minimum=$output1

if [ $output2 -lt  $minimum ]
then
    minimum=$output2
fi

if [ $output3 -lt $minimum ]
then
   minimum=$output3
fi

if  [ $output4 -lt $minimum ]
then
  minimum=$output4
fi
  echo  "Minimum output : $minimum"
