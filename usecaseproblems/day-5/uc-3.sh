#!/bin/bash -x

var1=10
var2=10
if [ $var1 -gt $var2 ]
then
   echo "$var2 is greater than $var2"
elif [ $var1 -eq $var2 ]
then
   echo "$var1 is equal to $var2"
else
  echo "$var2 is greater than $var1"
fi
