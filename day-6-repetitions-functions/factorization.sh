#!/bin/bash -x

echo "program to compute Factors of a number N using prime factorization method."
echo "Logic -> Traverse till i*i <= N instead of i <= N for efficiency."
echo "O/P -> Print the prime factors of number N."
echo " "

echo "Enter a Number:"
read number

for (( i=2;  i<$number;  i++ ))
do

   while [  $(($number%$i)) -eq 0 ]
   do

      echo "$i"
      number=$(($number/$i))
      done
done

if [  $number -gt 2 ]
then
      echo "$number"
fi
