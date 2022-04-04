#!/bin/bash -x

echo "program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise."
echo " "

month=`date +%d-%m-%y |  awk -F '-' '{print $2}'`
echo $month

day=`date +%d-%m-%y  |  awk -F '-' '{print $1}'`
echo $day

if [[ ($month -ge 3 ) && ( $month -le  6 ) ]]
then
   if [ $month -eq 3 ]
   then
      if [ $day -gt 20 ]
       then
       echo true
       else
       echo false
      fi
    fi
   if  [  $month -eq 6 ]
   then
    if [ $day -le 20 ]
    then
      echo true
    else
     echo false
    fi
  fi
fi
