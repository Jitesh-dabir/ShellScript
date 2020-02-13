#!/bin/bash -x
#ENTER 3 NUMBERS TO PERFORM ARITHMETIC OPERATIONS
echo "Enter 3 Values :"
read -p "Enter First Value  :" firstNumber
read -p "Enter Second Value :" secondNumber
read -p "Enter Third value  :" thirdNumber

#LOGIC TO PERFORM ARITHMETIC OPERATIONS
firstOperation=$(( $firstNumber + $secondNumber *$thirdNumber))
secondOperation=$(( $firstNumber % $secondNumber +$thirdNumber))
thirdOperation=$(($firstNumber + $secondNumber / $thirdNumber))
fourthOperation=$(( $firstNumber * $secondNumber +$thirdNumber))

#PRINT THE FINAL OUTPUT
echo "First Operateion : $firstNumber + $secondNumber * $thirdNumber  :" $firstOperation
echo "Second Operation : $firstNumber % $secondNumber + $thirdNumber  :" $secondOperation
echo "Third Operation  : $firstNumber + $secondNumber / $thirdNumber  :" $thirdOperation
echo "Fourth Operation : $firstNumber * $secondNumber + $thirdNumber  :" $fourthOperation
