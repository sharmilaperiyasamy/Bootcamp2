#!/bin/bash -x

echo "3. Take a number from user and check if the number is a Prime then show that its palindrome is also prime"
echo "a. Write function check if number is Prime"

echo " "
echo "Enter the number: "
read number

result=1
function prime()
{
#number=$(($1))
for ((  counter=2; counter<$number; counter++ ))
do
   if [  $(($number%$counter))  -eq 0 ]
   then
      result=$(($result+1))
   fi
done

if [ $result -eq 1 ]
then
   echo "$number is a prime number"
else
   echo "$number is not a prime number"
fi
}
prime $number


echo " "
echo "b. Write function to get the Palindrome."
echo " "
echo "Enter the number: "
read number

sum=0
reminder=0
temp=$number
function palindrome()
{
    #number=$(($1))
    #temp=$number
    while  [ $number -gt 0 ]
    do
       reminder=$(($number%10))
       sum=$((($sum*10)+$reminder))
       number=$(($number/10))
    done
    if [  $temp  -eq $sum  ]
     then
       echo "$temp is a Palindrome"
     else
      echo "$temp is not a Palindrome"
    fi
}
palindrome $number

echo " "

echo "c. Check if the Palindrome number is also prime"
echo " "
echo "Enter a number:"
read number

sum=0
reminder=0
temp=$number
result=1
function palindrome1()
{
while [[ $number -gt 0 ]]
do
   reminder=$(($number%10))
   sum=$((($sum*10)+$reminder))
   number=$(($number/10))
done

if [[ $temp -eq $sum ]]
then
    echo "Integer Palindrome"
else
  echo "Not a palindrome"
fi
}

function prime1()
{
for (( counter=2; counter<$temp; counter++ ))
do
    if [ $(($temp%$counter))  -eq 0 ]
    then
    result=$(($result+1))
    fi
done

if [ $result -eq 1 ]
then
   echo "and prime number"
else
   echo "but Not a  prime number "
fi
}
palindrome1 $number
prime1 $temp
