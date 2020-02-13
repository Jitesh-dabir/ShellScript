#!/bin/bash -x

#VARIABLE
result=1

#TAKE NUMBER FROM USER
read -p  "Enter a number :" number

#PRINT HARMONIC NUMBER
for (( index=1; index<=$number; index++))
do
	firstNumber=1/$index
	result=`echo "scale=2;$result+$firstNumber" | bc `
	echo -n "1/$index +"
done

#PRINT ADDITION OF N'TH HARMONIC NUMBER
echo "Addition upto" 1/$number" harmonic number is" $result
