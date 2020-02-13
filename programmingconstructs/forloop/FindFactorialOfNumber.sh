#!/bin/bash -x

#VARIABLE
factorial=1

#TAKE NUMBER FROM USER
read  -p "Enter a number to find factorial of number"  number

#CALCULATE FACTORIAL OF NUMBER
for (( index=1; $index<=$number; index++ ))
do
	factorial=` echo "$factorial*$index" | bc`
done

#PRINT RESULT
echo "Factorial of "$number "is" $factorial
