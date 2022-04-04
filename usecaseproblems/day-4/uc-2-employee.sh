#!/bin/bash -x

ispresent=1
randomCheck=$(( RANDOM % 2 ))

if [ $ispresent -eq $randomCheck ]
then
   empRateperhour=20
   empHours=8
   salary=$(($empRateperhour*$empHours))
   echo $salary
else
   salary=0
   echo $salary
fi
