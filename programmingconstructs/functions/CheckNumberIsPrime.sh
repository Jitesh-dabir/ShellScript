#!/bin/bash -x

#VARIABLE
flag=0

#FUNCTION TO CHECK NUMBER IS PRIME OR NOT
function isprime()
{
	number=$1
	for (( index=2; index<=$number/2; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then 
			flag=1
		else
			flag=0
		fi	
	done
echo $flag
}

read -p "Enter a first number:" firstNumber
result=$( isprime $firstNumber)
if [ $result -eq 0 ]
then 
	echo "Number is prime"	
else
	echo "Number is not prime"
fi


