#!/bin/bash -x

echo "Read a Number and Display the week day (Sunday, Monday,...)"
echo " "

echo  "Enter a number:"
read number
case $number in
     1)  echo "SUNDAY"
     ;;
     2)  echo  "MONDAY"
     ;;
     3)  echo  "TUESDAY"
     ;;
     4)   echo "WEDNESDAY"
     ;;
     5)   echo "THURSDAY"
     ;;
     6)   echo "FRIDAY"
     ;;
     7)
      echo "SATURDAY"
     ;;
     *)
      echo "Enter the number between 1 to 7"
esac
