#!/bin/bash -x

echo "Program where a gambler starts with Rs 100 and places Re 1 bet until he/she goes broke i.e. no more money to gamble or reaches the"
echo "goal of Rs 200. Keeps track of number of times won and number of bets made."
echo " "

match_won=1
noOfbets=0
noOfwins=0
noOflosses=0
money_having=100
money_should_earn=200
each_bet=20
money_for_winner=20

while [[  $money_having -ge $each_bet &&  $money_having -lt  $money_should_earn ]]
do
  ((noOfbets++))
   result=$((RANDOM%2))
   if  [ $result -eq $match_won ]
   then
        money_having=$(($money_having+$each_bet))
        ((noOfwins++))
   else
       money_having=$(($money_having-$each_bet))
       ((noOflosses--))
   fi
    if [ $money_having -eq 0 ]
     then
         echo "player broke"
    else
          echo "player won"
    fi
done
