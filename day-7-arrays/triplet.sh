#!/bin/bash -x

echo "Program to show Sum of three Integer adds to ZERO"
echo " "

echo "Enter the number of elements in the array: "
read n
echo "Enter $n elements"
for(( i = 0; i < n; i++ ))
do
    read x
    array[i]=$x
done
sum=0
for(( i = 0; i < n - 2; i++ ))
do
    for(( j = i + 1; j < n - 1; j++ ))
    do
        for(( k = j + 1; k < n; k++ ))
        do
            if(( array[i] + array[j] + array[k] == sum))
            then
                echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
            fi
        done
    done
done
