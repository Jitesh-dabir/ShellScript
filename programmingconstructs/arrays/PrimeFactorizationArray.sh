#! /bin/bash -x

#VARIABLE
j=0

#FUNCTION TO FIND PRIME FACTORS AND STORE IT INTO ARRAY
function primeFacotrs()
{
	a=$1
	for (( index=2; $index<=$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			a[j]=$index
			((j++))
			number=$(($number/$index))
		fi

		if [ $(($number%$index)) -eq 0 ]
		then
			((index--))
		fi
	done
	echo "${a[@]}"
}

#TAKE NUMBER FROM USER 
read -p "Enter a number: " number

#PRINT THE ALL PRIME FACTORS
echo "Prime factors of Number are" "$( primeFacotrs $((number)))"

