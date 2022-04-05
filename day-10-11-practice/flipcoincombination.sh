#!/bin/bash -x

echo "As a simulator,sort the Singlet,Doublet and Triplet combination and show the winning combination"
echo " "
declare -A dict;
echo "Welcome to flipCoin simulator "
echo "Enter the number of times coin to be flipped ";
read num;
for (( i=0; i < num; i++ ))
do
   ((checkRandom = $((RANDOM%2))));
    if [ $checkRandom -eq 0 ]
    then
       echo H;
       ((dict[heads] = $((${dict[heads]}+1))));
       ((Hpercentage = $((${dict[heads]} * 100/num))));
    else
      echo T;
      ((dict[tails] = $((${dict[tails]}+1))));
      ((Tpercentage = $((${dict[tails]}*100/num))));
    fi
done
echo HeadsCount is ${dict[heads]};
echo TailsCount is ${dict[tails]};
echo "Singlet answer is : Tail Percent is $Tpercentage and Head Percent is $Hpercentage";

if [[ $Hpercentage -gt $Tpercentage ]]
then
  echo " Singlet Winner is Head Combination";
else
 echo "Singlet Winner is Tail Combination";
fi

#doublet

declare -A doubleDict

for (( i=0; i < num; i++ ))
do
((randomCheck1 = $((RANDOM%2))));
((randomCheck2 = $((RANDOM%2))));

if (( $randomCheck1 == 0 && $randomCheck2 == 0 ))
then
((doubleDict[HH] = $((${doubleDict[HH]}+1))));
((HHpercent = $((${doubleDict[HH]}*100/num ))));
elif (( $randomCheck1 == 0 && $randomCheck2 == 1 ))
then
((doubleDict[HT] = $((${doubleDict[HT]}+1))));
((HTpercent = $((${doubleDict[HT]}*100/num ))));
elif (( $randomCheck1 == 1 && $randomCheck2 == 0 ))
then
((doubleDict[TH] = $((${doubleDict[TH]}+1))));
((THpercent = $((${doubleDict[TH]}*100/num ))));
else
((doubleDict[TT] = $((${doubleDict[TT]}+1))));
((TTpercent = $((${doubleDict[TT]}*100/num ))));
fi
done

echo "Doublet answer is "

echo "HH came "${doubleDict[HH]};
echo "percentage of HH is " $HHpercent"%";
echo "HT came "${doubleDict[HT]};
echo "percetage of HT is " $HTpercent"%";
echo "TH came "${doubleDict[TH]};
echo "percentage of TH is " $THpercent"%";
echo "TT came "${doubleDict[TT]};
echo "percentage of TT is " $TTpercent"%";


#triplet

declare -A tripleDict
for (( i=0; i < $num; i++))
do
  ((randomCheck1 = $((RANDOM%2))));
  ((randomCheck2 = $((RANDOM%2))));
  ((randomCheck3 = $((RANDOM%2))));
if (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 0 ))
then
   ((tripletDict[HHH] = $((${tripleDict[HHH]}+1))));
   ((HHHpercent = $(( tripleDict[HHH]*100/num ))));

elif (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 1 ))
then
   ((tripleDict[HHT] = $((${tripleDict[HHT]}+1))));
    ((HHTpercent = $((${tripleDict[HHT]}*100/num ))));

elif (( $randomCheck1 == 0 && $randomCheck2 == 1 && $randomCheck3 == 0 ))
then
   ((tripleDict[HTH] = $((${tripleDict[HTH]}+1))));
    ((HTHpercent = $((${tripleDict[HTH]}*100/num ))));

elif (( $randomCheck1 == 1 && $randomCheck2 == 0 && $randomCheck3 == 0 ))
then
   ((tripleDict[THH] = $((${tripleDict[THH]}+1))));
    ((THHpercent = $((${tripleDict[THH]}*100/num ))));

elif (( $randomCheck1 == 1 && $randomCheck2 == 1 && $randomCheck3 == 1 ))
then
    ((tripleDict[TTT] = $((${tripleDict[TTT]}+1))));
    ((TTTpercent = $((${tripleDict[TTT]}*100/num ))));

elif (( $randomCheck1 == 1 && $randomCheck2 == 1 && $randomCheck3 == 0 ))
then
     ((tripleDict[TTH] = $((${tripleDict[TTH]}+1))));
     ((TTHpercent = $((${tripleDict[TTH]}*100/num ))));

elif (( $randomCheck1 == 1 && $randomCheck2 == 0 && $randomCheck3 == 1 ))
then
    ((tripleDict[THT] = $((${tripleDict[THT]}+1))));
    ((THTpercent = $((${tripleDict[THT]}*100/num ))));

else
    ((tripleDict[HTT] = $((${tripleDict[HTT]}+1))));
    ((HTTpercent = $((${tripleDict[HTT]}*100/num ))));

fi
done

#((HHHpercent = ${tripleDict[HHH]}*100/$num ));
#((THHpercent = ${tripleDict[THH]}*100/$num ));
#((HTHpercent = ${tripleDict[HTH]}*100/$num ));
#((HHTpercent = ${tripleDict[HHT]}*100/$num ));
#((TTTpercent = ${tripleDict[TTT]}*100/$num ));
#((TTHpercent = ${tripleDict[TTH]}*100/$num ));
#((THTpercent = ${tripleDict[THT]}*100/$num ));
#((HTTpercent = ${tripleDict[HTT]}*100/$num ));

echo "Triplet answer is :";
echo "HHH came "${tripleDict[HHH]};
echo "percentage of HHH is "$HHHpercent"%";
echo "HHT came "${tripleDict[HHT]};
echo "percentage of HHT is "$HHTpercent"%";
echo "HTH came "${tripleDict[HTH]};
echo "percentage of HTH is "$HTHpercent"%";
echo "THH came "${tripleDict[THH]};
echo "percentage of THH is "$THHpercent"%";
echo "TTT came "${tripleDict[TTT]};
echo "percentage of TTT is "$TTTpercent"%";
echo "TTH came "${tripleDict[TTH]};
echo "percentage of TTH is "$TTHpercent"%";
echo "THT came "${tripleDict[THT]};
echo "percentage of THT is "$THTpercent"%";
echo "HTT came "${tripleDict[HTT]};
echo "percentage of HTT is "$HTTpercent"%";
