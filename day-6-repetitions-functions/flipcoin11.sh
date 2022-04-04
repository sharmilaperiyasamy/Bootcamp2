#!/bin/bash -x

echo "Extend the Flip Coin problem till either Heads or Tails wins 11 times."
echo " "

i=1
while [ $i -le 11 ]
do
    echo  "Head"
    ((i++))
done
