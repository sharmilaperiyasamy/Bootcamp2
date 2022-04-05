#!/bin/bash -x

echo "Sorting Arithmetic Computation"
echo " "

echo "Enter the First number: ";
read a;
echo "Enter the Second number: ";
read b;
echo "Enter the Third number: "
read c;
echo "The Given three numbers are : $a $b $c";

((first_computation = $(( $a + $b * $c ))));
((second_computation = $(( $a * $b + $c ))));
((third_computation = $(( $c + $a / $b ))));
((fourth_computation = $(( $a % $b + $c ))));

echo "$a + $b * $c = $first_computation";
echo "$a * $b + $c = $second_computation";
echo "$c + $a / $b = $third_computation";
echo "$a % $b + $c = $fourth_computation";

declare -A dictionary;
declare -a array;

((dictionary[first_computation] = $first_computation));
((dictionary[second_computation] = $second_computation));
((dictionary[third_computation] = $third_computation));
((dictionary[fourth_computation] = $fourth_computation));

((index = 0));
for computation in ${!dictionary[@]}
do
   ((array[index++] = ${dictionary[$computation]}));
done

echo "The Computation result Array is ";
echo ${array[@]};

((size = ${#array[@]}));
for (( i=0; i < size - 1; i++ ))
do
  ((swapped = 0));
   for(( j=0;j < size-i-1; j++))
   do
     if (( array[j] > array[j+1] ))
      then
        ((temp = ${array[j]} ));
        ((array[j] = ${array[j+1]} ));
        ((array[j+1] = $temp));
         ((swapped = 1));
fi
done

if ((swapped==0))
then
    break
fi
done
echo "The Computation results sorted in ascending order are : ";
echo ${array[@]};

for (( i=0; i< size - 1; i++ ))
do
  ((swapped = 0));
   for(( j=0; j < size-i-1; j++))
   do
   if (( array[j] < array[j+1] ))
   then
     ((temp = ${array[j]} ));
     ((array[j] = ${array[j+1]} ));
     ((array[j+1] = $temp));
      ((swapped = 1));
fi
done
if ((swapped==0))
then
    break
fi
done

echo "The Computation results sorted in descending order are : ";
echo ${array[@]};
