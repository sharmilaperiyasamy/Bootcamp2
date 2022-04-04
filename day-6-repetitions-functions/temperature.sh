#!/bin/bash -x


echo "Help user find degF or degC based on their Conversion Selection. Use Case Statement and ensure that the inputs are within the "
echo "Freezing Point ( 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )"
echo "a. degF = (degC * 9/5) + 32   b. degC = (degF – 32) * 5/9"
echo " "
echo " "

function degF_to_degC(){
        if [[ ($1 -ge 32 && $1 -le 212) ]]
        then
            degC=$(($T-32*5/9))
            echo "$T in Fahrenheit is equal to $degC in Celsius"
        else
            echo "Temperature entered is beyond the limits!"
        fi
}

function degC_to_degF(){
        if [[ ($1 -ge 0 && $1 -le 100) ]]
        then
            degF=$(($T*9/5+32))
            echo "$T in Celsius is equal to $degF in Fahrenheit"
         else
            echo "Temperature entered is beyond the limits!"
         fi
}

echo "Enter the temperature: "
read T
echo "Select the option: 1) degF to degC 2) degC to degF "
read option

degF_to_degC=1
degC_to_degF=2

case "$option" in
                 $degF_to_degC)
                               degF_to_degC $T
                 ;;
                 $degC_to_degF)
                               degC_to_degF $T 
                 ;;
                 *)
                      echo "invalid option!"
esac
