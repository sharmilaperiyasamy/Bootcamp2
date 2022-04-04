#!/bin/bash -x

echo "Program to generate a birth month of 50 individuals between the year 92 & 93"
echo "Find all the individuals having birthdays in the same month ."
echo "Store it to finally print."

echo " "

totalNumberOfIndividuals=50
declare -A birthday
echo "The birthday month and year of $totalNumberOfIndividuals are: "

for (( individual=1; individual<=$totalNumberOfIndividuals; individual++ ))
do
    birthdayMonth=$((RANDOM%12+1))
    birthdayYear=$((RANDOM%2+1992 ))
    echo "individual $individual has birthday in month $birthdayMonth in the year $birthdayYear"
    birthday[$birthdayMonth]+="${individual}"
done

for month in ${!birthday[@]}
do
    echo "The individuals who are having birthday in month $month are: "
#     echo -n "Individuals are : ${birthday[$month]}"
    for i in ${birthday[$month]}
    do
      echo "Individuals are : $i "
  done
echo " "
done
