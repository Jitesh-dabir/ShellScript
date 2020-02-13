#!/bin/bash -x

#VARIABLES
ispartTime=1
isfullTime=2
emploeRateperhr=20

#GENERATE RANDOM NUMBER
randomNumber=$((RANDOM%3))

#CHECK EMPLOYEE IS PART_TIME OR FULL_TIME 
if [ $randomNumber -eq $ispartTime ]
then
	employeehr=4
else
	employeehr=8
fi

#CALCULATE SALARY
salary=$(($emploeRateperhr*$employeehr))
echo "Employee work hours are" $employeehr" and Total salary is" $salary
