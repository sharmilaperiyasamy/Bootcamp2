#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsinMonth=100
empRatePerHr=20
totalWorkingdays=0
numOfWorkingDays=20
totalEmpHr=0


function getWorkingHrs()
{
     case $1 in
          $isPartTime)
                     empHrs=4
           ;;
          $isFullTime)
                     empHrs=8
          ;;
          *)
           empHrs=0
           ;;
      esac
}

function getEmpWage()
{
      echo $(($totalEmpHr*$empRatePerHr))
}
while [[ $totalEmpHr -lt $maxHrsinMonth &&
          $totalWorkingdays -lt $numOfWorkingDays ]]

do
   ((totalWorkingdays++))
    randomCheck=$((RANDOM%3))
    getWorkingHrs $randomCheck
    totalEmpHr=$(($totalEmpHr+$empHrs))
     dailyWages[$totalWorkingdays]=$(($empHrs*$empRatePerHr))
done
totalSalary="$( getEmpWage $totalEmpHr )"
echo "TotalSalary= $totalSalary"
