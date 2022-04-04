#!/bin/bash -x

isFullTime=2
isPartTime=1
randomCheck=$((RANDOM%3))
empRatePerHour=20

case $randomCheck in
    $isFullTime)
              empHrs=8
          ;;
     $isPartTime)
             empHrs=4
       ;;
         *)
          empHrs=0
        ;;
esac
salary=$(($empRatePerHour*$empHrs))
echo "Salary: $salary"
