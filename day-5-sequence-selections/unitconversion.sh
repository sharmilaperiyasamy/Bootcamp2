#!/bin/bash -x

echo "Unit Conversion"
echo " "

echo "a. 1ft = 12 in then 42 in = ? ft"
echo " "
echo "Given 1 ft = 12 inch"
inch=42
ft=$((inch/12))
echo "42 inch = "$ft "ft"
echo " "


echo "b. Rectangular Plot of 60 feet x 40 feet in meters"
echo " "
length=60
breadth=40
echo " "

echo "Length = "$length "feet"
lengthInMeters=$((length*381/1250))
echo "Length in Meters = "$lengthInMeters "m"
echo " "

echo "Breadth = "$breadth "feet"
breadthInMeters=$((breadth*381/1250))
echo "Breadth in Meters = "$breadthInMeters "m"
echo " "

area=$((lengthInMeters*breadthInMeters))
echo "Area of the rectangular plot = "$area "sq m";
echo " ";


echo "c. Calculate area of 25 such plots in acres"
echo " "
area_25=$((area*25))
echo "Area of 25 such plots = "$area_25 "sq m";
area_ac=$((area_25/4047))
echo "Area in acres = "$area_ac "acres";
