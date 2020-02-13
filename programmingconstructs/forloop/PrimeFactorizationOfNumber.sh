#!/bin/bash -x

#TAKE NUMBER FROM USER
read -p "Enter a number: " number

#FIND PRIME FACTOR OF NUMBER AND PRINT THAT FACTORS
for (( index=2; $index<=$number; index++ ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		echo "$index"
		number=$(($number/$index))
	fi

if [ $(($number%$index)) -eq 0 ]
then
	index=$(($index-1))
fi
done
