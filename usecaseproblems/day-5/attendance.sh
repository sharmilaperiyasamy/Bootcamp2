#!/bin/bash -x

isFullTime=2
isPartTime=1
randomCheck=$((RANDOM%3))
empRatePerHour=20

if [ $isFullTime -eq $randomCheck ]
then
    echo "Employee is a fulltime worker"
    empHrs=8

elif [ $isPartTime -eq $randomCheck ]
then
    echo "Employee is a parttime worker"
    empHrs=4

else
     echo "Employee is absent"
     empHrs=0
fi
salary=$(($empRatePerHour*$empHrs))
echo "Salary: $salary"
