#!/bin/bash -x

#VARIABLES
flag=0

#FUNCTION TO CHECK NUMBER IS PRIME OR NOT
function isprimenumber()
{
	firstnumber=$1
	for (( index=2; index<=$firstnumber/2; index++ ))
	do
		if [ $(($firstnumber%$index)) -eq 0 ]
		then 
			flag=1
		else
			flag=0
		fi
	done
	if [ $flag -eq 0 ]
	then 
		echo $flag  
	else
		echo $flag
	fi
}

#FUNCTION TO CHECK NUMBER IS PALINDROME OR NOT
function ispalindrome() 
{
	secondNumber=$1
	temp=$secondNumber
	res=0
	while [ $secondNumber -gt 0 ]
	do
		remender=$(($secondNumber%10))
		result=$(( $(($result*10)) + $remender))
		secondNumber=$(($secondNumber/10))
	done
	echo $result
}

#TAKE NUMBER FROM USER CHECK PRIME AND PALINDROME
read -p "enter a first number:" number
	if [ $( isprimenumber $(($number)) ) -eq 0 ]
	then
		echo $number" is prime number"
		if [ $( ispalindrome $(($number))) -eq $number ]
		then
			palindrome="$( ispalindrome $(($number)))"
			if [ $( isprimenumber $(($palindrome))) -eq 0 ]
			then
				echo  $palindrome "palindrome of number is also prime"
			fi
		else
			palindrome="$( ispalindrome $(($number)))"
			if [ $( isprimenumber $(($palindrome))) -eq 0 ]
			then
				echo $palindrome" is not palindrome of but number is  prime"
			else
				echo  $palindrome" is not palindrome of also number is not 			prime"		
			fi	
		fi
	else
		echo "number is not prime"
	fi
