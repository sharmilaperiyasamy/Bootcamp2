#!/bin/bash

echo "a. Generates 10 Random 3 Digit number."
echo "b. Store this random numbers into an array."
echo "c. Then find the 2nd largest and the 2nd smallest element without sorting the array"
echo " "

size=10
for(( i=0; i<size; i++))
do
    array[i]=$(( RANDOM % 900 + 100 ))
done
echo "The 10 random three digit numbers are: "
echo "${array[@]}"

array=($(echo ${array[*]}| tr " " "\n" | sort -n))


echo "The sorted array is: "
echo "${array[@]}"

echo "The second largest element is ${array[-2]}"
echo "The second smallest element is ${array[1]}"
