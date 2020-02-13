#!/bin/bash -x

#RANDOM NUMBER GENERATE
echo "Random Numbers Are :"
firstNumber=$(( RANDOM%90+10))
secondNumber=$(( RANDOM%90+10))
thirdNumber=$(( RANDOM%90+10))
fourthNumber=$(( RANDOM%90+10))
fifthNumber=$(( RANDOM%90+10))

#PRINT RANDOM NUMBER
echo "First random number  :" $firstNumber
echo "Second random number :" $secondNumber
echo "Third random number  :" $thirdNumber
echo "Fourth random number :" $fourthNumber
echo "Fifth random number  :" $fifthNumber

#ADDITION OF RANDOM NUMBER
result=$(( $firstNumber + $secondNumber + $thirdNumber + $fourthNumber + $fifthNumber))
echo "Sum of Random Two Digit random 5 numbers are :" $result


