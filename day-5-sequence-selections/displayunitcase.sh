#!/bin/bash -x

echo "Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,..."
echo " "

echo  "Enter a Number:"
read number
case $number in
    1)  echo  "UNIT"
    ;;
    10)
       echo  "TEN"
    ;;
    100)
       echo "HUNDRED"
    ;;
    1000)
      echo  "THOSAND"
    ;;
    10000)
      echo  "TEN THOUSAND"
    ;;
    *)
      echo "Enter the number such as 1,10,100,1000,10000"
esac
