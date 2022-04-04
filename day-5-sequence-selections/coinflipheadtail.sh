#!/bin/bash -x

echo "program to simulate a coin flip and print out "Heads" or "Tails" accordingly."
echo " "

coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
   echo "head"
else
   echo "tail"
fi
