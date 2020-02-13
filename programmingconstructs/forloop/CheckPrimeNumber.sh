#!/bin/bash -x

#VARIABLES
flag=0
isPrime=0

#TAKE NUMBER FROM USER
read -p "Enter a number:" number

#CHECK NUMBER IS PRIME OR NOT
for (( index=2; $index<=$number/2; index++))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		flag=1
	else
		flag=0
	fi
done

#PRINT IF PRIME
if [ $flag -eq $isPrime ]
then 
	echo $number "is prime number"
else
	echo $number "is not prime number"
fi

