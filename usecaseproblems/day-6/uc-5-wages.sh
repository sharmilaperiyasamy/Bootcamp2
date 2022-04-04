#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHour=20
totalSalary=0
numOfWorkingdays=20

for (( day=1; day<=$numOfWorkingdays; day++ ))
do
     randomCheck=$((RANDOM%3))
    case $randomCheck in
           $isFullTime)
                    emphrs=8
           ;;
           $isPartTime)
                    emphrs=4
           ;;
           *)
                    emphrs=0
           ;;
     esac
salary=$(($emphrs*$empRatePerHour))
totalSalary=$(($totalSalary+$salary))
done

echo "Wages for a month: "$totalSalary
