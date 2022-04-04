#!/bin/bash -x

echo "Take a range from 0-100, find the digits that are repeated twice like 33,77,etc and store them in an array"
echo " "

echo "Enter the minimum range:"
read min
echo "Enter the maximum range:"
read max
a=0
for(( i = min; i <= max; ))
do
    if (( i % 11 == 0 ))
    then
        array[a++]=$i
        (( i=i+11))
    else
        (( i++ ))
    fi
done
echo "The required numbers are: "
echo "${array[@]}"
