#!/bin/bash -x

echo "Read a single digit number and write the number in word"
echo " "

echo "Enter a Single Digit Number"
read number

case $number in
     0)  echo "ZERO"
     ;;
     1)  echo "ONE"
     ;;
     2)  echo  "TWO"
     ;;
     3)  echo  "THREE"
     ;;
     4)   echo "FOUR"
     ;;
     5)   echo "FIVE"
     ;;
     6)   echo "SIX"
     ;;
     7)   echo "SEVEN"
     ;;
     8)   echo "EIGHT"
     ;;
     9)   echo "NINE"
     ;;
     *)
      echo "Enter the number between 0 to 9"
esac
