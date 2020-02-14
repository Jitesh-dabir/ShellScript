#!/bin/bash -x

#FUNCTION TO FIND REPEATED NUMBERS LIKE 22,11..
function findRepeate()
	{
		n=$1
		r=$(($n%10))
		n=$(($n/10))
		if [ $r -eq $n ]
		then
			echo 0
		else
			echo 1
		fi
	}

#TAKE USER INPUT
read -p "Enter a range :" number

#FUNCTION CALL TO FIND REPEATED NUMBERS LIKE 22,11..100 AND STORE IT
for (( index=$number; index<100; index++ ))
do
	if [ $( findRepeate $index ) -eq 0 ]
	then
		b[index]=$index
	fi
done

#PRINT THE ARRAY
echo  "Repeated number are :${b[@]}"
