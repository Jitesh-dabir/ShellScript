#!/bin/bash -x 

#VARIABLES
flag=0
isPrime=0

#TAKE NUMBER FROM USER
read -p "Enter a number:" number

#PRINT PRIME NUMBERS BETWEEN RANGE
echo "prime number upto" $number
for (( index=1; $index<=$number; index++))
do
	for (( index1=2; $index1<=$index/2; index1++))
	do
		if [ $(($index%$index1)) -eq 0 ]
		then
			flag=1
			break
		else
			flag=0
		fi
	done

	if [ $flag -eq $isPrime ]
	then 
	echo "$index"
	fi
done

