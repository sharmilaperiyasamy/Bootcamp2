#!/bin/bash

echo "Extend the program to take a range of number as input and output the Prime Numbers in that range."
echo " "

echo  "Enter a first number:"
read a
echo  "Enter a second number:"
read b
echo " "

for (( i=$a; i<$b; i++ ))
do
       result=1
          for (( j=2; j<i; j++ ))
            do
               if [ $(($i%$j)) -eq 0 ]
               then
                   result=$(($result+1))
                fi
            done
        if [ $result -eq 1 ]
        then
            echo "Prime numbers between the range $a and $b is :" $i
        fi
done
