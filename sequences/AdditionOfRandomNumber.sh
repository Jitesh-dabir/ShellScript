#! /bin/bash -x

#GENERATE TWO RANDOM NUMBER
firstNumber=$(( RANDOM%6+1 ))
secondNumber=$(( RANDOM%6+1)) 

echo "First Random Number :" $firstNumber
echo "Second Random Number :" $secondNumber

#add two random numbers and store it into $sum variable
result=$(( $firstNumber + $secondNumber ))
echo "Addition Of two random numbers between 1-6 is :" $result
