#!/bin/bash -x

echo "Extend the Prime Factorization program to store all the Prime Factors into an array and finally display the output"
echo " "

i=0
echo "Enter a number:"
read n
echo "The prime factors of $n are"
for(( p = 2; p <= n; ))
do
    if(( n % p == 0))
    then
        array[i++]=$p
        (( n=n/p ))
    else
        (( p=p+1 ))
    fi
done

array[i]=$n
echo "${array[@]}"
