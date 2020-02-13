#!/bin/bash -x
#TAKE TWO NUMBERS FROM USER 
read -p "Enter First_Number :" firstNumber
read -p "Enter Second_Number :" secondNumber

#ADDITION OF TWO NUMBERS
result=$(($firstNumber + $secondNumber))

#PRINT RESULT
echo "Addition of two numbers are " $result

